# and.tcl

puts "Start the automated script"
exec iverilog -o and.out and.v and_tb.v
puts "and.out generated"
exec vvp and.out
puts "Executed and.out file"
puts "All process Complete - You are looking at the waveform" 
exec gtkwave and.vcd
