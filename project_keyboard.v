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


module project_keyboard(input wire clk_kb,
input wire round_start,
input wire data, //key stroke to be sent
//output reg [3:0] led1 //LED set 1 for 1st value
output reg [3:0] out
    );
reg [7:0] data_curr; //holder value for data case statement
reg [3:0] data_out; //data to be sent to led1 to be output
reg [3:0] b; 
reg flag;
reg debounce;

initial 
begin 
    b<=4'h1; 
    flag<=1'b0; 
    data_curr<=8'h45; 
    out<=4'b0000;
    data_out<=4'b0000;
end

//value 1
always @(negedge clk_kb) //Active for negative edge of clk from keyboard 
begin 

    case(b) 
    1:; //first bit 
    2:data_curr[0]<=data; 
    3:data_curr[1]<=data; 
    4:data_curr[2]<=data; 
    5:data_curr[3]<=data; 
    6:data_curr[4]<=data; 
    7:data_curr[5]<=data; 
    8:data_curr[6]<=data; 
    9:data_curr[7]<=data; 
    10:flag<=1'b1; //Parity bit 
    11:flag<=1'b0; //Ending bit 
    
    endcase 
     if(b == 1) 
        debounce <= 1;
     else
        debounce <= 0;
     if(b<=10) 
        b<=b+1'b1; 
     
     else if(b==11) 
        b<=1; 
 
end 
 
always @(negedge clk_kb) //Active for negative edge of clk from keyboard  
    begin
    //value 1 from hex on keyboard to binary to be displayed 
    if (round_start) begin
            case (data_curr)
            8'h1C: data_out = 4'b0001; //letter a for user 1 light punch 
            8'h23: data_out = 4'b0010; //letter d for user 1 heavy punch
            8'h29: data_out = 4'b0011; // space bar
            endcase
    end
    else
        data_out = 4'b0000;
end  
//    8'h05: data_out = 4'b0011; //F1 key for user 2 left punch
//    8'h04: data_out = 4'b0100; //F3 key for user 2 right punch
        
always@(posedge flag) // Printing data obtained to led set 1 (0,1,2,3)
begin 
     if(data_out==4'b0001)
         out[3:0]<=data_out; 
     else if(data_out==4'b0010)
         out[3:0]<=data_out; 
     else if(data_out==4'b0011)
         out[3:0]<=data_out;
     else
         out[3:0]<=data_out;
end        
endmodule