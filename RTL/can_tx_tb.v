// This will be a testbench for uart_tx
`timescale 1ns/1ps

module can_tx_tb;
  
  // Inputs
  reg [11:0] Can_ID_Bus;
  reg [63:0] can_tx_data_bus;
  reg Frame_ready;
  reg Load_frame_datareg;
  reg clock;
  reg reset;
  reg T_frame;
  
  // Output
  wire Can_out;
  wire statev;
  // Instantiate the uart_tx module
  can_tx dut (
    .Can_ID_Bus(Can_ID_Bus),
    .can_tx_data_bus(can_tx_data_bus),
    .Frame_ready(Frame_ready),
    .Load_frame_datareg(Load_frame_datareg),
    .T_frame(T_frame),
    .clock(clock),
    .reset(reset),
    .Can_out(Can_out),
    .statev(statev)
  );
  
  initial begin
    // Initialize inputs
    clock = 0; reset = 1; Frame_ready = 0; Load_frame_datareg = 0; 
    T_frame = 0; can_tx_data_bus = 8'b00000000; Can_ID_Bus = 11'b00000000000;

    #10; reset = 0;

    //Transmit 'A' -> 8'b01000001
    #10 Frame_ready = 1;
    Can_ID_Bus = 11'b01000001101;
    can_tx_data_bus = 64'hABABABABABABABAB; 
    Load_frame_datareg = 1;
    #10; Load_frame_datareg = 0;
    T_frame = 1;
    #1070; T_frame = 0;

    #1120;    
  end

  always #5 clock = ~clock;  //Generate Clock Signal
  
  
endmodule