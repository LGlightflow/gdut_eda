//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Sun Dec 18 14:31:28 2022
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
reg a3,a2,a1,a0,b3,b2,b1,b0,iagb,iasb, iaeb; 
wire qagb,qasb,qaeb;

HC85 HC85_0 (
    // Inputs
    .A3(a3),
    .A2(a2),
    .A1(a1),
    .A0(a0),
    .B3(b3),
    .B2(b2),
    .B1(b1),
    .B0(b0),
    .IAGB(iagb),
    .IASB(iasb),
    .IAEB(iaeb),

    // Outputs
    .QAGB( qagb),
    .QASB( qasb),
    .QAEB( qaeb)
    // Inouts
);
initial 
    begin
    a3=1;a2=0;a1=0;a0=0;b3=0;b2=0;b1=0;b0=0;iagb=0;iasb=0; iaeb=0; 
    #10 a3=0;b3=1;
    #10 a3=1;b3=1;a2=1;b2=0;
    #10 a3=1;b3=1;a2=0;b2=1;
    #10 a3=1;b3=1;a2=1;b2=1;
    #10 a3=1;b3=1;a2=1;b2=1;
    #10 a3=1;b3=1;a2=1;b2=1;a1=1;b1=0;
    #10 a3=1;b3=1;a2=1;b2=1;a1=0;b1=1;
    #10 a3=1;b3=1;a2=1;b2=1;a1=1;b1=1;
    #10 a3=1;b3=1;a2=1;b2=1;a1=1;b1=1;a0=1;b0=0;
    #10 a3=1;b3=1;a2=1;b2=1;a1=1;b1=1;a0=0;b0=1;
    #10 a3=1;b3=1;a2=1;b2=1;a1=1;b1=1;a0=1;b0=1;
    #10 a3=1;b3=1;a2=1;b2=1;a1=1;b1=1;a0=1;b0=1;iasb=1;
    #10 a3=1;b3=1;a2=1;b2=1;a1=1;b1=1;a0=1;b0=1;iasb=0;iagb=1;
    #10 a3=1;b3=1;a2=1;b2=1;a1=1;b1=1;a0=1;b0=1;iasb=1;iagb=1;
    #10 a3=1;b3=1;a2=1;b2=1;a1=1;b1=1;a0=0;b0=0;iasb=0;iagb=0;iaeb=1;
    end
endmodule

