# and.tcl

puts "Start the automated script"
puts [exec iverilog -o and.out and.v and_tb.v]
puts "and.out generated"
puts [exec vvp and.out]
puts "Executed and.out file"
puts "All process Complete - You are looking at the waveform" 
puts [exec gtkwave and.vcd]
