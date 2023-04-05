`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module HC4511(
       A,
       Seg,
       LT_N,
       BI_N,
       LE
    );
input  [3:0] A;
output [7:0] Seg;
input  LT_N;
input  BI_N;
input  LE;

    wire \SM_8S_RNO[7]_net_1 , \SM_8S[7]_net_1 , VCC, GND, SM_8S58, 
        \SM_8S_1[2] , \SM_8S_1[5] , \SM_8S_1_i[0]_net_1 , 
        \SM_8S_1_i[1]_net_1 , \SM_8S_1_i[3]_net_1 , 
        \SM_8S_1_i[4]_net_1 , \SM_8S_1_i[6]_net_1 , \A_c[0] , \A_c[1] , 
        \A_c[2] , \A_c[3] , \Seg_c[0] , \Seg_c[1] , \Seg_c[2] , 
        \Seg_c[3] , \Seg_c[4] , \Seg_c[5] , \Seg_c[6] , LT_N_c, BI_N_c, 
        LE_c, N_35, N_36, N_52, N_40, N_46, N_46_1, N_34, N_28, N_39, 
        N_53, N_44, N_45, N_29, N_30, N_42, N_37, 
        \SM_8S_1_0_0[5]_net_1 , LT_N_c_i, \SM_8S_i[7] ;
    
    DLN0P1C1 \SM_8S[4]  (.D(\SM_8S_1_i[4]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\Seg_c[4] ));
    OA1C \SM_8S_1_0_a4[2]  (.A(\A_c[2] ), .B(\A_c[0] ), .C(\A_c[1] ), 
        .Y(N_39));
    NOR3C \SM_8S_1_i_a2[3]  (.A(\A_c[0] ), .B(\A_c[2] ), .C(\A_c[1] ), 
        .Y(N_53));
    NOR3C \SM_8S_1_i_a4_1[0]  (.A(\A_c[1] ), .B(\A_c[0] ), .C(N_52), 
        .Y(N_36));
    OUTBUF \Seg_pad[0]  (.D(\Seg_c[0] ), .PAD(Seg[0]));
    AOI1 \SM_8S_1_i[1]  (.A(N_29), .B(\A_c[0] ), .C(N_37), .Y(
        \SM_8S_1_i[1]_net_1 ));
    NOR2A \SM_8S_1_0_a2[2]  (.A(\A_c[3] ), .B(\A_c[2] ), .Y(N_52));
    OUTBUF \Seg_pad[2]  (.D(\Seg_c[2] ), .PAD(Seg[2]));
    NOR2 \SM_8S_1_i_a4[6]  (.A(N_30), .B(\A_c[2] ), .Y(N_44));
    INBUF LT_N_pad (.PAD(LT_N), .Y(LT_N_c));
    VCC VCC_i (.Y(VCC));
    OUTBUF \Seg_pad[1]  (.D(\Seg_c[1] ), .PAD(Seg[1]));
    XA1B \SM_8S_1_i_a4[0]  (.A(\A_c[0] ), .B(\A_c[2] ), .C(N_30), .Y(
        N_34));
    NOR3 \SM_8S_1_i[0]  (.A(N_35), .B(N_36), .C(N_34), .Y(
        \SM_8S_1_i[0]_net_1 ));
    CLKBUF LE_pad (.PAD(LE), .Y(LE_c));
    NOR2A \SM_8S_1_i_a4_1_1[6]  (.A(\A_c[3] ), .B(\A_c[1] ), .Y(N_46_1)
        );
    OR2B \SM_8S_RNO[7]  (.A(LE_c), .B(BI_N_c), .Y(\SM_8S_RNO[7]_net_1 )
        );
    NOR3B \SM_8S_1_i_a4[1]  (.A(\A_c[2] ), .B(N_30), .C(\A_c[0] ), .Y(
        N_37));
    NOR2A \SM_8S_1_i_a4_0[4]  (.A(\A_c[0] ), .B(\A_c[3] ), .Y(N_42));
    INV \Seg_pad_RNO[7]  (.A(\SM_8S[7]_net_1 ), .Y(\SM_8S_i[7] ));
    MX2A \SM_8S_1_0_m2[2]  (.A(\A_c[0] ), .B(\A_c[3] ), .S(\A_c[2] ), 
        .Y(N_28));
    DLN0P1C1 \SM_8S[6]  (.D(\SM_8S_1_i[6]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\Seg_c[6] ));
    DLN0P1C1 \SM_8S[5]  (.D(\SM_8S_1[5] ), .G(LE_c), .PRE(LT_N_c_i), 
        .CLR(SM_8S58), .Q(\Seg_c[5] ));
    NOR3B \SM_8S_1_i_a4[3]  (.A(\A_c[1] ), .B(N_52), .C(\A_c[0] ), .Y(
        N_40));
    INBUF \A_pad[3]  (.PAD(A[3]), .Y(\A_c[3] ));
    OUTBUF \Seg_pad[5]  (.D(\Seg_c[5] ), .PAD(Seg[5]));
    OR2 \SM_8S_1_i_o2[1]  (.A(\A_c[3] ), .B(\A_c[1] ), .Y(N_30));
    OUTBUF \Seg_pad[7]  (.D(\SM_8S_i[7] ), .PAD(Seg[7]));
    INBUF BI_N_pad (.PAD(BI_N), .Y(BI_N_c));
    DLN0P1C1 \SM_8S[1]  (.D(\SM_8S_1_i[1]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\Seg_c[1] ));
    INBUF \A_pad[0]  (.PAD(A[0]), .Y(\A_c[0] ));
    GND GND_i (.Y(GND));
    DLN0P1C1 \SM_8S[3]  (.D(\SM_8S_1_i[3]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\Seg_c[3] ));
    DLN0P1C1 \SM_8S[0]  (.D(\SM_8S_1_i[0]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\Seg_c[0] ));
    NOR3B \SM_8S_1_i_a4_1[6]  (.A(\A_c[2] ), .B(N_46_1), .C(\A_c[0] ), 
        .Y(N_46));
    OUTBUF \Seg_pad[4]  (.D(\Seg_c[4] ), .PAD(Seg[4]));
    DLN0P1C1 \SM_8S[2]  (.D(\SM_8S_1[2] ), .G(LE_c), .PRE(LT_N_c_i), 
        .CLR(SM_8S58), .Q(\Seg_c[2] ));
    OR3A \SM_8S_1_0[2]  (.A(N_28), .B(N_39), .C(N_52), .Y(\SM_8S_1[2] )
        );
    OR3 \SM_8S_1_0[5]  (.A(N_29), .B(N_52), .C(\SM_8S_1_0_0[5]_net_1 ), 
        .Y(\SM_8S_1[5] ));
    INBUF \A_pad[2]  (.PAD(A[2]), .Y(\A_c[2] ));
    DLN1P1C1 \SM_8S[7]  (.D(VCC), .G(GND), .PRE(\SM_8S_RNO[7]_net_1 ), 
        .CLR(LT_N_c_i), .Q(\SM_8S[7]_net_1 ));
    NOR3C \SM_8S_1_i_a4_0[0]  (.A(\A_c[0] ), .B(\A_c[2] ), .C(N_46_1), 
        .Y(N_35));
    INV LT_N_pad_RNI1KB5 (.A(LT_N_c), .Y(LT_N_c_i));
    NOR3 \SM_8S_1_i[6]  (.A(N_44), .B(N_46), .C(N_45), .Y(
        \SM_8S_1_i[6]_net_1 ));
    NOR3 \SM_8S_1_i[3]  (.A(N_34), .B(N_40), .C(N_53), .Y(
        \SM_8S_1_i[3]_net_1 ));
    OA1B \SM_8S_1_i[4]  (.A(\A_c[1] ), .B(N_28), .C(N_42), .Y(
        \SM_8S_1_i[4]_net_1 ));
    NOR2A LT_N_pad_RNIDVRK (.A(LT_N_c), .B(BI_N_c), .Y(SM_8S58));
    OA1C \SM_8S_1_0_0[5]  (.A(\A_c[1] ), .B(\A_c[2] ), .C(\A_c[0] ), 
        .Y(\SM_8S_1_0_0[5]_net_1 ));
    OUTBUF \Seg_pad[3]  (.D(\Seg_c[3] ), .PAD(Seg[3]));
    INBUF \A_pad[1]  (.PAD(A[1]), .Y(\A_c[1] ));
    AXOI7 \SM_8S_1_0_o4[5]  (.A(\A_c[2] ), .B(\A_c[1] ), .C(\A_c[3] ), 
        .Y(N_29));
    OUTBUF \Seg_pad[6]  (.D(\Seg_c[6] ), .PAD(Seg[6]));
    NOR2A \SM_8S_1_i_a4_0[6]  (.A(N_53), .B(\A_c[3] ), .Y(N_45));
    
endmodule
