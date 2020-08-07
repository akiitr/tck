# procedure definition
#Tclsh is highly format oriented
# always proc will have { in same line
# Arguments will be seperated by space as also in bash

proc compute {radius} {
	return [expr 22/7.0 * $radius ** 2]; #command substitution
}

puts -nonewline "Enter the radius: "
flush stdout
set user_radius [gets stdin];
set area [compute $user_radius]; #proc calling
puts [format "given radius: %s\n area : %.3f" $user_radius $area]
