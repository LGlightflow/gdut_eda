///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testbench200.v
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

module testbench200;

    reg clk,mr;
    wire c;
    wire[3:0] qh;
    wire[3:0] ql;
    wire[7:0] Q;

    assign Q={qh,ql};
	cnt200 cnt200(.MR(mr),.Clk(clk),.QL(ql),.QH(qh),.C(c));
	initial 
		clk=0;
		parameter clock_period = 2;
		always #(clock_period/2)
			clk=~clk;
	
    initial
        begin
            mr=1;
            #100 mr=0;
            #20 mr=1;
        end

    initial
		#6000 $finish;
endmodule

