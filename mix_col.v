`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:34 04/16/2016 
// Design Name: 
// Module Name:    gfmult 
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
module mix_col(
    input [31:0] mix_in,
    output [31:0] mix_out
    );

gfmult gfmult1(
	.val_a(mix_in[7:0]),
	.val_b(8'd2),
	.val_out(res12)
	);


endmodule