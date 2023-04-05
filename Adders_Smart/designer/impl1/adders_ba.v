`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


module adders(
       Cin,
       DataA,
       DataB,
       Cout1,
       Cout2,
       Sum1,
       Sum2
    );
input  Cin;
input  DataA;
input  DataB;
output Cout1;
output Cout2;
output Sum1;
output Sum2;

    wire halfadder_1_C, Cin_c, DataA_c, DataB_c, Cout1_c, Cout2_c, 
        Sum1_c, \DataA_pad/U0/NET1 , \Cin_pad/U0/NET1 , 
        \Cout1_pad/U0/NET1 , \Cout1_pad/U0/NET2 , \DataB_pad/U0/NET1 , 
        \Sum2_pad/U0/NET1 , \Sum2_pad/U0/NET2 , \Sum1_pad/U0/NET1 , 
        \Sum1_pad/U0/NET2 , \Cout2_pad/U0/NET1 , \Cout2_pad/U0/NET2 , 
        VCC, GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    XA1 \halfadder_1/C  (.A(DataB_c), .B(DataA_c), .C(Cin_c), .Y(
        halfadder_1_C));
    IOPAD_TRI \Sum2_pad/U0/U0  (.D(\Sum2_pad/U0/NET1 ), .E(
        \Sum2_pad/U0/NET2 ), .PAD(Sum2));
    IOTRI_OB_EB \Sum1_pad/U0/U1  (.D(Sum1_c), .E(VCC), .DOUT(
        \Sum1_pad/U0/NET1 ), .EOUT(\Sum1_pad/U0/NET2 ));
    MAJ3 Sum2_1_CO0 (.A(Cin_c), .B(DataB_c), .C(DataA_c), .Y(Cout2_c));
    XOR3 \halfadder_1/S  (.A(DataB_c), .B(DataA_c), .C(Cin_c), .Y(
        Sum1_c));
    IOIN_IB \DataA_pad/U0/U1  (.YIN(\DataA_pad/U0/NET1 ), .Y(DataA_c));
    IOPAD_IN \Cin_pad/U0/U0  (.PAD(Cin), .Y(\Cin_pad/U0/NET1 ));
    IOTRI_OB_EB \Cout2_pad/U0/U1  (.D(Cout2_c), .E(VCC), .DOUT(
        \Cout2_pad/U0/NET1 ), .EOUT(\Cout2_pad/U0/NET2 ));
    IOPAD_TRI \Cout2_pad/U0/U0  (.D(\Cout2_pad/U0/NET1 ), .E(
        \Cout2_pad/U0/NET2 ), .PAD(Cout2));
    IOPAD_TRI \Cout1_pad/U0/U0  (.D(\Cout1_pad/U0/NET1 ), .E(
        \Cout1_pad/U0/NET2 ), .PAD(Cout1));
    IOPAD_IN \DataA_pad/U0/U0  (.PAD(DataA), .Y(\DataA_pad/U0/NET1 ));
    IOTRI_OB_EB \Cout1_pad/U0/U1  (.D(Cout1_c), .E(VCC), .DOUT(
        \Cout1_pad/U0/NET1 ), .EOUT(\Cout1_pad/U0/NET2 ));
    AO1 OR2_0 (.A(DataA_c), .B(DataB_c), .C(halfadder_1_C), .Y(Cout1_c)
        );
    IOIN_IB \DataB_pad/U0/U1  (.YIN(\DataB_pad/U0/NET1 ), .Y(DataB_c));
    IOTRI_OB_EB \Sum2_pad/U0/U1  (.D(Sum1_c), .E(VCC), .DOUT(
        \Sum2_pad/U0/NET1 ), .EOUT(\Sum2_pad/U0/NET2 ));
    IOPAD_TRI \Sum1_pad/U0/U0  (.D(\Sum1_pad/U0/NET1 ), .E(
        \Sum1_pad/U0/NET2 ), .PAD(Sum1));
    IOPAD_IN \DataB_pad/U0/U0  (.PAD(DataB), .Y(\DataB_pad/U0/NET1 ));
    IOIN_IB \Cin_pad/U0/U1  (.YIN(\Cin_pad/U0/NET1 ), .Y(Cin_c));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
