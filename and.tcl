# and.tcl

puts "Starting the veriog simulation using iverilog"

# [IVERILOG]
# Usage: iverilog -o <output file> <input file> <testbench file>
puts [exec iverilog -o and.out and.v and_tb.v]
puts "and.out generated"
puts [exec vvp and.out]
puts "Executed and.out file"
puts {All process Complete in design simulation [iverilog] - You are looking at the waveform}
exec gtkwave and.vcd &

# [COVERED]
puts "Start the covered report using covered"
# Usage: covered score -t <testbench_module_name> -v <Testbench_file_name> -v <Design_file_name> -vcd <vcd_file_name> -o <output_file_name>
exec covered score -t test_and -v and_tb.v -v and.v -vcd and.vcd -o  and.cdd
puts "Covered report generated as file and.cdd"
puts "Opening the covered report"
# Usage: covered report -d v <output_file_name>
puts [exec covered report -d v and.cdd]
puts {All process Complete to find the coverage of the test bench [covered]}
