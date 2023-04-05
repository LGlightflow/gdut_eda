`timescale 1ns/1ns
module testbench3;
reg a0,b0,a1,b1,cin;
integer i;
reg[1:0] a,b;
wire s0,s1,cout,core_cout;
wire[1:0] core_sum;
adder_3 testadder_3(.A0(a0),.B0(b0),.A1(a1),.B1(b1),.Cin(cin),
                    .S0(s0),.S1(s1),.Cout(cout),.Core_Cout(core_cout),.Core_Sum(core_sum));
initial
begin
for(i=0;i<32;i=i+1)
begin
{a0,a1,b0,b1,cin}=i;
a={a1,a0};
b={b1,b0};
#5;
end
#5;$finish;
end
endmodule