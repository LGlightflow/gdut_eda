
module cnt121a( Q,TC,MR,Clk,CEP,CET,PE,D );
    input MR,Clk,CEP,CET,PE;
    input [7:0]D;
    output [7:0]Q;
    output TC;
    reg [7:0]Q;
    
    always @(negedge MR,posedge Clk)
        if(!MR)
            begin
                Q=0;
            end
        else if(CEP&CET&PE)
            begin
                Q=Q+1;
                if(Q==8'b01111000)
                    Q=0;
                end
        else if(!PE)
            Q=D;

    assign TC=&{CET,Q};

endmodule


