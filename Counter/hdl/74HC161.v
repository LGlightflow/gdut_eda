///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: 74HC161.v
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

module HC161( Q,TC,MR,Clk,CEP,CET,PE,D );
    input MR,Clk,CEP,CET,PE;
    input [3:0]D;
    output [3:0]Q;
    output TC;
    reg [3:0]Q;
    
    always @(negedge MR,posedge Clk)
        if(!MR)
            begin
                Q=0;
            end
        else if(CEP&CET&PE)
            Q=Q+1;
        else if(!PE)
            Q=D;

    assign TC=&{CET,Q};

endmodule

