`timescale 1ns/1ns
module testbench2;
reg a0,b0,a1,b1,cin;
integer i;
wire s0,s1,cout;
adder_2 testadder_2(.A0(a0),.B0(b0),.A1(a1),.B1(b1),.Cin(cin),
                    .S0(s0),.S1(s1),.Cout(cout));
initial
begin
for(i=0;i<32;i=i+1)
begin
{a0,a1,b0,b1,cin}=i;
#5;
end
#5;$finish;
end
endmodule