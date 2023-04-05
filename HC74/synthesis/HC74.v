`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module HC74(
       S1,
       S2,
       R1,
       R2,
       Clk1,
       Clk2,
       D1,
       D2,
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
input  D1;
input  D2;
output Q1;
output Q2;
output Q1_N;
output Q2_N;

    wire Q2_RNO_net_1, Q1_RNO_net_1, Q1_N_1_net_1, Q2_N_RNO_net_1, GND, 
        VCC, S1_c, S2_c, R1_c, R2_c, Clk1_c, Clk2_c, D1_c, D2_c, Q1_c, 
        Q2_c, Q1_N_c, Q2_N_c, Q2_3, Q29;
    
    DFN1 Q2_N_inst_1 (.D(Q2_N_RNO_net_1), .CLK(Clk2_c), .Q(Q2_N_c));
    MX2A Q2_RNO_0 (.A(S1_c), .B(D2_c), .S(R1_c), .Y(Q2_3));
    AO1C Q1_N_1 (.A(D1_c), .B(S1_c), .C(R1_c), .Y(Q1_N_1_net_1));
    OUTBUF Q2_pad (.D(Q2_c), .PAD(Q2));
    OUTBUF Q1_pad (.D(Q1_c), .PAD(Q1));
    DFN1 Q1_inst_1 (.D(Q1_RNO_net_1), .CLK(Clk1_c), .Q(Q1_c));
    DFN1 Q1_N_inst_1 (.D(Q1_N_1_net_1), .CLK(Clk1_c), .Q(Q1_N_c));
    AO1B Q1_RNO (.A(R1_c), .B(D1_c), .C(S1_c), .Y(Q1_RNO_net_1));
    OUTBUF Q1_N_pad (.D(Q1_N_c), .PAD(Q1_N));
    CLKBUF Clk2_pad (.PAD(Clk2), .Y(Clk2_c));
    VCC VCC_i (.Y(VCC));
    OUTBUF Q2_N_pad (.D(Q2_N_c), .PAD(Q2_N));
    INBUF S2_pad (.PAD(S2), .Y(S2_c));
    INBUF S1_pad (.PAD(S1), .Y(S1_c));
    GND GND_i (.Y(GND));
    OR2 Q2_RNO (.A(Q2_3), .B(Q29), .Y(Q2_RNO_net_1));
    NOR2A S2_pad_RNIH6HH (.A(R2_c), .B(S2_c), .Y(Q29));
    INBUF D2_pad (.PAD(D2), .Y(D2_c));
    INBUF D1_pad (.PAD(D1), .Y(D1_c));
    INBUF R2_pad (.PAD(R2), .Y(R2_c));
    INBUF R1_pad (.PAD(R1), .Y(R1_c));
    AOI1 Q2_N_RNO (.A(D2_c), .B(R1_c), .C(Q29), .Y(Q2_N_RNO_net_1));
    DFN1 Q2_inst_1 (.D(Q2_RNO_net_1), .CLK(Clk2_c), .Q(Q2_c));
    CLKBUF Clk1_pad (.PAD(Clk1), .Y(Clk1_c));
    
endmodule
