`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2020 02:32:13 PM
// Design Name: 
// Module Name: Round_clock
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


//module Round_clock(clk,start,reset,pause,round_min, round_sec, sec_clk,health_bar);
module Round_clock(i_clk,i_reset,i_start,i_pause,o_round_min, o_round_sec,o_start_temp,o_round_start);
input i_clk;
input i_start;
input i_reset; 
input i_pause;
reg r_sec_clk; // 1-s clock
reg [27:0] r_sec; // count for creating 1-s clock 
output reg [5:0] o_round_sec = 5; //seconds and minutes counters
output reg [3:0] o_round_min = 0;
output reg o_round_start;
output reg o_start_temp = 0;
//output reg health_bar;


always @(posedge i_clk) //real-time second
begin
    if(i_reset) begin
        r_sec <= 0;
        r_sec_clk <= 0;
    end
    else begin
        r_sec <= r_sec + 1;
        if(r_sec <= 50000000) 
            r_sec_clk <= 0;
        else if (r_sec >= 100000000) begin
            r_sec_clk <= 1;
            r_sec <= 1;
        end
        else
            r_sec_clk <= 1;
    end
end

always @(posedge r_sec_clk) //round countdown
begin
    if (i_reset) begin
        o_round_sec <= 5;
        o_round_min <= 0;
    end
    if (i_start) begin
        o_round_sec <= 5;
        o_round_min <= 0;
        o_start_temp <= 1;
        o_round_start <= 0;
    end
    else if (o_start_temp) begin
        if (~i_pause) begin
            o_round_sec <= o_round_sec - 1;
            if (o_round_sec <= 0) begin
                if (o_round_min >= 1)begin
                    o_round_sec <= 59;
                    o_round_min <= o_round_min - 1;
                end
                else begin
                    o_round_sec <= 30;
                    o_round_min <= 1;
                    o_round_start <= 1;
                    o_start_temp <= 0;
                end    
            end
        end   
        else begin
            o_round_sec <= o_round_sec;
            o_round_min <= o_round_min;
        end                   
    end
    
    else if (o_round_start) begin
        if (~i_pause) begin
            o_round_sec <= o_round_sec - 1;
            if (o_round_sec <= 0) begin
                if (o_round_min >= 1) begin
                    o_round_sec <= 59;
                    o_round_min <= o_round_min - 1;
                end    
                else begin
                    o_round_sec <= 5;
                    o_round_min <= 0;
                    o_round_start <= 0;
                    o_start_temp <= 0;
                end    
            end
        end
        else begin
            o_round_sec <= o_round_sec;
            o_round_min <= o_round_min;
        end                   
    end
    
    else begin
        o_round_min <= o_round_min;
        o_round_sec <= o_round_sec;
    end
end 
endmodule

             
          
