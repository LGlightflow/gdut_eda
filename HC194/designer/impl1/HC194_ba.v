`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


module HC194(
       MR,
       S,
       Clk,
       DSR,
       DSL,
       D,
       Q
    );
input  MR;
input  [1:0] S;
input  Clk;
input  DSR;
input  DSL;
input  [3:0] D;
output [3:0] Q;

    wire Q12, \Q_5[0] , \Q_5[1] , \Q_5[2] , \Q_5[3] , N_6, N_7, N_8, 
        N_9, Q_5_sn_N_2, MR_c, \S_c[0] , \S_c[1] , Clk_c, DSR_c, DSL_c, 
        \D_c[0] , \D_c[1] , \D_c[2] , \D_c[3] , \Q_c[0] , \Q_c[1] , 
        \Q_c[2] , \Q_c[3] , \Q_pad[1]/U0/NET1 , \Q_pad[1]/U0/NET2 , 
        \Clk_pad/U0/NET1 , \DSR_pad/U0/NET1 , \Q_pad[2]/U0/NET1 , 
        \Q_pad[2]/U0/NET2 , \D_pad[1]/U0/NET1 , \DSL_pad/U0/NET1 , 
        \S_pad[1]/U0/NET1 , \D_pad[0]/U0/NET1 , \MR_pad/U0/NET1 , 
        \S_pad[0]/U0/NET1 , \Q_pad[3]/U0/NET1 , \Q_pad[3]/U0/NET2 , 
        \D_pad[2]/U0/NET1 , \D_pad[3]/U0/NET1 , \Q_pad[0]/U0/NET1 , 
        \Q_pad[0]/U0/NET2 , VCC, \Q[1]/Y , \Q[0]/Y , \Q[3]/Y , 
        \Q[2]/Y , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOIN_IB \MR_pad/U0/U1  (.YIN(\MR_pad/U0/NET1 ), .Y(MR_c));
    MX2 \Q_RNO_0[0]  (.A(\Q_c[1] ), .B(DSR_c), .S(\S_c[0] ), .Y(N_6));
    MX2 \Q[3]/U0  (.A(\Q_5[3] ), .B(\Q_c[3] ), .S(Q12), .Y(\Q[3]/Y ));
    IOTRI_OB_EB \Q_pad[0]/U0/U1  (.D(\Q_c[0] ), .E(VCC), .DOUT(
        \Q_pad[0]/U0/NET1 ), .EOUT(\Q_pad[0]/U0/NET2 ));
    MX2 \Q_RNO[3]  (.A(N_9), .B(\D_c[3] ), .S(Q_5_sn_N_2), .Y(\Q_5[3] )
        );
    MX2 \Q_RNO[1]  (.A(N_7), .B(\D_c[1] ), .S(Q_5_sn_N_2), .Y(\Q_5[1] )
        );
    IOTRI_OB_EB \Q_pad[1]/U0/U1  (.D(\Q_c[1] ), .E(VCC), .DOUT(
        \Q_pad[1]/U0/NET1 ), .EOUT(\Q_pad[1]/U0/NET2 ));
    MX2 \Q_RNO_0[3]  (.A(DSL_c), .B(\Q_c[2] ), .S(\S_c[0] ), .Y(N_9));
    IOPAD_TRI \Q_pad[3]/U0/U0  (.D(\Q_pad[3]/U0/NET1 ), .E(
        \Q_pad[3]/U0/NET2 ), .PAD(Q[3]));
    IOTRI_OB_EB \Q_pad[2]/U0/U1  (.D(\Q_c[2] ), .E(VCC), .DOUT(
        \Q_pad[2]/U0/NET1 ), .EOUT(\Q_pad[2]/U0/NET2 ));
    IOPAD_IN \DSL_pad/U0/U0  (.PAD(DSL), .Y(\DSL_pad/U0/NET1 ));
    MX2 \Q_RNO_0[1]  (.A(\Q_c[2] ), .B(\Q_c[0] ), .S(\S_c[0] ), .Y(N_7)
        );
    IOPAD_IN \MR_pad/U0/U0  (.PAD(MR), .Y(\MR_pad/U0/NET1 ));
    IOPAD_IN \D_pad[3]/U0/U0  (.PAD(D[3]), .Y(\D_pad[3]/U0/NET1 ));
    DFN1C0 \Q[2]/U1  (.D(\Q[2]/Y ), .CLK(Clk_c), .CLR(MR_c), .Q(
        \Q_c[2] ));
    MX2 \Q[0]/U0  (.A(\Q_5[0] ), .B(\Q_c[0] ), .S(Q12), .Y(\Q[0]/Y ));
    IOIN_IB \D_pad[1]/U0/U1  (.YIN(\D_pad[1]/U0/NET1 ), .Y(\D_c[1] ));
    DFN1C0 \Q[0]/U1  (.D(\Q[0]/Y ), .CLK(Clk_c), .CLR(MR_c), .Q(
        \Q_c[0] ));
    IOPAD_TRI \Q_pad[0]/U0/U0  (.D(\Q_pad[0]/U0/NET1 ), .E(
        \Q_pad[0]/U0/NET2 ), .PAD(Q[0]));
    IOIN_IB \D_pad[2]/U0/U1  (.YIN(\D_pad[2]/U0/NET1 ), .Y(\D_c[2] ));
    CLKIO \Clk_pad/U0/U1  (.A(\Clk_pad/U0/NET1 ), .Y(Clk_c));
    MX2 \Q_RNO[2]  (.A(N_8), .B(\D_c[2] ), .S(Q_5_sn_N_2), .Y(\Q_5[2] )
        );
    IOIN_IB \D_pad[0]/U0/U1  (.YIN(\D_pad[0]/U0/NET1 ), .Y(\D_c[0] ));
    IOIN_IB \S_pad[1]/U0/U1  (.YIN(\S_pad[1]/U0/NET1 ), .Y(\S_c[1] ));
    IOPAD_TRI \Q_pad[1]/U0/U0  (.D(\Q_pad[1]/U0/NET1 ), .E(
        \Q_pad[1]/U0/NET2 ), .PAD(Q[1]));
    DFN1C0 \Q[1]/U1  (.D(\Q[1]/Y ), .CLK(Clk_c), .CLR(MR_c), .Q(
        \Q_c[1] ));
    IOPAD_TRI \Q_pad[2]/U0/U0  (.D(\Q_pad[2]/U0/NET1 ), .E(
        \Q_pad[2]/U0/NET2 ), .PAD(Q[2]));
    MX2 \Q_RNO_0[2]  (.A(\Q_c[3] ), .B(\Q_c[1] ), .S(\S_c[0] ), .Y(N_8)
        );
    IOIN_IB \S_pad[0]/U0/U1  (.YIN(\S_pad[0]/U0/NET1 ), .Y(\S_c[0] ));
    IOPAD_IN \DSR_pad/U0/U0  (.PAD(DSR), .Y(\DSR_pad/U0/NET1 ));
    IOPAD_IN \Clk_pad/U0/U0  (.PAD(Clk), .Y(\Clk_pad/U0/NET1 ));
    IOPAD_IN \D_pad[1]/U0/U0  (.PAD(D[1]), .Y(\D_pad[1]/U0/NET1 ));
    MX2 \Q[1]/U0  (.A(\Q_5[1] ), .B(\Q_c[1] ), .S(Q12), .Y(\Q[1]/Y ));
    NOR2 \S_pad_RNIVNV7_0[1]  (.A(\S_c[1] ), .B(\S_c[0] ), .Y(Q12));
    MX2 \Q[2]/U0  (.A(\Q_5[2] ), .B(\Q_c[2] ), .S(Q12), .Y(\Q[2]/Y ));
    IOTRI_OB_EB \Q_pad[3]/U0/U1  (.D(\Q_c[3] ), .E(VCC), .DOUT(
        \Q_pad[3]/U0/NET1 ), .EOUT(\Q_pad[3]/U0/NET2 ));
    IOIN_IB \DSR_pad/U0/U1  (.YIN(\DSR_pad/U0/NET1 ), .Y(DSR_c));
    MX2 \Q_RNO[0]  (.A(N_6), .B(\D_c[0] ), .S(Q_5_sn_N_2), .Y(\Q_5[0] )
        );
    IOPAD_IN \D_pad[2]/U0/U0  (.PAD(D[2]), .Y(\D_pad[2]/U0/NET1 ));
    IOIN_IB \D_pad[3]/U0/U1  (.YIN(\D_pad[3]/U0/NET1 ), .Y(\D_c[3] ));
    DFN1C0 \Q[3]/U1  (.D(\Q[3]/Y ), .CLK(Clk_c), .CLR(MR_c), .Q(
        \Q_c[3] ));
    IOPAD_IN \D_pad[0]/U0/U0  (.PAD(D[0]), .Y(\D_pad[0]/U0/NET1 ));
    IOPAD_IN \S_pad[1]/U0/U0  (.PAD(S[1]), .Y(\S_pad[1]/U0/NET1 ));
    IOIN_IB \DSL_pad/U0/U1  (.YIN(\DSL_pad/U0/NET1 ), .Y(DSL_c));
    NOR2B \S_pad_RNIVNV7[1]  (.A(\S_c[1] ), .B(\S_c[0] ), .Y(
        Q_5_sn_N_2));
    IOPAD_IN \S_pad[0]/U0/U0  (.PAD(S[0]), .Y(\S_pad[0]/U0/NET1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
