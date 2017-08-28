#!/usr/bin/tclsh
dict set myDict id 1
dict set myDict name "Hoang Van Dung"
dict set myDict age 23
puts $myDict
set myDict2 [dict create height 168.3 weight 50 phone "0968900142"]
puts $myDict2
puts [dict size $myDict]
puts [dict size $myDict2]
puts [clock seconds]
puts "Current time is: [clock format [clock seconds] -format %H:%M:%S]"
#set fh [open list.tcl]

#puts [read $fh]
puts [exec curl -sS "http://joboapp.hoangvandung.cf/on/profile"]
set filelist [exec ls]
puts [llength $filelist]
puts [lindex $filelist 3]
