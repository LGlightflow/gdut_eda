`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module HC161_0(
       QH_c,
       MR_c,
       Clk_c,
       TC_0,
       N_26,
       C_c,
       Q_c1
    );
output [3:0] QH_c;
input  MR_c;
input  Clk_c;
input  TC_0;
input  N_26;
input  C_c;
input  Q_c1;

    wire Q_N_3_mux_0, Q_n1_net_1, Q_n3_net_1, Q_8_0_net_1, Q_n2_net_1, 
        Q_c1_0, Qe, GND, VCC;
    
    DFN1E1C0 \Q[3]  (.D(Q_n3_net_1), .CLK(Clk_c), .CLR(MR_c), .E(Qe), 
        .Q(QH_c[3]));
    NOR2B Q_c1_inst_1 (.A(QH_c[1]), .B(QH_c[0]), .Y(Q_c1_0));
    XA1 Q_n2 (.A(QH_c[2]), .B(Q_c1_0), .C(N_26), .Y(Q_n2_net_1));
    DFN1E1C0 \Q[1]  (.D(Q_n1_net_1), .CLK(Clk_c), .CLR(MR_c), .E(Qe), 
        .Q(QH_c[1]));
    NOR3A Q_m1_e_0 (.A(Q_c1), .B(QH_c[0]), .C(C_c), .Y(Q_N_3_mux_0));
    DFN1E1C0 \Q[2]  (.D(Q_n2_net_1), .CLK(Clk_c), .CLR(MR_c), .E(Qe), 
        .Q(QH_c[2]));
    VCC VCC_i (.Y(VCC));
    NOR2B Q_8_0 (.A(QH_c[2]), .B(Q_c1_0), .Y(Q_8_0_net_1));
    XA1 Q_n3 (.A(QH_c[3]), .B(Q_8_0_net_1), .C(N_26), .Y(Q_n3_net_1));
    DFN1E1C0 \Q[0]  (.D(Q_N_3_mux_0), .CLK(Clk_c), .CLR(MR_c), .E(Qe), 
        .Q(QH_c[0]));
    GND GND_i (.Y(GND));
    XA1 Q_n1 (.A(QH_c[0]), .B(QH_c[1]), .C(N_26), .Y(Q_n1_net_1));
    AO1 Qlde (.A(TC_0), .B(Q_c1), .C(C_c), .Y(Qe));
    
endmodule


module HC161_1(
       QL_c,
       MR_c,
       Clk_c,
       N_26,
       Q_c1,
       C_c,
       TC_0
    );
output [3:0] QL_c;
input  MR_c;
input  Clk_c;
output N_26;
output Q_c1;
input  C_c;
output TC_0;

    wire Q_n3_net_1, Q_8_0_net_1, Q_n2_net_1, Q_n1_net_1, Q_n0_net_1, 
        GND, VCC;
    
    NOR2 Q_n0 (.A(QL_c[0]), .B(C_c), .Y(Q_n0_net_1));
    NOR2A Q_6 (.A(Q_c1), .B(C_c), .Y(N_26));
    DFN1C0 \Q[3]  (.D(Q_n3_net_1), .CLK(Clk_c), .CLR(MR_c), .Q(QL_c[3])
        );
    NOR2B Q_c1_inst_1 (.A(QL_c[0]), .B(QL_c[1]), .Y(Q_c1));
    NOR2B \Q_RNINOAU[2]  (.A(QL_c[3]), .B(QL_c[2]), .Y(TC_0));
    AX1 Q_n2 (.A(C_c), .B(QL_c[2]), .C(N_26), .Y(Q_n2_net_1));
    DFN1C0 \Q[1]  (.D(Q_n1_net_1), .CLK(Clk_c), .CLR(MR_c), .Q(QL_c[1])
        );
    DFN1C0 \Q[2]  (.D(Q_n2_net_1), .CLK(Clk_c), .CLR(MR_c), .Q(QL_c[2])
        );
    VCC VCC_i (.Y(VCC));
    NOR2B Q_8_0 (.A(QL_c[2]), .B(Q_c1), .Y(Q_8_0_net_1));
    XA1B Q_n3 (.A(Q_8_0_net_1), .B(QL_c[3]), .C(C_c), .Y(Q_n3_net_1));
    DFN1C0 \Q[0]  (.D(Q_n0_net_1), .CLK(Clk_c), .CLR(MR_c), .Q(QL_c[0])
        );
    GND GND_i (.Y(GND));
    XA1B Q_n1 (.A(QL_c[1]), .B(QL_c[0]), .C(C_c), .Y(Q_n1_net_1));
    
endmodule


module And4in(
       QH_c,
       QL_c_0,
       C_c
    );
input  [2:0] QH_c;
input  QL_c_0;
output C_c;

    wire \CI[0] , GND, VCC;
    
    AND3 Start (.A(QH_c[0]), .B(QL_c_0), .C(QH_c[1]), .Y(\CI[0] ));
    VCC VCC_i (.Y(VCC));
    AND2 AND2_Result (.A(\CI[0] ), .B(QH_c[2]), .Y(C_c));
    GND GND_i (.Y(GND));
    
endmodule


module cnt121(
       Clk,
       MR,
       C,
       QH,
       QL
    );
input  Clk;
input  MR;
output C;
output [3:0] QH;
output [3:0] QL;

    wire VCC, GND, Clk_c, MR_c, C_c, \QH_c[0] , \QH_c[1] , \QH_c[2] , 
        \QH_c[3] , \QL_c[0] , \QL_c[1] , \QL_c[2] , \QL_c[3] , 
        \HC161_0.Q_c1 , \HC161_0.N_26 , \HC161_0.TC_0 ;
    
    OUTBUF \QL_pad[1]  (.D(\QL_c[1] ), .PAD(QL[1]));
    OUTBUF \QH_pad[0]  (.D(\QH_c[0] ), .PAD(QH[0]));
    OUTBUF C_pad (.D(C_c), .PAD(C));
    HC161_0 HC161_1 (.QH_c({\QH_c[3] , \QH_c[2] , \QH_c[1] , \QH_c[0] })
        , .MR_c(MR_c), .Clk_c(Clk_c), .TC_0(\HC161_0.TC_0 ), .N_26(
        \HC161_0.N_26 ), .C_c(C_c), .Q_c1(\HC161_0.Q_c1 ));
    OUTBUF \QL_pad[3]  (.D(\QL_c[3] ), .PAD(QL[3]));
    OUTBUF \QH_pad[2]  (.D(\QH_c[2] ), .PAD(QH[2]));
    OUTBUF \QL_pad[2]  (.D(\QL_c[2] ), .PAD(QL[2]));
    VCC VCC_i (.Y(VCC));
    OUTBUF \QL_pad[0]  (.D(\QL_c[0] ), .PAD(QL[0]));
    INBUF MR_pad (.PAD(MR), .Y(MR_c));
    OUTBUF \QH_pad[3]  (.D(\QH_c[3] ), .PAD(QH[3]));
    GND GND_i (.Y(GND));
    OUTBUF \QH_pad[1]  (.D(\QH_c[1] ), .PAD(QH[1]));
    HC161_1 HC161_0 (.QL_c({\QL_c[3] , \QL_c[2] , \QL_c[1] , \QL_c[0] })
        , .MR_c(MR_c), .Clk_c(Clk_c), .N_26(\HC161_0.N_26 ), .Q_c1(
        \HC161_0.Q_c1 ), .C_c(C_c), .TC_0(\HC161_0.TC_0 ));
    CLKBUF Clk_pad (.PAD(Clk), .Y(Clk_c));
    And4in And4in_0 (.QH_c({\QH_c[2] , \QH_c[1] , \QH_c[0] }), .QL_c_0(
        \QL_c[3] ), .C_c(C_c));
    
endmodule
