//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Fri Dec 09 21:24:10 2022
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
    reg clk,mr;
    wire c;
    wire[3:0] q;
	Counter cnt16(.MR(mr),.TC(c),.Clk(clk),.Q(q));
	initial 
		clk=0;
		parameter clock_period = 20;
		always #(clock_period/2)
			clk=~clk;
	
    initial
        begin
            #10 mr=0;
            #10 mr=1;
            #100 mr=0;
            #20 mr=1;
        end

    initial
		#600 $finish;
endmodule

