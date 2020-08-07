# demo for formatted output

puts [format "|%8s|%8s|%8s|%8s|" "binary" "octal" "decimal" "Hex"]
proc printf {} {
	for {set i 0} {$i <= 15} {incr i} {
		puts [format "|%8b|%8o|%8d|%8x|" $i $i $i $i]
	}
}

printf
