`timescale 1us / 1ns  // Timescale of 1 microsecond for time unit

module uart_rx_tb;

    // Testbench Signals
    reg clock;
    reg reset;
    reg Serial_in;              // Serial data input
    wire [7:0] uart_rx_data_bus;        // Received data output
    wire uart_data_ready;            // Data ready signal
    wire statev;
    // Instantiate UART RX module
    uart_rx uut (
        .clock(clock),
        .reset(reset),
        .R_byte(1'b1),         // Keep R_byte high for sampling on each clock edge
        .Serial_in(Serial_in),
        .uart_rx_data_bus(uart_rx_data_bus),
        .uart_data_ready(uart_data_ready),
        .statev(statev)
    );

    // Clock Generation
    initial clock = 0;
    always #5 clock = ~clock;   // 10us period clock (100 kHz frequency)

    // Task to send a byte as UART serial data
    task send_byte;
        input [7:0] data;
        integer i;
        begin
            // Start bit (low)
            Serial_in = 0;
            #10;   // Adjust this delay as needed to simulate a bit period

            // Data bits (LSB first)
            for (i = 0; i < 8; i = i + 1) begin
                Serial_in = data[i];
                #10;   // Delay to simulate bit period
            end

            // Stop bit (high)
            Serial_in = 1;
            #10;   // Delay for stop bit period
        end
    endtask

    // Test Sequence
    initial begin
        // Initialize inputs
        Serial_in = 1;  // Idle state (high)
        reset = 1;      // Apply reset
        #10;
        reset = 0;      // Release reset

        // Send 'A' (8'h41) in UART format
        send_byte(8'h41);
        #50; // Wait some time between transmissions

        // Send 'B' (8'h42) in UART format
        send_byte(8'h42);
        #50; // Wait to observe results

        $stop; // End simulation
    end

    // Monitor received data
    initial begin
        $monitor("Time=%0t | uart_rx_data_bus=%h | uart_data_ready=%b", $time, uart_rx_data_bus, uart_data_ready);
    end

endmodule
