//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Dec 19 12:49:16 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// cnt121
module cnt121(
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
wire         C_net_0;
wire         Clk;
wire   [0:0] HC161_0_Q0to0;
wire   [3:3] HC161_0_Q3to3;
wire         HC161_0_TC;
wire   [0:0] HC161_1_Q0to0;
wire   [1:1] HC161_1_Q1to1;
wire   [2:2] HC161_1_Q2to2;
wire         INV_0_Y;
wire         MR;
wire   [3:0] QH_net_0;
wire   [3:0] QL_net_0;
wire         C_net_1;
wire   [3:0] QL_net_1;
wire   [3:0] QH_net_1;
wire   [1:1] Q_slice_0;
wire   [2:2] Q_slice_1;
wire   [3:3] Q_slice_2;
wire   [3:0] Data_net_0;
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
assign C_net_1  = C_net_0;
assign C        = C_net_1;
assign QL_net_1 = QL_net_0;
assign QL[3:0]  = QL_net_1;
assign QH_net_1 = QH_net_0;
assign QH[3:0]  = QH_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign HC161_0_Q0to0[0] = QL_net_0[0:0];
assign HC161_0_Q3to3[3] = QL_net_0[3:3];
assign HC161_1_Q0to0[0] = QH_net_0[0:0];
assign HC161_1_Q1to1[1] = QH_net_0[1:1];
assign HC161_1_Q2to2[2] = QH_net_0[2:2];
assign Q_slice_0[1]     = QL_net_0[1:1];
assign Q_slice_1[2]     = QL_net_0[2:2];
assign Q_slice_2[3]     = QH_net_0[3:3];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign Data_net_0 = { HC161_1_Q2to2[2] , HC161_1_Q1to1[1] , HC161_0_Q3to3[3] , HC161_1_Q0to0[0] };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------And4in
And4in And4in_0(
        // Inputs
        .Data   ( Data_net_0 ),
        // Outputs
        .Result ( C_net_0 ) 
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
        .TC  ( HC161_0_TC ),
        .Q   ( QL_net_0 ) 
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
        .TC  (  ),
        .Q   ( QH_net_0 ) 
        );

//--------INV
INV INV_0(
        // Inputs
        .A ( C_net_0 ),
        // Outputs
        .Y ( INV_0_Y ) 
        );


endmodule
