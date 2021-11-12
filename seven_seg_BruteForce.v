`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 01:01:17 PM
// Design Name: 
// Module Name: seven_seg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module seven_seg_lab4(
    input i_clk, // 100 Mhz clock source on Basys 3 FPGA
    input i_reset,
    input [3:0] i_ones, ////////////////////////////////////////////////////////////////////////////Change these values to LED1-4
    input [3:0] i_tens,
    input [3:0] i_round_min,
    output reg [3:0] o_Anode_Activate, // anode signals of the 7-segment LED display
    output reg [6:0] o_LED_out// cathode patterns of the 7-segment LED display
    );
    reg [26:0] r_second_counter; // counter for generating 1 second clock enable
    wire w_second_enable;// one second enable for counting numbers
    reg [15:0] r_displayed_number; // counting number to be displayed
    reg [3:0] r_LED_Digit;
    reg [19:0] r_refresh_counter;
             // the first 2 MSB bits for creating 4 LED-activating signals with 2.6ms digit period
    wire [1:0] w_LED_counter; 
              // activates    LED1-LED4
    always @(posedge i_clk or posedge i_reset)
    begin
        if(i_reset==1)
            r_second_counter <= 0;
        else begin
            if(r_second_counter>=99999999) 
                 r_second_counter <= 0;
            else
                r_second_counter <= r_second_counter + 1;
        end
    end 
    assign w_second_enable = (r_second_counter==99999999)?1:0;
    always @(posedge i_clk or posedge i_reset)
    begin
        if(i_reset==1)
            r_displayed_number <= 0;
        else if(one_second_enable==1)
            r_displayed_number <= r_displayed_number + 1;
    end
    always @(posedge i_clk or posedge i_reset)
    begin 
        if(i_reset==1)
            r_refresh_counter <= 0;
        else
            r_refresh_counter <= r_refresh_counter + 1;
    end 
    assign w_LED_counter = r_refresh_counter[19:18];
    // digit period of 2.6ms for activated anodes
    always @(*)
    begin
        case(w_LED_counter)
        2'b00: begin
            o_Anode = 4'b0111; 
            // activate LED1 and Deactivate LED2, LED3, LED4
            r_LED_Digit = i_round_min;
            // the first digit of the 16-bit number
              end
        2'b01: begin
            o_Anode = 4'b1011; 
            // activate LED2 and Deactivate LED1, LED3, LED4
            r_LED_Digit = i_tens;
            // the second digit of the 16-bit number
              end
        2'b10: begin
            o_Anode = 4'b1101; 
            // activate LED3 and Deactivate LED2, LED1, LED4
            r_LED_Digit = i_ones;
            // the third digit of the 16-bit number
                end
        2'b11: begin
            o_Anode = 4'b1110; 
            // activate LED4 and Deactivate LED2, LED3, LED1
            r_LED_Digit = 4'b0000;
            // the fourth digit of the 16-bit number    
               end
        endcase
    end
    // Cathode patterns of the 7-segment LED display 
    always @(*)
    begin
        case(r_LED_Digit)
        4'b0000: o_LED_out = 7'b1000000; // "0"     
        4'b0001: o_LED_out = 7'b1111001; // "1" 
        4'b0010: o_LED_out = 7'b0100100; // "2" 
        4'b0011: o_LED_out = 7'b0110000; // "3" 
        4'b0100: o_LED_out = 7'b0011001; // "4" 
        4'b0101: o_LED_out = 7'b0010010; // "5" 
        4'b0110: o_LED_out = 7'b0000010; // "6" 
        4'b0111: o_LED_out = 7'b1111000; // "7" 
        4'b1000: o_LED_out = 7'b0000000; // "8"     
        4'b1001: o_LED_out = 7'b0010000; // "9" 
        default: o_LED_out = 7'b1000000; // "0" 
        endcase
    end
 endmodule
