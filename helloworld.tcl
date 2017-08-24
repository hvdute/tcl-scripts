#!/usr/bin/tclsh
puts "Hello world!"
#puts $env(PATH)
#puts $tcl_pkgPath
set a "Hoang Van Dung"
set b [ expr 5 * 6 + 7 ]
set marks(english) 90
set marks(math) 2000
puts $marks(english)
puts $marks(math)
puts [ expr $marks(english) + $marks(math) ]

set tcl_precision 5
set x 10
set y 30 
puts [ expr $x / $y.] 
puts "Test tenary operator: [ expr $x>$y ? $x : $y ]"
set x 30
for {set i 0} {$i <= $x} {incr i} {
    puts "Values of i: $i"
}
puts "Final: \$x = $x"

for {set i 0} {$i < 10} { incr i } {
    set myArray($i) $i
}

for {set i 0} {$i < 10} {incr i} {
    puts "myArray($i) = $i"
}

puts [array size myArray]
puts [array names myArray]
foreach index [array names myArray] {
    puts "myArray($index) = $myArray($index)"
}

set name "Hoang Van DUng"
puts "[string index $name 10]"
puts [string length $name]
puts [string toupper $name]
puts [string tolower $name]
puts $name

puts "---------------------------------------"

set tcl_precision 3 
puts [format "%.2f" 43.5]
puts [format "%e" 43.5]
puts [format "%s" $name]
puts [format "%x" 40]




