`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module Core_adder(
       DataA,
       DataB,
       Cin,
       Sum,
       Cout
    );
input  [1:0] DataA;
input  [1:0] DataB;
input  Cin;
output [1:0] Sum;
output Cout;

    wire \Carry[0] ;
    
    XOR3 \XOR3_Sum[1]  (.A(DataA[1]), .B(DataB[1]), .C(\Carry[0] ), .Y(
        Sum[1]));
    MAJ3 \MAJ3_Carry[0]  (.A(Cin), .B(DataA[0]), .C(DataB[0]), .Y(
        \Carry[0] ));
    MAJ3 MAJ3_Cout (.A(\Carry[0] ), .B(DataA[1]), .C(DataB[1]), .Y(
        Cout));
    XOR3 \XOR3_Sum[0]  (.A(DataA[0]), .B(DataB[0]), .C(Cin), .Y(Sum[0])
        );
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.9.0.4
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LC
// OUTFORMAT:Verilog
// LPMTYPE:LPM_ADD_SUB
// LPM_HINT:RIPADD
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:D:/project/program/QUARTUS/eda/Adders_Smart/smartgen\Core_adder
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS2X2M1
// SMARTGEN_PACKAGE:vq100
// AGENIII_IS_SUBPROJECT_LIBERO:T
// CI_POLARITY:1
// CO_POLARITY:1
// WIDTH:2
// DEBUG:0

// _End_Comments_

