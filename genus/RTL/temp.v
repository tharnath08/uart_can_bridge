module uart_can_bridge (
    input wire clock,              // Clock
    input wire reset,              // Reset
    input wire Serial_in,          // Incoming serial data
    input wire Can_rx,             // Incoming CAN data
    output reg Bridge_Can_out,     // Output for CAN transmission
    output reg Bridge_Serial_out,   // Output for UART transmission
    input wire R_byte,             // Sampling tick signal for UART RX
    input wire T_byte              // Sampling tick signal for UART TX
);

    // Signals for UART RX
    wire [7:0] uart_rx_data_bus;      // Data bus from UART RX
    wire uart_data_ready;              // Data ready signal from UART RX
    wire Can_out;                      // CAN output signal from CAN TX

    // Signals for CAN RX
    wire can_data_ready;               // Data ready signal from CAN RX
    wire [7:0] Can_rx_data_Bus;        // Data bus from CAN RX
    wire Serial_out;                   // UART output signal from UART TX

    // Signals for CAN TX
    reg [11:0] Can_ID_Bus;             // CAN ID
    reg [63:0] can_tx_data_bus;        // Data bus for CAN TX
    reg Load_frame_datareg;            // Signal to load CAN frame data
    reg Frame_ready;                   // Signal indicating frame is ready
    reg T_frame;                       // Transmission signal for CAN TX
    reg [2:0] can_index;               // Index for CAN data storage

    // Signals for UART TX
    reg [7:0] uart_tx_data_Bus;        // Data bus for UART TX
    reg Load_XMT_datareg;              // Signal to load UART frame data
    reg Byte_ready;                    // Signal indicating byte is ready
    reg txo = 0; 
    reg cnt = 0;
    // Instantiate UART RX
    uart_rx uart_rx_inst (
        .clock(clock),
        .reset(reset),
        .R_byte(R_byte),
        .Serial_in(Serial_in),
        .uart_rx_data_bus(uart_rx_data_bus),
        .uart_data_ready(uart_data_ready)
    );

    // Instantiate CAN TX
    can_tx can_tx_inst (
        .clock(clock),
        .Frame_ready(Frame_ready),
        .Load_frame_datareg(Load_frame_datareg),
        .T_frame(T_frame),
        .reset(reset),
        .Can_ID_Bus(Can_ID_Bus),
        .can_tx_data_bus(can_tx_data_bus),
        .Can_out(Can_out)
    );

    // Instantiate CAN RX
    can_rx can_rx_inst (
        .clock(clock),
        .reset(reset),
        .R_frame(R_byte),             // Assuming R_byte is used as R_frame for CAN RX
        .Can_rx(Can_rx),
        .Can_rx_data_Bus(Can_rx_data_Bus),  // Use this for receiving CAN data
        .Can_data_ready(can_data_ready)     // Data ready signal for CAN RX
    );

    // Instantiate UART TX
    uart_tx uart_tx_inst (
        .clock(clock),
        .Byte_ready(Byte_ready),
        .Load_XMT_datareg(Load_XMT_datareg),
        .T_byte(T_byte),
        .reset(reset),
        .uart_tx_data_Bus(uart_tx_data_Bus),
        .Serial_out(Serial_out)
    );

    // Output assignment
    always @(posedge clock or posedge reset) begin
        if (reset) begin
            can_index <= 0;
            can_tx_data_bus <= 64'b0;        // Clear CAN data bus
            Load_frame_datareg <= 0;
            Frame_ready <= 0;
            T_frame <= 0;
            Can_ID_Bus <= 12'b0;              // Clear CAN ID
            Bridge_Can_out <= 1'b1;           // Reset CAN output state
            Bridge_Serial_out <= 1'b1;        // Reset UART TX output state
            Load_XMT_datareg <= 0;            // Clear UART TX load signal
            uart_tx_data_Bus <= 8'b0;         // Clear UART TX data bus
        end else begin
            // Update the Bridge outputs
            Bridge_Can_out <= Can_out;
            Bridge_Serial_out <= Serial_out;

            // Check if UART data is ready
            if (uart_data_ready) begin
                // Shift new data into the CAN data bus
                can_tx_data_bus <= {can_tx_data_bus[55:0], uart_rx_data_bus}; // Append new UART data
                can_index <= can_index + 1;

                // Check if 8 bytes have been received
                if (can_index == 7) begin
                    Can_ID_Bus <= 12'b01000001101; // Set CAN ID
                    Load_frame_datareg <= 1;       // Signal to load CAN frame data
                    Frame_ready <= 1;              // Indicate frame is ready
                    T_frame <= 1;                  // Trigger CAN transmission
                    can_index <= 0;                // Reset index for next frame
                end
            end else begin
                // Clear frame signals after transmission is initiated
                Load_frame_datareg <= 0;
            end
            
            // Check if CAN data is ready
            if (can_data_ready) begin
                uart_tx_data_Bus <= Can_rx_data_Bus; // Load CAN RX data to UART TX data bus
                Load_XMT_datareg <= 1;                // Signal to load data for UART transmission
                Byte_ready <= 1;
            end else begin
                Load_XMT_datareg <= 0;                // Clear UART load signal if no data is ready
            end

        end    
    end
