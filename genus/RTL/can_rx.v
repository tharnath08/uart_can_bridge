module can_rx (
    input wire clock,               // System clock
    input wire reset,               // Reset signal
    input wire R_frame,             // Sampling tick signal
    input wire Can_rx,              // Incoming serial data
    output reg [7:0] Can_rx_data_Bus,  // Output data bus (for Data Field)
    output reg Can_data_ready,      // Data ready signal for the data payload
    output reg statev               // Debug state toggle
);

    // Define states
    parameter IDLE        = 3'b000,
              START       = 3'b001,
              RECEIVE_ID  = 3'b010,
              RECEIVE_CTL = 3'b011,
              RECEIVE_DATA= 3'b100,
              RECEIVE_CRC = 3'b101,
              STOP        = 3'b110;

    reg [2:0] state, next_state;      // State registers
    reg [6:0] bit_count;              // Bit counter for received bits
    reg [106:0] shift_reg;            // Shift register for incoming data

    // Sequential Block
    always @(posedge clock or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            Can_rx_data_Bus <= 8'b0;
            Can_data_ready <= 0;
            bit_count <= 0;
            shift_reg <= 107'b0;
            statev <= 0;
        end else begin
            if (state != next_state) begin
                statev <= ~statev;  // Toggle statev for debugging
            end
            state <= next_state;
            
            case (state)
                IDLE: begin
                    bit_count <= 0;
                    Can_data_ready <= 0;
                end

                START, RECEIVE_ID, RECEIVE_CTL, RECEIVE_DATA, RECEIVE_CRC: begin
                    if (R_frame) begin
                        shift_reg <= {Can_rx, shift_reg[106:1]}; // Shift in incoming bits
                        bit_count <= bit_count + 1;
                    end
                    if (state == RECEIVE_DATA && bit_count >= 67 && bit_count < 76) begin
                        Can_rx_data_Bus <= shift_reg[67:60]; // Load data to output register
                    end
                end

                STOP: begin
                    if (R_frame) begin
                        Can_data_ready <= 1;  // Indicate data ready
                        next_state <= IDLE;
                    end
                end
            endcase
        end
    end

    // Combinational Block
    always @(*) begin
        next_state <= state;

        case (state)
            IDLE: if (Can_rx == 0) next_state <= START;  // Start of Frame detected

            START: if (R_frame) next_state <= RECEIVE_ID;  // Move to Identifier Field

            RECEIVE_ID: if (R_frame && bit_count >= 11) next_state <= RECEIVE_CTL;  // Move to Control Field

            RECEIVE_CTL: if (R_frame && bit_count >= 15) next_state <= RECEIVE_DATA;  // Move to Data Field

            RECEIVE_DATA: if (R_frame && bit_count >= 79) next_state <= RECEIVE_CRC;  // Move to CRC Field

            RECEIVE_CRC: if (R_frame && bit_count >= 95) next_state <= STOP;  // Move to Stop Field

            STOP: if (R_frame) next_state <= IDLE;  // Return to IDLE after STOP

            default: next_state <= IDLE;
        endcase
    end
endmodule
