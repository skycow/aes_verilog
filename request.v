`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:43:35 04/11/2016 
// Design Name: 
// Module Name:    request 
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
module request(
    input [31:0] in2,
    output reg [31:0] out2
    );
	 
	 wire [7:0]temp;
	 wire [7:0]temp2;
	 wire [7:0]temp3;
	 wire [7:0]temp4;
	 
mycase mycase1(
	.in(in2[31:24]),
	.out(temp)
);
mycase mycase2(
	.in(in2[23:16]),
	.out(temp2)
);
mycase mycase3(
	.in(in2[15:8]),
	.out(temp3)
);
mycase mycase4(
	.in(in2[7:0]),
	.out(temp4)
);


always@(temp)
begin
 out2[31:24] = temp;
end

always@(temp2)
begin
out2[23:16] = temp2;
end

always@(temp3)
begin
out2[15:8] = temp3;
end

always@(temp4)
begin
out2[7:0] = temp4;
end

endmodule
