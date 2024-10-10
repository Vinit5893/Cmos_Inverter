# read modules from Verilog file
# Usage: read_verilog <verilog_file>
read_verilog inverter.v

# elaborate design hierarchy
# Usage: hierarchy -check -top <top_module_name>
hierarchy -check -top inverter_top

# translate processes to netlists
proc

# mapping to internal cell library (ABC library)
techmap

# mapping flip-flops to NanGate_15nm_OCL_functional.lib 
# for eg. always block
# Usage: dfflibmap -liberty <liberty_file>
dfflibmap -liberty NanGate_15nm_OCL_functional.lib

# mapping logic to NanGate_15nm_OCL_functional.lib 
# for eg. assign block
# Usage: abc -liberty <liberty_file>
abc -liberty NanGate_15nm_OCL_functional.lib
 
# remove unused cells and wires
clean

# Report the current design statistics
stat -liberty NanGate_15nm_OCL_functional.lib

# Write the current design to a Verilog file
# Usage: write_verilog -noattr <output_file_name>
write_verilog -noattr  inverter_synth.v 

# Show the current design
show

# Exit Yosys
exit