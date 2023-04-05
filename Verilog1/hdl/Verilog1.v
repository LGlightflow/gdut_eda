///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Verilog1.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3> <Die::A3P060> <Package::100 VQFP>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module Verilog1 (A,B,C,Y);
  input A,B,C;
  output reg Y;
  always@(A,B,C)
    begin : Verilog1
      case({A,B,C})      
          3'b101 : Y<=1;
		  3'b011 : Y<=1;
		  3'b110 : Y<=1;
		  3'b111 : Y<=1;
        default : Y<=0;
      endcase
    end
endmodule 

 //module Verilog0 (A,B,C,Y);
  //input A,B,C;
  //output reg Y;
  //always@(A,B,C)
    //begin : Verilog0
      //case({A,B,C})      
          //3'b000 : Y<=1;
		  //3'b111 : Y<=1;
        //default : Y<=0;
      //endcase
    //end
//endmodule 

//module Verilog2 (R,Y,G,X);
  //input R,Y,G;
  //output reg X;
  //always@(R,Y,G)
    //begin : Verilog2
      //case({R,Y,G})      
        //3'b000 : X<=1;
		  //3'b001 : X<=0;
		  //3'b010 : X<=0;
		  //3'b011 : X<=1;
		  //3'b100 : X<=0;
		  //3'b101 : X<=1;
		  //3'b110 : X<=1;
		  //3'b111 : X<=1;
        //default : X<=0;
      //endcase
    //end
//endmodule


//module Verilog2 (R,Y,G,Z);
  //input R,Y,G;
  //output reg Z;
  //always@(R,Y,G)
    //begin : Verilog2
      //case({R,Y,G})     
		  //3'b001 : Z<=0;
		  //3'b010 : Z<=0;
          //3'b100 : Z<=0;
        //default : Z<=1;
      //endcase
    //end
//endmodule  