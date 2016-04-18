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

wire [7:0]res1;
wire [7:0]res2;
wire [7:0]res3;
wire [7:0]res4;
wire [7:0]res5;
wire [7:0]res6;
wire [7:0]res7;
wire [7:0]res8;


gfmult gfmult1(
	.val_a(mix_in[31:24]),
	.val_b(8'd2),
	.val_p(res1)
	);
gfmult gfmult2(
	.val_a(mix_in[23:16]),
	.val_b(8'd2),
	.val_p(res2[7:0])
	);
gfmult gfmult3(
	.val_a(mix_in[15:8]),
	.val_b(8'd2),
	.val_p(res3)
	);
gfmult gfmult4(
	.val_a(mix_in[7:0]),
	.val_b(8'd2),
	.val_p(res4)
	);
gfmult gfmult5(
	.val_a(mix_in[23:16]),
	.val_b(8'd3),
	.val_p(res5)
	);
gfmult gfmult6(
	.val_a(mix_in[15:8]),
	.val_b(8'd3),
	.val_p(res6)
	);
gfmult gfmult7(
	.val_a(mix_in[31:24]),
	.val_b(8'd3),
	.val_p(res7)
	);
gfmult gfmult8(
	.val_a(mix_in[7:0]),
	.val_b(8'd3),
	.val_p(res8)
	);

assign mix_out[31:24] = res1 ^ res5 ^ mix_in[15:8] ^ mix_in[7:0];
assign mix_out[23:16] = mix_in[31:24] ^ res2 ^ res6 ^ mix_in[7:0];
assign mix_out[15:8] = mix_in[31:24] ^ mix_in[23:16] ^ res3 ^ res8;
assign mix_out[7:0] = res7 ^ mix_in[23:16] ^ mix_in[15:8] ^ res4;

/*
always@(res1b)
begin
	
end
always@(res2b)
begin
	
end
always@(res3b)
begin
	
end
always@(res4b)
begin
	
end
*/

endmodule