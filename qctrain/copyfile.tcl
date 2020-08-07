
proc usage {} {
	puts -nonewline "Usage: "
	puts "$argv0 src-file dest-file"
	exit
}

proc copy {src dest} {
	set fp [open $src r]
	set fw [open $dest w]
	puts "Coping $src -> $dest"
	puts -nonewline $fw [read $fp]
	flush $fw

	close $fp
	close $fw
}

if {$argc != 2} {
	usage
}

copy [lindex $argv 0] [lindex $argv 1]
