`timescale 1ns / 1ps

module halfAdder_tb();
    reg A,B;
    wire S,C;
    
    halfAdder uut(A,B,S,C);
    
    initial begin
        A = 1'b0;
        B = 1'b0;
        $display(" A=%b, B=%b, S=%b, C=%b \n", A,B,S,C);
        
        #10 A = 1'b0;
        B = 1'b1;
        $display(" A=%b, B=%b, S=%b, C=%b \n", A,B,S,C);
        
        #10 A = 1'b1;
        B = 1'b0;
        $display(" A=%b, B=%b, S=%b, C=%b \n", A,B,S,C);
        
        #10 A = 1'b1;
        B = 1'b1;
        $display(" A=%b, B=%b, S=%b, C=%b \n", A,B,S,C);
    end
endmodule
