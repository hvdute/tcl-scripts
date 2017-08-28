#!/usr/bin/tclsh
namespace eval MyMath {
    
    variable sum
    variable avg

    namespace export Add
}


proc MyMath::Add {a b} {
    set ::MyMath::sum [expr $a + $b]
}

MyMath::Add 3 6
puts $::MyMath::sum
namespace import MyMath::*
Add 20 2
puts $::MyMath::sum
