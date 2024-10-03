// Testbench
`timescale 1ps/1ps
module test_and; 
reg a; 
reg b;
wire y; 

my_and and01(.out(y), .in_a(a), .in_b(b));
    
    initial begin
        // Dump waves
        $dumpfile("and.vcd");
        $dumpvars(1);
        $display("Time  a  b  y");
        $monitor("%4d  %b  %b  %b",$time, a, b, y);
        
           a = 1'b0; b = 1'b0;
        #5 a = 1'b0; b = 1'b1;
        #5 a = 1'b1; b = 1'b0;
        #5 a = 1'b1; b = 1'b1;
        #5 a = 1'b0; b = 1'b0;
        
    end
    
endmodule
