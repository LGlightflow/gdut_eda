`timescale 1ns/100ps

module testbench;
reg s1,s2,r1,r2,clk1,clk2,j1,j2,k1,k2; 
wire q1,q2;
HC112 HC112_0 (
    // Inputs
    .S1(s1),
    .S2(s2),
    .R1(r1),
    .R2(r2),
    .Clk1(clk1),
    .Clk2(clk2),
    .J1(j1),
    .J2(j2),

    .K1(k1),
    .K2(k2),

    // Outputs
    .Q1( q1),
    .Q2( q2),
    .Q1_N( q1n),
    .Q2_N( q2n)

    // Inouts

);
initial 
	begin 
		clk1=0; 
	end 
always 
	#10 clk1=~clk1; 
initial 
	begin 
		s1=0; 
		repeat(20) 
		#20 s1=$random; 
	end 
initial 
	begin 
		r1=0; 
		repeat(20) 
		#20 r1=$random; 
	end 
initial 
	begin 
		j1=0; 
		repeat(20) 
		#20 j1=$random; 
	end 
initial 
	begin 
		k1=0; 
		repeat(20) 
		#20 k1=$random; 
	end 
initial
	begin 
		clk2=0; 
	end 
always 
	#10 clk2=~clk2; 
initial 
	begin 
		s2=0; 
		repeat(20) 
		s2=$random; 
	end 
initial 
	begin 
		r2=0; 
		repeat(20) 
		#20 r2=$random; 
	end 
initial 
	begin 
		j2=0; 
		repeat(20) 
		#20 j2=$random; 
	end 
initial 
	begin 
		k2=0; 
		repeat(20) 
		#20 k2=$random; 
	end 
initial 
    #1000 $finish; 
endmodule

