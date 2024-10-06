# set $filename 
puts "Start the script"
puts [exec iverilog -o inv.out inverter.v inverter_tb.v]
puts [exec vvp inv.out]
puts [exec gtkwave inverter.vcd]
puts "All process Complete" 