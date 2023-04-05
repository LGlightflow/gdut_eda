`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module encoder8_3_1(
       din,
       EI,
       GS,
       EO,
       dout
    );
input  [7:0] din;
input  EI;
output GS;
output EO;
output [2:0] dout;

    wire EO_pad_RNO_net_1, \dout_i[0]_net_1 , \dout_i[1]_net_1 , 
        \dout_i_a2[2]_net_1 , GND, VCC, N_25_3, N_25_4, N_25_2, N_41, 
        N_42, N_40, N_38, \din_c[0] , \din_c[1] , \din_c[2] , 
        \din_c[3] , \din_c[4] , \din_c[5] , \din_c[6] , \din_c[7] , 
        EI_c, GS_c, \dout_i_a2_0[1] , GS_0_a3_0, GS_0_a3_1, 
        \dout_i_a2_0[0]_net_1 ;
    
    NOR2A \dout_i_a2_0_0[1]  (.A(N_25_3), .B(N_25_2), .Y(
        \dout_i_a2_0[1] ));
    AO1 GS_pad_RNO (.A(GS_0_a3_1), .B(GS_0_a3_0), .C(EI_c), .Y(GS_c));
    INBUF \din_pad[7]  (.PAD(din[7]), .Y(\din_c[7] ));
    INBUF \din_pad[2]  (.PAD(din[2]), .Y(\din_c[2] ));
    NOR2 \dout_i_a2_0[0]  (.A(\din_c[7] ), .B(EI_c), .Y(N_41));
    NOR3C \din_pad_RNI52TD2[2]  (.A(N_25_4), .B(N_25_3), .C(N_25_2), 
        .Y(GS_0_a3_1));
    OUTBUF EO_pad (.D(EO_pad_RNO_net_1), .PAD(EO));
    NOR2B \din_pad_RNIFOUP[0]  (.A(\din_c[1] ), .B(\din_c[0] ), .Y(
        GS_0_a3_0));
    OUTBUF \dout_pad[2]  (.D(\dout_i_a2[2]_net_1 ), .PAD(dout[2]));
    NOR3A \dout_i_a2_1[0]  (.A(\din_c[6] ), .B(\din_c[5] ), .C(EI_c), 
        .Y(N_42));
    OUTBUF GS_pad (.D(GS_c), .PAD(GS));
    OUTBUF \dout_pad[1]  (.D(\dout_i[1]_net_1 ), .PAD(dout[1]));
    INBUF \din_pad[6]  (.PAD(din[6]), .Y(\din_c[6] ));
    VCC VCC_i (.Y(VCC));
    AO1A \dout_i[1]  (.A(\dout_i_a2_0[1] ), .B(N_25_4), .C(EI_c), .Y(
        \dout_i[1]_net_1 ));
    NOR2A \dout_i_a2_0_0[0]  (.A(\din_c[4] ), .B(EI_c), .Y(
        \dout_i_a2_0[0]_net_1 ));
    AO1C \dout_i_o2[0]  (.A(\din_c[1] ), .B(\din_c[2] ), .C(\din_c[3] )
        , .Y(N_38));
    NOR3 \dout_i[0]  (.A(N_41), .B(N_42), .C(N_40), .Y(
        \dout_i[0]_net_1 ));
    GND GND_i (.Y(GND));
    NOR2B \din_pad_RNIN0VP[4]  (.A(\din_c[5] ), .B(\din_c[4] ), .Y(
        N_25_3));
    INBUF EI_pad (.PAD(EI), .Y(EI_c));
    OUTBUF \dout_pad[0]  (.D(\dout_i[0]_net_1 ), .PAD(dout[0]));
    INBUF \din_pad[4]  (.PAD(din[4]), .Y(\din_c[4] ));
    INBUF \din_pad[3]  (.PAD(din[3]), .Y(\din_c[3] ));
    INBUF \din_pad[1]  (.PAD(din[1]), .Y(\din_c[1] ));
    INBUF \din_pad[0]  (.PAD(din[0]), .Y(\din_c[0] ));
    NOR2B \din_pad_RNIJSUP[2]  (.A(\din_c[3] ), .B(\din_c[2] ), .Y(
        N_25_2));
    AO1 \dout_i_a2[2]  (.A(N_25_3), .B(N_25_4), .C(EI_c), .Y(
        \dout_i_a2[2]_net_1 ));
    OR3B EO_pad_RNO (.A(GS_0_a3_0), .B(GS_0_a3_1), .C(EI_c), .Y(
        EO_pad_RNO_net_1));
    NOR2B \din_pad_RNIR4VP[7]  (.A(\din_c[7] ), .B(\din_c[6] ), .Y(
        N_25_4));
    INBUF \din_pad[5]  (.PAD(din[5]), .Y(\din_c[5] ));
    NOR3C \dout_i_a2[0]  (.A(\din_c[6] ), .B(N_38), .C(
        \dout_i_a2_0[0]_net_1 ), .Y(N_40));
    
endmodule
