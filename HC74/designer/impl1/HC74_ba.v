`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


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

    wire Q2_RNO_net_1, Q1_RNO_net_1, Q1_N_1_net_1, Q2_N_RNO_net_1, 
        S1_c, S2_c, R1_c, R2_c, Clk1_c, Clk2_c, D1_c, D2_c, Q1_c, Q2_c, 
        Q1_N_c, Q2_N_c, Q2_3, Q29, \Q2_pad/U0/NET1 , \Q2_pad/U0/NET2 , 
        \Q1_pad/U0/NET1 , \Q1_pad/U0/NET2 , \Q1_N_pad/U0/NET1 , 
        \Q1_N_pad/U0/NET2 , \Clk2_pad/U0/NET1 , \Q2_N_pad/U0/NET1 , 
        \Q2_N_pad/U0/NET2 , VCC, \S2_pad/U0/NET1 , \S1_pad/U0/NET1 , 
        \D2_pad/U0/NET1 , \D1_pad/U0/NET1 , \R2_pad/U0/NET1 , 
        \R1_pad/U0/NET1 , \Clk1_pad/U0/NET1 , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOPAD_IN \R1_pad/U0/U0  (.PAD(R1), .Y(\R1_pad/U0/NET1 ));
    AOI1 Q2_N_RNO (.A(D2_c), .B(R1_c), .C(Q29), .Y(Q2_N_RNO_net_1));
    IOPAD_IN \R2_pad/U0/U0  (.PAD(R2), .Y(\R2_pad/U0/NET1 ));
    DFN1 Q1_N_inst_1 (.D(Q1_N_1_net_1), .CLK(Clk1_c), .Q(Q1_N_c));
    IOTRI_OB_EB \Q2_pad/U0/U1  (.D(Q2_c), .E(VCC), .DOUT(
        \Q2_pad/U0/NET1 ), .EOUT(\Q2_pad/U0/NET2 ));
    IOTRI_OB_EB \Q1_pad/U0/U1  (.D(Q1_c), .E(VCC), .DOUT(
        \Q1_pad/U0/NET1 ), .EOUT(\Q1_pad/U0/NET2 ));
    IOIN_IB \S2_pad/U0/U1  (.YIN(\S2_pad/U0/NET1 ), .Y(S2_c));
    DFN1 Q2_inst_1 (.D(Q2_RNO_net_1), .CLK(Clk2_c), .Q(Q2_c));
    IOPAD_IN \Clk2_pad/U0/U0  (.PAD(Clk2), .Y(\Clk2_pad/U0/NET1 ));
    NOR2A S2_pad_RNIH6HH (.A(R2_c), .B(S2_c), .Y(Q29));
    IOIN_IB \S1_pad/U0/U1  (.YIN(\S1_pad/U0/NET1 ), .Y(S1_c));
    IOPAD_IN \D1_pad/U0/U0  (.PAD(D1), .Y(\D1_pad/U0/NET1 ));
    AO1C Q1_N_1 (.A(D1_c), .B(S1_c), .C(R1_c), .Y(Q1_N_1_net_1));
    IOPAD_TRI \Q2_N_pad/U0/U0  (.D(\Q2_N_pad/U0/NET1 ), .E(
        \Q2_N_pad/U0/NET2 ), .PAD(Q2_N));
    IOPAD_IN \D2_pad/U0/U0  (.PAD(D2), .Y(\D2_pad/U0/NET1 ));
    IOIN_IB \R2_pad/U0/U1  (.YIN(\R2_pad/U0/NET1 ), .Y(R2_c));
    IOTRI_OB_EB \Q1_N_pad/U0/U1  (.D(Q1_N_c), .E(VCC), .DOUT(
        \Q1_N_pad/U0/NET1 ), .EOUT(\Q1_N_pad/U0/NET2 ));
    MX2A Q2_RNO_0 (.A(S1_c), .B(D2_c), .S(R1_c), .Y(Q2_3));
    IOPAD_IN \Clk1_pad/U0/U0  (.PAD(Clk1), .Y(\Clk1_pad/U0/NET1 ));
    IOIN_IB \R1_pad/U0/U1  (.YIN(\R1_pad/U0/NET1 ), .Y(R1_c));
    IOPAD_TRI \Q1_pad/U0/U0  (.D(\Q1_pad/U0/NET1 ), .E(
        \Q1_pad/U0/NET2 ), .PAD(Q1));
    OR2 Q2_RNO (.A(Q2_3), .B(Q29), .Y(Q2_RNO_net_1));
    IOPAD_TRI \Q1_N_pad/U0/U0  (.D(\Q1_N_pad/U0/NET1 ), .E(
        \Q1_N_pad/U0/NET2 ), .PAD(Q1_N));
    IOPAD_TRI \Q2_pad/U0/U0  (.D(\Q2_pad/U0/NET1 ), .E(
        \Q2_pad/U0/NET2 ), .PAD(Q2));
    IOPAD_IN \S1_pad/U0/U0  (.PAD(S1), .Y(\S1_pad/U0/NET1 ));
    AO1B Q1_RNO (.A(R1_c), .B(D1_c), .C(S1_c), .Y(Q1_RNO_net_1));
    CLKIO \Clk2_pad/U0/U1  (.A(\Clk2_pad/U0/NET1 ), .Y(Clk2_c));
    IOIN_IB \D2_pad/U0/U1  (.YIN(\D2_pad/U0/NET1 ), .Y(D2_c));
    IOPAD_IN \S2_pad/U0/U0  (.PAD(S2), .Y(\S2_pad/U0/NET1 ));
    DFN1 Q1_inst_1 (.D(Q1_RNO_net_1), .CLK(Clk1_c), .Q(Q1_c));
    IOTRI_OB_EB \Q2_N_pad/U0/U1  (.D(Q2_N_c), .E(VCC), .DOUT(
        \Q2_N_pad/U0/NET1 ), .EOUT(\Q2_N_pad/U0/NET2 ));
    IOIN_IB \D1_pad/U0/U1  (.YIN(\D1_pad/U0/NET1 ), .Y(D1_c));
    DFN1 Q2_N_inst_1 (.D(Q2_N_RNO_net_1), .CLK(Clk2_c), .Q(Q2_N_c));
    CLKIO \Clk1_pad/U0/U1  (.A(\Clk1_pad/U0/NET1 ), .Y(Clk1_c));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
