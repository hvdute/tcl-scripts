#!/usr/bin/tclsh

#puts $tcl_version
#puts $env(PATH)

# check if a variable exists (return 1 or -1) 
#if { [info exists env(PORT)] == 0} {
#    puts "Port not specified!"
#} else {
#    puts "Port: $env(PORT)"
#}

set fruits {"Orange" "Apple GooD" "Chilis"}
puts $fruits
#lappend fruits "Banana"
append fruits " " {"Banana Test"}
set appendList {"Banana TEst"}
#append fruits " " $appendList
puts $fruits

puts [lindex $fruits 1]
puts [llength $fruits]
