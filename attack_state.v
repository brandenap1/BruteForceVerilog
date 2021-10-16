`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2021 01:23:18 PM
// Design Name: 
// Module Name: attack_state
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

module attack_state(i_clk, reset, i_type, i_isPlayer, o_state);

input i_clk;
input i_reset;
input [1:0] i_type;
input i_isPlayer;

reg [7:0] r_random_done = 0;
wire w_feedback;
output reg [1:0] o_state;

//Attack Type
parameter STANDBY = 2'b00,
          LIGHT = 2'b01,
          HEAVY = 2'b10;
          
// Attack States:
parameter NO_HIT = 2'b00,
          CRITICAL = 2'b01,
          NORMAL = 2'b10,
          MISS = 2'b11;

assign w_feedback = ~(r_random_done[7] ^ r_random_done[6]); //for 2-bit LSFR

always @(posedge i_clk) begin //random value for cpu_type
   if (i_reset)
       r_random_done = 8'b00000000;
   else
       r_random_done = {r_random_done[6:0],w_feedback};
   if (i_isPlayer == 1) begin
       if (i_type == HEAVY) begin
           if (r_random_done >= 0 && r_random_done <= 24)
               o_state <= CRITICAL;
           else if (r_random_done >= 25 && r_random_done <= 241)
               o_state = NORMAL;
           else if (r_random_done >= 242 && r_random_done <= 255)
               o_state = MISS;
           else
               o_state = NO_HIT;
       end
       else if (i_type == LIGHT) begin
           if (r_random_done >= 0 && r_random_done <= 76)
               o_state = CRITICAL;
           else if (r_random_done >= 77 && r_random_done <= 153)
               o_state = NORMAL;
           else if (r_random_done >= 154 && r_random_done <= 255)
               o_state = MISS;
           else
               o_state = NO_HIT;
       end 
       else
           o_state = NO_HIT;      
   end
   else begin // for the CPU
       if (i_type == LIGHT) begin
           if (r_random_done >= 0 && r_random_done <= 51)
               o_state <= CRITICAL;
           else if (r_random_done >= 52 && r_random_done <= 241)
               o_state = NORMAL;
           else if (r_random_done >= 242 && r_random_done <= 255)
               o_state = MISS;
           else
               o_state = NO_HIT;
       end
       else if (i_type == HEAVY) begin
           if (r_random_done >= 0 && r_random_done <= 76)
               o_state = CRITICAL;
           else if (r_random_done >= 77 && r_random_done <= 205)
               o_state = NORMAL;
           else if (r_random_done >= 206 && r_random_done <= 255)
               o_state = MISS;
           else
               o_state = NO_HIT;
       end
       else
           o_state = NO_HIT;
    end
   
end


endmodule   
