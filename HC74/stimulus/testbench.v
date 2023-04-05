//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Sun Dec 18 20:42:06 2022
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

reg s1,s2,r1,r2,clk1,clk2,d1,d2; 
wire q1,q1n,q2,q2n; 
HC74 HC74_0 (
    // Inputs
    .S1(s1),
    .S2(s2),
    .R1(r1),
    .R2(r2),
    .Clk1(clk1),
    .Clk2(clk2),
    .D1(d1),
    .D2(d2),

    // Outputs
    .Q1(q1),
    .Q2( q2),
    .Q1_N( q1n),
    .Q2_N( q2n)

);

initial 
    begin 
        clk1=0; 
        #400 $finish; 
    end 
always 
    #10 clk1=~clk1; 
    
initial 
    begin 
        clk2=0; 
    end 
always 
    #10 clk2=~clk2; 
initial 
    begin 
        s1=0; 
        repeat(20) 
        #20 s1=$random; 
    end 
initial 
    begin 
        s2=0; 
        repeat(20) 
        #20 s2=$random; 
    end 
initial 
    begin 
        r1=1; 
        repeat(20) 
        #20 r1=$random; 
    end 
initial 
    begin 
        r2=1; 
        repeat(20) 
        #20 r2=$random; 
    end 
initial 
    begin 
        d1=0; 
        repeat(20) 
        #20 d1=$random; 
    end 
initial 
    begin 
        d2=0; 
        repeat(20) 
        #20 d2=$random; 
    end 

endmodule

