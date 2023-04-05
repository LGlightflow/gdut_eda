module HC194(MR,S,Clk,DSR,DSL,D,Q); 
input MR,DSR,DSL,Clk; 
input [1:0] S; 
input [3:0] D; //data
output [3:0] Q; //out
reg [3:0] Q; 
always@(posedge Clk,negedge MR) 
begin 
    if(!MR) 
        Q<=0; 
    else 
        case(S) 
            2'b00:Q<=Q; 
            2'b01:Q<={Q[2:0],DSR}; 
            2'b10:Q<={DSL,Q[3:1]}; 
            2'b11:Q<=D; 
        endcase 
    end 
endmodule
