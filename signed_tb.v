`timescale 1ns / 1ps
// Company: DD2 course 
// Engineer: Omar Shaalan
// ID: 900193887

// Create Date: 02/19/2023 01:27:39 PM
// Design Name: 8x8 array multiplier
// Module Name: ArrayMultiplier

//////////////////////////////////////////////////////////////////////////////////

module signed_tb;

	reg signed [7:0] mp, mc;	// Registers to drive the DUV inputs
	wire signed [15:0] p;		// Wires to observe the DUV outputs
	reg clk, start;
	wire done;

	Wrapper inst ( .clk(clk), .start(start),.a(mp),.b(mc),.productBus(p),.done(done));

	initial begin
	    $dumpfile("mul.vcd");	// vcd dump file
	    $dumpvars;				// dump everything
	end
always
    begin
        #5;
        clk = ~clk;
    end
	initial begin
	   clk = 1;
		mp = 8'd0;
		mc = 8'd0;
		start = 0;
		
		// Test 1
		#10;
		start = 1;	
		mp = 8'd80; mc = 8'd20;
		#40;
		if(p != mp*mc) $display("Test 1: Failed (Expected: %d, Got: %d)", 16'd200, p);
		else $display("Test 1: Passed (%d x %d = %d)", mc, mp, p);
		
		// Test 2
		#10;	
		mp = 8'd50; 
		#40;
		if(p != mp*mc) $display("Test 2: Failed (Expected: %d, Got: %d)", 16'd400, p);
		else $display("Test 2: Passed (%d x %d = %d)", mc, mp, p);
		
		// Test 3
		#15;	
		mc = -8'd5; 
		#45;
		if(p != mp*mc) $display("Test 3: Failed (Expected: %d, Got: %d)", -16'd100, p);
		else $display("Test 3: Passed (%d x %d = %d)", mc, mp, p);
	
	end
endmodule
