`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module halfadder_1_0(
       halfadder_1_C,
       Cin_c,
       DataA_c,
       DataB_c,
       Sum1_c
    );
output halfadder_1_C;
input  Cin_c;
input  DataA_c;
input  DataB_c;
output Sum1_c;

    wire GND, VCC;
    
    XOR3 S (.A(DataB_c), .B(DataA_c), .C(Cin_c), .Y(Sum1_c));
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    XA1 C (.A(DataB_c), .B(DataA_c), .C(Cin_c), .Y(halfadder_1_C));
    
endmodule


module adders(
       Cin,
       DataA,
       DataB,
       Cout1,
       Cout2,
       Sum1,
       Sum2
    );
input  Cin;
input  DataA;
input  DataB;
output Cout1;
output Cout2;
output Sum1;
output Sum2;

    wire halfadder_1_C, GND, VCC, halfadder_0_C, Cin_c, DataA_c, 
        DataB_c, Cout1_c, Cout2_c, Sum1_c;
    
    MAJ3 Sum2_1_CO0 (.A(Cin_c), .B(DataB_c), .C(DataA_c), .Y(Cout2_c));
    INBUF DataA_pad (.PAD(DataA), .Y(DataA_c));
    NOR2B Sum2_1_ANB0 (.A(DataA_c), .B(DataB_c), .Y(halfadder_0_C));
    INBUF Cin_pad (.PAD(Cin), .Y(Cin_c));
    OR2 OR2_0 (.A(halfadder_0_C), .B(halfadder_1_C), .Y(Cout1_c));
    OUTBUF Cout1_pad (.D(Cout1_c), .PAD(Cout1));
    VCC VCC_i (.Y(VCC));
    INBUF DataB_pad (.PAD(DataB), .Y(DataB_c));
    GND GND_i (.Y(GND));
    OUTBUF Sum2_pad (.D(Sum1_c), .PAD(Sum2));
    OUTBUF Sum1_pad (.D(Sum1_c), .PAD(Sum1));
    halfadder_1_0 halfadder_1 (.halfadder_1_C(halfadder_1_C), .Cin_c(
        Cin_c), .DataA_c(DataA_c), .DataB_c(DataB_c), .Sum1_c(Sum1_c));
    OUTBUF Cout2_pad (.D(Cout2_c), .PAD(Cout2));
    
endmodule
