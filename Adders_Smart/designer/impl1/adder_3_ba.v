`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


module adder_3(
       A0,
       A1,
       B0,
       B1,
       Cin,
       Core_Cout,
       Core_Sum,
       Cout,
       S0,
       S1
    );
input  A0;
input  A1;
input  B0;
input  B1;
input  Cin;
output Core_Cout;
output [1:0] Core_Sum;
output Cout;
output S0;
output S1;

    wire OR2_0_Y, halfadder_1_C, A0_c, A1_c, B0_c, B1_c, Cin_c, 
        Core_Cout_c, \Core_Sum_c[0] , \Core_Sum_c[1] , Cout_c, S0_c, 
        S1_c, \Core_adder_0/Carry[0] , \Core_Sum_pad[1]/U0/NET1 , 
        \Core_Sum_pad[1]/U0/NET2 , \Core_Sum_pad[0]/U0/NET1 , 
        \Core_Sum_pad[0]/U0/NET2 , \B0_pad/U0/NET1 , 
        \Core_Cout_pad/U0/NET1 , \Core_Cout_pad/U0/NET2 , 
        \A1_pad/U0/NET1 , \S1_pad/U0/NET1 , \S1_pad/U0/NET2 , 
        \Cout_pad/U0/NET1 , \Cout_pad/U0/NET2 , \A0_pad/U0/NET1 , 
        \S0_pad/U0/NET1 , \S0_pad/U0/NET2 , VCC, \B1_pad/U0/NET1 , 
        \Cin_pad/U0/NET1 , GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    MAJ3 S1_1_CO0 (.A(A1_c), .B(B1_c), .C(OR2_0_Y), .Y(Cout_c));
    IOTRI_OB_EB \Cout_pad/U0/U1  (.D(Cout_c), .E(VCC), .DOUT(
        \Cout_pad/U0/NET1 ), .EOUT(\Cout_pad/U0/NET2 ));
    XOR3 \Core_adder_0/XOR3_Sum[0]  (.A(A0_c), .B(B0_c), .C(Cin_c), .Y(
        \Core_Sum_c[0] ));
    IOIN_IB \B1_pad/U0/U1  (.YIN(\B1_pad/U0/NET1 ), .Y(B1_c));
    IOPAD_TRI \S0_pad/U0/U0  (.D(\S0_pad/U0/NET1 ), .E(
        \S0_pad/U0/NET2 ), .PAD(S0));
    IOPAD_TRI \Cout_pad/U0/U0  (.D(\Cout_pad/U0/NET1 ), .E(
        \Cout_pad/U0/NET2 ), .PAD(Cout));
    IOIN_IB \A1_pad/U0/U1  (.YIN(\A1_pad/U0/NET1 ), .Y(A1_c));
    XOR3 S1_1_SUM0 (.A(B1_c), .B(A1_c), .C(OR2_0_Y), .Y(S1_c));
    XOR3 \Core_adder_0/XOR3_Sum[1]  (.A(A1_c), .B(B1_c), .C(
        \Core_adder_0/Carry[0] ), .Y(\Core_Sum_c[1] ));
    IOPAD_IN \Cin_pad/U0/U0  (.PAD(Cin), .Y(\Cin_pad/U0/NET1 ));
    XOR3 \halfadder_1/S  (.A(B0_c), .B(A0_c), .C(Cin_c), .Y(S0_c));
    IOTRI_OB_EB \S1_pad/U0/U1  (.D(S1_c), .E(VCC), .DOUT(
        \S1_pad/U0/NET1 ), .EOUT(\S1_pad/U0/NET2 ));
    IOIN_IB \B0_pad/U0/U1  (.YIN(\B0_pad/U0/NET1 ), .Y(B0_c));
    XA1 \halfadder_1/C  (.A(B0_c), .B(A0_c), .C(Cin_c), .Y(
        halfadder_1_C));
    IOPAD_TRI \Core_Sum_pad[0]/U0/U0  (.D(\Core_Sum_pad[0]/U0/NET1 ), 
        .E(\Core_Sum_pad[0]/U0/NET2 ), .PAD(Core_Sum[0]));
    IOIN_IB \A0_pad/U0/U1  (.YIN(\A0_pad/U0/NET1 ), .Y(A0_c));
    AO1 OR2_0 (.A(B0_c), .B(A0_c), .C(halfadder_1_C), .Y(OR2_0_Y));
    IOPAD_IN \B1_pad/U0/U0  (.PAD(B1), .Y(\B1_pad/U0/NET1 ));
    IOIN_IB \Cin_pad/U0/U1  (.YIN(\Cin_pad/U0/NET1 ), .Y(Cin_c));
    IOTRI_OB_EB \S0_pad/U0/U1  (.D(S0_c), .E(VCC), .DOUT(
        \S0_pad/U0/NET1 ), .EOUT(\S0_pad/U0/NET2 ));
    IOTRI_OB_EB \Core_Cout_pad/U0/U1  (.D(Core_Cout_c), .E(VCC), .DOUT(
        \Core_Cout_pad/U0/NET1 ), .EOUT(\Core_Cout_pad/U0/NET2 ));
    IOPAD_IN \A1_pad/U0/U0  (.PAD(A1), .Y(\A1_pad/U0/NET1 ));
    IOPAD_TRI \Core_Sum_pad[1]/U0/U0  (.D(\Core_Sum_pad[1]/U0/NET1 ), 
        .E(\Core_Sum_pad[1]/U0/NET2 ), .PAD(Core_Sum[1]));
    MAJ3 \Core_adder_0/MAJ3_Cout  (.A(\Core_adder_0/Carry[0] ), .B(
        A1_c), .C(B1_c), .Y(Core_Cout_c));
    IOTRI_OB_EB \Core_Sum_pad[0]/U0/U1  (.D(\Core_Sum_c[0] ), .E(VCC), 
        .DOUT(\Core_Sum_pad[0]/U0/NET1 ), .EOUT(
        \Core_Sum_pad[0]/U0/NET2 ));
    IOPAD_TRI \S1_pad/U0/U0  (.D(\S1_pad/U0/NET1 ), .E(
        \S1_pad/U0/NET2 ), .PAD(S1));
    IOPAD_TRI \Core_Cout_pad/U0/U0  (.D(\Core_Cout_pad/U0/NET1 ), .E(
        \Core_Cout_pad/U0/NET2 ), .PAD(Core_Cout));
    IOPAD_IN \B0_pad/U0/U0  (.PAD(B0), .Y(\B0_pad/U0/NET1 ));
    IOTRI_OB_EB \Core_Sum_pad[1]/U0/U1  (.D(\Core_Sum_c[1] ), .E(VCC), 
        .DOUT(\Core_Sum_pad[1]/U0/NET1 ), .EOUT(
        \Core_Sum_pad[1]/U0/NET2 ));
    MAJ3 \Core_adder_0/MAJ3_Carry[0]  (.A(Cin_c), .B(A0_c), .C(B0_c), 
        .Y(\Core_adder_0/Carry[0] ));
    IOPAD_IN \A0_pad/U0/U0  (.PAD(A0), .Y(\A0_pad/U0/NET1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
