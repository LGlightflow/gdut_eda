//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Dec 16 23:34:14 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// match4
module match4(
    // Inputs
    A,
    B,
    C,
    // Outputs
    Y
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  A;
input  B;
input  C;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output Y;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   A;
wire   AND2_0_Y;
wire   B;
wire   C;
wire   NAND2_0_Y;
wire   NAND2_1_Y;
wire   NAND2_2_Y;
wire   Y_net_0;
wire   Y_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign Y_net_1 = Y_net_0;
assign Y       = Y_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( C ),
        .B ( A ),
        // Outputs
        .Y ( AND2_0_Y ) 
        );

//--------NAND2
NAND2 NAND2_0(
        // Inputs
        .A ( A ),
        .B ( B ),
        // Outputs
        .Y ( NAND2_0_Y ) 
        );

//--------NAND2
NAND2 NAND2_1(
        // Inputs
        .A ( B ),
        .B ( C ),
        // Outputs
        .Y ( NAND2_1_Y ) 
        );

//--------NAND2
NAND2 NAND2_2(
        // Inputs
        .A ( NAND2_0_Y ),
        .B ( NAND2_1_Y ),
        // Outputs
        .Y ( NAND2_2_Y ) 
        );

//--------OR2
OR2 OR2_0(
        // Inputs
        .A ( NAND2_2_Y ),
        .B ( AND2_0_Y ),
        // Outputs
        .Y ( Y_net_0 ) 
        );


endmodule
