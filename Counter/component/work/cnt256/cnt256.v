//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Dec 10 12:51:25 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// cnt256
module cnt256(
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
wire         HC161_0_TC;
wire         HC161_1_TC;
wire         INV_0_Y;
wire         MR;
wire   [3:0] QH_net_0;
wire   [3:0] QL_net_0;
wire   [3:0] QL_net_1;
wire   [3:0] QH_net_1;
wire         C_net_1;
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
// Component instances
//--------------------------------------------------------------------
//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( HC161_0_TC ),
        .B ( HC161_1_TC ),
        // Outputs
        .Y ( C_net_0 ) 
        );

//--------HC161
HC161 HC161_0(
        // Inputs
        .MR  ( MR ),
        .Clk ( Clk ),
        .CEP ( VCC_net ),
        .CET ( VCC_net ),
        .PE  ( VCC_net ),
        .D   ( D_const_net_0 ),
        // Outputs
        .Q   ( QL_net_0 ),
        .TC  ( HC161_0_TC ) 
        );

//--------HC161
HC161 HC161_1(
        // Inputs
        .MR  ( MR ),
        .Clk ( INV_0_Y ),
        .CEP ( VCC_net ),
        .CET ( VCC_net ),
        .PE  ( VCC_net ),
        .D   ( D_const_net_1 ),
        // Outputs
        .Q   ( QH_net_0 ),
        .TC  ( HC161_1_TC ) 
        );

//--------INV
INV INV_0(
        // Inputs
        .A ( HC161_0_TC ),
        // Outputs
        .Y ( INV_0_Y ) 
        );


endmodule
