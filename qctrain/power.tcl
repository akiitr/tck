
if {$argc != 2} {
	puts -nonewline "usage: "
	puts "$argv0 value-for-x value-for-n"
	exit
}

set x [lindex $argv 0]
set n [lindex $argv 1]
set power [expr $x ** $n]

puts "$x to the power $n is: $power"
