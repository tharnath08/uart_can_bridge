module uart_tx (
  input wire Byte_ready,
  input wire Load_XMT_datareg,
  input wire T_byte,
  input wire clock,
  input wire reset,
  input wire [7:0] uart_tx_data_Bus,
  output reg Serial_out
);
	
  // Define states
  parameter IDLE      = 3'b000,
            START     = 3'b001,
            TRANSMIT  = 3'b010,
            STOP      = 3'b011;


  
  reg [2:0] state, next_state;     // State registers
  reg [9:0] shift_reg;             // Shift register for data
  reg [3:0] Status_reg;             // Bit counter to track data bits

  //Sequential Block
  always @(posedge clock or posedge reset) begin
    if(reset) begin    //Reset Machine
      state <= IDLE;
      Serial_out <= 1;
      Status_reg <= 0;
      shift_reg <= 10'b1111111111;
    end else begin
      state <= next_state;
     
      if (state == TRANSMIT) begin
        shift_reg <= shift_reg >> 1;
        Status_reg <= Status_reg + 1;
      end   
      if (state == STOP) begin
        Status_reg <= 0;
        shift_reg <= 10'b1111111111;
      end 
      if (state == IDLE) begin
        shift_reg <= {1'b1, uart_tx_data_Bus, 1'b0};   //Load Shift Reg
      end          
    end
  end

  //Combinational Block
  always @(*) begin
    next_state <= state;
    Serial_out <= 1'b1;
    case (state)
      IDLE: begin
        if (Byte_ready && Load_XMT_datareg) begin
          next_state <= START;
        end else begin
          next_state <= IDLE;
        end
        Serial_out <= 1'b1; 
      end
      START: begin
        if (T_byte) begin
          next_state <= TRANSMIT;
          Serial_out <= shift_reg[0];      //Transmit Start Bit
        end else begin
          next_state <= START;
        end
      end
      TRANSMIT: begin
        Serial_out <= shift_reg[0];     //Transmit Current Bit
        if (Status_reg < 9) begin
          next_state <= TRANSMIT;
        end else begin
          next_state <= STOP;
        end
      end
      STOP: begin           //Reset Device
	      Serial_out <= 1;
        next_state <= IDLE;
      end

      default: next_state <= IDLE;
    endcase
  end
endmodule
