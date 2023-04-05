//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Fri Dec 09 19:42:16 2022
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

`timescale 1ns/1ns

module testbench;
    reg mr,clk,cep,cet,pe;
	reg [3:0]d;
	wire [3:0]q;
	wire tc;
	
	HC161 u1(q,tc,mr,clk,cep,cet,pe,d);
	initial
		begin
			mr=1; //????
			#100 mr=0;
			#20 mr=1;
			#200 mr=0;
			#25 mr=1;
		end
    initial
        begin
            clk=0;
            repeat(200)
                #5 clk=~clk;
        end
	initial
		begin
			pe=1;
			#150 pe=0;
			#20 pe=1;
			#200 pe=0;
			#20 pe=1;
			#200 pe=0;
			#20 pe=1;
		end
	initial
		begin
			cep=1;
			#220 cep=0;
			#40 cep=1;
		end
	initial
		begin
			cet=1;
			#300 cet=0;
			#30 cet=1;
		end
	initial
		begin
		d=0;
		repeat(20)
			#40 d=$random;
		end
endmodule

