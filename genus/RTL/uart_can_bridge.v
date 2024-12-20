


module bridge_soc_top (
    
	input clock,
	input reset,

	output Bridge_Serial_out,
	input Serial_in,
    output Bridge_Can_out,
	input Can_rx,

	input R_byte,
	input T_byte,

);


    pad_in clk_pad    (.pad(clock),    .DataIn(clk_PAD));
    pad_in rst_pad    (.pad(reset),    .DataIn(rst_PAD));

    pad_out ser_tx_pad (.pad(Bridge_Serial_out), .DataOut(ser_tx_PAD));
    pad_in  ser_rx_pad (.pad(Serial_in), .DataIn(ser_rx_PAD));

    pad_out can_tx_pad (.pad(Bridge_Can_out), .DataOut(can_tx_PAD));
    pad_in  can_rx_pad (.pad(Can_rx), .DataIn(can_rx_PAD));


    pad_in  rbyte_pad (.pad(R_byte), .DataIn(rbyte_PAD));
    pad_in  tbyte_pad (.pad(T_byte), .DataIn(tbyte_PAD));


    
    
   uart_can_bridge soc (
   .clock(clock),
   .reset(rst_PAD),
   .Bridge_Serial_out(ser_tx_PAD),
   .Serial_in(ser_rx_PAD),
   .Bridge_Can_out(can_tx_PAD),
   .Can_rx(can_rx_PAD),
   .R_byte(rbyte_PAD),
   .T_byte(tbyte_PAD)
   ); 


    
endmodule


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