endmodule




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
    end
  end

  //Combinational Block
  always @(*) begin
    next_state = state;
    Serial_out = 1'b1;
    case (state)
      IDLE: begin
        if (Byte_ready && Load_XMT_datareg) begin
          shift_reg = {1'b1, uart_tx_data_Bus, 1'b0};   //Load Shift Reg
          next_state = START;
        end else begin
          next_state = IDLE;
        end
        Serial_out = 1'b1; 
      end
      START: begin
        if (T_byte) begin
          next_state = TRANSMIT;
          Serial_out = shift_reg[0];      //Transmit Start Bit
        end else begin
          next_state = START;
        end
      end
      TRANSMIT: begin
        Serial_out = shift_reg[0];     //Transmit Current Bit
        if (Status_reg < 9) begin
          next_state = TRANSMIT;
        end else begin
          next_state = STOP;
        end
      end
      STOP: begin           //Reset Device
	      Serial_out = 1;
        next_state = IDLE;
	      Status_reg = 0;
        shift_reg <= 10'b1111111111;
      end

      default: next_state = IDLE;
    endcase
  end
endmodule



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
	    statev = 0;
        end else begin
		if(state != next_state) begin
			statev = ~statev;
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
        next_state = state;  // Default to current state

        case (state)
            IDLE: begin
                if (Serial_in == 0) begin // Detect start bit
                    next_state = START;
                end
            end
            START: begin
                if (R_byte) begin
                    next_state = RECEIVE;
                end
            end
            RECEIVE: begin
                if (R_byte) begin
                    if (bit_count < 8) begin
                        next_state = RECEIVE; // Continue receiving
                    end else begin
                        next_state = STOP; // Move to stop state after 8 bits
                    end
                end
            end
            STOP: begin
                if (R_byte) begin
                    next_state = IDLE; // Go back to IDLE after STOP
                end
            end
            default: next_state = IDLE;
        endcase
    end
endmodule



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
    reg [106:0] shift_reg;         // Shift register for data
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
        end
    end

    // Combinational Block
    always @(*) begin
        next_state = state;
        Can_out = 1'b1; // Default output state
        case (state)
            IDLE: begin
                if (Frame_ready && Load_frame_datareg) begin
                    shift_reg = {7'b1111111, ACK, 1'b1, CRC, can_tx_data_bus, Control, Can_ID_Bus, 1'b0}; // Load Shift Reg
                    next_state = START;
                end else begin
                    next_state = IDLE;
                end
                Can_out = 1'b1; 
            end
            START: begin
                if (T_frame) begin
                    next_state = TRANSMIT;
                    Can_out = shift_reg[0]; // Transmit Start Bit
                end else begin
                    next_state = START;
                end
            end
            TRANSMIT: begin
                Can_out = shift_reg[0]; // Transmit Current Bit
                if (status_reg < 106) begin
                    next_state = TRANSMIT;
                end else begin
                    next_state = STOP;
                end
            end
            STOP: begin // Reset Device
                Can_out = 1;
                next_state = IDLE;
                status_reg = 0;
                shift_reg <= 107'b1111111111; // Adjust size if necessary
            end
            default: next_state = IDLE;
        endcase
    end
endmodule



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
        next_state = state;

        case (state)
            IDLE: if (Can_rx == 0) next_state = START;  // Start of Frame detected

            START: if (R_frame) next_state = RECEIVE_ID;  // Move to Identifier Field

            RECEIVE_ID: if (R_frame && bit_count >= 11) next_state = RECEIVE_CTL;  // Move to Control Field

            RECEIVE_CTL: if (R_frame && bit_count >= 15) next_state = RECEIVE_DATA;  // Move to Data Field

            RECEIVE_DATA: if (R_frame && bit_count >= 79) next_state = RECEIVE_CRC;  // Move to CRC Field

            RECEIVE_CRC: if (R_frame && bit_count >= 95) next_state = STOP;  // Move to Stop Field

            STOP: if (R_frame) next_state = IDLE;  // Return to IDLE after STOP

            default: next_state = IDLE;
        endcase
    end
endmodule
