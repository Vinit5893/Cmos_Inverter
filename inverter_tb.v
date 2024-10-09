// Testbench
`timescale 1ps/1ps
module test_inverter; 
    reg a; 
    wire y; 

    inverter_top inv01(.out(y), .in(a));
    
    initial begin
        $display("Starting the simulation");
           a = 1'b0;
        #5 a = 1'b1;
        #5 a = 1'b0;
        #5 a = 1'b1;
        #5 a = 1'b0;
        
    end

    initial begin 
        $dumpfile("inverter.vcd");
        $dumpvars;
        $display("Time  a  y");
        $monitor("%4d  %b  %b",$time, a, y);
    end
    
endmodule
