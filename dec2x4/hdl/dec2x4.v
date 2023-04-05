///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: dec2x4.v
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

module dec2x4(a,b,en,y);
    input a,b,en;
    output reg[3:0]y;
    reg af,bf;
    always
        @(a or b or en)
    begin
        af=~a;
        bf=~b;
        y[0]<=~(af&bf&en);
        y[1]<=~(af&b&en);
        y[2]<=~(a&bf&en);
        y[3]<=~(a&b&en);
    end
endmodule