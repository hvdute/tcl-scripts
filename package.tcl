#!/usr/bin/tclsh
namespace eval ::HelloWorld {

    namespace export sayHello

    set version 1.0
    set description "Package description"
    
    # variable for path of the join script

    variable home [file join [pwd] [file dirname [info script]]]
    
}

proc ::HelloWorld::sayHello {name} {
    puts "Hello $name! Have a nice day!"
    puts "Package version: $HelloWorld::version"
    puts "Package desc: $HelloWorld::description"
}

package provide HelloWorld $HelloWorld::version
package require Tcl 8.0

