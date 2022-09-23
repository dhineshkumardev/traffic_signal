`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:53:52 09/22/2022
// Design Name:   traffic
// Module Name:   E:/xilinx/traffic/source/traffic_tb.v
// Project Name:  source
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: traffic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module traffic_tb;

	// Inputs
	reg i;
	reg s0;
	reg s1;
	reg s2;

	// Outputs
	wire red0;
	wire yellow0;
	wire green0;
	wire red1;
	wire yellow1;
	wire green1;
	wire red2;
	wire yellow2;
	wire green2;
	wire red3;
	wire yellow3;
	wire green3;
	
	initial
	begin
		i = 1;
		s0 = 0;
		s1 = 0;
		s2 = 0;
		#10;
		i = 1;
		s0 = 0;
		s1 = 0;
		s2 = 1;
		#10;
		i = 1;
		s0 = 0;
		s1 = 1;
		s2 = 0;
		#10;
		i = 1;
		s0 = 0;
		s1 = 1;
		s2 = 1;
		#10;
		i = 1;
		s0 = 1;
		s1 = 0;
		s2 = 0;
		#10;
		i = 1;
		s0 = 1;
		s1 = 0;
		s2 = 1;
		#10;
		i = 1;
		s0 = 1;
		s1 = 1;
		s2 = 0;
		#10;
		i = 1;
		s0 = 1;
		s1 = 1;
		s2 = 1;
		end

	// Instantiate the Unit Under Test (UUT)
	traffic uut (
		.i(i), 
		.red0(red0), 
		.yellow0(yellow0), 
		.green0(green0), 
		.red1(red1), 
		.yellow1(yellow1), 
		.green1(green1), 
		.red2(red2), 
		.yellow2(yellow2), 
		.green2(green2), 
		.red3(red3), 
		.yellow3(yellow3), 
		.green3(green3), 
		.s0(s0), 
		.s1(s1), 
		.s2(s2)
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

