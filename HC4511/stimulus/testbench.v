//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Sun Dec 18 16:11:21 2022
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testbench.v
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

`timescale 1ns/100ps

module testbench;
    reg[3:0] a;
    wire[7:0]seg;
    reg le,lt,bi;
HC4511 HC4511_0 (
    // Inputs
    .A(a),
    .LT_N(lt),
    .BI_N(bi),
    .LE(le),

    // Outputs
    .Seg(seg )

    // Inouts

);

initial
    begin
    #10 le=1;bi=1;lt=0;a=4'b0000;//all light test ,if succeed ,light up all led
    #10 le=0;bi=1;lt=1;a=4'b0100; //decoder test  4'd4:SM_8S=8'b01100110;//66
    #10 le=0;bi=1;lt=1;a=4'b1001;//4'd9:SM_8S=8'b01101111;//6f
    #10 le=1;bi=1;lt=1;a=4'b0100;//locked
    #10 le=0;bi=1;lt=1;a=4'b0100;
    #10 le=1;bi=0;lt=1;a=4'b0000; //light down
    end
endmodule

