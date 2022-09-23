`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:34:36 09/21/2022 
// Design Name: 
// Module Name:    traffic 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module traffic(i,red0,yellow0,green0,red1,yellow1,green1,red2,yellow2,green2,red3,yellow3,green3,s0,s1,s2
    );
	output red0,yellow0,green0,red1,yellow1,green1,red2,yellow2,green2,red3,yellow3,green3;
	wire [7:0] d;
	input i,s0,s1,s2;
	assign d0=i&(~s0)&(~s1)&(~s2);
	assign d1=i&(~s0)&(~s1)&(s2);
	assign d2=i&(~s0)&(s1)&(~s2);
	assign d3=i&(~s0)&(s1)&(s2);
	assign d4=i&(s0)&(~s1)&(~s2);
	assign d5=i&(s0)&(~s1)&(s2);
	assign d6=i&(s0)&(s1)&(~s2);
	assign d7=i&(s0)&(s1)&(s2);

demux g1(red0,yellow0,green0,i,d1,d0);
demux g2(red1,yellow1,green1,i,d3,d2);
demux g3(red2,yellow2,green2,i,d5,d4);
demux g4(red3,yellow3,green3,i,d7,d6);
endmodule
