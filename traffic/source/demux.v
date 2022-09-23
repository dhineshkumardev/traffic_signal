`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:57:11 09/21/2022 
// Design Name: 
// Module Name:    demux 
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
module demux(o0,o1,o2,in,i0,i1
    );
input in,i0,i1;
output o0,o1,o2;
assign o0=in&(~i0)&(~i1);
assign o1=in&(~i0)&(i1);
assign o2=in&(i0)&(~i1);

endmodule
