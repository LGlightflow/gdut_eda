`timescale 1ns/1ns
module testbench;
reg pa,pb,pCin;
wire Sum1,Cout1,Sum2,Cout2;
adders testadders(.DataA(pa),.DataB(pb),.Cin(pCin),
.Sum1(Sum1),.Cout1(Cout1),.Sum2(Sum2),.Cout2(Cout2));

initial
    begin
    pa=0;pb=0;pCin=0;
    #5 pCin=1;
    #5 pb=1;
    #5 pCin=0;
    #5 pa=1;
    #5 pCin=1;
    #5 pb=0;
    #5 pCin=0;
    #5;$finish;
    end
endmodule