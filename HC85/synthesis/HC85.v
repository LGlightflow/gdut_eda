`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module HC85(
       A3,
       A2,
       A1,
       A0,
       B3,
       B2,
       B1,
       B0,
       QAGB,
       QASB,
       QAEB,
       IAGB,
       IASB,
       IAEB
    );
input  A3;
input  A2;
input  A1;
input  A0;
input  B3;
input  B2;
input  B1;
input  B0;
output QAGB;
output QASB;
output QAEB;
input  IAGB;
input  IASB;
input  IAEB;

    wire QAGB16, QAGB17, un1_A0_0, un1_A0_2, GND, VCC, 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[4] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[4] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] , A3_c, 
        A2_c, A1_c, A0_c, B3_c, B2_c, B1_c, B0_c, QAGB_c, QASB_c, 
        QAEB_c, IAGB_c, IASB_c, IAEB_c, un1_A0_NE_0, un1_A0_NE_1, 
        QASB_0_a3_0, QAGB_0_a3_0;
    
    AND2A QAGB17_0_I_3 (.A(B1_c), .B(A1_c), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ));
    OR2A QAGB17_0_I_5 (.A(B2_c), .B(A2_c), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[4] ));
    OR2A QAGB17_0_I_2 (.A(B1_c), .B(A1_c), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ));
    NOR3 QAGB_pad_RNO_0 (.A(un1_A0_NE_0), .B(un1_A0_NE_1), .C(IASB_c), 
        .Y(QAGB_0_a3_0));
    AO1A QAGB_pad_RNO (.A(IAEB_c), .B(QAGB_0_a3_0), .C(QAGB16), .Y(
        QAGB_c));
    INBUF IASB_pad (.PAD(IASB), .Y(IASB_c));
    OR2A QAGB16_0_I_9 (.A(B3_c), .B(A3_c), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ));
    XOR2 B2_pad_RNIFRNI (.A(A2_c), .B(B2_c), .Y(un1_A0_2));
    NOR2A QAGB16_0_I_7 (.A(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[4] ), .B(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ));
    VCC VCC_i (.Y(VCC));
    OR2A QAGB16_0_I_2 (.A(A1_c), .B(B1_c), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ));
    OUTBUF QAGB_pad (.D(QAGB_c), .PAD(QAGB));
    NOR2A QAGB16_0_I_1 (.A(A0_c), .B(B0_c), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ));
    INBUF B3_pad (.PAD(B3), .Y(B3_c));
    AOI1A QAGB17_0_I_11 (.A(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ), .B(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ), .C(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ), .Y(
        QAGB17));
    INBUF IAGB_pad (.PAD(IAGB), .Y(IAGB_c));
    OUTBUF QASB_pad (.D(QASB_c), .PAD(QASB));
    OR2A QAGB17_0_I_9 (.A(A3_c), .B(B3_c), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ));
    AOI1A QAGB17_0_I_4 (.A(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ), .B(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ), .C(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ));
    INBUF B2_pad (.PAD(B2), .Y(B2_c));
    INBUF B0_pad (.PAD(B0), .Y(B0_c));
    NOR3A QAEB_pad_RNO (.A(IAEB_c), .B(un1_A0_NE_0), .C(un1_A0_NE_1), 
        .Y(QAEB_c));
    INBUF A1_pad (.PAD(A1), .Y(A1_c));
    GND GND_i (.Y(GND));
    AO1A QASB_pad_RNO (.A(IAEB_c), .B(QASB_0_a3_0), .C(QAGB17), .Y(
        QASB_c));
    AOI1A QAGB17_0_I_10 (.A(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ), .B(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ), .C(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ));
    NOR2A QAGB17_0_I_6 (.A(B3_c), .B(A3_c), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ));
    AOI1A QAGB16_0_I_11 (.A(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ), .B(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ), .C(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ), .Y(
        QAGB16));
    OR2A QAGB16_0_I_5 (.A(A2_c), .B(B2_c), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[4] ));
    NOR2A QAGB16_0_I_6 (.A(A3_c), .B(B3_c), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ));
    XOR2 A0_pad_RNIBBVH (.A(A0_c), .B(B0_c), .Y(un1_A0_0));
    INBUF IAEB_pad (.PAD(IAEB), .Y(IAEB_c));
    OUTBUF QAEB_pad (.D(QAEB_c), .PAD(QAEB));
    INBUF A3_pad (.PAD(A3), .Y(A3_c));
    NOR3 QASB_pad_RNO_0 (.A(un1_A0_NE_0), .B(un1_A0_NE_1), .C(IAGB_c), 
        .Y(QASB_0_a3_0));
    AND2A QAGB16_0_I_3 (.A(A1_c), .B(B1_c), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ));
    XO1 A3_pad_RNI0VRT (.A(B3_c), .B(A3_c), .C(un1_A0_2), .Y(
        un1_A0_NE_1));
    NOR2A QAGB17_0_I_7 (.A(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[4] ), .B(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ));
    NOR2A QAGB17_0_I_1 (.A(B0_c), .B(A0_c), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ));
    AOI1A QAGB16_0_I_4 (.A(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ), .B(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ), .C(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ));
    AOI1A QAGB16_0_I_10 (.A(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ), .B(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ), .C(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ));
    INBUF A2_pad (.PAD(A2), .Y(A2_c));
    INBUF A0_pad (.PAD(A0), .Y(A0_c));
    XO1 B1_pad_RNIOUAS (.A(B1_c), .B(A1_c), .C(un1_A0_0), .Y(
        un1_A0_NE_0));
    INBUF B1_pad (.PAD(B1), .Y(B1_c));
    NOR2A QAGB17_0_I_8 (.A(A2_c), .B(B2_c), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ));
    NOR2A QAGB16_0_I_8 (.A(B2_c), .B(A2_c), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ));
    
endmodule
