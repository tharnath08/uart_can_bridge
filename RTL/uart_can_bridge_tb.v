`timescale 1ns / 1ps

module tb_uart_can_bridge;

    // Testbench signals
    reg clock;
    reg reset;
    reg Serial_in;
    reg Can_rx;
    wire Bridge_Can_out;
    wire Bridge_Serial_out;
    reg R_byte;
    reg T_byte;
    
    // Instantiate the uart_can_bridge module
    uart_can_bridge uut (
        .clock(clock),
        .reset(reset),
        .Serial_in(Serial_in),
        .Bridge_Can_out(Bridge_Can_out),
        .R_byte(R_byte),
        .Can_rx(Can_rx),
        .Bridge_Serial_out(Bridge_Serial_out),
        .T_byte(T_byte)
    );

    // Clock generation
    initial begin
        clock = 0;
        forever #5 clock = ~clock; // 100 MHz clock
    end

    // UART data simulation
    initial begin
        reset = 1;               // Assert reset
        Serial_in = 1;          // Initialize Serial_in
	    Can_rx = 1;
        R_byte = 1;              // Initialize R_byte
        T_byte = 1;
        // Wait for a few clock cycles
        #10 reset = 0;          // Deassert reset
        #10 send_uart_data;     // Send 8 bytes of UART data

        // Wait to observe CAN output
        #110;
        #10; send_frame(110'hABBAABABCDEACDBEBABACDEEDCB);
        //$finish;                 // End simulation
    end

    // Task to send 8 bytes of UART data
    task send_uart_data;
        reg [7:0] data;
        integer i;
        begin
            for (i = 0; i < 32; i = i + 1) begin
                data = i + 8'h41; // Send data 'A' to 'H'
                send_byte(data);
            end
        end
    endtask

    // Task to send a single byte
    task send_byte(input [7:0] byte_data);
        integer bit_idx;
        begin
            // Simulate UART start bit
            Serial_in = 0; // Start bit (low)
            #10;           // Wait for a short time
            
            // Send each bit of the byte
            for (bit_idx = 0; bit_idx < 8; bit_idx = bit_idx + 1) begin
                Serial_in = byte_data[bit_idx]; // Send bit
                #10; // Wait for a short time before the next bit
            end
            
            // Simulate UART stop bit
            Serial_in = 1; // Stop bit (high)
            #10; // Wait for a short time
            
            #10; // Wait
        end
    endtask

    // Task to send a single can frame
    task send_frame(input [109:0] byte_data);
        integer bit_idx;
        begin
            // Simulate CAN start bit
            Can_rx = 0; // Start bit (low)
            #10;           // Wait for a short time
            
            // Send each bit of the byte
            for (bit_idx = 0; bit_idx < 110; bit_idx = bit_idx + 1) begin
                Can_rx = byte_data[bit_idx]; // Send bit
                #10; // Wait for a short time before the next bit
            end
            
            // Simulate CAN stop bit
            Can_rx = 1; // Stop bit (high)
            #10; // Wait for a short time
            
            #10; // Wait
        end
    endtask


endmodule
