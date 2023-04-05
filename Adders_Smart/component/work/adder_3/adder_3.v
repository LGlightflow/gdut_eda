//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Nov 12 15:56:07 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// adder_3
module adder_3(
    // Inputs
    A0,
    A1,
    B0,
    B1,
    Cin,
    // Outputs
    Core_Cout,
    Core_Sum,
    Cout,
    S0,
    S1
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        A0;
input        A1;
input        B0;
input        B1;
input        Cin;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       Core_Cout;
output [1:0] Core_Sum;
output       Cout;
output       S0;
output       S1;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         A0;
wire         A1;
wire         B0;
wire         B1;
wire         Cin;
wire         Cout_net_0;
wire         Cout_0;
wire         halfadder_0_C;
wire         halfadder_0_S;
wire         halfadder_1_C;
wire         OR2_0_Y;
wire         S1_net_0;
wire   [1:0] Sum;
wire         Sum1;
wire         S1_net_1;
wire         Cout_0_net_0;
wire         Sum1_net_0;
wire         Cout_net_1;
wire   [1:0] Sum_net_0;
wire   [1:0] DataA_net_0;
wire   [1:0] DataB_net_0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign S1_net_1      = S1_net_0;
assign S1            = S1_net_1;
assign Cout_0_net_0  = Cout_0;
assign Core_Cout     = Cout_0_net_0;
assign Sum1_net_0    = Sum1;
assign S0            = Sum1_net_0;
assign Cout_net_1    = Cout_net_0;
assign Cout          = Cout_net_1;
assign Sum_net_0     = Sum;
assign Core_Sum[1:0] = Sum_net_0;
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign DataA_net_0 = { A1 , A0 };
assign DataB_net_0 = { B1 , B0 };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------Core_adder
Core_adder Core_adder_0(
        // Inputs
        .Cin   ( Cin ),
        .DataA ( DataA_net_0 ),
        .DataB ( DataB_net_0 ),
        // Outputs
        .Cout  ( Cout_0 ),
        .Sum   ( Sum ) 
        );

//--------FA_behav2
FA_behav2 FA_behav2_0(
        // Inputs
        .A    ( A1 ),
        .B    ( B1 ),
        .Cin  ( OR2_0_Y ),
        // Outputs
        .Sum  ( S1_net_0 ),
        .Cout ( Cout_net_0 ) 
        );

//--------halfadder
halfadder halfadder_0(
        // Inputs
        .A ( A0 ),
        .B ( B0 ),
        // Outputs
        .S ( halfadder_0_S ),
        .C ( halfadder_0_C ) 
        );

//--------halfadder
halfadder halfadder_1(
        // Inputs
        .A ( halfadder_0_S ),
        .B ( Cin ),
        // Outputs
        .S ( Sum1 ),
        .C ( halfadder_1_C ) 
        );

//--------OR2
OR2 OR2_0(
        // Inputs
        .A ( halfadder_0_C ),
        .B ( halfadder_1_C ),
        // Outputs
        .Y ( OR2_0_Y ) 
        );


endmodule
