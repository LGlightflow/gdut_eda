//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Nov 12 14:08:15 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// adders
module adders(
    // Inputs
    Cin,
    DataA,
    DataB,
    // Outputs
    Cout1,
    Cout2,
    Sum1,
    Sum2
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  Cin;
input  DataA;
input  DataB;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output Cout1;
output Cout2;
output Sum1;
output Sum2;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   Cin;
wire   Cout;
wire   Cout1_net_0;
wire   DataA;
wire   DataB;
wire   halfadder_0_C;
wire   halfadder_0_S;
wire   halfadder_1_C;
wire   Sum;
wire   Sum1_net_0;
wire   Sum1_net_1;
wire   Cout1_net_1;
wire   Sum_net_0;
wire   Cout_net_0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign Sum1_net_1  = Sum1_net_0;
assign Sum1        = Sum1_net_1;
assign Cout1_net_1 = Cout1_net_0;
assign Cout1       = Cout1_net_1;
assign Sum_net_0   = Sum;
assign Sum2        = Sum_net_0;
assign Cout_net_0  = Cout;
assign Cout2       = Cout_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------FA_behav2
FA_behav2 FA_behav2_0(
        // Inputs
        .A    ( DataA ),
        .B    ( DataB ),
        .Cin  ( Cin ),
        // Outputs
        .Sum  ( Sum ),
        .Cout ( Cout ) 
        );

//--------halfadder
halfadder halfadder_0(
        // Inputs
        .A ( DataA ),
        .B ( DataB ),
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
        .S ( Sum1_net_0 ),
        .C ( halfadder_1_C ) 
        );

//--------OR2
OR2 OR2_0(
        // Inputs
        .A ( halfadder_0_C ),
        .B ( halfadder_1_C ),
        // Outputs
        .Y ( Cout1_net_0 ) 
        );


endmodule
