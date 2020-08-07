
puts [exec ls -l {*}[glob *.txt] ]; #glob to denote * file glob or wildcard pattern matching giveing way in tcl

set fp [open greet.tcl r]

set src [read $fp]

close $fp;

puts "Executing tcl script as a string [eval $src]";
