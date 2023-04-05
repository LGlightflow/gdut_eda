`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


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

    wire Q120, Q220, N_41_mux, N_42_mux, S1_c, S2_c, R1_c, R2_c, 
        Clk1_c, Clk2_c, J1_c, J2_c, K1_c, K2_c, Q1_c, Q2_c, Q2_c_i, 
        Q1_c_i, S2_c_i, S1_c_i, \Q2_pad/U0/NET1 , \Q2_pad/U0/NET2 , 
        \Q1_pad/U0/NET1 , \Q1_pad/U0/NET2 , \Q1_N_pad/U0/NET1 , 
        \Q1_N_pad/U0/NET2 , \Clk2_pad/U0/NET1 , \Q2_N_pad/U0/NET1 , 
        \Q2_N_pad/U0/NET2 , VCC, \J2_pad/U0/NET1 , \J1_pad/U0/NET1 , 
        \S2_pad/U0/NET1 , \S1_pad/U0/NET1 , \K2_pad/U0/NET1 , 
        \K1_pad/U0/NET1 , \R2_pad/U0/NET1 , \R1_pad/U0/NET1 , 
        \Clk1_pad/U0/NET1 , GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOPAD_IN \R1_pad/U0/U0  (.PAD(R1), .Y(\R1_pad/U0/NET1 ));
    INV Q1_N_pad_RNO (.A(Q1_c), .Y(Q1_c_i));
    IOPAD_IN \K1_pad/U0/U0  (.PAD(K1), .Y(\K1_pad/U0/NET1 ));
    IOPAD_IN \R2_pad/U0/U0  (.PAD(R2), .Y(\R2_pad/U0/NET1 ));
    IOPAD_IN \K2_pad/U0/U0  (.PAD(K2), .Y(\K2_pad/U0/NET1 ));
    IOTRI_OB_EB \Q2_pad/U0/U1  (.D(Q2_c), .E(VCC), .DOUT(
        \Q2_pad/U0/NET1 ), .EOUT(\Q2_pad/U0/NET2 ));
    IOIN_IB \J2_pad/U0/U1  (.YIN(\J2_pad/U0/NET1 ), .Y(J2_c));
    IOTRI_OB_EB \Q1_pad/U0/U1  (.D(Q1_c), .E(VCC), .DOUT(
        \Q1_pad/U0/NET1 ), .EOUT(\Q1_pad/U0/NET2 ));
    IOIN_IB \S2_pad/U0/U1  (.YIN(\S2_pad/U0/NET1 ), .Y(S2_c));
    IOIN_IB \J1_pad/U0/U1  (.YIN(\J1_pad/U0/NET1 ), .Y(J1_c));
    DFN0P1C1 Q2_inst_1 (.D(N_41_mux), .CLK(Clk2_c), .PRE(S2_c_i), .CLR(
        Q220), .Q(Q2_c));
    IOPAD_IN \Clk2_pad/U0/U0  (.PAD(Clk2), .Y(\Clk2_pad/U0/NET1 ));
    INV Q2_RNO_1 (.A(S2_c), .Y(S2_c_i));
    IOIN_IB \S1_pad/U0/U1  (.YIN(\S1_pad/U0/NET1 ), .Y(S1_c));
    MX2B Q1_RNO_0 (.A(J1_c), .B(K1_c), .S(Q1_c), .Y(N_42_mux));
    IOPAD_TRI \Q2_N_pad/U0/U0  (.D(\Q2_N_pad/U0/NET1 ), .E(
        \Q2_N_pad/U0/NET2 ), .PAD(Q2_N));
    IOIN_IB \R2_pad/U0/U1  (.YIN(\R2_pad/U0/NET1 ), .Y(R2_c));
    IOTRI_OB_EB \Q1_N_pad/U0/U1  (.D(Q1_c_i), .E(VCC), .DOUT(
        \Q1_N_pad/U0/NET1 ), .EOUT(\Q1_N_pad/U0/NET2 ));
    MX2B Q2_RNO_0 (.A(J2_c), .B(K2_c), .S(Q2_c), .Y(N_41_mux));
    IOIN_IB \K2_pad/U0/U1  (.YIN(\K2_pad/U0/NET1 ), .Y(K2_c));
    IOPAD_IN \Clk1_pad/U0/U0  (.PAD(Clk1), .Y(\Clk1_pad/U0/NET1 ));
    IOIN_IB \R1_pad/U0/U1  (.YIN(\R1_pad/U0/NET1 ), .Y(R1_c));
    IOIN_IB \K1_pad/U0/U1  (.YIN(\K1_pad/U0/NET1 ), .Y(K1_c));
    IOPAD_TRI \Q1_pad/U0/U0  (.D(\Q1_pad/U0/NET1 ), .E(
        \Q1_pad/U0/NET2 ), .PAD(Q1));
    NOR2A Q2_RNO (.A(S2_c), .B(R2_c), .Y(Q220));
    IOPAD_TRI \Q1_N_pad/U0/U0  (.D(\Q1_N_pad/U0/NET1 ), .E(
        \Q1_N_pad/U0/NET2 ), .PAD(Q1_N));
    IOPAD_IN \J1_pad/U0/U0  (.PAD(J1), .Y(\J1_pad/U0/NET1 ));
    IOPAD_TRI \Q2_pad/U0/U0  (.D(\Q2_pad/U0/NET1 ), .E(
        \Q2_pad/U0/NET2 ), .PAD(Q2));
    INV Q2_N_pad_RNO (.A(Q2_c), .Y(Q2_c_i));
    IOPAD_IN \S1_pad/U0/U0  (.PAD(S1), .Y(\S1_pad/U0/NET1 ));
    INV Q1_RNO_1 (.A(S1_c), .Y(S1_c_i));
    IOPAD_IN \J2_pad/U0/U0  (.PAD(J2), .Y(\J2_pad/U0/NET1 ));
    NOR2A Q1_RNO (.A(S1_c), .B(R1_c), .Y(Q120));
    IOIN_IB \Clk2_pad/U0/U1  (.YIN(\Clk2_pad/U0/NET1 ), .Y(Clk2_c));
    IOPAD_IN \S2_pad/U0/U0  (.PAD(S2), .Y(\S2_pad/U0/NET1 ));
    DFN0P1C1 Q1_inst_1 (.D(N_42_mux), .CLK(Clk1_c), .PRE(S1_c_i), .CLR(
        Q120), .Q(Q1_c));
    IOTRI_OB_EB \Q2_N_pad/U0/U1  (.D(Q2_c_i), .E(VCC), .DOUT(
        \Q2_N_pad/U0/NET1 ), .EOUT(\Q2_N_pad/U0/NET2 ));
    IOIN_IB \Clk1_pad/U0/U1  (.YIN(\Clk1_pad/U0/NET1 ), .Y(Clk1_c));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
