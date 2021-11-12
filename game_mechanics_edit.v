`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 02:42:22 PM
// Design Name: 
// Module Name: game_mechanics_edit
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


module game_mechanics_edit(i_clk, i_reset, i_types, i_start_temp, o_cpu_health, o_p1_health, o_cpu_attacking);

input i_clk;
input i_reset;
input [3:0] i_types;
input i_start_temp;
wire [3:0] w_cpu_type;
wire [1:0] w_cpu_state;
wire [1:0] w_player_state;
reg r_isPlayer;
output reg [7:0] o_p1_health = 100;
output reg [7:0] o_cpu_health = 100;
output reg o_cpu_attacking;
// Attack Types:
parameter STANDBY = 4'b0000,
        LIGHT = 4'b0001,
        HEAVY = 4'b0010;
        
// Attack States:
parameter NO_HIT = 2'b00,
        CRITICAL = 2'b01,
        NORMAL = 2'b10,
        MISS = 2'b11;

// defining player and cpu attack states
cpu_type ctype(.i_clk(i_clk),.i_reset(i_reset),.o_cpu_type(w_cpu_type)); //generate random cpu attack type
attack_state play(.i_clk(i_clk), .i_reset(i_reset), .i_type(i_types), .i_isPlayer(1),  .o_state(w_player_state));
attack_state cpu(.i_clk(i_clk), .i_reset(i_reset), .i_type(w_cpu_type), .i_isPlayer(0),.o_state(w_cpu_state));

    
always @ (posedge i_clk) begin
    if(i_start_temp) begin
        o_cpu_health <= 100;
        o_p1_health <= 100;
    end
    else begin
        case(i_types) //cpu health deduction
            STANDBY:
                o_cpu_health <= o_cpu_health - 0;
            LIGHT:
                case(w_player_state)
                    CRITICAL:
                        o_cpu_health <= o_cpu_health - 2;
                    NORMAL:
                        o_cpu_health <= o_cpu_health - 1;
                    MISS:
                        o_cpu_health  <= o_cpu_health - 0;
                    NO_HIT:
                        o_cpu_health  <= o_cpu_health - 0;
                endcase
            HEAVY:
                case(w_player_state)
                    CRITICAL:
                        o_cpu_health  <= o_cpu_health - 4;
                    NORMAL:
                        o_cpu_health  <= o_cpu_health - 2;
                    MISS:
                        o_cpu_health  <= o_cpu_health - 0;
                    NO_HIT:
                        o_cpu_health  <= o_cpu_health - 0;
                endcase
        endcase
        
        case(w_cpu_type) //player health deduction
            STANDBY:
                o_p1_health  <= o_p1_health - 0;
            LIGHT:
                case(w_cpu_state)
                    CRITICAL:
                        o_p1_health <= o_p1_health - 2;
                    NORMAL:                   
                        o_p1_health  <= o_p1_health - 1;
                    MISS:
                        o_p1_health  <= o_p1_health - 0;
                    NO_HIT:
                        o_p1_health  <= o_p1_health - 0;
                endcase
            HEAVY:
                case(w_cpu_state)
                    CRITICAL:                 
                        o_p1_health  <= o_p1_health - 4;
                    NORMAL:                  
                        o_p1_health  <= o_p1_health - 2;
                    MISS:
                        o_p1_health  <= o_p1_health - 0;
                    NO_HIT:
                        o_p1_health  <= o_p1_health - 0;
                endcase
        endcase
        if (w_cpu_state == CRITICAL || w_cpu_state == NORMAL)
            o_cpu_attacking <= 1;
    end
end

endmodule
