// Testbench
// `timescale 1ps/1ps
module test_and; 
    reg a; 
    reg b;
    wire y; 

    my_and and01(.out(y), .in_a(a), .in_b(b));
    
    initial begin
           a = 1'b0; b = 1'b0;
        #5 a = 1'b0; b = 1'b1;
        #5 a = 1'b1; b = 1'b0;
        #5 a = 1'b1; b = 1'b1;
        #5 a = 1'b0; b = 1'b0;
        #5 a = 1'b0; b = 1'b1;
        #5 a = 1'b1; b = 1'b0;
        #5 a = 1'b1; b = 1'b1;
        #5 $finish;
    end

    initial begin 
        $dumpfile("and.vcd");
        $dumpvars;
        $display("Time  a  b  y");
        $monitor("%4d  %b  %b  %b",$time, a, b, y);
    end
    
endmodule


// Randomized input testing
// module test_and; 
// reg a; 
// reg b;
// wire y; 

// my_and and01(.out(y), .in_a(a), .in_b(b));

//     initial begin
//         // Dump waves
//         $dumpfile("and.vcd");
//         $dumpvars(1);
//         $display("Time  a  b  y");
//         $monitor("%4d  %b  %b  %b",$time, a, b, y);
        
//         // Randomized input transitions
//         a = $random % 2;  // Randomly assign 0 or 1
//         b = $random % 2;
//         #5 a = $random % 2;
//         #5 b = $random % 2;
//         #5 a = $random % 2;
//         #5 b = $random % 2;

//         #5 $finish;
//     end
// endmodule


