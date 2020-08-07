# command line arguments
puts "\$argv is the array for argument passed"
puts "\$arg0 is for the script name itself"
puts "name of the script: $argv0 "

puts $argv;

puts "the length of the arguments is $argc"

#summing the input
set tot 0

foreach item $argv {
	incr tot $item
}

puts "Total Sum of the passed inputs is: $tot"
