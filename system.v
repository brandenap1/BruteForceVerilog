`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2021 08:59:27 PM
// Design Name: 
// Module Name: system
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


module system(i_start,i_pause,i_clk,i_clk_kb,i_reset,i_data,o_digit,o_segment,o_hSync,o_vSync,o_VGA);
//module system(start, pause, clk, reset, data, digit, segment);
input i_start;
input i_pause;
input i_clk;
input i_clk_kb;
input i_reset;
input i_data;
output [3:0] o_digit;
output [6:0] o_segment;
output [11:0] o_VGA;
output o_hSync, o_vSync;
//output [9:0] led;
reg [1:0] r_types;
wire w_cpu_clk;
wire [3:0] w_round_min;
wire [5:0] w_round_sec;
wire [3:0] w_sec_ones;
wire [3:0] w_sec_tens;
wire [3:0] w_sec_hundreds;
wire [3:0] w_round_min;
wire w_start_state;
wire w_start_temp;
wire w_round_start;
wire [7:0] w_cpu_health_out;
wire [7:0] w_p1_health_out;
wire [3:0] w_move_out;


//always@ (posedge clk) begin
//    if(val)
//        types <= 2'b10;
//    else
//        types <= 2'b00;
//end   
//Buttons_1(heavy,clk,reset,val);
project_keyboard(.i_clk_kb(i_clk_kb),.i_round_start(w_round_start),.i_data(i_data),.o_move_out(w_move_out));
//Button_Debouncer(heavy,clk,heavy_out);
//randomcpu_clk(clk, reset, cpu_clk);
Round_clock(.i_clk(i_clk),.i_reset(i_reset),.i_start(i_start),.i_pause(i_pause),.o_round_min(w_round_min),.o_round_sec(w_round_sec),.o_start_temp(w_start_temp),.o_round_start(w_round_start));
vga_display(.i_clk(i_clk),.i_reset(i_reset),.i_move_out(w_move_out),.i_round_start(w_round_start),.i_pause(i_pause),.o_hSync(o_hSync),.o_vSync(o_vSync),.o_VGA(o_VGA));
binary_to_bcd(.i_val(w_round_sec),o_ones(w_sec_ones),o_tens(w_sec_tens),.o_hundreds(w_sec_hundreds));
game_mechanics_edit(.i_clk(i_clk),.i_reset(i_reset),.i_types(w_move_out),.i_start_temp(),.o_cpu_health(),.o_p1_health(),.o_cpu_attacking());
seven_seg_lab4(.i_clk(i_clk),.i_reset(i_reset),.i_val4(w_sec_ones),.i_val3(w_sec_tens),.i_val2(round_min),.o_Anode_Activate(o_digit),.o_LED_out(o_segment));
//health_led(cpu_health_out,led);
endmodule
