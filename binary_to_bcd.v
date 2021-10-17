`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2020 03:59:43 PM
// Design Name: 
// Module Name: Decode_unit
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

module binary_to_bcd(i_val,o_ones,o_tens,o_hundreds);

wire [13:0] w_binary;
//output reg [3:0] thousands_place =0 ,
output reg [3:0] o_hundreds = 0;
output reg [3:0] o_tens = 0;
output reg [3:0] o_ones = 0;
reg [29:0] r_bcd; 
integer i;
input wire [7:0] i_val;

assign w_binary = {6'b000000,i_val};
//always@(binary, posedge clk)
always@(w_binary)
// 
begin 
    r_bcd[13:0] = w_binary; 
    
    for (i = 0; i< 14; i = i+1) begin 
        if (r_bcd[17:14] >= 5) 
            r_bcd[17:14] = r_bcd[17:14] + 3; 
        if (r_bcd[21:18] >= 5)             
            r_bcd[21:18] = r_bcd[21:18] + 3;
        if (r_bcd[25:22] >= 5)             
            r_bcd[25:22] = r_bcd[25:22] + 3; 
        if (r_bcd[29:26] >= 5)              
            r_bcd[29:26] = r_bcd[29:26] + 3; 
        r_bcd = r_bcd  << 1;    
      
    end  
    //thousands = shifter[29:26];
    o_hundreds = r_bcd[25:22];
    o_tens = r_bcd[21:18];
    o_ones = r_bcd[17:14];
    r_bcd = 0;
end
endmodule



