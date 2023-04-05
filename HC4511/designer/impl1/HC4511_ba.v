`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


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

    wire \SM_8S_RNO[7]_net_1 , \SM_8S[7]_net_1 , SM_8S58, \SM_8S_1[2] , 
        \SM_8S_1[5] , \SM_8S_1_i[0]_net_1 , \SM_8S_1_i[1]_net_1 , 
        \SM_8S_1_i[3]_net_1 , \SM_8S_1_i[4]_net_1 , 
        \SM_8S_1_i[6]_net_1 , \A_c[0] , \A_c[1] , \A_c[2] , \A_c[3] , 
        \Seg_c[0] , \Seg_c[1] , \Seg_c[2] , \Seg_c[3] , \Seg_c[4] , 
        \Seg_c[5] , \Seg_c[6] , LT_N_c, BI_N_c, LE_c, N_35, N_36, N_52, 
        N_40, N_46, N_46_1, N_34, N_28, N_39, N_53, N_44, N_45, N_29, 
        N_30, N_42, N_37, \SM_8S_1_0_0[5]_net_1 , LT_N_c_i, 
        \SM_8S_i[7] , \Seg_pad[0]/U0/NET1 , \Seg_pad[0]/U0/NET2 , 
        \Seg_pad[2]/U0/NET1 , \Seg_pad[2]/U0/NET2 , \LT_N_pad/U0/NET1 , 
        \Seg_pad[1]/U0/NET1 , \Seg_pad[1]/U0/NET2 , \LE_pad/U0/NET1 , 
        \A_pad[3]/U0/NET1 , \Seg_pad[5]/U0/NET1 , \Seg_pad[5]/U0/NET2 , 
        \Seg_pad[7]/U0/NET1 , \Seg_pad[7]/U0/NET2 , \BI_N_pad/U0/NET1 , 
        \A_pad[0]/U0/NET1 , \Seg_pad[4]/U0/NET1 , \Seg_pad[4]/U0/NET2 , 
        \A_pad[2]/U0/NET1 , \Seg_pad[3]/U0/NET1 , \Seg_pad[3]/U0/NET2 , 
        \A_pad[1]/U0/NET1 , \Seg_pad[6]/U0/NET1 , \Seg_pad[6]/U0/NET2 , 
        VCC, GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    DLN0P1C1 \SM_8S[4]  (.D(\SM_8S_1_i[4]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\Seg_c[4] ));
    OA1C \SM_8S_1_0_a4[2]  (.A(\A_c[2] ), .B(\A_c[0] ), .C(\A_c[1] ), 
        .Y(N_39));
    IOPAD_IN \A_pad[2]/U0/U0  (.PAD(A[2]), .Y(\A_pad[2]/U0/NET1 ));
    IOPAD_IN \A_pad[1]/U0/U0  (.PAD(A[1]), .Y(\A_pad[1]/U0/NET1 ));
    NOR3C \SM_8S_1_i_a2[3]  (.A(\A_c[0] ), .B(\A_c[2] ), .C(\A_c[1] ), 
        .Y(N_53));
    NOR3C \SM_8S_1_i_a4_1[0]  (.A(\A_c[1] ), .B(\A_c[0] ), .C(N_52), 
        .Y(N_36));
    IOIN_IB \A_pad[3]/U0/U1  (.YIN(\A_pad[3]/U0/NET1 ), .Y(\A_c[3] ));
    AOI1 \SM_8S_1_i[1]  (.A(N_29), .B(\A_c[0] ), .C(N_37), .Y(
        \SM_8S_1_i[1]_net_1 ));
    NOR2A \SM_8S_1_0_a2[2]  (.A(\A_c[3] ), .B(\A_c[2] ), .Y(N_52));
    IOTRI_OB_EB \Seg_pad[5]/U0/U1  (.D(\Seg_c[5] ), .E(VCC), .DOUT(
        \Seg_pad[5]/U0/NET1 ), .EOUT(\Seg_pad[5]/U0/NET2 ));
    IOPAD_TRI \Seg_pad[1]/U0/U0  (.D(\Seg_pad[1]/U0/NET1 ), .E(
        \Seg_pad[1]/U0/NET2 ), .PAD(Seg[1]));
    IOPAD_IN \BI_N_pad/U0/U0  (.PAD(BI_N), .Y(\BI_N_pad/U0/NET1 ));
    NOR2 \SM_8S_1_i_a4[6]  (.A(N_30), .B(\A_c[2] ), .Y(N_44));
    IOIN_IB \A_pad[0]/U0/U1  (.YIN(\A_pad[0]/U0/NET1 ), .Y(\A_c[0] ));
    XA1B \SM_8S_1_i_a4[0]  (.A(\A_c[0] ), .B(\A_c[2] ), .C(N_30), .Y(
        N_34));
    NOR3 \SM_8S_1_i[0]  (.A(N_35), .B(N_36), .C(N_34), .Y(
        \SM_8S_1_i[0]_net_1 ));
    IOIN_IB \BI_N_pad/U0/U1  (.YIN(\BI_N_pad/U0/NET1 ), .Y(BI_N_c));
    NOR2A \SM_8S_1_i_a4_1_1[6]  (.A(\A_c[3] ), .B(\A_c[1] ), .Y(N_46_1)
        );
    OR2B \SM_8S_RNO[7]  (.A(LE_c), .B(BI_N_c), .Y(\SM_8S_RNO[7]_net_1 )
        );
    NOR3B \SM_8S_1_i_a4[1]  (.A(\A_c[2] ), .B(N_30), .C(\A_c[0] ), .Y(
        N_37));
    IOTRI_OB_EB \Seg_pad[6]/U0/U1  (.D(\Seg_c[6] ), .E(VCC), .DOUT(
        \Seg_pad[6]/U0/NET1 ), .EOUT(\Seg_pad[6]/U0/NET2 ));
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
    IOTRI_OB_EB \Seg_pad[4]/U0/U1  (.D(\Seg_c[4] ), .E(VCC), .DOUT(
        \Seg_pad[4]/U0/NET1 ), .EOUT(\Seg_pad[4]/U0/NET2 ));
    IOPAD_TRI \Seg_pad[5]/U0/U0  (.D(\Seg_pad[5]/U0/NET1 ), .E(
        \Seg_pad[5]/U0/NET2 ), .PAD(Seg[5]));
    IOTRI_OB_EB \Seg_pad[2]/U0/U1  (.D(\Seg_c[2] ), .E(VCC), .DOUT(
        \Seg_pad[2]/U0/NET1 ), .EOUT(\Seg_pad[2]/U0/NET2 ));
    IOPAD_IN \A_pad[3]/U0/U0  (.PAD(A[3]), .Y(\A_pad[3]/U0/NET1 ));
    OR2 \SM_8S_1_i_o2[1]  (.A(\A_c[3] ), .B(\A_c[1] ), .Y(N_30));
    IOPAD_TRI \Seg_pad[6]/U0/U0  (.D(\Seg_pad[6]/U0/NET1 ), .E(
        \Seg_pad[6]/U0/NET2 ), .PAD(Seg[6]));
    DLN0P1C1 \SM_8S[1]  (.D(\SM_8S_1_i[1]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\Seg_c[1] ));
    IOPAD_TRI \Seg_pad[4]/U0/U0  (.D(\Seg_pad[4]/U0/NET1 ), .E(
        \Seg_pad[4]/U0/NET2 ), .PAD(Seg[4]));
    IOTRI_OB_EB \Seg_pad[3]/U0/U1  (.D(\Seg_c[3] ), .E(VCC), .DOUT(
        \Seg_pad[3]/U0/NET1 ), .EOUT(\Seg_pad[3]/U0/NET2 ));
    DLN0P1C1 \SM_8S[3]  (.D(\SM_8S_1_i[3]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\Seg_c[3] ));
    IOPAD_TRI \Seg_pad[2]/U0/U0  (.D(\Seg_pad[2]/U0/NET1 ), .E(
        \Seg_pad[2]/U0/NET2 ), .PAD(Seg[2]));
    IOPAD_IN \A_pad[0]/U0/U0  (.PAD(A[0]), .Y(\A_pad[0]/U0/NET1 ));
    DLN0P1C1 \SM_8S[0]  (.D(\SM_8S_1_i[0]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\Seg_c[0] ));
    NOR3B \SM_8S_1_i_a4_1[6]  (.A(\A_c[2] ), .B(N_46_1), .C(\A_c[0] ), 
        .Y(N_46));
    DLN0P1C1 \SM_8S[2]  (.D(\SM_8S_1[2] ), .G(LE_c), .PRE(LT_N_c_i), 
        .CLR(SM_8S58), .Q(\Seg_c[2] ));
    IOIN_IB \A_pad[2]/U0/U1  (.YIN(\A_pad[2]/U0/NET1 ), .Y(\A_c[2] ));
    IOIN_IB \A_pad[1]/U0/U1  (.YIN(\A_pad[1]/U0/NET1 ), .Y(\A_c[1] ));
    OR3A \SM_8S_1_0[2]  (.A(N_28), .B(N_39), .C(N_52), .Y(\SM_8S_1[2] )
        );
    IOIN_IB \LT_N_pad/U0/U1  (.YIN(\LT_N_pad/U0/NET1 ), .Y(LT_N_c));
    IOPAD_IN \LT_N_pad/U0/U0  (.PAD(LT_N), .Y(\LT_N_pad/U0/NET1 ));
    CLKIO \LE_pad/U0/U1  (.A(\LE_pad/U0/NET1 ), .Y(LE_c));
    IOPAD_TRI \Seg_pad[3]/U0/U0  (.D(\Seg_pad[3]/U0/NET1 ), .E(
        \Seg_pad[3]/U0/NET2 ), .PAD(Seg[3]));
    OR3 \SM_8S_1_0[5]  (.A(N_29), .B(N_52), .C(\SM_8S_1_0_0[5]_net_1 ), 
        .Y(\SM_8S_1[5] ));
    IOTRI_OB_EB \Seg_pad[0]/U0/U1  (.D(\Seg_c[0] ), .E(VCC), .DOUT(
        \Seg_pad[0]/U0/NET1 ), .EOUT(\Seg_pad[0]/U0/NET2 ));
    DLN1P1C1 \SM_8S[7]  (.D(VCC), .G(GND), .PRE(\SM_8S_RNO[7]_net_1 ), 
        .CLR(LT_N_c_i), .Q(\SM_8S[7]_net_1 ));
    NOR3C \SM_8S_1_i_a4_0[0]  (.A(\A_c[0] ), .B(\A_c[2] ), .C(N_46_1), 
        .Y(N_35));
    IOTRI_OB_EB \Seg_pad[7]/U0/U1  (.D(\SM_8S_i[7] ), .E(VCC), .DOUT(
        \Seg_pad[7]/U0/NET1 ), .EOUT(\Seg_pad[7]/U0/NET2 ));
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
    IOPAD_IN \LE_pad/U0/U0  (.PAD(LE), .Y(\LE_pad/U0/NET1 ));
    IOPAD_TRI \Seg_pad[0]/U0/U0  (.D(\Seg_pad[0]/U0/NET1 ), .E(
        \Seg_pad[0]/U0/NET2 ), .PAD(Seg[0]));
    AXOI7 \SM_8S_1_0_o4[5]  (.A(\A_c[2] ), .B(\A_c[1] ), .C(\A_c[3] ), 
        .Y(N_29));
    IOPAD_TRI \Seg_pad[7]/U0/U0  (.D(\Seg_pad[7]/U0/NET1 ), .E(
        \Seg_pad[7]/U0/NET2 ), .PAD(Seg[7]));
    NOR2A \SM_8S_1_i_a4_0[6]  (.A(N_53), .B(\A_c[3] ), .Y(N_45));
    IOTRI_OB_EB \Seg_pad[1]/U0/U1  (.D(\Seg_c[1] ), .E(VCC), .DOUT(
        \Seg_pad[1]/U0/NET1 ), .EOUT(\Seg_pad[1]/U0/NET2 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
