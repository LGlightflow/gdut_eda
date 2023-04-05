`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module halfadder(
       S,
       C,
       A,
       B
    );
output S;
output C;
input  A;
input  B;

    wire GND, VCC, S_c, C_c, A_c, B_c;
    
    OUTBUF C_pad (.D(C_c), .PAD(C));
    INBUF B_pad (.PAD(B), .Y(B_c));
    VCC VCC_i (.Y(VCC));
    XOR2 S_pad_RNO (.A(A_c), .B(B_c), .Y(S_c));
    OUTBUF S_pad (.D(S_c), .PAD(S));
    GND GND_i (.Y(GND));
    NOR2B C_inst_1 (.A(B_c), .B(A_c), .Y(C_c));
    INBUF A_pad (.PAD(A), .Y(A_c));
    
endmodule
