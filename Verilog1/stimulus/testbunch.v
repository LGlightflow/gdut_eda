//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Thu Nov 10 11:36:04 2022
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testbunch.v
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

//module testbunch;
//reg pA,pB,pC;
//wire pY;
//Verilog1 u1(pA,pB,pC,pY);
//initial
    //begin
        //pA=0;pB=0;pC=0;
        //#5 pA=1;
        //#5 pB=0;
        //#10 pC=0;
        //#5 pA=0;
        //#10 pB=1;
        //#10 pC=1;
    //end
//initial
//$monitor("time=%t,a%b,b=%b,c=%b,out=%b",$time,pA,pB,pC,pY);
//endmodule

//module testbunch;
//reg pA,pB,pC;
//wire pY;
//Verilog0 u1(pA,pB,pC,pY);
//initial
    //begin
        //pA=0;pB=0;pC=0;
        //#20 pA=1;
        //#5 pB=1;
        //#5 pA=0;
        //#5 pC=1;
        //#5 pA=1;
        //#10 pB=0;
        //#5 pA=0;
        //
    //end
//initial
//$monitor("time=%t,a%b,b=%b,c=%b,out=%b",$time,pA,pB,pC,pY);
//endmodule


//module testbunch;
//reg pA,pB,pC;
//wire pY;
//Verilog1 u1(pA,pB,pC,pY);
//initial
    //begin
        //pA=0;pB=0;pC=0;
        //#20 pA=1;
        //#5 pB=1;
        //#5 pA=0;
        //#5 pC=1;
        //#5 pA=1;
        //#10 pB=0;
        //#5 pA=0;
        //
    //end
//initial
//$monitor("time=%t,a%b,b=%b,c=%b,out=%b",$time,pA,pB,pC,pY);
//endmodule


module testbunch;
reg pR,pY,pG;
wire pZ;
Verilog2 u1(pR,pY,pG,pZ);
initial
    begin
        pR=0;pY=0;pG=0;
        #20 pR=1;
        #5 pY=1;
        #5 pR=0;
        #5 pG=1;
        #5 pR=1;
        #10 pY=0;
        #5 pR=0;
        
    end
initial
$monitor("time=%t,a%b,b=%b,c=%b,out=%b",$time,pR,pY,pG,pZ);
endmodule


