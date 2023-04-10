`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: DD2 course 
// Engineer: Omar Shaalan
// ID: 900193887
//////////////////////////////////////////////////////////////////////////////////

module FA(sout,cout,a,b,cin);
  output sout,cout;
  input a,b,cin;
  assign {cout, sout}= a+b+cin;
//  assign sout=(a^b^cin);
//  assign cout=((a&b)|(a&cin)|(b&cin));
endmodule
