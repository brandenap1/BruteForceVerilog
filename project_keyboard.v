`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2020 03:41:42 PM
// Design Name: 
// Module Name: project_keyboard
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


module project_keyboard(input wire i_clk_kb,
input wire i_round_start,
input wire i_data, //key stroke to be sent
//output reg [3:0] led1 //LED set 1 for 1st value
output reg [3:0] o_data
    );
reg [7:0] r_data_curr; //holder value for data case statement
reg [3:0] o_data_temp; //data to be sent to led1 to be output
reg [3:0] r_bit; 
reg r_flag;
reg r_debounce;

initial 
begin 
    b<=4'h1; 
    r_flag<=1'b0; 
    r_data_curr<=8'h45; 
    o_data<=4'b0000;
    o_data_temp<=4'b0000;
end

//value 1
always @(negedge i_clk_kb) //Active for negative edge of clk from keyboard 
begin 

    case(r_bit) 
    1:; //first bit 
    2:r_data_curr[0]<=o_data; 
    3:r_data_curr[1]<=o_data; 
    4:r_data_curr[2]<=o_data; 
    5:r_data_curr[3]<=o_data; 
    6:r_data_curr[4]<=o_data; 
    7:r_data_curr[5]<=o_data; 
    8:r_data_curr[6]<=o_data; 
    9:r_data_curr[7]<=o_data; 
    10:r_flag<=1'b1; //Parity bit 
    11:r_flag<=1'b0; //Ending bit 
    
    endcase 
     if(r_bit == 1) 
        r_debounce <= 1;
     else
        r_debounce <= 0;
     if(r_bit<=10) 
        r_bit<=r_bit+1'b1; 
     
     else if(r_bit==11) 
        r_bit<=1; 
 
end 
 
always @(negedge i_clk_kb) //Active for negative edge of clk from keyboard  
    begin
    //value 1 from hex on keyboard to binary to be displayed 
    if (i_round_start) begin
            case (r_data_curr)
            8'h1C: o_data_temp = 4'b0001; //letter a for user 1 light punch 
            8'h23: o_data_temp = 4'b0010; //letter d for user 1 heavy punch
            8'h29: o_data_temp = 4'b0011; // space bar
            endcase
    end
    else
        o_data_temp = 4'b0000;
end  
//    8'h05: data_out = 4'b0011; //F1 key for user 2 left punch
//    8'h04: data_out = 4'b0100; //F3 key for user 2 right punch
        
always@(posedge r_flag) // Printing data obtained to led set 1 (0,1,2,3)
begin 
     if(o_data_temp==4'b0001)
         o_data[3:0]<= o_data_temp; 
     else if(o_data_temp==4'b0010)
         o_data[3:0]<= o_data_temp; 
     else if(o_data_temp==4'b0011)
         o_data[3:0]<= o_data_temp;
     else
         o_data[3:0]<=o_data_temp;
end        
endmodule