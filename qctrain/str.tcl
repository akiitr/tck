
set s Python
puts $s

set s "Python and the Perl"
puts $s

# for tcl version<=8.5
set name peter
append name " pan"
puts $name

# for tcl version > 8.6
set fname peter
set lname { pan}
set fullname [string cat $fname $lname]
puts $fullname
puts "string length $fullname is: [string length $fullname]"
puts "uppercase: [string toupper $fullname]"
puts "titlecase: [string totitle $fullname]"
puts "lowercase: [string tolower $fullname]"
puts "repeat: [string repeat $fullname 4]"

# Traversing in string
set s "hello tcl hello"

#char at index 0
puts "string is: $s"
puts "index 0: [string index $s 0]"
puts "index 5: [string index $s 5]"

#Find/search in string
puts "first ocurrance of first lo: [string first lo $s]"
puts "last ocuurance of last lo: [string last lo $s]"

# Escape charecters
puts "try print windows path: c:\\temp\\ram\\nan\\boy\\fool\\ak.txt gives this:"
puts "c:\temp\ram\nan\boy\fool\ak.txt"

