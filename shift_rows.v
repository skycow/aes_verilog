`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:10 04/13/2016 
// Design Name: 
// Module Name:    rotate_words 
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
module rotate_words(
    input [128:0] shift_in,
    output reg [128:0] shift_out
    );
	

always@(rot_in)
	 begin
	 shift_out[127:120] = shift_in[127:120];
	 shift_out[119:112] = shift_in[87:80];
	 
	 
	 shift_out = shift_in[31:0];
	 shift_out = {shift_in[23:0],shift_in[31:24]};
	 shift_out = {shift_in[23:0],shift_in[31:24]};
	 shift_out = {shift_in[23:0],shift_in[31:24]};
end

endmodule