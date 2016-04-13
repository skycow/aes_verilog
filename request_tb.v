`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:57:36 04/11/2016
// Design Name:   request
// Module Name:   D:/tmp3/request_tb.v
// Project Name:  tmp3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: request
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module request_tb;

	// Inputs
	reg [31:0] in3;
	reg [3:0] round3;

	// Outputs
	wire [31:0] out3;

	// Instantiate the Unit Under Test (UUT)
	rcon uut (
		.rin(in3), 
		.round(round3),
		.rout(out3)
	);
	
	rot uut2 (
		.rot_in(in3), 
		.rot_out(out3)
	);

	initial begin
		// Initialize Inputs
		in3 = 32'h0;
		round3 = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		round3 = 4;
		in3 = 32'h12345678;
		#100
		in3 = 32'h9abcdef0;

	end
      
endmodule

