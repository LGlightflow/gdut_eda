///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: HC148.v
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

 module encoder8_3_1(din, EI, GS, EO, dout);
     input [7:0] din;  
     input EI;  
     output [2:0] dout;  
     output GS;  
     output EO;  
     reg [2:0] dout;
     reg GS, EO;
     always @(din or EI)
      if(EI) begin dout <= 3'b111; GS <= 1; EO <= 1; end  
      else if (din[7] == 0) begin dout <= 3'b000; GS <= 0; EO <= 1; end
      else if (din[6] == 0) begin dout <= 3'b001; GS <= 0; EO <= 1; end
      else if (din[5] == 0) begin dout <= 3'b010; GS <= 0; EO <= 1; end
      else if (din[4] == 0) begin dout <= 3'b011; GS <= 0; EO <= 1; end
      else if (din[3] == 0) begin dout <= 3'b100; GS <= 0; EO <= 1; end
      else if (din[2] == 0) begin dout <= 3'b101; GS <= 0; EO <= 1; end
      else if (din[1] == 0) begin dout <= 3'b110; GS <= 0; EO <= 1; end
      else if (din[0] == 0) begin dout <= 3'b111; GS <= 0; EO <= 1; end
      else if (din == 8'b11111111) begin dout <= 3'b111; GS <= 1; EO <= 0; end 
      else begin dout <= 3'b111; GS <= 1; EO <= 1; end  
endmodule
