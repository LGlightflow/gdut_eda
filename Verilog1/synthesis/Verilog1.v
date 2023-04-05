`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module Verilog1(
       A,
       B,
       C,
       Y
    );
input  A;
input  B;
input  C;
output Y;

    wire GND, VCC, A_c, B_c, C_c, Y_c;
    
    MAJ3 Y_inst_1 (.A(C_c), .B(A_c), .C(B_c), .Y(Y_c));
    INBUF C_pad (.PAD(C), .Y(C_c));
    INBUF B_pad (.PAD(B), .Y(B_c));
    OUTBUF Y_pad (.D(Y_c), .PAD(Y));
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    INBUF A_pad (.PAD(A), .Y(A_c));
    
endmodule
