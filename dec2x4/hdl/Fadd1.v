
module
FA_behav2(A,B,Cin,Sum,Cout);
input A,B,Cin;
output Sum,Cout;
reg Sum,Cout;
always @(A or B or Cin)
begin
{Cout,Sum}=A+B+Cin;
end
endmodule