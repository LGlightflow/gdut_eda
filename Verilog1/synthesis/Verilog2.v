`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module Verilog2(
       R,
       Y,
       G,
       Z
    );
input  R;
input  Y;
input  G;
output Z;

    wire GND, VCC, \Verilog2.un1_Z12 , R_c, Y_c, G_c;
    
    MIN3XI Z_pad_RNO (.A(Y_c), .B(R_c), .C(G_c), .Y(\Verilog2.un1_Z12 )
        );
    INBUF R_pad (.PAD(R), .Y(R_c));
    OUTBUF Z_pad (.D(\Verilog2.un1_Z12 ), .PAD(Z));
    INBUF Y_pad (.PAD(Y), .Y(Y_c));
    VCC VCC_i (.Y(VCC));
    INBUF G_pad (.PAD(G), .Y(G_c));
    GND GND_i (.Y(GND));
    
endmodule
