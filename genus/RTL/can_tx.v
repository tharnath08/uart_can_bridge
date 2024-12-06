module can_tx (
    input wire Frame_ready,
    input wire Load_frame_datareg,
    input wire T_frame,
    input wire clock,
    input wire reset,
    input wire [11:0] Can_ID_Bus,
    input wire [63:0] can_tx_data_bus,
    output reg Can_out,           // Ensure this is a reg type
    output reg statev
);
    // Define states
    parameter IDLE      = 3'b000,
              START     = 3'b001,
              TRANSMIT  = 3'b010,
              STOP      = 3'b011;

    reg [2:0] state, next_state;   // State registers
    reg [106:0] shift_reg = 107'b0;         // Shift register for data
    reg [6:0] status_reg;          // Bit counter to track data bits
    reg [6:0] Control = 6'b100000; // Control field for CAN Frame DLC | RTR | IDE
    reg [1:0] ACK = 2'b11;         // ACK field for CAN Frame
    reg [14:0] CRC = 15'hA001;     // CRC for CAN Frame
 
    // Sequential Block
    always @(posedge clock or posedge reset) begin
        if (reset) begin    // Reset Machine
            state <= IDLE;
            Can_out <= 1; // Output reset
            status_reg <= 0;
            shift_reg <= 107'b1111111111; // Adjust size if necessary
            statev <= 1'b0;
        end else begin
            state <= next_state;

            if (state == TRANSMIT) begin
                shift_reg <= shift_reg >> 1;
                status_reg <= status_reg + 1;
            end     
            if (state != next_state) begin
                statev <= ~statev; // Use non-blocking assignment
            end

            case (state)
                IDLE: begin
                    if (Frame_ready && Load_frame_datareg) begin
                        shift_reg <= {7'b1111111, ACK, 1'b1, CRC, can_tx_data_bus, Control, Can_ID_Bus, 1'b0}; // Load Shift Reg
                    end
                end   
                STOP: begin
                    shift_reg <= 107'b1111111111; // Adjust size if necessary
                    status_reg <= 0;
                end

            endcase
        end
    end

    // Combinational Block
    always @(*) begin
        next_state <= state;
        Can_out <= 1'b1; // Default output state
        case (state)
            IDLE: begin
                if (Frame_ready && Load_frame_datareg) begin
                    next_state <= START;
                end else begin
                    next_state <= IDLE;
                end
                Can_out <= 1'b1; 
            end
            START: begin
                if (T_frame) begin
                    next_state <= TRANSMIT;
                    Can_out <= shift_reg[0]; // Transmit Start Bit
                end else begin
                    next_state <= START;
                end
            end
            TRANSMIT: begin
                Can_out <= shift_reg[0]; // Transmit Current Bit
                if (status_reg < 106) begin
                    next_state <= TRANSMIT;
                end else begin
                    next_state <= STOP;
                end
            end
            STOP: begin // Reset Device
                Can_out <= 1;
                next_state <= IDLE;
            end
            default: next_state <= IDLE;
        endcase
    end
endmodule
