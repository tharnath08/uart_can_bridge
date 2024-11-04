// This will be a testbench for uart_tx
`timescale 1ns/1ps
module uart_tx_tb;
  
  // Inputs
  reg [7:0] uart_tx_data_Bus;
  reg Byte_ready;
  reg Load_XMT_datareg;
  reg clock;
  reg reset;
  reg T_byte;
  
  // Output
  wire Serial_out;
  
  // Instantiate the uart_tx module
  uart_tx dut (
    .uart_tx_data_Bus(uart_tx_data_Bus),
    .Byte_ready(Byte_ready),
    .Load_XMT_datareg(Load_XMT_datareg),
    .T_byte(T_byte),
    .clock(clock),
    .reset(reset),
    .Serial_out(Serial_out)
  );
  
  initial begin
    // Initialize inputs
    clock = 0; reset = 1; Byte_ready = 0; Load_XMT_datareg = 0; 
    T_byte = 0; uart_tx_data_Bus = 8'b00000000;

    #10; reset = 0;

    //Transmit 'A' -> 8'b01000001
    #10 Byte_ready = 1;
    uart_tx_data_Bus = 8'b01000001; 
    Load_XMT_datareg = 1;
    #10; Load_XMT_datareg = 0;
    T_byte = 1;
    #100; T_byte = 0;

    #200;    
  end

  always #5 clock = ~clock;  //Generate Clock Signal
  
  
endmodule
