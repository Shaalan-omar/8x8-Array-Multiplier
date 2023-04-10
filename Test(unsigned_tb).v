`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: DD2 course 
// Engineer: Omar Shaalan
// ID: 900193887
//////////////////////////////////////////////////////////////////////////////////
module unsigned_tb;

	reg unsigned [7:0] mp, mc;	
	wire unsigned [15:0] p;		

 //ArrayMultiplier( input [7:0]a,b,output[15:0]productBus)
	ArrayMultiplier m ( .a(mp), .b(mc), .productBus(p) );

	initial begin
	    $dumpfile("mul.vcd");	
	    $dumpvars;				
	end

	initial begin
		mp = 8'd0;
		mc = 8'd0;
		
		// Test 1
		#10;	
		mp = 8'd10; mc = 8'd20;
		#10;
		if(p != mp*mc) $display("Test 1: Failed (Expected: %d, Got: %d)", 16'd200, p);
		else $display("Test 1: Passed (%d x %d = %d)", mc, mp, p);
		
		// Test 2
		#10;	
		mp = 8'd20; 
		#10;
		if(p != mp*mc) $display("Test 2: Failed (Expected: %d, Got: %d)", 16'd400, p);
		else $display("Test 2: Passed (%d x %d = %d)", mc, mp, p);
		
		// Test 3
		#10;	
		mc = -8'd5; 
		#10;
		if(p != mp*mc) $display("Test 3: Failed (Expected: %d, Got: %d)", 16'd100, p);
		else $display("Test 3: Passed (%d x %d = %d)", mc, mp, p);
	
	end


endmodule