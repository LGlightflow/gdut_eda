`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module HC112(
       S1,
       S2,
       R1,
       R2,
       Clk1,
       Clk2,
       J1,
       J2,
       K1,
       K2,
       Q1,
       Q2,
       Q1_N,
       Q2_N
    );
input  S1;
input  S2;
input  R1;
input  R2;
input  Clk1;
input  Clk2;
input  J1;
input  J2;
input  K1;
input  K2;
output Q1;
output Q2;
output Q1_N;
output Q2_N;

    wire Q120, Q220, N_41_mux, N_42_mux, GND, VCC, S1_c, S2_c, R1_c, 
        R2_c, Clk1_c, Clk2_c, J1_c, J2_c, K1_c, K2_c, Q1_c, Q2_c, 
        Q2_c_i, Q1_c_i, S2_c_i, S1_c_i;
    
    INV Q1_N_pad_RNO (.A(Q1_c), .Y(Q1_c_i));
    MX2B Q2_RNO_0 (.A(J2_c), .B(K2_c), .S(Q2_c), .Y(N_41_mux));
    INV Q2_RNO_1 (.A(S2_c), .Y(S2_c_i));
    MX2B Q1_RNO_0 (.A(J1_c), .B(K1_c), .S(Q1_c), .Y(N_42_mux));
    OUTBUF Q2_pad (.D(Q2_c), .PAD(Q2));
    OUTBUF Q1_pad (.D(Q1_c), .PAD(Q1));
    DFN0P1C1 Q1_inst_1 (.D(N_42_mux), .CLK(Clk1_c), .PRE(S1_c_i), .CLR(
        Q120), .Q(Q1_c));
    NOR2A Q1_RNO (.A(S1_c), .B(R1_c), .Y(Q120));
    OUTBUF Q1_N_pad (.D(Q1_c_i), .PAD(Q1_N));
    INBUF Clk2_pad (.PAD(Clk2), .Y(Clk2_c));
    VCC VCC_i (.Y(VCC));
    OUTBUF Q2_N_pad (.D(Q2_c_i), .PAD(Q2_N));
    INV Q2_N_pad_RNO (.A(Q2_c), .Y(Q2_c_i));
    INBUF J2_pad (.PAD(J2), .Y(J2_c));
    INBUF J1_pad (.PAD(J1), .Y(J1_c));
    INBUF S2_pad (.PAD(S2), .Y(S2_c));
    INBUF S1_pad (.PAD(S1), .Y(S1_c));
    GND GND_i (.Y(GND));
    NOR2A Q2_RNO (.A(S2_c), .B(R2_c), .Y(Q220));
    INBUF K2_pad (.PAD(K2), .Y(K2_c));
    INBUF K1_pad (.PAD(K1), .Y(K1_c));
    INBUF R2_pad (.PAD(R2), .Y(R2_c));
    INBUF R1_pad (.PAD(R1), .Y(R1_c));
    INV Q1_RNO_1 (.A(S1_c), .Y(S1_c_i));
    DFN0P1C1 Q2_inst_1 (.D(N_41_mux), .CLK(Clk2_c), .PRE(S2_c_i), .CLR(
        Q220), .Q(Q2_c));
    INBUF Clk1_pad (.PAD(Clk1), .Y(Clk1_c));
    
endmodule
