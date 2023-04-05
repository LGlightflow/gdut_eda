`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module dec2x4(
       a,
       b,
       en,
       y
    );
input  a;
input  b;
input  en;
output [3:0] y;

    wire \y_pad_RNO[3]_net_1 , \y_pad_RNO[0]_net_1 , 
        \y_pad_RNO[1]_net_1 , un7_y_net_1, GND, VCC, a_c, b_c, en_c;
    
    OUTBUF \y_pad[3]  (.D(\y_pad_RNO[3]_net_1 ), .PAD(y[3]));
    OR3B \y_pad_RNO[1]  (.A(b_c), .B(en_c), .C(a_c), .Y(
        \y_pad_RNO[1]_net_1 ));
    OR3B un7_y (.A(en_c), .B(a_c), .C(b_c), .Y(un7_y_net_1));
    INBUF b_pad (.PAD(b), .Y(b_c));
    VCC VCC_i (.Y(VCC));
    INBUF a_pad (.PAD(a), .Y(a_c));
    OR3C \y_pad_RNO[3]  (.A(b_c), .B(en_c), .C(a_c), .Y(
        \y_pad_RNO[3]_net_1 ));
    OUTBUF \y_pad[2]  (.D(un7_y_net_1), .PAD(y[2]));
    OR3A \y_pad_RNO[0]  (.A(en_c), .B(b_c), .C(a_c), .Y(
        \y_pad_RNO[0]_net_1 ));
    GND GND_i (.Y(GND));
    OUTBUF \y_pad[0]  (.D(\y_pad_RNO[0]_net_1 ), .PAD(y[0]));
    INBUF en_pad (.PAD(en), .Y(en_c));
    OUTBUF \y_pad[1]  (.D(\y_pad_RNO[1]_net_1 ), .PAD(y[1]));
    
endmodule
