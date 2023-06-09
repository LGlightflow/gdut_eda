//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Dec 10 15:08:22 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// cnt12b
module cnt12b(
    // Inputs
    Clk,
    MR,
    // Outputs
    Q,
    TC
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        Clk;
input        MR;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [3:0] Q;
output       TC;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         Clk;
wire         INV_0_Y;
wire         MR;
wire   [3:0] Q_net_0;
wire         TC_net_0;
wire         TC_net_1;
wire   [3:0] Q_net_1;
wire   [3:0] D_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         VCC_net;
wire         GND_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net    = 1'b1;
assign GND_net    = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TC_net_1 = TC_net_0;
assign TC       = TC_net_1;
assign Q_net_1  = Q_net_0;
assign Q[3:0]   = Q_net_1;
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign D_net_0 = { 1'b0 , 1'b1 , 1'b0 , 1'b0 };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------HC161
HC161 HC161_0(
        // Inputs
        .MR  ( MR ),
        .Clk ( Clk ),
        .CEP ( VCC_net ),
        .CET ( VCC_net ),
        .PE  ( INV_0_Y ),
        .D   ( D_net_0 ),
        // Outputs
        .Q   ( Q_net_0 ),
        .TC  ( TC_net_0 ) 
        );

//--------INV
INV INV_0(
        // Inputs
        .A ( TC_net_0 ),
        // Outputs
        .Y ( INV_0_Y ) 
        );


endmodule
