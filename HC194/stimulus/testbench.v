//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Sun Dec 18 23:28:40 2022
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
reg mr,clk,dsr,dsl; 
reg [1:0] s; 
reg [3:0] d; 
wire [3:0] q;

HC194 HC194_0 (
    // Inputs
    .MR(mr),
    .S(s),
    .Clk(clk),
    .DSR(dsr),
    .DSL(dsl),
    .D(d),

    // Outputs
    .Q( q)

    // Inouts
);
initial 
begin 
    clk=0; 
    s=2'b11; 
    repeat(20) 
        #20 s=$random; 
end 
always 
    #10 clk=~clk; 
initial 
begin 
    dsr=0; 
    repeat(20) 
        #20 dsr=$random; 
end 
initial 
begin 
    dsl=0; 
    repeat(20) 
    #20 dsl=$random; 
end 
initial 
begin 
    d=0; 
    repeat(20) 
    #20 d=$random; 
end 
initial 
begin 
    mr=1; 
    #350 mr=0; 
end 
initial 
begin 
    #500 $finish; 
end 
endmodule


