#Tclsh for dummies
set name qualcomm
puts "Please enter the city"
gets stdin city
# Putting comment in the same line requires a semicolon as multiple command in bash;
puts "name: $name"; #variable substitution
puts "city: $city"
puts "This is two messafge without new line using switch -nonewline"
puts -nonewline "name: $name "
puts -nonewline "city: $city "
