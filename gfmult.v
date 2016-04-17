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
module gfmult(
    input [7:0] val_a,
    input [7:0] val_b,
    output reg [7:0] val_p
    );

	reg [7:0] a;
	reg [7:0] b;
	reg [7:0] p;
	
	//assign a[7:0] = val_a[7:0];
	//assign b[7:0] = val_b[7:0];
	
	always@(val_a or val_b)
	begin
	
	a[7:0] = val_a[7:0];
	b[7:0] = val_b[7:0];
	
	p = 0;
	
	while(b != 0)
	begin
	if(b & 1)
	begin
	p = p ^ a;
	end
	if(a & 8'h80)
	begin
	a = (a << 1) ^ 12'h11b;
	end
	else
	begin
	a = a << 1;
	end
	b = b >> 1;
	end
	
	val_p = p;

	end
endmodule
