///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: halfadder.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3> <Die::A3P060> <Package::100 VQFP>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module halfadder( S,C,A,B);
input A,B ;
output S,C;
xor gate1(S,A,B);
and gate2(C,A,B);

//<statements>

endmodule

