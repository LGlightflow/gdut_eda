module HC112(S1,S2,R1,R2,Clk1,Clk2,J1,J2,K1,K2,Q1,Q2,Q1_N,Q2_N); 
input S1,S2,R1,R2,Clk1,Clk2,J1,J2,K1,K2; 
output Q1,Q1_N,Q2,Q2_N; 
reg Q1,Q2; 
assign Q1_N=~Q1; 
assign Q2_N=~Q2; 
always@(negedge Clk1,negedge S1,negedge R1) 
	begin 
	if(!S1&&R1) 
		Q1<=1; 
	else if(S1&&!R1) 
		Q1<=0; 
	else if(!S1&&!R1) 
		Q1<=1; 
	else 
		case({J1,K1}) 
			2'b00:Q1<=Q1; 
			2'b01:Q1<=0; 
			2'b10:Q1<=1; 
			2'b11:Q1<=~Q1; 
		endcase 
	end 
always@(negedge Clk2,negedge S2,negedge R2) 
	begin 
	if(!S2&&R2) 
		Q2<=1; 
	else if(S2&&!R2) 
		Q2<=0; 
	else if(!S2&&!R2) 
		Q2<=1; 
	else 
		case({J2,K2}) 
			2'b00:Q2<=Q2; 
			2'b01:Q2<=0; 
			2'b10:Q2<=1; 
			2'b11:Q2<=~Q2; 
		endcase 
	end 
endmodule