package require Tk

proc update_count {} {
	        incr ::counter
		set ::lbltxt [format "clicked : %s" $::counter]
		puts  [format "clicked : %s" $::counter]
}

set counter 0

grid [label .mylbl -text "Label Widget" -textvariable lbltxt]
grid [button .btn -text "Click" -command "update_count"]


