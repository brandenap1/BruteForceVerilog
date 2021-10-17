`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2021 02:22:51 PM
// Design Name: 
// Module Name: cpu_type
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


module cpu_type(i_clk, i_reset, o_cpu_type);

input i_clk;
input i_reset;
output reg [1:0] o_cpu_type;
reg [3:0] r_type_val = 0;
wire w_feedback;

//Attack Type
parameter STANDBY = 2'b00,
          LIGHT = 2'b01,
          HEAVY = 2'b10;

assign w_feedback = ~(w_type_val[3] ^ w_type_val[2]); //for 2-bit LSFR

always @(posedge i_clk) begin //random value for cpu_type
   if (i_reset)
       r_type_val = 2'b00;
   else
       r_type_val = {r_type_val[2:0],w_feedback};
       
   if(r_type_val <= 3)
      o_cpu_type <= STANDBY ;
   else if(r_type_val <= 12)
      o_cpu_type <= LIGHT;    
   else if(r_type_val <= 15)
      o_cpu_type <= HEAVY;        
end

          
endmodule
