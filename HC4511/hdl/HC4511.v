///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: HC4511.v
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
//seg:work situation
//LT BI LE:enable
//A:binary num(be shown)
module HC4511( A,Seg,LT_N,BI_N,LE );
input LT_N,BI_N,LE;
input[3:0]A;
output[7:0]Seg ;
reg[7:0]SM_8S;
assign Seg=SM_8S;

//<statements>
always@(A or LT_N or BI_N or LE)
	begin//?????????
		if(!LT_N)SM_8S=8'b11111111;
		else if(!BI_N)SM_8S=8'b00000000;
		else if(LE)SM_8S=SM_8S;
		else
			case(A)
			4'd0:SM_8S=8'b00111111; //3f
			4'd1:SM_8S=8'b00000110; //06
			4'd2:SM_8S=8'b01011011;//5b
			4'd3:SM_8S=8'b01001111;//4f
			4'd4:SM_8S=8'b01100110;//66
			4'd5:SM_8S=8'b01101101;//6d
			4'd6:SM_8S=8'b01111101;//7d
			4'd7:SM_8S=8'b00000111;//07
			4'd8:SM_8S=8'b01111111;//7f
			4'd9:SM_8S=8'b01101111;//6f
			4'd10:SM_8S=8'b01110111;//77
			4'd11:SM_8S=8'b01111100;//7c
			4'd12:SM_8S=8'b00111001;//39
			4'd13:SM_8S=8'b01011110;//5e
			4'd14:SM_8S=8'b01111001;//79
			4'd15:SM_8S=8'b01110001;//71
			default:;
			endcase
		end
endmodule

