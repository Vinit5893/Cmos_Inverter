# set $filename 
puts "Start the script"
exec iverilog -o inv.out inverter.v inverter_tb.v
exec vvp inv.out
exec gtkwave inverter.vcd
puts "All process Complete" 