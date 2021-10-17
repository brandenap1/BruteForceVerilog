`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2020 01:28:17 PM
// Design Name: 
// Module Name: vga_controller
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


module vga_controller(input wire clk_25mhz, pixel_strobe, reset,
    output wire hSync, vSync, blank, active, screenEnd, animate, 
    output wire [9:0] xPos, 
    output wire [8:0] yPos
    );
    
    localparam hSync_start = 16;
    localparam hSync_end = hSync_start + 96;
    localparam hActive_start = hSync_start + hSync_end + 48;
    localparam vSync_start = 480 + 10;
    localparam vSync_end = vSync_start + 2;
    localparam vActive_end = 480;
    localparam line = 800;
    localparam screen = 525;
    
    reg [9:0] hCount, vCount;
    
    assign hSync = ~((hCount >= hSync_start) & (hCount < hSync_end));
    assign vSync = ~((vCount >= vSync_start) & (vCount < vSync_end));
    assign xPos = (hCount < hActive_start) ? 0 : (hCount - hActive_start);
    assign yPos = (vCount >= vActive_end) ? (vActive_end - 1) : (vCount);
    assign blank = ((hCount < hActive_start) | (vCount > vActive_end - 1));
    assign active = ~((hCount < hActive_start) | (vCount > vActive_end - 1));
    assign screenEnd = ((vCount == screen - 1) & (hCount == line));
    assign animate = ((vCount == vActive_end -1) & (hCount == line));
    
    always @ (posedge clk_25mhz) begin
        if (reset) begin
            hCount = 0;
            vCount = 0;
        end
        if (pixel_strobe) begin
            if (hCount == line) begin
                hCount = 0;
                vCount = vCount + 1;
            end
            else 
                hCount = hCount + 1;
            end
            if (vCount == screen)
                vCount = 0;
    end
endmodule
