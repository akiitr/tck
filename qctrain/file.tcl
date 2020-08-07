

puts "executing script $argv0"
set fp [open passwd.txt r]
puts "value for the fp pointer: $fp"

while {[gets $fp temp] >= 0} {
	puts $temp
}

close $fp
