`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: DD2 course 
// Engineer: Omar Shaalan
// ID: 900193887

// Create Date: 02/19/2023 01:27:39 PM
// Design Name: 8x8 array multiplier
// Module Name: ArrayMultiplier
//////////////////////////////////////////////////////////////////////////////////

module ArrayMultiplier( input [7:0]a,b,output[15:0]productBus);
wire [5:0]couts;
wire[48:0]sumBus,carryBus;


//First Row Implementation
//module FA(sout,cout,a,b,cin)
//module HA(sout,cout,a,b)

HA c0(sumBus[0],carryBus[0],a[1]&b[0],a[0]&b[1]);
HA c1(sumBus[1],carryBus[1],a[2]&b[0],a[1]&b[1]);
HA c2(sumBus[2],carryBus[2],a[3]&b[0],a[2]&b[1]);
HA c3(sumBus[3],carryBus[3],a[4]&b[0],a[3]&b[1]);
HA c4(sumBus[4],carryBus[4],a[5]&b[0],a[4]&b[1]);
HA c5(sumBus[5],carryBus[5],a[6]&b[0],a[5]&b[1]);
HA c6(sumBus[6],carryBus[6],a[7]&b[0],a[6]&b[1]);

//Second Row Implementation
//module FA(sout,cout,a,b,cin)
//module HA(sout,cout,a,b)
FA c7(sumBus[7],carryBus[7],a[0]&b[2],sumBus[1],carryBus[0]);
FA c8(sumBus[8],carryBus[8],a[1]&b[2],sumBus[2],carryBus[1]);
FA c9(sumBus[9],carryBus[9],a[2]&b[2],sumBus[3],carryBus[2]);
FA c10(sumBus[10],carryBus[10],a[3]&b[2],sumBus[4],carryBus[3]);
FA c11(sumBus[11],carryBus[11],a[4]&b[2],sumBus[5],carryBus[4]);
FA c12(sumBus[12],carryBus[12],a[5]&b[2],sumBus[6],carryBus[5]);

FA c13(sumBus[13],carryBus[13],a[7]&b[1],a[6]&b[2],carryBus[6]);



//End of second raw;

//Third Row Implementation
//module FA(sout,cout,a,b,cin)
//module HA(sout,cout,a,b)
FA c14(sumBus[14],carryBus[14],a[0]&b[3],sumBus[8],carryBus[7]);
FA c15(sumBus[15],carryBus[15],a[1]&b[3],sumBus[9],carryBus[8]);
FA c16(sumBus[16],carryBus[16],a[2]&b[3],sumBus[10],carryBus[9]);
FA c17(sumBus[17],carryBus[17],a[3]&b[3],sumBus[11],carryBus[10]);
FA c18(sumBus[18],carryBus[18],a[4]&b[3],sumBus[12],carryBus[11]);
FA c19(sumBus[19],carryBus[19],a[5]&b[3],sumBus[13],carryBus[12]);

FA c20(sumBus[20],carryBus[20],a[7]&b[2],a[6]&b[3],carryBus[13]);


//end of the third row

//Fourth Row Implementation
//module FA(sout,cout,a,b,cin)
//module HA(sout,cout,a,b)
FA c21(sumBus[21],carryBus[21],a[0]&b[4],sumBus[15],carryBus[14]);
FA c22(sumBus[22],carryBus[22],a[1]&b[4],sumBus[16],carryBus[15]);
FA c23(sumBus[23],carryBus[23],a[2]&b[4],sumBus[17],carryBus[16]);
FA c24(sumBus[24],carryBus[24],a[3]&b[4],sumBus[18],carryBus[17]);
FA c25(sumBus[25],carryBus[25],a[4]&b[4],sumBus[19],carryBus[18]);
FA c26(sumBus[26],carryBus[26],a[5]&b[4],sumBus[20],carryBus[19]);

FA c27(sumBus[27],carryBus[27],a[7]&b[3],a[6]&b[4],carryBus[20]);


//End of the fourth row

//Fifth Row Implementation
//module FA(sout,cout,a,b,cin)
//module HA(sout,cout,a,b)
FA c28(sumBus[28],carryBus[28],a[0]&b[5],sumBus[22],carryBus[21]);
FA c29(sumBus[29],carryBus[29],a[1]&b[5],sumBus[23],carryBus[22]);
FA c30(sumBus[30],carryBus[30],a[2]&b[5],sumBus[24],carryBus[23]);
FA c31(sumBus[31],carryBus[31],a[3]&b[5],sumBus[25],carryBus[24]);
FA c32(sumBus[32],carryBus[32],a[4]&b[5],sumBus[26],carryBus[25]);
FA c33(sumBus[33],carryBus[33],a[5]&b[5],sumBus[27],carryBus[26]);


FA c34(sumBus[34],carryBus[34],a[7]&b[4],a[6]&b[5],carryBus[27]);



//End of fifth row


//Sixth Row Implementation
//module FA(sout,cout,a,b,cin)
//module HA(sout,cout,a,b)
FA c35(sumBus[35],carryBus[35],a[0]&b[6],sumBus[29],carryBus[28]);
FA c36(sumBus[36],carryBus[36],a[1]&b[6],sumBus[30],carryBus[29]);
FA c37(sumBus[37],carryBus[37],a[2]&b[6],sumBus[31],carryBus[30]);
FA c38(sumBus[38],carryBus[38],a[3]&b[6],sumBus[32],carryBus[31]);
FA c39(sumBus[39],carryBus[39],a[4]&b[6],sumBus[33],carryBus[32]);
FA c40(sumBus[40],carryBus[40],a[5]&b[6],sumBus[34],carryBus[33]);

FA c41(sumBus[41],carryBus[41],a[6]&b[6],a[7]&b[5],carryBus[34]);



//end of the sixth row


//Seventh Row Implementation
//module FA(sout,cout,a,b,cin)
//module HA(sout,cout,a,b)
FA c42(sumBus[42],carryBus[42],a[0]&b[7],sumBus[36],carryBus[35]);
FA c43(sumBus[43],carryBus[43],a[1]&b[7],sumBus[37],carryBus[36]);
FA c44(sumBus[44],carryBus[44],a[2]&b[7],sumBus[38],carryBus[37]);
FA c45(sumBus[45],carryBus[45],a[3]&b[7],sumBus[39],carryBus[38]);
FA c46(sumBus[46],carryBus[46],a[4]&b[7],sumBus[40],carryBus[39]);
FA c47(sumBus[47],carryBus[47],a[5]&b[7],sumBus[41],carryBus[40]);

FA c48(sumBus[48],carryBus[48],a[6]&b[7],a[7]&b[6],carryBus[41]);


//End of the seveth row
assign productBus[0] = a[0]&b[0];
assign productBus[1] = sumBus[0];
assign productBus[2] = sumBus[7];
assign productBus[3] = sumBus[14];
assign productBus[4] = sumBus[21];
assign productBus[5] = sumBus[28];
assign productBus[6] = sumBus[35];
assign productBus[7] = sumBus[42];

//eighth Row Implementation
//module FA(sout,cout,a,b,cin)
//module HA(sout,cout,a,b)
HA L1(productBus[8],couts[0],sumBus[43],carryBus[42]);
FA L2(productBus[9],couts[1],couts[0],sumBus[44],carryBus[43]);
FA L3(productBus[10],couts[2],couts[1],sumBus[45],carryBus[44]);
FA L4(productBus[11],couts[3],couts[2],sumBus[46],carryBus[45]);
FA L5(productBus[12],couts[4],couts[3],sumBus[47],carryBus[46]);
FA L6(productBus[13],couts[5],couts[4],sumBus[48],carryBus[47]);
FA L7(productBus[14],productBus[15],couts[5],a[7]&b[7],carryBus[48]);
//end of eighth row
endmodule