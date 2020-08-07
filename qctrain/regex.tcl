
set fp [open passwd.txt r]

set pattern bash$; # to match end with the bash

while {[gets $fp line] >= 0} {
	if {[regexp -nocase $pattern $line]} {
		puts $line
	}
}

close $fp

set s "root:x:0:0:root:/root:/bin/bash"
set pattern :
set replacement ,

regsub $pattern $s $replacement s2
puts "Default only first occurance: $s2"

regsub -all $pattern $s $replacement s2
puts "To replace all occurance: $s2"

regsub -all -nocase "\[AEIOU\]" $s * s2
puts $s2
