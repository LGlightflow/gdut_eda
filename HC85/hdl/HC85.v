///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: HC85.v
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

module HC85( A3,A2,A1,A0,B3,B2,B1,B0,QAGB,QASB,QAEB,IAGB,IASB, IAEB ); //greater:>  smaller:< equal== 
input A3,A2,A1,A0,B3,B2,B1,B0,IAGB,IASB,IAEB;
output QAGB,QASB,QAEB;
reg QAGB, QASB, QAEB;
wire [3:0] DataA,DataB;
assign DataA= {A3, A2, A1,A0};
assign DataB= {B3, B2, B1,B0};
always @ (DataA or DataB)
	begin
	if (DataA > DataB)
		begin
		QAGB = 1;QASB = 0; QAEB = 0;
	end
	else if (DataA < DataB)
		begin
		QAGB = 0; QASB = 1; QAEB = 0;  //a is smaller than b
	end
	else if(IAGB & !IASB & !IAEB)
		begin
		QAGB = 1;QASB = 0; QAEB = 0;
	end
	else if(!IAGB & IASB & !IAEB)
		begin
	QAGB =0; QASB = 1; QAEB = 0;
	end
	else if(IAEB)
		begin
		QAEB = 1;QASB = 0; QAGB = 0;
	end
	else if(IAGB & IASB & !IAEB)
		begin
		QAGB=0;	QASB=0; QAEB=0;
	end
	else if(!IAGB & !IASB & !IAEB)
		begin
		QAGB=1;QASB=1;QAEB=0;
       end
	end
endmodule

