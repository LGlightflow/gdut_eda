module HC74(S1,S2,R1,R2,Clk1,Clk2,D1,D2,Q1,Q2,Q1_N,Q2_N); 
    input S1,S2,R1,R2,Clk1,Clk2,D1,D2; 
    output Q1,Q1_N,Q2,Q2_N; 
    reg Q1,Q1_N,Q2,Q2_N; 
    always@(posedge Clk1) 
        begin 
            if(!S1&&R1) //asynchronous
                begin
                    Q1<=1;Q1_N<=0; //set 1 asynchronously
                end
            else if(S1&&!R1) 
                begin
                    Q1<=0;Q1_N<=1; //set 0 asynchronously
                end
            else if(!S1&&!R1) //undefine
                begin    
                    Q1<=1;Q1_N<=1;
                end
            else    //synchronous S1&&R2
                begin
                    Q1<=D1;Q1_N<=!D1;  //set Q synchronously
                end
            end

    always@(posedge Clk2) 
    begin 
        if(!S2&&R2)
            begin
                Q2<=1;Q2_N<=0; 
            end
        else if(S1&&!R1) 
            begin
                Q2<=0;Q2_N<=1; 
            end
        else if(!S1&&!R1) 
            begin
                Q2<=1;Q2_N<=1;
            end
        else 
            begin
                Q2<=D2;Q2_N<=!D2; 
            end
        end
endmodule