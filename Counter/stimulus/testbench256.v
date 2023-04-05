///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testbench256.v
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

module testbench256;

    reg clk,mr;
    wire c;
    wire[3:0] qh;
    wire[3:0] ql;
    wire[7:0] Q;

    assign Q={qh,ql};
	cnt256 cnt256(.MR(mr),.C(c),.Clk(clk),.QL(ql),.QH(qh));
	initial 
		clk=0;
		parameter clock_period = 4;
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

