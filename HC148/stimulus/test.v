//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Thu Nov 10 10:49:47 2022
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: test.v
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

`timescale 1ns/1ps

module test;

reg EI;
      reg [7:0] din;
      wire EO;
      wire GS;
      wire [2:0] dout;
      encoder8_3_1 i1 (.EI(EI), .EO(EO), .GS(GS), .din(din), .dout(dout));
    initial                                                
        begin                                                  
          EI = 1;
          din = 8'b11111111;
           #10 EI = 0;
           #10 din = 8'b01010101;
           #10 din = 8'b10101010; 
           #10 din = 8'b11010101;
           #10 din = 8'b11101010;
           #10 din = 8'b11110101;
           #10 din = 8'b11111010;
           #10 din = 8'b11111101;
           #10 din = 8'b11111110;
           #10 din = 8'b11111111;          
        end                 


endmodule

