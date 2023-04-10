`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2023 04:34:22 PM
// Design Name: 
// Module Name: ArrayMultiplier_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Wrapper(
input clk,start,
input  [7:0] a,b,
output reg done ,output reg [15:0] productBus
);

	wire [15:0] p;
	reg [1:0]  state = 2'd0;
	reg [7:0]  abs_a;
	reg [7:0]  abs_b;
	
// Order:-"(input [7:0]a,b,output[15:0]productBus)
ArrayMultiplier inst(.a(abs_a), .b(abs_b), .productBus(p));

always @(posedge clk)
    begin
    //cycle 1
    if (start==1'b1 && state==2'd0)
        begin
            abs_a <= a[7] ? (~a +1) :  a;
            abs_b <= b[7] ? (~b +1) :  b;
            state<=2'd1;
            done<=1'b0;
        end
    //cycle 2
    else if(state==2'd1)
        begin
            state<=2'd2;
            done<=1'b0;
        end
    //cycle 3
    else if (state==2'd2)
        begin
            productBus <= (a[7]^b[7]) ? (~p + 1) : p;
            done<=1'b1;
            state<=2'd0;
        end
    else 
        begin
            done<=1'b0;
        end
    end
endmodule