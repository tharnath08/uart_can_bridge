`timescale 1ns / 1ps

module can_rx_tb;

    // Testbench signals
    reg clock;
    reg reset;
    reg R_frame;
    reg Can_rx;
    wire [7:0] Can_rx_data_Bus;
    wire Can_data_ready;
    wire statev;

    // Instantiate the CAN RX module
    can_rx uut (
        .clock(clock),
        .reset(reset),
        .R_frame(R_frame),
        .Can_rx(Can_rx),
        .Can_rx_data_Bus(Can_rx_data_Bus),
        .Can_data_ready(Can_data_ready),
        .statev(statev)
    );

    // Clock generation
    always #5 clock = ~clock;  // 10ns period clock (100 MHz)

    // Task to send a single bit over the Can_rx line
    task send_bit;
        input bit_value;
        begin
            Can_rx = bit_value;
            R_frame = 1;
            #10;  // Wait for one clock cycle
            R_frame = 0;
            #10;  // Wait for one clock cycle
        end
    endtask

    // Task to send a byte over the Can_rx line
    task send_byte;
        input [7:0] data;
        integer i;
        begin
            for (i = 0; i < 8; i = i + 1) begin
                send_bit(data[7 - i]);  // Send MSB first
            end
        end
    endtask

    // Task to send a complete CAN frame with 'A' through 'H' as the data field
    task send_can_frame;
        begin
            // Start of Frame (SOF) - 1 dominant bit (0)
            send_bit(0);

            // Identifier Field (e.g., using an 11-bit identifier 0x7FF)
            send_byte(8'h7F);
            send_bit(1); // additional 3 bits to complete 11-bit identifier
            send_bit(1);
            send_bit(1);

            // Control Field - 4 bits (DLC, e.g., 8 bytes of data)
            send_byte(8'h08);

            // Data Field - ASCII values of 'A' to 'H'
            send_byte(8'h41);  // 'A'
            send_byte(8'h42);  // 'B'
            send_byte(8'h43);  // 'C'
            send_byte(8'h44);  // 'D'
            send_byte(8'h45);  // 'E'
            send_byte(8'h46);  // 'F'
            send_byte(8'h47);  // 'G'
            send_byte(8'h48);  // 'H'

            // CRC Field - Example value (just a placeholder here, typically 15 bits)
            send_byte(8'hAB);
            send_bit(0);
            send_bit(1);
            send_bit(1);

            // Stop Field - 1 bit (1) and delimiter (7 recessive bits)
            send_bit(1);  // ACK
            send_bit(1); send_bit(1); send_bit(1); send_bit(1); 
            send_bit(1); send_bit(1); send_bit(1);  // Delimiter
        end
    endtask

    // Initial block
    initial begin
        // Initialize signals
        clock = 0;
        reset = 1;
        R_frame = 0;
        Can_rx = 1;  // Idle line is high
        
        // Reset the module
        #20;
        reset = 0;

        // Send CAN frame with 'A' to 'H' in the data field
        #20;
        $display("Sending CAN frame with data field 'A' to 'H'...");
        send_can_frame();

        // Wait and check results
        #100;
        if (Can_data_ready) begin
            $display("Received data: %h", Can_rx_data_Bus);
        end else begin
            $display("No data received.");
        end

        // Finish simulation
        #200;
        $stop;
    end

endmodule
