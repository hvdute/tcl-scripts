#!/usr/bin/tclsh
proc sayHi {name age} {
    puts "Hi there! I'm [expr { ($name != "Dung") ? $name : "Dung" }]"
    puts "I'm $age years old."
}
set name "Bich HUyen"
sayHi "Bich Huyen" 21
#set res [expr {( $name == "Dung" ) ? $name : "False" }]
proc avg {a b c args} {
    set sum [expr $a + $b + $c]
    puts "Sum a b c: $sum"
    puts "---------------------"
    if {[info exists args]} {
        puts "args: $args"
        foreach number $args {
            set sum [expr $sum + $number]
        }
        puts "Exists"
        puts "Length of args:  [llength $args]"
        puts "sum: $sum"
        set average [expr { $sum / [expr 3 + [llength $args]] }]
        return $average
    } else {
        puts "not Exists"
        set average [expr $sum/3]
        return $average
    }
}
puts [avg 1 3 4 5]
