`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2021 12:01:22 PM
// Design Name: 
// Module Name: randomcpu_clk
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


//module randomcpu_clk(clk,reset,cpu_clk,i);
module randomcpu_clk(i_clk,i_reset,i_cpu_clk);

input i_clk;
input i_reset;
//output reg [1:0] cpu_type;
reg [3:0] r_type_val = 0;
reg [3:0] i = 0;
wire w_feedback;
output reg o_cpu_clk;
reg r_step;

//Attack Type
parameter STANDBY = 2'b00,
          LIGHT = 2'b01,
          HEAVY = 2'b10;

assign w_feedback = ~(r_type_val[3] ^ r_type_val[2]); //for 2-bit LSFR

    always @(posedge i_clk) //real-time second
    begin
        if(i_reset) begin
            r_step <= 0;
            o_cpu_clk <= 0;
        end
        else begin
            r_step <= r_step + i;
            if(r_step <= 50000000) 
                o_cpu_clk <= 0;
            else if (r_step >= 100000000) begin
                o_cpu_clk <= 1;
                r_step <= 1;
            end
            else
                o_cpu_clk <= 1;
        end
    end


always @(posedge i_clk, posedge i_reset) begin //random value for cpu_type
   if (i_reset)
       r_type_val = 2'b00;
   else
       r_type_val = {r_type_val[2:0],w_feedback};
       
    case(r_type_val)
        4'b0000: i <= 1;
        4'b0001: i <= 1;
        4'b0010: i <= 1;
        4'b0011: i <= 1;
        4'b0100: i <= 5;
        4'b0101: i <= 5;
        4'b0110: i <= 5;
        4'b0111: i <= 5;
        4'b1000: i <= 8;
        4'b1001: i <= 8;
        4'b1010: i <= 8;
        4'b1011: i <= 8;
        4'b1100: i <= 12;
        4'b1101: i <= 12;
        4'b1110: i <= 12;
        4'b1111: i <= 12;
        default: i <= 3;
    endcase    
end


endmodule


