module uart_rx (
    input wire clock,             // System clock
    input wire reset,             // Reset signal
    input wire R_byte,            // Sampling tick signal
    input wire Serial_in,         // Incoming serial data
    output reg [7:0] uart_rx_data_bus,    // Output data bus
    output reg uart_data_ready,         // Data ready signal
    output reg statev
);
    
    // Define states
    parameter IDLE       = 3'b000,
              START      = 3'b001,
              RECEIVE    = 3'b010,
              STOP       = 3'b011;

    reg [2:0] state, next_state;     // State registers
    reg [3:0] bit_count;             // Bit counter for received bits
    reg [9:0] shift_reg;             // Shift register for incoming data

    // Sequential Block
    always @(posedge clock or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            uart_rx_data_bus <= 8'b0;
            uart_data_ready <= 0;
            bit_count <= 0;
            shift_reg <= 10'b0;
	        statev <= 0;
        end else begin
		if(state != next_state) begin
			statev <= ~statev;
		end
            state <= next_state;
            case (state)
                IDLE: begin
                    bit_count <= 0;       // Reset bit counter in IDLE
                    uart_data_ready <= 0;      // Clear data ready flag in IDLE
                end
                RECEIVE: begin
                    if (R_byte) begin
                        shift_reg <= {Serial_in, shift_reg[9:1]}; // Shift in the incoming bit
                        bit_count <= bit_count + 1;               // Increment bit count
                    end
                end
                STOP: begin
                    if (R_byte && Serial_in == 1) begin  // Check stop bit
                        uart_rx_data_bus <= shift_reg[8:1];      // Load received data
                        uart_data_ready <= 1;                 // Indicate data ready
                    end
                end
            endcase
        end
    end

    // Combinational Block
    always @(*) begin
        next_state <= state;  // Default to current state

        case (state)
            IDLE: begin
                if (Serial_in == 0) begin // Detect start bit
                    next_state <= START;
                end
            end
            START: begin
                if (R_byte) begin
                    next_state <= RECEIVE;
                end
            end
            RECEIVE: begin
                if (R_byte) begin
                    if (bit_count < 8) begin
                        next_state <= RECEIVE; // Continue receiving
                    end else begin
                        next_state <= STOP; // Move to stop state after 8 bits
                    end
                end
            end
            STOP: begin
                if (R_byte) begin
                    next_state <= IDLE; // Go back to IDLE after STOP
                end
            end
            default: next_state <= IDLE;
        endcase
    end
endmodule
