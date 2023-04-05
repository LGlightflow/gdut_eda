`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


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

    wire Clk_c, MR_c, C_c, \QH_c[0] , \QH_c[1] , \QH_c[2] , \QH_c[3] , 
        \QL_c[0] , \QL_c[1] , \QL_c[2] , \QL_c[3] , \HC161_0.Q_c1 , 
        \HC161_0.N_26 , \HC161_0.TC_0 , \HC161_1/Q_N_3_mux_0 , 
        \HC161_1/Q_n1_net_1 , \HC161_1/Q_n3_net_1 , 
        \HC161_1/Q_8_0_net_1 , \HC161_1/Q_n2_net_1 , \HC161_1/Q_c1_0 , 
        \HC161_1/Qe , \HC161_0/Q_n3_net_1 , \HC161_0/Q_8_0_net_1 , 
        \HC161_0/Q_n2_net_1 , \HC161_0/Q_n1_net_1 , 
        \HC161_0/Q_n0_net_1 , \And4in_0/CI[0] , \QH_pad[0]/U0/NET1 , 
        \QH_pad[0]/U0/NET2 , \QL_pad[1]/U0/NET1 , \QL_pad[1]/U0/NET2 , 
        \C_pad/U0/NET1 , \C_pad/U0/NET2 , \QL_pad[0]/U0/NET1 , 
        \QL_pad[0]/U0/NET2 , \QL_pad[2]/U0/NET1 , \QL_pad[2]/U0/NET2 , 
        \QH_pad[1]/U0/NET1 , \QH_pad[1]/U0/NET2 , \QH_pad[3]/U0/NET1 , 
        \QH_pad[3]/U0/NET2 , \MR_pad/U0/NET1 , \QH_pad[2]/U0/NET1 , 
        \QH_pad[2]/U0/NET2 , \QL_pad[3]/U0/NET1 , \QL_pad[3]/U0/NET2 , 
        VCC, \Clk_pad/U0/NET1 , \HC161_1/Q[3]/Y , \HC161_1/Q[0]/Y , 
        \HC161_1/Q[1]/Y , \HC161_1/Q[2]/Y , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOIN_IB \MR_pad/U0/U1  (.YIN(\MR_pad/U0/NET1 ), .Y(MR_c));
    IOTRI_OB_EB \QL_pad[1]/U0/U1  (.D(\QL_c[1] ), .E(VCC), .DOUT(
        \QL_pad[1]/U0/NET1 ), .EOUT(\QL_pad[1]/U0/NET2 ));
    IOTRI_OB_EB \QL_pad[3]/U0/U1  (.D(\QL_c[3] ), .E(VCC), .DOUT(
        \QL_pad[3]/U0/NET1 ), .EOUT(\QL_pad[3]/U0/NET2 ));
    DFN1C0 \HC161_0/Q[1]  (.D(\HC161_0/Q_n1_net_1 ), .CLK(Clk_c), .CLR(
        MR_c), .Q(\QL_c[1] ));
    IOPAD_TRI \QL_pad[1]/U0/U0  (.D(\QL_pad[1]/U0/NET1 ), .E(
        \QL_pad[1]/U0/NET2 ), .PAD(QL[1]));
    IOPAD_TRI \QL_pad[3]/U0/U0  (.D(\QL_pad[3]/U0/NET1 ), .E(
        \QL_pad[3]/U0/NET2 ), .PAD(QL[3]));
    NOR2B \HC161_1/Q_8_0  (.A(\QH_c[2] ), .B(\HC161_1/Q_c1_0 ), .Y(
        \HC161_1/Q_8_0_net_1 ));
    IOTRI_OB_EB \QH_pad[3]/U0/U1  (.D(\QH_c[3] ), .E(VCC), .DOUT(
        \QH_pad[3]/U0/NET1 ), .EOUT(\QH_pad[3]/U0/NET2 ));
    XA1 \HC161_1/Q_n1  (.A(\QH_c[0] ), .B(\QH_c[1] ), .C(
        \HC161_0.N_26 ), .Y(\HC161_1/Q_n1_net_1 ));
    IOTRI_OB_EB \QL_pad[0]/U0/U1  (.D(\QL_c[0] ), .E(VCC), .DOUT(
        \QL_pad[0]/U0/NET1 ), .EOUT(\QL_pad[0]/U0/NET2 ));
    NOR2B \HC161_0/Q_RNINOAU[2]  (.A(\QL_c[3] ), .B(\QL_c[2] ), .Y(
        \HC161_0.TC_0 ));
    IOTRI_OB_EB \QH_pad[0]/U0/U1  (.D(\QH_c[0] ), .E(VCC), .DOUT(
        \QH_pad[0]/U0/NET1 ), .EOUT(\QH_pad[0]/U0/NET2 ));
    IOPAD_IN \MR_pad/U0/U0  (.PAD(MR), .Y(\MR_pad/U0/NET1 ));
    DFN1C0 \HC161_1/Q[3]/U1  (.D(\HC161_1/Q[3]/Y ), .CLK(Clk_c), .CLR(
        MR_c), .Q(\QH_c[3] ));
    IOPAD_TRI \QH_pad[3]/U0/U0  (.D(\QH_pad[3]/U0/NET1 ), .E(
        \QH_pad[3]/U0/NET2 ), .PAD(QH[3]));
    XA1B \HC161_0/Q_n3  (.A(\HC161_0/Q_8_0_net_1 ), .B(\QL_c[3] ), .C(
        C_c), .Y(\HC161_0/Q_n3_net_1 ));
    IOPAD_TRI \QL_pad[0]/U0/U0  (.D(\QL_pad[0]/U0/NET1 ), .E(
        \QL_pad[0]/U0/NET2 ), .PAD(QL[0]));
    MX2 \HC161_1/Q[2]/U0  (.A(\QH_c[2] ), .B(\HC161_1/Q_n2_net_1 ), .S(
        \HC161_1/Qe ), .Y(\HC161_1/Q[2]/Y ));
    DFN1C0 \HC161_0/Q[0]  (.D(\HC161_0/Q_n0_net_1 ), .CLK(Clk_c), .CLR(
        MR_c), .Q(\QL_c[0] ));
    IOPAD_TRI \QH_pad[0]/U0/U0  (.D(\QH_pad[0]/U0/NET1 ), .E(
        \QH_pad[0]/U0/NET2 ), .PAD(QH[0]));
    NOR2B \HC161_0/Q_8_0  (.A(\QL_c[2] ), .B(\HC161_0.Q_c1 ), .Y(
        \HC161_0/Q_8_0_net_1 ));
    IOTRI_OB_EB \QH_pad[2]/U0/U1  (.D(\QH_c[2] ), .E(VCC), .DOUT(
        \QH_pad[2]/U0/NET1 ), .EOUT(\QH_pad[2]/U0/NET2 ));
    NOR3A \HC161_1/Q_m1_e_0  (.A(\HC161_0.Q_c1 ), .B(\QH_c[0] ), .C(
        C_c), .Y(\HC161_1/Q_N_3_mux_0 ));
    AX1 \HC161_0/Q_n2  (.A(C_c), .B(\QL_c[2] ), .C(\HC161_0.N_26 ), .Y(
        \HC161_0/Q_n2_net_1 ));
    AND2 \And4in_0/AND2_Result  (.A(\And4in_0/CI[0] ), .B(\QH_c[2] ), 
        .Y(C_c));
    CLKIO \Clk_pad/U0/U1  (.A(\Clk_pad/U0/NET1 ), .Y(Clk_c));
    IOPAD_TRI \QH_pad[2]/U0/U0  (.D(\QH_pad[2]/U0/NET1 ), .E(
        \QH_pad[2]/U0/NET2 ), .PAD(QH[2]));
    DFN1C0 \HC161_1/Q[1]/U1  (.D(\HC161_1/Q[1]/Y ), .CLK(Clk_c), .CLR(
        MR_c), .Q(\QH_c[1] ));
    NOR2B \HC161_0/Q_c1  (.A(\QL_c[0] ), .B(\QL_c[1] ), .Y(
        \HC161_0.Q_c1 ));
    MX2 \HC161_1/Q[0]/U0  (.A(\QH_c[0] ), .B(\HC161_1/Q_N_3_mux_0 ), 
        .S(\HC161_1/Qe ), .Y(\HC161_1/Q[0]/Y ));
    IOTRI_OB_EB \C_pad/U0/U1  (.D(C_c), .E(VCC), .DOUT(\C_pad/U0/NET1 )
        , .EOUT(\C_pad/U0/NET2 ));
    IOPAD_TRI \C_pad/U0/U0  (.D(\C_pad/U0/NET1 ), .E(\C_pad/U0/NET2 ), 
        .PAD(C));
    DFN1C0 \HC161_1/Q[0]/U1  (.D(\HC161_1/Q[0]/Y ), .CLK(Clk_c), .CLR(
        MR_c), .Q(\QH_c[0] ));
    AO1 \HC161_1/Qlde  (.A(\HC161_0.TC_0 ), .B(\HC161_0.Q_c1 ), .C(C_c)
        , .Y(\HC161_1/Qe ));
    IOTRI_OB_EB \QH_pad[1]/U0/U1  (.D(\QH_c[1] ), .E(VCC), .DOUT(
        \QH_pad[1]/U0/NET1 ), .EOUT(\QH_pad[1]/U0/NET2 ));
    MX2 \HC161_1/Q[1]/U0  (.A(\QH_c[1] ), .B(\HC161_1/Q_n1_net_1 ), .S(
        \HC161_1/Qe ), .Y(\HC161_1/Q[1]/Y ));
    DFN1C0 \HC161_0/Q[2]  (.D(\HC161_0/Q_n2_net_1 ), .CLK(Clk_c), .CLR(
        MR_c), .Q(\QL_c[2] ));
    IOPAD_IN \Clk_pad/U0/U0  (.PAD(Clk), .Y(\Clk_pad/U0/NET1 ));
    XA1 \HC161_1/Q_n3  (.A(\QH_c[3] ), .B(\HC161_1/Q_8_0_net_1 ), .C(
        \HC161_0.N_26 ), .Y(\HC161_1/Q_n3_net_1 ));
    NOR2B \HC161_1/Q_c1  (.A(\QH_c[1] ), .B(\QH_c[0] ), .Y(
        \HC161_1/Q_c1_0 ));
    NOR2 \HC161_0/Q_n0  (.A(\QL_c[0] ), .B(C_c), .Y(
        \HC161_0/Q_n0_net_1 ));
    IOPAD_TRI \QH_pad[1]/U0/U0  (.D(\QH_pad[1]/U0/NET1 ), .E(
        \QH_pad[1]/U0/NET2 ), .PAD(QH[1]));
    DFN1C0 \HC161_0/Q[3]  (.D(\HC161_0/Q_n3_net_1 ), .CLK(Clk_c), .CLR(
        MR_c), .Q(\QL_c[3] ));
    XA1B \HC161_0/Q_n1  (.A(\QL_c[1] ), .B(\QL_c[0] ), .C(C_c), .Y(
        \HC161_0/Q_n1_net_1 ));
    NOR2A \HC161_0/Q_6  (.A(\HC161_0.Q_c1 ), .B(C_c), .Y(
        \HC161_0.N_26 ));
    IOTRI_OB_EB \QL_pad[2]/U0/U1  (.D(\QL_c[2] ), .E(VCC), .DOUT(
        \QL_pad[2]/U0/NET1 ), .EOUT(\QL_pad[2]/U0/NET2 ));
    XA1 \HC161_1/Q_n2  (.A(\QH_c[2] ), .B(\HC161_1/Q_c1_0 ), .C(
        \HC161_0.N_26 ), .Y(\HC161_1/Q_n2_net_1 ));
    MX2 \HC161_1/Q[3]/U0  (.A(\QH_c[3] ), .B(\HC161_1/Q_n3_net_1 ), .S(
        \HC161_1/Qe ), .Y(\HC161_1/Q[3]/Y ));
    DFN1C0 \HC161_1/Q[2]/U1  (.D(\HC161_1/Q[2]/Y ), .CLK(Clk_c), .CLR(
        MR_c), .Q(\QH_c[2] ));
    IOPAD_TRI \QL_pad[2]/U0/U0  (.D(\QL_pad[2]/U0/NET1 ), .E(
        \QL_pad[2]/U0/NET2 ), .PAD(QL[2]));
    AND3 \And4in_0/Start  (.A(\QH_c[0] ), .B(\QL_c[3] ), .C(\QH_c[1] ), 
        .Y(\And4in_0/CI[0] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
