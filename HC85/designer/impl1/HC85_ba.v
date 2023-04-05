`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


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

    wire QAGB16, QAGB17, un1_A0_0, un1_A0_2, 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] , A3_c, 
        A2_c, A1_c, A0_c, B3_c, B2_c, B1_c, B0_c, QAGB_c, QASB_c, 
        QAEB_c, IAGB_c, IASB_c, IAEB_c, un1_A0_NE_0, un1_A0_NE_1, 
        QASB_0_a3_0, QAGB_0_a3_0, \IASB_pad/U0/NET1 , 
        \QAGB_pad/U0/NET1 , \QAGB_pad/U0/NET2 , \B3_pad/U0/NET1 , 
        \IAGB_pad/U0/NET1 , \QASB_pad/U0/NET1 , \QASB_pad/U0/NET2 , 
        \B2_pad/U0/NET1 , \B0_pad/U0/NET1 , \A1_pad/U0/NET1 , 
        \IAEB_pad/U0/NET1 , \QAEB_pad/U0/NET1 , \QAEB_pad/U0/NET2 , 
        VCC, \A3_pad/U0/NET1 , \A2_pad/U0/NET1 , \A0_pad/U0/NET1 , 
        \B1_pad/U0/NET1 , GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOPAD_TRI \QAGB_pad/U0/U0  (.D(\QAGB_pad/U0/NET1 ), .E(
        \QAGB_pad/U0/NET2 ), .PAD(QAGB));
    AND2A QAGB17_0_I_3 (.A(B1_c), .B(A1_c), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ));
    IOIN_IB \B2_pad/U0/U1  (.YIN(\B2_pad/U0/NET1 ), .Y(B2_c));
    OR2A QAGB17_0_I_2 (.A(B1_c), .B(A1_c), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ));
    IOIN_IB \A2_pad/U0/U1  (.YIN(\A2_pad/U0/NET1 ), .Y(A2_c));
    IOIN_IB \IAGB_pad/U0/U1  (.YIN(\IAGB_pad/U0/NET1 ), .Y(IAGB_c));
    IOIN_IB \B1_pad/U0/U1  (.YIN(\B1_pad/U0/NET1 ), .Y(B1_c));
    NOR3 QAGB_pad_RNO_0 (.A(un1_A0_NE_0), .B(un1_A0_NE_1), .C(IASB_c), 
        .Y(QAGB_0_a3_0));
    AO1A QAGB_pad_RNO (.A(IAEB_c), .B(QAGB_0_a3_0), .C(QAGB16), .Y(
        QAGB_c));
    IOPAD_IN \IASB_pad/U0/U0  (.PAD(IASB), .Y(\IASB_pad/U0/NET1 ));
    OR2A QAGB16_0_I_9 (.A(B3_c), .B(A3_c), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ));
    XOR2 B2_pad_RNIFRNI (.A(A2_c), .B(B2_c), .Y(un1_A0_2));
    AOI1A QAGB16_0_I_7 (.A(B2_c), .B(A2_c), .C(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ));
    IOIN_IB \B3_pad/U0/U1  (.YIN(\B3_pad/U0/NET1 ), .Y(B3_c));
    IOIN_IB \A1_pad/U0/U1  (.YIN(\A1_pad/U0/NET1 ), .Y(A1_c));
    OR2A QAGB16_0_I_2 (.A(A1_c), .B(B1_c), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ));
    NOR2A QAGB16_0_I_1 (.A(A0_c), .B(B0_c), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ));
    IOIN_IB \A3_pad/U0/U1  (.YIN(\A3_pad/U0/NET1 ), .Y(A3_c));
    AOI1A QAGB17_0_I_11 (.A(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ), .B(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ), .C(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ), .Y(
        QAGB17));
    IOIN_IB \IAEB_pad/U0/U1  (.YIN(\IAEB_pad/U0/NET1 ), .Y(IAEB_c));
    IOIN_IB \B0_pad/U0/U1  (.YIN(\B0_pad/U0/NET1 ), .Y(B0_c));
    OR2A QAGB17_0_I_9 (.A(A3_c), .B(B3_c), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ));
    AOI1A QAGB17_0_I_4 (.A(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ), .B(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ), .C(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ));
    IOIN_IB \A0_pad/U0/U1  (.YIN(\A0_pad/U0/NET1 ), .Y(A0_c));
    IOPAD_IN \IAGB_pad/U0/U0  (.PAD(IAGB), .Y(\IAGB_pad/U0/NET1 ));
    NOR3A QAEB_pad_RNO (.A(IAEB_c), .B(un1_A0_NE_0), .C(un1_A0_NE_1), 
        .Y(QAEB_c));
    IOTRI_OB_EB \QASB_pad/U0/U1  (.D(QASB_c), .E(VCC), .DOUT(
        \QASB_pad/U0/NET1 ), .EOUT(\QASB_pad/U0/NET2 ));
    IOTRI_OB_EB \QAEB_pad/U0/U1  (.D(QAEB_c), .E(VCC), .DOUT(
        \QAEB_pad/U0/NET1 ), .EOUT(\QAEB_pad/U0/NET2 ));
    IOPAD_IN \B1_pad/U0/U0  (.PAD(B1), .Y(\B1_pad/U0/NET1 ));
    AO1A QASB_pad_RNO (.A(IAEB_c), .B(QASB_0_a3_0), .C(QAGB17), .Y(
        QASB_c));
    AOI1A QAGB17_0_I_10 (.A(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ), .B(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ), .C(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ));
    NOR2A QAGB17_0_I_6 (.A(B3_c), .B(A3_c), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ));
    IOPAD_IN \A1_pad/U0/U0  (.PAD(A1), .Y(\A1_pad/U0/NET1 ));
    IOPAD_IN \B2_pad/U0/U0  (.PAD(B2), .Y(\B2_pad/U0/NET1 ));
    IOPAD_IN \IAEB_pad/U0/U0  (.PAD(IAEB), .Y(\IAEB_pad/U0/NET1 ));
    AOI1A QAGB16_0_I_11 (.A(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ), .B(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ), .C(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ), .Y(
        QAGB16));
    IOTRI_OB_EB \QAGB_pad/U0/U1  (.D(QAGB_c), .E(VCC), .DOUT(
        \QAGB_pad/U0/NET1 ), .EOUT(\QAGB_pad/U0/NET2 ));
    IOPAD_IN \A2_pad/U0/U0  (.PAD(A2), .Y(\A2_pad/U0/NET1 ));
    NOR2A QAGB16_0_I_6 (.A(A3_c), .B(B3_c), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ));
    XOR2 A0_pad_RNIBBVH (.A(A0_c), .B(B0_c), .Y(un1_A0_0));
    IOIN_IB \IASB_pad/U0/U1  (.YIN(\IASB_pad/U0/NET1 ), .Y(IASB_c));
    NOR3 QASB_pad_RNO_0 (.A(un1_A0_NE_0), .B(un1_A0_NE_1), .C(IAGB_c), 
        .Y(QASB_0_a3_0));
    IOPAD_TRI \QASB_pad/U0/U0  (.D(\QASB_pad/U0/NET1 ), .E(
        \QASB_pad/U0/NET2 ), .PAD(QASB));
    IOPAD_IN \B3_pad/U0/U0  (.PAD(B3), .Y(\B3_pad/U0/NET1 ));
    IOPAD_TRI \QAEB_pad/U0/U0  (.D(\QAEB_pad/U0/NET1 ), .E(
        \QAEB_pad/U0/NET2 ), .PAD(QAEB));
    AND2A QAGB16_0_I_3 (.A(A1_c), .B(B1_c), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ));
    XO1 A3_pad_RNI0VRT (.A(B3_c), .B(A3_c), .C(un1_A0_2), .Y(
        un1_A0_NE_1));
    AOI1A QAGB17_0_I_7 (.A(A2_c), .B(B2_c), .C(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ));
    IOPAD_IN \B0_pad/U0/U0  (.PAD(B0), .Y(\B0_pad/U0/NET1 ));
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
    IOPAD_IN \A3_pad/U0/U0  (.PAD(A3), .Y(\A3_pad/U0/NET1 ));
    XO1 B1_pad_RNIOUAS (.A(B1_c), .B(A1_c), .C(un1_A0_0), .Y(
        un1_A0_NE_0));
    NOR2A QAGB17_0_I_8 (.A(A2_c), .B(B2_c), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ));
    NOR2A QAGB16_0_I_8 (.A(B2_c), .B(A2_c), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ));
    IOPAD_IN \A0_pad/U0/U0  (.PAD(A0), .Y(\A0_pad/U0/NET1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
