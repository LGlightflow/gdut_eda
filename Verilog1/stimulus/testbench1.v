//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Fri Dec 16 20:40:04 2022
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testbench1.v
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

`timescale 1ns/1ns

module testbench1;
    reg pA,pB,pC;
    wire pY;
    match4 tb(.A(pA),.B(pB),.C(pC),.Y(pY));
    initial
    begin
        pA=0;pB=0;pC=0;
        #20 pA=1;
        #5 pB=1;
        #5 pA=0;
        #5 pC=1;
        #5 pA=1;
        #10 pB=0;
        #5 pA=0;
    end
endmodule

