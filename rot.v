`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:34 04/12/2016 
// Design Name: 
// Module Name:    rot 
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
module rot(
    input [31:0] rot_in,
    output reg [31:0] rot_out
    );
	 
	 always@(rot_in)
	 begin
	 rot_out = {rot_in[23:0],rot_in[31:24]};
end
endmodule
