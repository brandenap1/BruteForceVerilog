`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2020 01:25:10 PM
// Design Name: 
// Module Name: vga_display
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


module vga_display(
    input wire i_clk, i_round_start, i_pause,
    input [3:0] move_out,
//    input wire [3:0] p1_health_out, cpu_health_out,
//    input wire [3:0] keyboard_input,
    output wire o_hSync, o_vSync,
    output wire [11:0] o_VGA
    );
    
    reg [15:0] count;
    reg pixel_strobe;
    always @(posedge i_clk)
        {pixel_strobe, count} = count + 16'h4000;
    wire [9:0] x;
    wire [8:0] y;
    reg [3:0] counter;
    
    initial begin
        counter <= 0;
    end
    
    
    vga_controller display (.clk_25mhz(i_clk), .pixel_strobe(pixel_strobe), .hSync(o_hSync), .vSync(o_vSync), .xPos(x), .yPos(y));
    // player_sprite sprite (outpum player1)
    // cpu_sprite sprite (output cpu)
    
    //user player register declaration
    reg [11:0] playerL11_reg;
    
    reg [11:0] playerL21_reg;
	reg [11:0] playerL22_reg;
	reg [11:0] playerL23_reg;
	reg [11:0] playerL24_reg;
	reg [11:0] playerL25_reg;
	reg [11:0] playerL26_reg;
	
	reg [11:0] playerL31_reg;
	reg [11:0] playerL32_reg;
	reg [11:0] playerL33_reg;
	reg [11:0] playerL34_reg;
	reg [11:0] playerL35_reg;
	reg [11:0] playerL36_reg;
	
	reg [11:0] playerL41_reg;
	reg [11:0] playerL42_reg;
	reg [11:0] playerL43_reg;
	reg [11:0] playerL44_reg;
	reg [11:0] playerL45_reg;
	reg [11:0] playerL46_reg;
	reg [11:0] playerL47_reg;
	
	reg [11:0] playerL51_reg;
	reg [11:0] playerL52_reg;
	reg [11:0] playerL53_reg;
	reg [11:0] playerL54_reg;
	reg [11:0] playerL55_reg;
	reg [11:0] playerL56_reg;
	reg [11:0] playerL57_reg;
	reg [11:0] playerL58_reg;
	
	reg [11:0] playerL61_reg;
	reg [11:0] playerL62_reg;
	reg [11:0] playerL63_reg;
	reg [11:0] playerL64_reg;
	reg [11:0] playerL65_reg;
	reg [11:0] playerL66_reg;
	reg [11:0] playerL67_reg;
	reg [11:0] playerL68_reg;
	
	reg [11:0] playerL71_reg;
	reg [11:0] playerL72_reg;
	reg [11:0] playerL73_reg;
	reg [11:0] playerL74_reg;
	reg [11:0] playerL75_reg;
	reg [11:0] playerL76_reg;
	reg [11:0] playerL77_reg;
	reg [11:0] playerL78_reg;	
	reg [11:0] playerL79_reg;
	
	reg [11:0] playerL81_reg;
	reg [11:0] playerL82_reg;
	reg [11:0] playerL83_reg;
	reg [11:0] playerL84_reg;
	reg [11:0] playerL85_reg;
	reg [11:0] playerL86_reg;
	reg [11:0] playerL87_reg;
	
	reg [11:0] playerL91_reg;
	reg [11:0] playerL92_reg;
	reg [11:0] playerL93_reg;
	
	reg [11:0] playerL101_reg;

	reg [11:0] playerL111_reg;
	
	reg [11:0] playerL121_reg;
	reg [11:0] playerL122_reg;

	reg [11:0] playerL131_reg;
	reg [11:0] playerL132_reg;

	// Computer Player
	
	//line1
    reg [11:0] cpuL11_reg;

	//line2
	reg [11:0] cpuL21_reg;
	reg [11:0] cpuL22_reg;
	reg [11:0] cpuL23_reg;
	reg [11:0] cpuL24_reg;
	reg [11:0] cpuL25_reg;
	reg [11:0] cpuL26_reg;
	
	//line3
	reg [11:0] cpuL31_reg;
	reg [11:0] cpuL32_reg;
	reg [11:0] cpuL33_reg;
	reg [11:0] cpuL34_reg;
	reg [11:0] cpuL35_reg;
	reg [11:0] cpuL36_reg;
	
	//line4
	reg [11:0] cpuL41_reg;
	reg [11:0] cpuL42_reg;
	reg [11:0] cpuL43_reg;
	reg [11:0] cpuL44_reg;
	reg [11:0] cpuL45_reg;
	reg [11:0] cpuL46_reg;
	reg [11:0] cpuL47_reg;	

	//line5
	reg [11:0] cpuL51_reg;
	reg [11:0] cpuL52_reg;
	reg [11:0] cpuL53_reg;
	reg [11:0] cpuL54_reg;
	reg [11:0] cpuL55_reg;
	reg [11:0] cpuL56_reg;
	reg [11:0] cpuL57_reg;
	reg [11:0] cpuL58_reg;	
	
	//line6
	reg [11:0] cpuL61_reg;
	reg [11:0] cpuL62_reg;
	reg [11:0] cpuL63_reg;
	reg [11:0] cpuL64_reg;
	reg [11:0] cpuL65_reg;
	reg [11:0] cpuL66_reg;
	reg [11:0] cpuL67_reg;
	reg [11:0] cpuL68_reg;	
	
	//line7
	reg [11:0] cpuL71_reg;
	reg [11:0] cpuL72_reg;
	reg [11:0] cpuL73_reg;
	reg [11:0] cpuL74_reg;
	reg [11:0] cpuL75_reg;
	reg [11:0] cpuL76_reg;
	reg [11:0] cpuL77_reg;
	reg [11:0] cpuL78_reg;	
	reg [11:0] cpuL79_reg;	
	
	//line8
	reg [11:0] cpuL81_reg;
	reg [11:0] cpuL82_reg;
	reg [11:0] cpuL83_reg;
	reg [11:0] cpuL84_reg;
	reg [11:0] cpuL85_reg;
	reg [11:0] cpuL86_reg;
	reg [11:0] cpuL87_reg; 
	
	//line9
	reg [11:0] cpuL91_reg;
	reg [11:0] cpuL92_reg;
	reg [11:0] cpuL93_reg;
	
	//line10
	reg [11:0] cpuL101_reg;
	
	//line11
	reg [11:0] cpuL111_reg;
	
	//line12
	reg [11:0] cpuL121_reg;
	reg [11:0] cpuL122_reg;
	
	//line13
	reg [11:0] cpuL131_reg;
	reg [11:0] cpuL132_reg;
	
	// healthbars
	reg [11:0] playerHealthBarFull, cpuHealthBarFull;

	
	always @(posedge i_clk) begin
//	if (p1_health_out > 0 && cpu_health_out <= 0) begin
//	   //cpu dead sprite
//    else if (p1_health_out <= 0 && cpu_health_out > 0) begin
//       //player dead sprite
//    else if (player is attacking && cpu is attacking) begin
//    else if (player is attacking) begin
//    else if (cpu is attacking) begin
//	else begin
//	   //idle sprites
      if (i_round_start) begin
//////////////////////////////////////
          if (move_out == 4'b0001 && i_pause == 0) begin
    //This is for when player is attacking
    //	   if(keyboard_input == 4'b0010 || keyboard_input == 4'b0001)
    //	   begin
               //player register initializing
                playerL11_reg = ((x >= 31) & (y >=  333) & (x <= 50) & (y <= 412)) ? 12'hB20 : 0; //butt
    
                //line2
                playerL21_reg = ((x >= 51) & (y >=  253) & (x <= 70) & (y <= 312)) ? 12'h29A : 0;
                playerL22_reg = ((x >= 51) & (y >=  313) & (x <= 70) & (y <= 332)) ? 12'h4BC : 0;
                playerL23_reg = ((x >= 51) & (y >=  333) & (x <= 70) & (y <= 372)) ? 12'hB20  : 0; 
                playerL24_reg = ((x >= 51) & (y >=  373) & (x <= 70) & (y <= 392)) ? 12'hC20  : 0; 
                playerL25_reg = ((x >= 51) & (y >=  393) & (x <= 70) & (y <= 412)) ? 12'h66D  : 0; 
                playerL26_reg = ((x >= 51) & (y >=  413) & (x <= 70) & (y <= 452)) ? 12'h29A  : 0;
                
                //line3
                playerL31_reg = ((x >= 71) & (y >=  233) & (x <= 90) & (y <= 252)) ? 12'h29A  : 0;
                playerL32_reg = ((x >= 71) & (y >=  253) & (x <= 90) & (y <= 312)) ? 12'h5AC  : 0;
                playerL33_reg = ((x >= 71) & (y >=  313) & (x <= 90) & (y <= 332)) ? 12'h4BC  : 0; 
                playerL34_reg = ((x >= 71) & (y >=  333) & (x <= 90) & (y <= 352)) ? 12'hB20  : 0; 
                playerL35_reg = ((x >= 71) & (y >=  353) & (x <= 90) & (y <= 372)) ? 12'hC20  : 0; 
                playerL36_reg = ((x >= 71) & (y >=  413) & (x <= 90) & (y <= 452)) ? 12'h5AC  : 0;
                
                //line4
                playerL41_reg = ((x >= 91) & (y >=  213) & (x <= 110) & (y <= 232)) ? 12'h29A  : 0;
                playerL42_reg = ((x >= 91) & (y >=  233) & (x <= 110) & (y <= 252)) ? 12'h5AC  : 0;
                playerL43_reg = ((x >= 91) & (y >=  253) & (x <= 110) & (y <= 292)) ? 12'h4BC  : 0; 
                playerL44_reg = ((x >= 91) & (y >=  293) & (x <= 110) & (y <= 332)) ? 12'h5AC  : 0; 
                playerL45_reg = ((x >= 91) & (y >=  333) & (x <= 110) & (y <= 352)) ? 12'hB20  : 0; 
                playerL46_reg = ((x >= 91) & (y >=  353) & (x <= 110) & (y <= 372)) ? 12'hC20  : 0; 
                playerL47_reg = ((x >= 91) & (y >=  433) & (x <= 110) & (y <= 452)) ? 12'h5AC  : 0;
                
                //line5
                playerL51_reg = ((x >= 111) & (y >=  153) & (x <= 130) & (y <= 172)) ? 12'h29A  : 0;
                playerL52_reg = ((x >= 111) & (y >=  173) & (x <= 130) & (y <= 212)) ? 12'h4BC  : 0;
                playerL53_reg = ((x >= 111) & (y >=  213) & (x <= 130) & (y <= 232)) ? 12'h66D  : 0; 
                playerL54_reg = ((x >= 111) & (y >=  233) & (x <= 130) & (y <= 252)) ? 12'h4BC  : 0; 
                playerL55_reg = ((x >= 111) & (y >=  253) & (x <= 130) & (y <= 292)) ? 12'h66D  : 0; 
                playerL56_reg = ((x >= 111) & (y >=  293) & (x <= 130) & (y <= 312)) ? 12'h4BC  : 0; 
                playerL57_reg = ((x >= 111) & (y >=  313) & (x <= 130) & (y <= 352)) ? 12'h5AC  : 0; 
                playerL58_reg = ((x >= 111) & (y >=  353) & (x <= 130) & (y <= 412)) ? 12'hC20  : 0; 
                
                
                
                //line6
                playerL61_reg = ((x >= 131) & (y >=  133) & (x <= 150) & (y <= 212)) ? 12'h4BC  : 0;
                playerL62_reg = ((x >= 131) & (y >=  213) & (x <= 150) & (y <= 232)) ? 12'h66D  : 0;
                playerL63_reg = ((x >= 131) & (y >=  233) & (x <= 150) & (y <= 252)) ? 12'h4BC  : 0; 
                playerL64_reg = ((x >= 131) & (y >=  253) & (x <= 150) & (y <= 332)) ? 12'h66D  : 0; 
                playerL65_reg = ((x >= 131) & (y >=  333) & (x <= 150) & (y <= 352)) ? 12'h4BC  : 0;
                playerL66_reg = ((x >= 131) & (y >=  353) & (x <= 150) & (y <= 372)) ? 12'h5AC  : 0; 
                playerL67_reg = ((x >= 131) & (y >=  373) & (x <= 150) & (y <= 412)) ? 12'hF30  : 0; 
                playerL68_reg = ((x >= 131) & (y >=  413) & (x <= 150) & (y <= 452)) ? 12'h29A  : 0; 
                
                //line7
                playerL71_reg = ((x >= 151) & (y >=  133) & (x <= 170) & (y <= 172)) ? 12'h4BC  : 0;
                playerL72_reg = ((x >= 151) & (y >=  173) & (x <= 170) & (y <= 193)) ? 12'hF30  : 0;
                playerL73_reg = ((x >= 151) & (y >=  193) & (x <= 170) & (y <= 232)) ? 12'h66D  : 0; 
                playerL74_reg = ((x >= 151) & (y >=  233) & (x <= 170) & (y <= 252)) ? 12'h4BC  : 0; 
                playerL75_reg = ((x >= 151) & (y >=  253) & (x <= 170) & (y <= 272)) ? 12'h66D  : 0; 
                playerL76_reg = ((x >= 151) & (y >=  273) & (x <= 170) & (y <= 292)) ? 12'h4BC  : 0; 
                playerL77_reg = ((x >= 151) & (y >=  293) & (x <= 170) & (y <= 312)) ? 12'h66D  : 0; 
                playerL78_reg = ((x >= 151) & (y >=  333) & (x <= 170) & (y <= 412)) ? 12'h66D  : 0; 
                playerL79_reg = ((x >= 151) & (y >=  413) & (x <= 170) & (y <= 452)) ? 12'h5AC  : 0; 
                
                //line8
                playerL81_reg = ((x >= 171) & (y >=  133) & (x <= 190) & (y <= 172)) ? 12'h66D  : 0;
                playerL82_reg = ((x >= 171) & (y >=  173) & (x <= 190) & (y <= 193)) ? 12'hB20  : 0;
                playerL83_reg = ((x >= 171) & (y >=  193) & (x <= 190) & (y <= 232)) ? 12'h66D  : 0; 
                playerL84_reg = ((x >= 171) & (y >=  273) & (x <= 190) & (y <= 332)) ? 12'h4BC  : 0; 
                playerL85_reg = ((x >= 171) & (y >=  373) & (x <= 190) & (y <= 392)) ? 12'h66D  : 0; 
                playerL86_reg = ((x >= 171) & (y >=  433) & (x <= 190) & (y <= 452)) ? 12'h5AC  : 0;
                playerL87_reg = 0; 
                
                //line9
                playerL91_reg = ((x >= 191) & (y >=  173) & (x <= 210) & (y <= 212)) ? 12'h66D  : 0;
                playerL92_reg = ((x >= 191) & (y >=  273) & (x <= 210) & (y <= 292)) ? 12'h4BC  : 0;
                playerL93_reg = ((x >= 191) & (y >=  293) & (x <= 210) & (y <= 312)) ? 12'h66D  : 0; 
                
                //line10
                playerL101_reg = ((x >= 211) & (y >=  273) & (x <= 230) & (y <= 292)) ? 12'h4BC  : 0;
                
                //line11
                playerL111_reg = ((x >= 231) & (y >=  273) & (x <= 250) & (y <= 292)) ? 12'h4BC  : 0;
                
                //line12
                playerL121_reg = ((x >= 251) & (y >=  253) & (x <= 270) & (y <= 272)) ? 12'h66D  : 0;
                playerL122_reg = ((x >= 251) & (y >=  273) & (x <= 270) & (y <= 292)) ? 12'h66D  : 0;
                
                //line13
                playerL131_reg = ((x >= 271) & (y >=  253) & (x <= 290) & (y <= 272)) ? 12'h66D  : 0;
                playerL132_reg = ((x >= 271) & (y >=  273) & (x <= 290) & (y <= 292)) ? 12'h4BC  : 0;
                
                //cpu player register initialization
                
                //line1
                cpuL11_reg = ((x >= 576) & (y >=  333) & (x <= 595) & (y <= 412)) ? 12'h29A : 0; //butt
            
                //line2
                cpuL21_reg = ((x >= 556) & (y >=  253) & (x <= 575) & (y <= 312)) ? 12'hB20 : 0;
                cpuL22_reg = ((x >= 556) & (y >=  313) & (x <= 575) & (y <= 332)) ? 12'hE30 : 0;
                cpuL23_reg = ((x >= 556) & (y >=  333) & (x <= 575) & (y <= 372)) ? 12'h29A : 0; 
                cpuL24_reg = ((x >= 556) & (y >=  373) & (x <= 575) & (y <= 392)) ? 12'h5AC : 0; 
                cpuL25_reg = ((x >= 556) & (y >=  393) & (x <= 575) & (y <= 412)) ? 12'h66D : 0; 
                cpuL26_reg = ((x >= 556) & (y >=  413) & (x <= 575) & (y <= 452)) ? 12'hB20 : 0; 
                
                //line3
                cpuL31_reg = ((x >= 536) & (y >=  233) & (x <= 555) & (y <= 252)) ? 12'hB20 : 0;
                cpuL32_reg = ((x >= 536) & (y >=  253) & (x <= 555) & (y <= 312)) ? 12'hC20 : 0;
                cpuL33_reg = ((x >= 536) & (y >=  313) & (x <= 555) & (y <= 332)) ? 12'hE30 : 0; 
                cpuL34_reg = ((x >= 536) & (y >=  333) & (x <= 555) & (y <= 352)) ? 12'h29A : 0; 
                cpuL35_reg = ((x >= 536) & (y >=  353) & (x <= 555) & (y <= 372)) ? 12'h5AC : 0; 
                cpuL36_reg = ((x >= 536) & (y >=  413) & (x <= 555) & (y <= 452)) ? 12'hC20 : 0;
                
                //line4
                cpuL41_reg = ((x >= 516) & (y >=  213) & (x <= 535) & (y <= 232)) ? 12'hB20 : 0;
                cpuL42_reg = ((x >= 516) & (y >=  233) & (x <= 535) & (y <= 252)) ? 12'hC20 : 0;
                cpuL43_reg = ((x >= 516) & (y >=  253) & (x <= 535) & (y <= 292)) ? 12'hE30 : 0; 
                cpuL44_reg = ((x >= 516) & (y >=  293) & (x <= 535) & (y <= 332)) ? 12'hC20 : 0; 
                cpuL45_reg = ((x >= 516) & (y >=  333) & (x <= 535) & (y <= 352)) ? 12'h29A : 0; 
                cpuL46_reg = ((x >= 516) & (y >=  353) & (x <= 535) & (y <= 372)) ? 12'h5AC : 0; 
                cpuL47_reg = ((x >= 516) & (y >=  433) & (x <= 535) & (y <= 452)) ? 12'hC20 : 0; 	
            
                //line5
                cpuL51_reg = ((x >= 496) & (y >=  153) & (x <= 515) & (y <= 172)) ? 12'hB20 : 0;
                cpuL52_reg = ((x >= 496) & (y >=  173) & (x <= 515) & (y <= 212)) ? 12'hE30 : 0;
                cpuL53_reg = ((x >= 496) & (y >=  213) & (x <= 515) & (y <= 232)) ? 12'hF30 : 0; 
                cpuL54_reg = ((x >= 496) & (y >=  233) & (x <= 515) & (y <= 252)) ? 12'hE30 : 0; 
                cpuL55_reg = ((x >= 496) & (y >=  253) & (x <= 515) & (y <= 292)) ? 12'hF30 : 0; 
                cpuL56_reg = ((x >= 496) & (y >=  293) & (x <= 515) & (y <= 312)) ? 12'hE30 : 0; 
                cpuL57_reg = ((x >= 496) & (y >=  313) & (x <= 515) & (y <= 352)) ? 12'hC20 : 0; 
                cpuL58_reg = ((x >= 496) & (y >=  353) & (x <= 515) & (y <= 412)) ? 12'h5AC : 0;
                
                //line6
                cpuL61_reg = ((x >= 476) & (y >=  133) & (x <= 495) & (y <= 212)) ? 12'hE30 : 0;
                cpuL62_reg = ((x >= 476) & (y >=  213) & (x <= 495) & (y <= 232)) ? 12'hF30 : 0;
                cpuL63_reg = ((x >= 476) & (y >=  233) & (x <= 495) & (y <= 252)) ? 12'hE30 : 0; 
                cpuL64_reg = ((x >= 476) & (y >=  253) & (x <= 495) & (y <= 332)) ? 12'hF30 : 0; 
                cpuL65_reg = ((x >= 476) & (y >=  333) & (x <= 495) & (y <= 352)) ? 12'hE30 : 0; 
                cpuL66_reg = ((x >= 476) & (y >=  353) & (x <= 495) & (y <= 372)) ? 12'hC20 : 0; 
                cpuL67_reg = ((x >= 476) & (y >=  373) & (x <= 495) & (y <= 412)) ? 12'h66D : 0; 
                cpuL68_reg = ((x >= 476) & (y >=  413) & (x <= 495) & (y <= 452)) ? 12'hB20 : 0;
                
                //line7	
                cpuL71_reg = ((x >= 456) & (y >=  133) & (x <= 475) & (y <= 172)) ? 12'hE30 : 0;
                cpuL72_reg = ((x >= 456) & (y >=  173) & (x <= 475) & (y <= 193)) ? 12'h66D : 0;
                cpuL73_reg = ((x >= 456) & (y >=  193) & (x <= 475) & (y <= 232)) ? 12'hF30 : 0; 
                cpuL74_reg = ((x >= 456) & (y >=  233) & (x <= 475) & (y <= 252)) ? 12'hE30 : 0; 
                cpuL75_reg = ((x >= 456) & (y >=  253) & (x <= 475) & (y <= 272)) ? 12'hF30 : 0; 
                cpuL76_reg = ((x >= 456) & (y >=  273) & (x <= 475) & (y <= 292)) ? 12'hE30 : 0; 
                cpuL77_reg = ((x >= 456) & (y >=  333) & (x <= 475) & (y <= 412)) ? 12'hF30 : 0; 
                cpuL78_reg = ((x >= 456) & (y >=  413) & (x <= 475) & (y <= 452)) ? 12'hC20 : 0;  
                cpuL79_reg = 0; 
                
                //line8
                cpuL81_reg = ((x >= 436) & (y >=  133) & (x <= 455) & (y <= 172)) ? 12'hF30 : 0;
                cpuL82_reg = ((x >= 436) & (y >=  173) & (x <= 455) & (y <= 193)) ? 12'h29A : 0;
                cpuL83_reg = ((x >= 436) & (y >=  193) & (x <= 455) & (y <= 232)) ? 12'hF30 : 0; 
                cpuL84_reg = ((x >= 436) & (y >=  253) & (x <= 455) & (y <= 292)) ? 12'hE30 : 0; 
                cpuL85_reg = ((x >= 436) & (y >=  293) & (x <= 455) & (y <= 332)) ? 12'hF30 : 0; 
                cpuL86_reg = ((x >= 436) & (y >=  373) & (x <= 455) & (y <= 392)) ? 12'hF30 : 0; 
                cpuL87_reg = ((x >= 436) & (y >=  433) & (x <= 455) & (y <= 452)) ? 12'hC20 : 0;
                
                //line9
                cpuL91_reg = ((x >= 416) & (y >=  173) & (x <= 435) & (y <= 212)) ? 12'hF30 : 0;
                cpuL92_reg = ((x >= 416) & (y >=  293) & (x <= 435) & (y <= 332)) ? 12'hE30 : 0;
                cpuL93_reg = ((x >= 416) & (y >=  333) & (x <= 435) & (y <= 352)) ? 12'hF30 : 0; 
                
                //line10
                cpuL101_reg = ((x >= 396) & (y >=  333) & (x <= 415) & (y <= 372)) ? 12'hE30 : 0;
                
                //line11
                cpuL111_reg = ((x >= 376) & (y >=  333) & (x <= 395) & (y <= 352)) ? 12'hE30 : 0;
                
                //line12
                cpuL121_reg = 0;
                cpuL122_reg = 0;
                
                //line13
                cpuL131_reg = 0;
                cpuL132_reg = 0;
           end
           else begin
	   // This is for the both idle characters sprite	       
	        playerL11_reg = ((x >= 31) & (y >=  333) & (x <= 50) & (y <= 412)) ? 12'hB20 : 0; //butt

            //line2
            playerL21_reg = ((x >= 51) & (y >=  253) & (x <= 70) & (y <= 312)) ? 12'h29A : 0;
            playerL22_reg = ((x >= 51) & (y >=  313) & (x <= 70) & (y <= 332)) ? 12'h4BC : 0;
            playerL23_reg = ((x >= 51) & (y >=  333) & (x <= 70) & (y <= 372)) ? 12'hB20 : 0; 
            playerL24_reg = ((x >= 51) & (y >=  373) & (x <= 70) & (y <= 392)) ? 12'hC20 : 0; 
            playerL25_reg = ((x >= 51) & (y >=  393) & (x <= 70) & (y <= 412)) ? 12'h66D : 0; 
            playerL26_reg = ((x >= 51) & (y >=  413) & (x <= 70) & (y <= 452)) ? 12'h29A : 0;
            
            //line3
            playerL31_reg = ((x >= 71) & (y >=  233) & (x <= 90) & (y <= 252)) ? 12'h29A  : 0;
            playerL32_reg = ((x >= 71) & (y >=  253) & (x <= 90) & (y <= 312)) ? 12'h5AC  : 0;
            playerL33_reg = ((x >= 71) & (y >=  313) & (x <= 90) & (y <= 332)) ? 12'h4BC  : 0; 
            playerL34_reg = ((x >= 71) & (y >=  333) & (x <= 90) & (y <= 352)) ? 12'hB20  : 0; 
            playerL35_reg = ((x >= 71) & (y >=  353) & (x <= 90) & (y <= 372)) ? 12'hC20  : 0; 
            playerL36_reg = ((x >= 71) & (y >=  413) & (x <= 90) & (y <= 452)) ? 12'h5AC  : 0;
            
            //line4
            playerL41_reg = ((x >= 91) & (y >=  213) & (x <= 110) & (y <= 232)) ? 12'h29A  : 0;
            playerL42_reg = ((x >= 91) & (y >=  233) & (x <= 110) & (y <= 252)) ? 12'h5AC  : 0;
            playerL43_reg = ((x >= 91) & (y >=  253) & (x <= 110) & (y <= 292)) ? 12'h4BC  : 0; 
            playerL44_reg = ((x >= 91) & (y >=  293) & (x <= 110) & (y <= 332)) ? 12'h5AC  : 0; 
            playerL45_reg = ((x >= 91) & (y >=  333) & (x <= 110) & (y <= 352)) ? 12'hB20  : 0; 
            playerL46_reg = ((x >= 91) & (y >=  353) & (x <= 110) & (y <= 372)) ? 12'hC20  : 0; 
            playerL47_reg = ((x >= 91) & (y >=  433) & (x <= 110) & (y <= 452)) ? 12'h5AC  : 0;
            
            //line5
            playerL51_reg = ((x >= 111) & (y >=  153) & (x <= 130) & (y <= 172)) ? 12'h29A  : 0;
            playerL52_reg = ((x >= 111) & (y >=  173) & (x <= 130) & (y <= 212)) ? 12'h4BC  : 0;
            playerL53_reg = ((x >= 111) & (y >=  213) & (x <= 130) & (y <= 232)) ? 12'h66D  : 0; 
            playerL54_reg = ((x >= 111) & (y >=  233) & (x <= 130) & (y <= 252)) ? 12'h4BC  : 0; 
            playerL55_reg = ((x >= 111) & (y >=  253) & (x <= 130) & (y <= 292)) ? 12'h66D  : 0; 
            playerL56_reg = ((x >= 111) & (y >=  293) & (x <= 130) & (y <= 312)) ? 12'h4BC  : 0; 
            playerL57_reg = ((x >= 111) & (y >=  313) & (x <= 130) & (y <= 352)) ? 12'h5AC  : 0; 
            playerL58_reg = ((x >= 111) & (y >=  353) & (x <= 130) & (y <= 412)) ? 12'hC20  : 0;
            
            
            
            //line6
            playerL61_reg = ((x >= 131) & (y >=  133) & (x <= 150) & (y <= 212)) ? 12'h4BC  : 0;
            playerL62_reg = ((x >= 131) & (y >=  213) & (x <= 150) & (y <= 232)) ? 12'h66D  : 0;
            playerL63_reg = ((x >= 131) & (y >=  233) & (x <= 150) & (y <= 252)) ? 12'h4BC  : 0; 
            playerL64_reg = ((x >= 131) & (y >=  253) & (x <= 150) & (y <= 332)) ? 12'h66D  : 0; 
            playerL65_reg = ((x >= 131) & (y >=  333) & (x <= 150) & (y <= 352)) ? 12'h4BC  : 0; 
            playerL66_reg = ((x >= 131) & (y >=  353) & (x <= 150) & (y <= 372)) ? 12'h5AC  : 0; 
            playerL67_reg = ((x >= 131) & (y >=  373) & (x <= 150) & (y <= 412)) ? 12'hF30  : 0; 
            playerL68_reg = ((x >= 131) & (y >=  413) & (x <= 150) & (y <= 452)) ? 12'h29A  : 0; 
            
            //line7
            playerL71_reg = ((x >= 151) & (y >=  133) & (x <= 170) & (y <= 172)) ? 12'h4BC  : 0;
            playerL72_reg = ((x >= 151) & (y >=  173) & (x <= 170) & (y <= 193)) ? 12'hF30  : 0;
            playerL73_reg = ((x >= 151) & (y >=  193) & (x <= 170) & (y <= 232)) ? 12'h66D  : 0; 
            playerL74_reg = ((x >= 151) & (y >=  233) & (x <= 170) & (y <= 252)) ? 12'h4BC  : 0; 
            playerL75_reg = ((x >= 151) & (y >=  253) & (x <= 170) & (y <= 272)) ? 12'h66D  : 0; 
            playerL76_reg = ((x >= 151) & (y >=  273) & (x <= 170) & (y <= 292)) ? 12'h4BC  : 0; 
            playerL77_reg = ((x >= 151) & (y >=  333) & (x <= 170) & (y <= 412)) ? 12'h66D  : 0; 
            playerL78_reg = ((x >= 151) & (y >=  413) & (x <= 170) & (y <= 452)) ? 12'h5AC  : 0; 
            
            //line8
            playerL81_reg = ((x >= 171) & (y >=  133) & (x <= 190) & (y <= 172)) ? 12'h66D  : 0;
            playerL82_reg = ((x >= 171) & (y >=  173) & (x <= 190) & (y <= 193)) ? 12'hB20  : 0;
            playerL83_reg = ((x >= 171) & (y >=  193) & (x <= 190) & (y <= 232)) ? 12'h66D  : 0;
            playerL84_reg = ((x >= 171) & (y >=  253) & (x <= 190) & (y <= 292)) ? 12'h4BC  : 0; 
            playerL85_reg = ((x >= 171) & (y >=  293) & (x <= 190) & (y <= 332)) ? 12'h66D  : 0;
            playerL86_reg = ((x >= 171) & (y >=  373) & (x <= 190) & (y <= 393)) ? 12'h66D  : 0;
            playerL87_reg = ((x >= 171) & (y >=  433) & (x <= 190) & (y <= 452)) ? 12'h5AC  : 0;
            
            //line9
            playerL91_reg = ((x >= 191) & (y >=  173) & (x <= 210) & (y <= 212)) ? 12'h66D  : 0;
            playerL92_reg = ((x >= 191) & (y >=  293) & (x <= 210) & (y <= 332)) ? 12'h4BC  : 0;
            playerL93_reg = ((x >= 191) & (y >=  333) & (x <= 210) & (y <= 352)) ? 12'h66D  : 0; 
            
            //line10
            playerL101_reg = ((x >= 211) & (y >=  333) & (x <= 230) & (y <= 372)) ? 12'h4BC  : 0;
            
            //line11
            playerL111_reg = ((x >= 231) & (y >=  333) & (x <= 250) & (y <= 352)) ? 12'h4BC  : 0;
            
            //line12
            playerL121_reg = 0;
            playerL122_reg = 0;
            //line13
            playerL131_reg = 0;
            playerL132_reg = 0;
            
            //cpu player register initialization
            
            //line1
            cpuL11_reg = ((x >= 576) & (y >=  333) & (x <= 595) & (y <= 412)) ? 12'h29A : 0; //butt
        
            //line2
            cpuL21_reg = ((x >= 556) & (y >=  253) & (x <= 575) & (y <= 312)) ? 12'hB20 : 0;
            cpuL22_reg = ((x >= 556) & (y >=  313) & (x <= 575) & (y <= 332)) ? 12'hE30 : 0;
            cpuL23_reg = ((x >= 556) & (y >=  333) & (x <= 575) & (y <= 372)) ? 12'h29A : 0; 
            cpuL24_reg = ((x >= 556) & (y >=  373) & (x <= 575) & (y <= 392)) ? 12'h5AC : 0; 
            cpuL25_reg = ((x >= 556) & (y >=  393) & (x <= 575) & (y <= 412)) ? 12'h66D : 0; 
            cpuL26_reg = ((x >= 556) & (y >=  413) & (x <= 575) & (y <= 452)) ? 12'hB20 : 0; 
            
            //line3
            cpuL31_reg = ((x >= 536) & (y >=  233) & (x <= 555) & (y <= 252)) ? 12'hB20 : 0;
            cpuL32_reg = ((x >= 536) & (y >=  253) & (x <= 555) & (y <= 312)) ? 12'hC20 : 0;
            cpuL33_reg = ((x >= 536) & (y >=  313) & (x <= 555) & (y <= 332)) ? 12'hE30 : 0; 
            cpuL34_reg = ((x >= 536) & (y >=  333) & (x <= 555) & (y <= 352)) ? 12'h29A : 0; 
            cpuL35_reg = ((x >= 536) & (y >=  353) & (x <= 555) & (y <= 372)) ? 12'h5AC : 0; 
            cpuL36_reg = ((x >= 536) & (y >=  413) & (x <= 555) & (y <= 452)) ? 12'hC20 : 0;
            
            //line4
            cpuL41_reg = ((x >= 516) & (y >=  213) & (x <= 535) & (y <= 232)) ? 12'hB20 : 0;
            cpuL42_reg = ((x >= 516) & (y >=  233) & (x <= 535) & (y <= 252)) ? 12'hC20 : 0;
            cpuL43_reg = ((x >= 516) & (y >=  253) & (x <= 535) & (y <= 292)) ? 12'hE30 : 0; 
            cpuL44_reg = ((x >= 516) & (y >=  293) & (x <= 535) & (y <= 332)) ? 12'hC20 : 0; 
            cpuL45_reg = ((x >= 516) & (y >=  333) & (x <= 535) & (y <= 352)) ? 12'h29A : 0; 
            cpuL46_reg = ((x >= 516) & (y >=  353) & (x <= 535) & (y <= 372)) ? 12'h5AC : 0; 
            cpuL47_reg = ((x >= 516) & (y >=  433) & (x <= 535) & (y <= 452)) ? 12'hC20 : 0; 	
        
            //line5
            cpuL51_reg = ((x >= 496) & (y >=  153) & (x <= 515) & (y <= 172)) ? 12'hB20 : 0;
            cpuL52_reg = ((x >= 496) & (y >=  173) & (x <= 515) & (y <= 212)) ? 12'hE30 : 0;
            cpuL53_reg = ((x >= 496) & (y >=  213) & (x <= 515) & (y <= 232)) ? 12'hF30 : 0; 
            cpuL54_reg = ((x >= 496) & (y >=  233) & (x <= 515) & (y <= 252)) ? 12'hE30 : 0; 
            cpuL55_reg = ((x >= 496) & (y >=  253) & (x <= 515) & (y <= 292)) ? 12'hF30 : 0; 
            cpuL56_reg = ((x >= 496) & (y >=  293) & (x <= 515) & (y <= 312)) ? 12'hE30 : 0; 
            cpuL57_reg = ((x >= 496) & (y >=  313) & (x <= 515) & (y <= 352)) ? 12'hC20 : 0; 
            cpuL58_reg = ((x >= 496) & (y >=  353) & (x <= 515) & (y <= 412)) ? 12'h5AC : 0;
            
            //line6
            cpuL61_reg = ((x >= 476) & (y >=  133) & (x <= 495) & (y <= 212)) ? 12'hE30 : 0;
            cpuL62_reg = ((x >= 476) & (y >=  213) & (x <= 495) & (y <= 232)) ? 12'hF30 : 0;
            cpuL63_reg = ((x >= 476) & (y >=  233) & (x <= 495) & (y <= 252)) ? 12'hE30 : 0; 
            cpuL64_reg = ((x >= 476) & (y >=  253) & (x <= 495) & (y <= 332)) ? 12'hF30 : 0; 
            cpuL65_reg = ((x >= 476) & (y >=  333) & (x <= 495) & (y <= 352)) ? 12'hE30 : 0; 
            cpuL66_reg = ((x >= 476) & (y >=  353) & (x <= 495) & (y <= 372)) ? 12'hC20 : 0; 
            cpuL67_reg = ((x >= 476) & (y >=  373) & (x <= 495) & (y <= 412)) ? 12'h66D : 0; 
            cpuL68_reg = ((x >= 476) & (y >=  413) & (x <= 495) & (y <= 452)) ? 12'hB20 : 0;
            
            //line7	
            cpuL71_reg = ((x >= 456) & (y >=  133) & (x <= 475) & (y <= 172)) ? 12'hE30 : 0;
            cpuL72_reg = ((x >= 456) & (y >=  173) & (x <= 475) & (y <= 193)) ? 12'h66D : 0;
            cpuL73_reg = ((x >= 456) & (y >=  193) & (x <= 475) & (y <= 232)) ? 12'hF30 : 0; 
            cpuL74_reg = ((x >= 456) & (y >=  233) & (x <= 475) & (y <= 252)) ? 12'hE30 : 0; 
            cpuL75_reg = ((x >= 456) & (y >=  253) & (x <= 475) & (y <= 272)) ? 12'hF30 : 0; 
            cpuL76_reg = ((x >= 456) & (y >=  273) & (x <= 475) & (y <= 292)) ? 12'hE30 : 0; 
            cpuL77_reg = ((x >= 456) & (y >=  333) & (x <= 475) & (y <= 412)) ? 12'hF30 : 0; 
            cpuL78_reg = ((x >= 456) & (y >=  413) & (x <= 475) & (y <= 452)) ? 12'hC20 : 0;  
            cpuL79_reg = 0; 
            
            //line8
            cpuL81_reg = ((x >= 436) & (y >=  133) & (x <= 455) & (y <= 172)) ? 12'hF30 : 0;
            cpuL82_reg = ((x >= 436) & (y >=  173) & (x <= 455) & (y <= 193)) ? 12'h29A : 0;
            cpuL83_reg = ((x >= 436) & (y >=  193) & (x <= 455) & (y <= 232)) ? 12'hF30 : 0; 
            cpuL84_reg = ((x >= 436) & (y >=  253) & (x <= 455) & (y <= 292)) ? 12'hE30 : 0; 
            cpuL85_reg = ((x >= 436) & (y >=  293) & (x <= 455) & (y <= 332)) ? 12'hF30 : 0; 
            cpuL86_reg = ((x >= 436) & (y >=  373) & (x <= 455) & (y <= 392)) ? 12'hF30 : 0; 
            cpuL87_reg = ((x >= 436) & (y >=  433) & (x <= 455) & (y <= 452)) ? 12'hC20 : 0;
            
            //line9
            cpuL91_reg = ((x >= 416) & (y >=  173) & (x <= 435) & (y <= 212)) ? 12'hF30 : 0;
            cpuL92_reg = ((x >= 416) & (y >=  293) & (x <= 435) & (y <= 332)) ? 12'hE30 : 0;
            cpuL93_reg = ((x >= 416) & (y >=  333) & (x <= 435) & (y <= 352)) ? 12'hF30 : 0; 
            
            //line10
            cpuL101_reg = ((x >= 396) & (y >=  333) & (x <= 415) & (y <= 372)) ? 12'hE30 : 0;
            
            //line11
            cpuL111_reg = ((x >= 376) & (y >=  333) & (x <= 395) & (y <= 352)) ? 12'hE30 : 0;
            
            //line12
            cpuL121_reg = 0;
            cpuL122_reg = 0;
            
            //line13
            cpuL131_reg = 0;
            cpuL132_reg = 0;
	   end 
	       //health bar register initializing
//	       playerHealthBarFull = ((x >= 31) & (y >= 93) & (x <= 230) & (y <= 113)) ? 12'h0F0 : 0;
//	       cpuHealthBarFull = ((x >= 396) & (y >= 93) & (x <= 595) & (y <= 113)) ? 12'h0F0 : 0;
	   end
	   else begin
	   // This is for the both idle characters sprite	       
	        playerL11_reg = ((x >= 31) & (y >=  333) & (x <= 50) & (y <= 412)) ? 12'hB20 : 0; //butt

            //line2
            playerL21_reg = ((x >= 51) & (y >=  253) & (x <= 70) & (y <= 312)) ? 12'h29A : 0;
            playerL22_reg = ((x >= 51) & (y >=  313) & (x <= 70) & (y <= 332)) ? 12'h4BC : 0;
            playerL23_reg = ((x >= 51) & (y >=  333) & (x <= 70) & (y <= 372)) ? 12'hB20 : 0; 
            playerL24_reg = ((x >= 51) & (y >=  373) & (x <= 70) & (y <= 392)) ? 12'hC20 : 0; 
            playerL25_reg = ((x >= 51) & (y >=  393) & (x <= 70) & (y <= 412)) ? 12'h66D : 0; 
            playerL26_reg = ((x >= 51) & (y >=  413) & (x <= 70) & (y <= 452)) ? 12'h29A : 0;
            
            //line3
            playerL31_reg = ((x >= 71) & (y >=  233) & (x <= 90) & (y <= 252)) ? 12'h29A  : 0;
            playerL32_reg = ((x >= 71) & (y >=  253) & (x <= 90) & (y <= 312)) ? 12'h5AC  : 0;
            playerL33_reg = ((x >= 71) & (y >=  313) & (x <= 90) & (y <= 332)) ? 12'h4BC  : 0; 
            playerL34_reg = ((x >= 71) & (y >=  333) & (x <= 90) & (y <= 352)) ? 12'hB20  : 0; 
            playerL35_reg = ((x >= 71) & (y >=  353) & (x <= 90) & (y <= 372)) ? 12'hC20  : 0; 
            playerL36_reg = ((x >= 71) & (y >=  413) & (x <= 90) & (y <= 452)) ? 12'h5AC  : 0;
            
            //line4
            playerL41_reg = ((x >= 91) & (y >=  213) & (x <= 110) & (y <= 232)) ? 12'h29A  : 0;
            playerL42_reg = ((x >= 91) & (y >=  233) & (x <= 110) & (y <= 252)) ? 12'h5AC  : 0;
            playerL43_reg = ((x >= 91) & (y >=  253) & (x <= 110) & (y <= 292)) ? 12'h4BC  : 0; 
            playerL44_reg = ((x >= 91) & (y >=  293) & (x <= 110) & (y <= 332)) ? 12'h5AC  : 0; 
            playerL45_reg = ((x >= 91) & (y >=  333) & (x <= 110) & (y <= 352)) ? 12'hB20  : 0; 
            playerL46_reg = ((x >= 91) & (y >=  353) & (x <= 110) & (y <= 372)) ? 12'hC20  : 0; 
            playerL47_reg = ((x >= 91) & (y >=  433) & (x <= 110) & (y <= 452)) ? 12'h5AC  : 0;
            
            //line5
            playerL51_reg = ((x >= 111) & (y >=  153) & (x <= 130) & (y <= 172)) ? 12'h29A  : 0;
            playerL52_reg = ((x >= 111) & (y >=  173) & (x <= 130) & (y <= 212)) ? 12'h4BC  : 0;
            playerL53_reg = ((x >= 111) & (y >=  213) & (x <= 130) & (y <= 232)) ? 12'h66D  : 0; 
            playerL54_reg = ((x >= 111) & (y >=  233) & (x <= 130) & (y <= 252)) ? 12'h4BC  : 0; 
            playerL55_reg = ((x >= 111) & (y >=  253) & (x <= 130) & (y <= 292)) ? 12'h66D  : 0; 
            playerL56_reg = ((x >= 111) & (y >=  293) & (x <= 130) & (y <= 312)) ? 12'h4BC  : 0; 
            playerL57_reg = ((x >= 111) & (y >=  313) & (x <= 130) & (y <= 352)) ? 12'h5AC  : 0; 
            playerL58_reg = ((x >= 111) & (y >=  353) & (x <= 130) & (y <= 412)) ? 12'hC20  : 0;
            
            
            
            //line6
            playerL61_reg = ((x >= 131) & (y >=  133) & (x <= 150) & (y <= 212)) ? 12'h4BC  : 0;
            playerL62_reg = ((x >= 131) & (y >=  213) & (x <= 150) & (y <= 232)) ? 12'h66D  : 0;
            playerL63_reg = ((x >= 131) & (y >=  233) & (x <= 150) & (y <= 252)) ? 12'h4BC  : 0; 
            playerL64_reg = ((x >= 131) & (y >=  253) & (x <= 150) & (y <= 332)) ? 12'h66D  : 0; 
            playerL65_reg = ((x >= 131) & (y >=  333) & (x <= 150) & (y <= 352)) ? 12'h4BC  : 0; 
            playerL66_reg = ((x >= 131) & (y >=  353) & (x <= 150) & (y <= 372)) ? 12'h5AC  : 0; 
            playerL67_reg = ((x >= 131) & (y >=  373) & (x <= 150) & (y <= 412)) ? 12'hF30  : 0; 
            playerL68_reg = ((x >= 131) & (y >=  413) & (x <= 150) & (y <= 452)) ? 12'h29A  : 0; 
            
            //line7
            playerL71_reg = ((x >= 151) & (y >=  133) & (x <= 170) & (y <= 172)) ? 12'h4BC  : 0;
            playerL72_reg = ((x >= 151) & (y >=  173) & (x <= 170) & (y <= 193)) ? 12'hF30  : 0;
            playerL73_reg = ((x >= 151) & (y >=  193) & (x <= 170) & (y <= 232)) ? 12'h66D  : 0; 
            playerL74_reg = ((x >= 151) & (y >=  233) & (x <= 170) & (y <= 252)) ? 12'h4BC  : 0; 
            playerL75_reg = ((x >= 151) & (y >=  253) & (x <= 170) & (y <= 272)) ? 12'h66D  : 0; 
            playerL76_reg = ((x >= 151) & (y >=  273) & (x <= 170) & (y <= 292)) ? 12'h4BC  : 0; 
            playerL77_reg = ((x >= 151) & (y >=  333) & (x <= 170) & (y <= 412)) ? 12'h66D  : 0; 
            playerL78_reg = ((x >= 151) & (y >=  413) & (x <= 170) & (y <= 452)) ? 12'h5AC  : 0; 
            
            //line8
            playerL81_reg = ((x >= 171) & (y >=  133) & (x <= 190) & (y <= 172)) ? 12'h66D  : 0;
            playerL82_reg = ((x >= 171) & (y >=  173) & (x <= 190) & (y <= 193)) ? 12'hB20  : 0;
            playerL83_reg = ((x >= 171) & (y >=  193) & (x <= 190) & (y <= 232)) ? 12'h66D  : 0;
            playerL84_reg = ((x >= 171) & (y >=  253) & (x <= 190) & (y <= 292)) ? 12'h4BC  : 0; 
            playerL85_reg = ((x >= 171) & (y >=  293) & (x <= 190) & (y <= 332)) ? 12'h66D  : 0;
            playerL86_reg = ((x >= 171) & (y >=  373) & (x <= 190) & (y <= 393)) ? 12'h66D  : 0;
            playerL87_reg = ((x >= 171) & (y >=  433) & (x <= 190) & (y <= 452)) ? 12'h5AC  : 0;
            
            //line9
            playerL91_reg = ((x >= 191) & (y >=  173) & (x <= 210) & (y <= 212)) ? 12'h66D  : 0;
            playerL92_reg = ((x >= 191) & (y >=  293) & (x <= 210) & (y <= 332)) ? 12'h4BC  : 0;
            playerL93_reg = ((x >= 191) & (y >=  333) & (x <= 210) & (y <= 352)) ? 12'h66D  : 0; 
            
            //line10
            playerL101_reg = ((x >= 211) & (y >=  333) & (x <= 230) & (y <= 372)) ? 12'h4BC  : 0;
            
            //line11
            playerL111_reg = ((x >= 231) & (y >=  333) & (x <= 250) & (y <= 352)) ? 12'h4BC  : 0;
            
            //line12
            playerL121_reg = 0;
            playerL122_reg = 0;
            //line13
            playerL131_reg = 0;
            playerL132_reg = 0;
            
            //cpu player register initialization
            
            //line1
            cpuL11_reg = ((x >= 576) & (y >=  333) & (x <= 595) & (y <= 412)) ? 12'h29A : 0; //butt
        
            //line2
            cpuL21_reg = ((x >= 556) & (y >=  253) & (x <= 575) & (y <= 312)) ? 12'hB20 : 0;
            cpuL22_reg = ((x >= 556) & (y >=  313) & (x <= 575) & (y <= 332)) ? 12'hE30 : 0;
            cpuL23_reg = ((x >= 556) & (y >=  333) & (x <= 575) & (y <= 372)) ? 12'h29A : 0; 
            cpuL24_reg = ((x >= 556) & (y >=  373) & (x <= 575) & (y <= 392)) ? 12'h5AC : 0; 
            cpuL25_reg = ((x >= 556) & (y >=  393) & (x <= 575) & (y <= 412)) ? 12'h66D : 0; 
            cpuL26_reg = ((x >= 556) & (y >=  413) & (x <= 575) & (y <= 452)) ? 12'hB20 : 0; 
            
            //line3
            cpuL31_reg = ((x >= 536) & (y >=  233) & (x <= 555) & (y <= 252)) ? 12'hB20 : 0;
            cpuL32_reg = ((x >= 536) & (y >=  253) & (x <= 555) & (y <= 312)) ? 12'hC20 : 0;
            cpuL33_reg = ((x >= 536) & (y >=  313) & (x <= 555) & (y <= 332)) ? 12'hE30 : 0; 
            cpuL34_reg = ((x >= 536) & (y >=  333) & (x <= 555) & (y <= 352)) ? 12'h29A : 0; 
            cpuL35_reg = ((x >= 536) & (y >=  353) & (x <= 555) & (y <= 372)) ? 12'h5AC : 0; 
            cpuL36_reg = ((x >= 536) & (y >=  413) & (x <= 555) & (y <= 452)) ? 12'hC20 : 0;
            
            //line4
            cpuL41_reg = ((x >= 516) & (y >=  213) & (x <= 535) & (y <= 232)) ? 12'hB20 : 0;
            cpuL42_reg = ((x >= 516) & (y >=  233) & (x <= 535) & (y <= 252)) ? 12'hC20 : 0;
            cpuL43_reg = ((x >= 516) & (y >=  253) & (x <= 535) & (y <= 292)) ? 12'hE30 : 0; 
            cpuL44_reg = ((x >= 516) & (y >=  293) & (x <= 535) & (y <= 332)) ? 12'hC20 : 0; 
            cpuL45_reg = ((x >= 516) & (y >=  333) & (x <= 535) & (y <= 352)) ? 12'h29A : 0; 
            cpuL46_reg = ((x >= 516) & (y >=  353) & (x <= 535) & (y <= 372)) ? 12'h5AC : 0; 
            cpuL47_reg = ((x >= 516) & (y >=  433) & (x <= 535) & (y <= 452)) ? 12'hC20 : 0; 	
        
            //line5
            cpuL51_reg = ((x >= 496) & (y >=  153) & (x <= 515) & (y <= 172)) ? 12'hB20 : 0;
            cpuL52_reg = ((x >= 496) & (y >=  173) & (x <= 515) & (y <= 212)) ? 12'hE30 : 0;
            cpuL53_reg = ((x >= 496) & (y >=  213) & (x <= 515) & (y <= 232)) ? 12'hF30 : 0; 
            cpuL54_reg = ((x >= 496) & (y >=  233) & (x <= 515) & (y <= 252)) ? 12'hE30 : 0; 
            cpuL55_reg = ((x >= 496) & (y >=  253) & (x <= 515) & (y <= 292)) ? 12'hF30 : 0; 
            cpuL56_reg = ((x >= 496) & (y >=  293) & (x <= 515) & (y <= 312)) ? 12'hE30 : 0; 
            cpuL57_reg = ((x >= 496) & (y >=  313) & (x <= 515) & (y <= 352)) ? 12'hC20 : 0; 
            cpuL58_reg = ((x >= 496) & (y >=  353) & (x <= 515) & (y <= 412)) ? 12'h5AC : 0;
            
            //line6
            cpuL61_reg = ((x >= 476) & (y >=  133) & (x <= 495) & (y <= 212)) ? 12'hE30 : 0;
            cpuL62_reg = ((x >= 476) & (y >=  213) & (x <= 495) & (y <= 232)) ? 12'hF30 : 0;
            cpuL63_reg = ((x >= 476) & (y >=  233) & (x <= 495) & (y <= 252)) ? 12'hE30 : 0; 
            cpuL64_reg = ((x >= 476) & (y >=  253) & (x <= 495) & (y <= 332)) ? 12'hF30 : 0; 
            cpuL65_reg = ((x >= 476) & (y >=  333) & (x <= 495) & (y <= 352)) ? 12'hE30 : 0; 
            cpuL66_reg = ((x >= 476) & (y >=  353) & (x <= 495) & (y <= 372)) ? 12'hC20 : 0; 
            cpuL67_reg = ((x >= 476) & (y >=  373) & (x <= 495) & (y <= 412)) ? 12'h66D : 0; 
            cpuL68_reg = ((x >= 476) & (y >=  413) & (x <= 495) & (y <= 452)) ? 12'hB20 : 0;
            
            //line7	
            cpuL71_reg = ((x >= 456) & (y >=  133) & (x <= 475) & (y <= 172)) ? 12'hE30 : 0;
            cpuL72_reg = ((x >= 456) & (y >=  173) & (x <= 475) & (y <= 193)) ? 12'h66D : 0;
            cpuL73_reg = ((x >= 456) & (y >=  193) & (x <= 475) & (y <= 232)) ? 12'hF30 : 0; 
            cpuL74_reg = ((x >= 456) & (y >=  233) & (x <= 475) & (y <= 252)) ? 12'hE30 : 0; 
            cpuL75_reg = ((x >= 456) & (y >=  253) & (x <= 475) & (y <= 272)) ? 12'hF30 : 0; 
            cpuL76_reg = ((x >= 456) & (y >=  273) & (x <= 475) & (y <= 292)) ? 12'hE30 : 0; 
            cpuL77_reg = ((x >= 456) & (y >=  333) & (x <= 475) & (y <= 412)) ? 12'hF30 : 0; 
            cpuL78_reg = ((x >= 456) & (y >=  413) & (x <= 475) & (y <= 452)) ? 12'hC20 : 0;  
            cpuL79_reg = 0; 
            
            //line8
            cpuL81_reg = ((x >= 436) & (y >=  133) & (x <= 455) & (y <= 172)) ? 12'hF30 : 0;
            cpuL82_reg = ((x >= 436) & (y >=  173) & (x <= 455) & (y <= 193)) ? 12'h29A : 0;
            cpuL83_reg = ((x >= 436) & (y >=  193) & (x <= 455) & (y <= 232)) ? 12'hF30 : 0; 
            cpuL84_reg = ((x >= 436) & (y >=  253) & (x <= 455) & (y <= 292)) ? 12'hE30 : 0; 
            cpuL85_reg = ((x >= 436) & (y >=  293) & (x <= 455) & (y <= 332)) ? 12'hF30 : 0; 
            cpuL86_reg = ((x >= 436) & (y >=  373) & (x <= 455) & (y <= 392)) ? 12'hF30 : 0; 
            cpuL87_reg = ((x >= 436) & (y >=  433) & (x <= 455) & (y <= 452)) ? 12'hC20 : 0;
            
            //line9
            cpuL91_reg = ((x >= 416) & (y >=  173) & (x <= 435) & (y <= 212)) ? 12'hF30 : 0;
            cpuL92_reg = ((x >= 416) & (y >=  293) & (x <= 435) & (y <= 332)) ? 12'hE30 : 0;
            cpuL93_reg = ((x >= 416) & (y >=  333) & (x <= 435) & (y <= 352)) ? 12'hF30 : 0; 
            
            //line10
            cpuL101_reg = ((x >= 396) & (y >=  333) & (x <= 415) & (y <= 372)) ? 12'hE30 : 0;
            
            //line11
            cpuL111_reg = ((x >= 376) & (y >=  333) & (x <= 395) & (y <= 352)) ? 12'hE30 : 0;
            
            //line12
            cpuL121_reg = 0;
            cpuL122_reg = 0;
            
            //line13
            cpuL131_reg = 0;
            cpuL132_reg = 0;
	   end  
	end
//	end
	
	
	//health bar assignment
//	assign playerHealthBar = ((x >= 31) & (y >= 93) & (x <= 230) & (y <= 113)) ? 12'h0F0 : 0;
//	assign cpuHealthBar = ((x >= 396) & (y >= 93) & (x <= 595) & (y <= 113)) ? 12'h0F0 : 0;
	
	//player assignment
	
	wire [11:0] playerL11;
    assign playerL11 = playerL11_reg; //butt

	//line2
	wire [11:0] playerL21;
	wire [11:0] playerL22;
	wire [11:0] playerL23;
	wire [11:0] playerL24;
	wire [11:0] playerL25;
	wire [11:0] playerL26;
    assign playerL21 = playerL21_reg;
	assign playerL22 = playerL22_reg;
	assign playerL23 = playerL23_reg; 
	assign playerL24 = playerL24_reg;
	assign playerL25 = playerL25_reg; 
	assign playerL26 = playerL26_reg;
	
	//line3
	wire [11:0] playerL31;
	wire [11:0] playerL32;
	wire [11:0] playerL33;
	wire [11:0] playerL34;
	wire [11:0] playerL35;
	wire [11:0] playerL36;
    assign playerL31 = playerL31_reg;
	assign playerL32 = playerL32_reg;
	assign playerL33 = playerL33_reg;
	assign playerL34 = playerL34_reg;
	assign playerL35 = playerL35_reg;
	assign playerL36 = playerL36_reg;
	
	//line4
	wire [11:0] playerL41;
	wire [11:0] playerL42;
	wire [11:0] playerL43;
	wire [11:0] playerL44;
	wire [11:0] playerL45;
	wire [11:0] playerL46;
	wire [11:0] playerL47;
    assign playerL41 = playerL41_reg;
	assign playerL42 = playerL42_reg;
	assign playerL43 = playerL43_reg;
	assign playerL44 = playerL44_reg;
	assign playerL45 = playerL45_reg;
	assign playerL46 = playerL46_reg;
	assign playerL47 = playerL47_reg;
	
	//line5
	wire [11:0] playerL51;
	wire [11:0] playerL52;
	wire [11:0] playerL53;
	wire [11:0] playerL54;
	wire [11:0] playerL55;
	wire [11:0] playerL56;
	wire [11:0] playerL57;
	wire [11:0] playerL58;	
    assign playerL51 = playerL51_reg;
	assign playerL52 = playerL52_reg;
	assign playerL53 = playerL53_reg;
	assign playerL54 = playerL54_reg; 
	assign playerL55 = playerL55_reg; 
	assign playerL56 = playerL56_reg;
	assign playerL57 = playerL57_reg; 
	assign playerL58 = playerL58_reg; 
	
	
	
	//line6
	wire [11:0] playerL61;
	wire [11:0] playerL62;
	wire [11:0] playerL63;
	wire [11:0] playerL64;
	wire [11:0] playerL65;
	wire [11:0] playerL66;
	wire [11:0] playerL67;
	wire [11:0] playerL68;	
    assign playerL61 = playerL61_reg;
	assign playerL62 = playerL62_reg;
	assign playerL63 = playerL63_reg; 
	assign playerL64 = playerL64_reg; 
	assign playerL65 = playerL65_reg;
	assign playerL66 = playerL66_reg;
	assign playerL67 = playerL67_reg; 
	assign playerL68 = playerL68_reg; 
	
	//line7
	wire [11:0] playerL71;
	wire [11:0] playerL72;
	wire [11:0] playerL73;
	wire [11:0] playerL74;
	wire [11:0] playerL75;
	wire [11:0] playerL76;
	wire [11:0] playerL77;
	wire [11:0] playerL78;	
	wire [11:0] playerL79;	
    assign playerL71 = playerL71_reg;
	assign playerL72 = playerL72_reg;
	assign playerL73 = playerL73_reg; 
	assign playerL74 = playerL74_reg;
	assign playerL75 = playerL75_reg;
	assign playerL76 = playerL76_reg; 
	assign playerL77 = playerL77_reg; 
	assign playerL78 = playerL78_reg; 
	assign playerL79 = playerL79_reg;
	
	//line8
	wire [11:0] playerL81;
	wire [11:0] playerL82;
	wire [11:0] playerL83;
	wire [11:0] playerL84;
	wire [11:0] playerL85;
	wire [11:0] playerL86;
	wire [11:0] playerL87;
    assign playerL81 = playerL81_reg;
	assign playerL82 = playerL82_reg;
	assign playerL83 = playerL83_reg;
	assign playerL84 = playerL84_reg;
	assign playerL85 = playerL85_reg;
	assign playerL86 = playerL86_reg;
	assign playerL87 = playerL87_reg;  
	
	//line9
	wire [11:0] playerL91;
	wire [11:0] playerL92;
	wire [11:0] playerL93;
	assign playerL91 = playerL91_reg;
	assign playerL92 = playerL92_reg;
	assign playerL93 = playerL93_reg; 
	
	//line10
	wire [11:0] playerL101;
	assign playerL101 = playerL101_reg;
	
	//line11
	wire [11:0] playerL111;
	assign playerL111 = playerL111_reg;
	
	//line12
	wire [11:0] playerL121;
	wire [11:0] playerL122;
	assign playerL121 = playerL121_reg;
	assign playerL122 = playerL122_reg;
	
	//line13
	wire [11:0] playerL131;
	wire [11:0] playerL132;
	assign playerL131 = playerL131_reg;
	assign playerL132 = playerL132_reg;
	
	// Computer Player assignment
	
	//line1
    wire [11:0] cpuL11;
    assign cpuL11 = cpuL11_reg; //butt

	//line2
	wire [11:0] cpuL21;
	wire [11:0] cpuL22;
	wire [11:0] cpuL23;
	wire [11:0] cpuL24;
	wire [11:0] cpuL25;
	wire [11:0] cpuL26;
    assign cpuL21 = cpuL21_reg;
	assign cpuL22 = cpuL22_reg;
	assign cpuL23 = cpuL23_reg; 
	assign cpuL24 = cpuL24_reg;
	assign cpuL25 = cpuL25_reg; 
	assign cpuL26 = cpuL26_reg; 
	
	//line3
	wire [11:0] cpuL31;
	wire [11:0] cpuL32;
	wire [11:0] cpuL33;
	wire [11:0] cpuL34;
	wire [11:0] cpuL35;
	wire [11:0] cpuL36;
    assign cpuL31 = cpuL31_reg;
	assign cpuL32 = cpuL32_reg;
	assign cpuL33 = cpuL33_reg;
	assign cpuL34 = cpuL34_reg;
	assign cpuL35 = cpuL35_reg;
	assign cpuL36 = cpuL36_reg;
	
	//line4
	wire [11:0] cpuL41;
	wire [11:0] cpuL42;
	wire [11:0] cpuL43;
	wire [11:0] cpuL44;
	wire [11:0] cpuL45;
	wire [11:0] cpuL46;
	wire [11:0] cpuL47;
    assign cpuL41 = cpuL41_reg;
	assign cpuL42 = cpuL42_reg;
	assign cpuL43 = cpuL43_reg; 
	assign cpuL44 = cpuL44_reg; 
	assign cpuL45 = cpuL45_reg; 
	assign cpuL46 = cpuL46_reg;
	assign cpuL47 = cpuL47_reg;	

	//line5
	wire [11:0] cpuL51;
	wire [11:0] cpuL52;
	wire [11:0] cpuL53;
	wire [11:0] cpuL54;
	wire [11:0] cpuL55;
	wire [11:0] cpuL56;
	wire [11:0] cpuL57;
	wire [11:0] cpuL58;	
    assign cpuL51 = cpuL51_reg;
	assign cpuL52 = cpuL52_reg;
	assign cpuL53 = cpuL53_reg;
	assign cpuL54 = cpuL54_reg; 
	assign cpuL55 = cpuL55_reg;
	assign cpuL56 = cpuL56_reg;
	assign cpuL57 = cpuL57_reg; 
	assign cpuL58 = cpuL58_reg; 
	
	//line6
	wire [11:0] cpuL61;
	wire [11:0] cpuL62;
	wire [11:0] cpuL63;
	wire [11:0] cpuL64;
	wire [11:0] cpuL65;
	wire [11:0] cpuL66;
	wire [11:0] cpuL67;
	wire [11:0] cpuL68;	
    assign cpuL61 = cpuL61_reg;
	assign cpuL62 = cpuL62_reg;
	assign cpuL63 = cpuL63_reg; 
	assign cpuL64 = cpuL64_reg;
	assign cpuL65 = cpuL65_reg;
	assign cpuL66 = cpuL66_reg;
	assign cpuL67 = cpuL67_reg; 
	assign cpuL68 = cpuL68_reg; 
	
	//line7
	wire [11:0] cpuL71;
	wire [11:0] cpuL72;
	wire [11:0] cpuL73;
	wire [11:0] cpuL74;
	wire [11:0] cpuL75;
	wire [11:0] cpuL76;
	wire [11:0] cpuL77;
	wire [11:0] cpuL78;	
	wire [11:0] cpuL79;	
    assign cpuL71 = cpuL71_reg;
	assign cpuL72 = cpuL72_reg;
	assign cpuL73 = cpuL73_reg; 
	assign cpuL74 = cpuL74_reg;
	assign cpuL75 = cpuL75_reg; 
	assign cpuL76 = cpuL76_reg;
	assign cpuL77 = cpuL77_reg; 
	assign cpuL78 = cpuL78_reg;
	assign cpuL79 = cpuL79_reg; 
	
	//line8
	wire [11:0] cpuL81;
	wire [11:0] cpuL82;
	wire [11:0] cpuL83;
	wire [11:0] cpuL84;
	wire [11:0] cpuL85;
	wire [11:0] cpuL86;
    assign cpuL81 = cpuL81_reg;
	assign cpuL82 = cpuL82_reg;
	assign cpuL83 = cpuL83_reg; 
	assign cpuL84 = cpuL84_reg;
	assign cpuL85 = cpuL85_reg; 
	assign cpuL86 = cpuL86_reg; 
	
	//line9
	wire [11:0] cpuL91;
	wire [11:0] cpuL92;
	wire [11:0] cpuL93;
	assign cpuL91 = cpuL91_reg;
	assign cpuL92 = cpuL92_reg;
	assign cpuL93 = cpuL93_reg; 
	
	//line10
	wire [11:0] cpuL101;
	assign cpuL101 = cpuL101_reg;
	
	//line11
	wire [11:0] cpuL111;
	assign cpuL111 = cpuL111_reg;
	
	//line12
	wire [11:0] cpuL121;
	wire [11:0] cpuL122;
	assign cpuL121 = cpuL121_reg;
	assign cpuL122 = cpuL122_reg;
	
	//line13
	wire [11:0] cpuL131;
	wire [11:0] cpuL132;
	assign cpuL131 = cpuL131_reg;
	assign cpuL132 = cpuL132_reg;
	
	wire [11:0] playerHealthBarThreeQuarter, cpuHealthBarThreeQuarter;
	
	wire [11:0] playerHealthBar, cpuHealthBar;
	
	
//	assign playerHealthBarFull = ((x >= 31) & (y >= 93) & (x <= 230) & (y <= 113)) ? 12'h0F0 : 0;
//	assign cpuHealthBarFull = ((x >= 396) & (y >= 93) & (x <= 595) & (y <= 113)) ? 12'h0F0 : 0;
	
	assign playerHealthBarThreeQuarter  = ((x >= 31) & (y >= 93) & (x <= 180) & (y <= 113)) ? 12'h0F0 : 0;
	assign cpuHealthBarThreeQuarter = ((x >= 396) & (y >= 93) & (x <= 545) & (y <= 113)) ? 12'h0F0 : 0;
	
	// Boxing Ring
	wire [11:0] ground;
	wire [11:0] post1, post2;
	wire [11:0] r1, r2, r3, r4;
	
	assign ground = ((x >= 0) & (y >= 450)) ? 12'hFFF : 0;
	assign post1 = ((x <= 10) & (y >= 290)) ? 12'hF00 : 0;
	assign post2 = ((x >= 600) & (y >= 290)) ? 12'h00F : 0;
	assign r1 = ((x > 10) & (x < 600) & (y >= 300) & (y <= 310)) ? 12'hFFF : 0;
	assign r2 = ((x > 10) & (x < 600) & (y >= 350) & (y <= 360)) ? 12'hFFF : 0;
	assign r3 = ((x > 10) & (x < 600)& (y >= 400) & (y <= 410)) ? 12'hFFF : 0;
//	assign r4 = ((x >= 21) & (y >= 430) & (y <= )) ? 12'hFFF : 0;
	
	// VGA
	
     assign o_VGA[11:0] = playerL11 | playerL21 | playerL22 | playerL23 | playerL24 | playerL25 | playerL26 | playerL31 | playerL32 | playerL33 | playerL34 | playerL35 | playerL36 |playerL41 | playerL42 | playerL43 | playerL44 | playerL45 | playerL46 | playerL47 | 
     playerL51 | playerL52 | playerL53 | playerL54 | playerL55 | playerL56 | playerL57 | playerL58 | playerL61 | playerL62 | playerL63 | playerL64 | playerL65 | playerL66 | playerL67 | playerL68 | playerL71 |
      playerL72 | playerL73 | playerL74 | playerL75 | playerL76 | playerL77 | playerL78 | playerL79 | playerL81 | playerL82 | playerL83 | playerL84 | playerL85 | playerL86 | playerL87 |
       playerL91 | playerL92 | playerL93 | playerL101 | playerL111 | playerL121 | playerL122 | playerL131 | playerL132 | cpuL11 | cpuL21 | cpuL22 | cpuL23 | cpuL24 | cpuL25 | cpuL26 | cpuL31 | cpuL32 | cpuL33 | cpuL34 | cpuL35 | cpuL36 |cpuL41 | cpuL42 | cpuL43 | cpuL44 | cpuL45 | cpuL46 | cpuL47 | 
     cpuL51 | cpuL52 | cpuL53 | cpuL54 | cpuL55 | cpuL56 | cpuL57 | cpuL58 | cpuL61 | cpuL62 | cpuL63 | cpuL64 | cpuL65 | cpuL66 | cpuL67 | cpuL68 | cpuL71 |
      cpuL72 | cpuL73 | cpuL74 | cpuL75 | cpuL76 | cpuL77 | cpuL78 | cpuL79 | cpuL81 | cpuL82 | cpuL83 | cpuL84 | cpuL85 | cpuL86 |
       cpuL91 | cpuL92 | cpuL93 | cpuL101 | cpuL111 | cpuL121 | cpuL122 | cpuL131 | cpuL132 | ground | post1 | post2 | r1 | r2 | r3;
    
endmodule
