`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module and4(
       Data,
       Result
    );
input  [3:0] Data;
output Result;

    wire \CI[0] ;
    
    AND3 Start (.A(Data[0]), .B(Data[1]), .C(Data[2]), .Y(\CI[0] ));
    NAND2 NAND2_Result (.A(\CI[0] ), .B(Data[3]), .Y(Result));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.9.0.4
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LC
// OUTFORMAT:Verilog
// LPMTYPE:LPM_AND
// LPM_HINT:NONE
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:D:/project/program/QUARTUS/eda/Counter/smartgen\and4
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS2X2M1
// SMARTGEN_PACKAGE:vq100
// AGENIII_IS_SUBPROJECT_LIBERO:T
// SIZE:4
// RESULT_POLARITY:0

// _End_Comments_

