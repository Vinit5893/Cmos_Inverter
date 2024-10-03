// Testbench
`timescale 1ps/1ps
module test; 
reg a; 
wire y; 

inverter_top inv01(.out(y), .in(a));
    
    initial begin
        // Dump waves
        $dumpfile("inverter.vcd");
        $dumpvars(1);
        $display("Time  a  y");
        $monitor("%4d  %b  %b",$time, a, y);
        
        a    = 1'b0;
        #5 a = 1'b1;
        #5 a = 1'b0;
        #5 a = 1'b1;
        #5 a = 1'b0;
        
    end
    
endmodule
