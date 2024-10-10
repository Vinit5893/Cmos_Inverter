# inverter.tcl

puts "Starting the veriog simulation using iverilog"

# [IVERILOG]
# Usage: iverilog -o <output file> <input file> <testbench file>
puts [exec iverilog -o inverter.out inverter.v inverter_tb.v]
puts "inverter.out generated"
puts [exec vvp inverter.out]
puts "Executed Inverter.out file"
puts {All process Complete in design simulation [iverilog] - You are looking at the waveform}
exec gtkwave inverter.vcd &

# [COVERED]
puts "Start the covered report using covered"
# Usage: covered score -t <testbench_module_name> -v <Testbench_file_name> -v <Design_file_name> -vcd <vcd_file_name> -o <output_file_name>
exec covered score -t test_inverter -v inverter_tb.v -v inverter.v -vcd inverter.vcd -o  inverter.cdd
puts "Covered report generated as file inverter.cdd"
puts "Opening the covered report"
# Usage: covered report -d v <output_file_name>
puts [exec covered report -d v inverter.cdd]
puts {All process Complete to find the coverage of the test bench [covered]}

# [YOSYS]
puts "Starting the Yosys synthesis"
puts [exec yosys -s synth.tcl]
puts {Yosys synthesis completed [yosys]}