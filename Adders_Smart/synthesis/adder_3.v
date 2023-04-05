`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module Core_adder(
       Core_Sum_c,
       B1_c,
       A1_c,
       Core_Cout_c,
       Cin_c,
       B0_c,
       A0_c
    );
output [1:0] Core_Sum_c;
input  B1_c;
input  A1_c;
output Core_Cout_c;
input  Cin_c;
input  B0_c;
input  A0_c;

    wire \Carry[0] , GND, VCC;
    
    MAJ3 MAJ3_Cout (.A(\Carry[0] ), .B(A1_c), .C(B1_c), .Y(Core_Cout_c)
        );
    MAJ3 \MAJ3_Carry[0]  (.A(Cin_c), .B(A0_c), .C(B0_c), .Y(\Carry[0] )
        );
    XOR3 \XOR3_Sum[0]  (.A(A0_c), .B(B0_c), .C(Cin_c), .Y(
        Core_Sum_c[0]));
    VCC VCC_i (.Y(VCC));
    XOR3 \XOR3_Sum[1]  (.A(A1_c), .B(B1_c), .C(\Carry[0] ), .Y(
        Core_Sum_c[1]));
    GND GND_i (.Y(GND));
    
endmodule


module halfadder_1(
       A0_c,
       B0_c,
       halfadder_0_C
    );
input  A0_c;
input  B0_c;
output halfadder_0_C;

    wire GND, VCC;
    
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    NOR2B C (.A(B0_c), .B(A0_c), .Y(halfadder_0_C));
    
endmodule


module halfadder_1_0(
       S0_c,
       Cin_c,
       A0_c,
       B0_c,
       halfadder_1_C
    );
output S0_c;
input  Cin_c;
input  A0_c;
input  B0_c;
output halfadder_1_C;

    wire GND, VCC;
    
    XOR3 S (.A(B0_c), .B(A0_c), .C(Cin_c), .Y(S0_c));
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    XA1 C (.A(B0_c), .B(A0_c), .C(Cin_c), .Y(halfadder_1_C));
    
endmodule


module adder_3(
       A0,
       A1,
       B0,
       B1,
       Cin,
       Core_Cout,
       Core_Sum,
       Cout,
       S0,
       S1
    );
input  A0;
input  A1;
input  B0;
input  B1;
input  Cin;
output Core_Cout;
output [1:0] Core_Sum;
output Cout;
output S0;
output S1;

    wire OR2_0_Y, halfadder_0_C, halfadder_1_C, GND, VCC, A0_c, A1_c, 
        B0_c, B1_c, Cin_c, Core_Cout_c, \Core_Sum_c[0] , 
        \Core_Sum_c[1] , Cout_c, S0_c, S1_c;
    
    OUTBUF \Core_Sum_pad[1]  (.D(\Core_Sum_c[1] ), .PAD(Core_Sum[1]));
    OUTBUF \Core_Sum_pad[0]  (.D(\Core_Sum_c[0] ), .PAD(Core_Sum[0]));
    INBUF B0_pad (.PAD(B0), .Y(B0_c));
    XOR3 S1_1_SUM0 (.A(B1_c), .B(A1_c), .C(OR2_0_Y), .Y(S1_c));
    OUTBUF Core_Cout_pad (.D(Core_Cout_c), .PAD(Core_Cout));
    Core_adder Core_adder_0 (.Core_Sum_c({\Core_Sum_c[1] , 
        \Core_Sum_c[0] }), .B1_c(B1_c), .A1_c(A1_c), .Core_Cout_c(
        Core_Cout_c), .Cin_c(Cin_c), .B0_c(B0_c), .A0_c(A0_c));
    VCC VCC_i (.Y(VCC));
    INBUF A1_pad (.PAD(A1), .Y(A1_c));
    OUTBUF S1_pad (.D(S1_c), .PAD(S1));
    GND GND_i (.Y(GND));
    MAJ3 S1_1_CO0 (.A(A1_c), .B(B1_c), .C(OR2_0_Y), .Y(Cout_c));
    OUTBUF Cout_pad (.D(Cout_c), .PAD(Cout));
    halfadder_1 halfadder_0 (.A0_c(A0_c), .B0_c(B0_c), .halfadder_0_C(
        halfadder_0_C));
    INBUF A0_pad (.PAD(A0), .Y(A0_c));
    halfadder_1_0 halfadder_1 (.S0_c(S0_c), .Cin_c(Cin_c), .A0_c(A0_c), 
        .B0_c(B0_c), .halfadder_1_C(halfadder_1_C));
    OR2 OR2_0 (.A(halfadder_0_C), .B(halfadder_1_C), .Y(OR2_0_Y));
    OUTBUF S0_pad (.D(S0_c), .PAD(S0));
    INBUF B1_pad (.PAD(B1), .Y(B1_c));
    INBUF Cin_pad (.PAD(Cin), .Y(Cin_c));
    
endmodule
