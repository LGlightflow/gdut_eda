//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Dec 10 14:13:34 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// cnt200
module cnt200(
    // Inputs
    Clk,
    MR,
    // Outputs
    C,
    QH,
    QL
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        Clk;
input        MR;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       C;
output [3:0] QH;
output [3:0] QL;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         AND2_0_Y;
wire         AND3_0_Y;
wire         C_net_0;
wire         Clk;
wire   [0:0] HC161_0_Q0to0;
wire   [1:1] HC161_0_Q1to1;
wire   [2:2] HC161_0_Q2to2;
wire   [3:3] HC161_0_Q3to3;
wire         HC161_0_TC;
wire   [2:2] HC161_1_Q2to2;
wire   [3:3] HC161_1_Q3to3;
wire         INV_0_Y;
wire         MR;
wire         NAND3_0_Y;
wire   [3:0] QH_net_0;
wire   [3:0] QL_net_0;
wire   [3:0] QL_net_1;
wire   [3:0] QH_net_1;
wire         C_net_1;
wire   [0:0] Q_slice_0;
wire   [1:1] Q_slice_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         VCC_net;
wire   [3:0] D_const_net_0;
wire   [3:0] D_const_net_1;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net       = 1'b1;
assign D_const_net_0 = 4'h0;
assign D_const_net_1 = 4'h0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign QL_net_1 = QL_net_0;
assign QL[3:0]  = QL_net_1;
assign QH_net_1 = QH_net_0;
assign QH[3:0]  = QH_net_1;
assign C_net_1  = C_net_0;
assign C        = C_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign HC161_0_Q0to0[0] = QL_net_0[0:0];
assign HC161_0_Q1to1[1] = QL_net_0[1:1];
assign HC161_0_Q2to2[2] = QL_net_0[2:2];
assign HC161_0_Q3to3[3] = QL_net_0[3:3];
assign HC161_1_Q2to2[2] = QH_net_0[2:2];
assign HC161_1_Q3to3[3] = QH_net_0[3:3];
assign Q_slice_0[0]     = QH_net_0[0:0];
assign Q_slice_1[1]     = QH_net_0[1:1];
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( HC161_1_Q3to3 ),
        .B ( HC161_1_Q2to2 ),
        // Outputs
        .Y ( AND2_0_Y ) 
        );

//--------AND2
AND2 AND2_1(
        // Inputs
        .A ( AND2_0_Y ),
        .B ( AND3_0_Y ),
        // Outputs
        .Y ( C_net_0 ) 
        );

//--------AND3
AND3 AND3_0(
        // Inputs
        .A ( HC161_0_Q2to2 ),
        .B ( HC161_0_Q1to1 ),
        .C ( HC161_0_Q0to0 ),
        // Outputs
        .Y ( AND3_0_Y ) 
        );

//--------HC161
HC161 HC161_0(
        // Inputs
        .MR  ( MR ),
        .Clk ( Clk ),
        .CEP ( VCC_net ),
        .CET ( VCC_net ),
        .PE  ( INV_0_Y ),
        .D   ( D_const_net_0 ),
        // Outputs
        .Q   ( QL_net_0 ),
        .TC  ( HC161_0_TC ) 
        );

//--------HC161
HC161 HC161_1(
        // Inputs
        .MR  ( MR ),
        .Clk ( Clk ),
        .CEP ( HC161_0_TC ),
        .CET ( VCC_net ),
        .PE  ( INV_0_Y ),
        .D   ( D_const_net_1 ),
        // Outputs
        .Q   ( QH_net_0 ),
        .TC  (  ) 
        );

//--------INV
INV INV_0(
        // Inputs
        .A ( C_net_0 ),
        // Outputs
        .Y ( INV_0_Y ) 
        );

//--------NAND3
NAND3 NAND3_0(
        // Inputs
        .A ( HC161_1_Q3to3 ),
        .B ( HC161_1_Q2to2 ),
        .C ( HC161_0_Q3to3 ),
        // Outputs
        .Y ( NAND3_0_Y ) 
        );


endmodule
