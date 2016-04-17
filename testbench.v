`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:39:15 04/16/2016
// Design Name:   gfmult
// Module Name:   C:/Xilinx/14.2/temp/testbench.v
// Project Name:  temp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gfmult
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg [7:0] val_a;
	reg [7:0] val_b;

	// Outputs
	wire [7:0] val_p;

	// Instantiate the Unit Under Test (UUT)
	gfmult uut (
		.val_a(val_a), 
		.val_b(val_b), 
		.val_p(val_p)
	);

	initial begin
		// Initialize Inputs
		val_a = 114;
		val_b = 2;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		val_a = 232;
		val_b = 3;
		#100;
		val_a = 232;
		val_b = 2;
		#100;		
		val_a = 101;
		val_b = 3;
		#100;		
		val_a = 101;
		val_b = 2;


	end
      
endmodule

