`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:56:17 04/12/2016 
// Design Name: 
// Module Name:    rcon 
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
module rcon(
    input [31:0] rin,
	 input [3:0] round,
    output reg [31:0] rout
    );

wire [31:0]temp;

request request1(
	.in2(rin[31:0]),
	.out2(temp[31:0])
);

always@(temp)
begin
case(round)
4'd0:rout=temp^32'h01000000;
4'd1:rout=temp^32'h02000000;
4'd2:rout=temp^32'h04000000;
4'd3:rout=temp^32'h08000000;
4'd4:rout=temp^32'h10000000;
4'd5:rout=temp^32'h20000000;
4'd6:rout=temp^32'h40000000;
4'd7:rout=temp^32'h80000000;
4'd8:rout=temp^32'h1B000000;
4'd9:rout=temp^32'h36000000;
4'd10:rout=temp^32'h6C000000;
endcase
end

endmodule
