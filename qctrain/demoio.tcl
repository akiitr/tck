# Without flush stdout the puts content will be in the buffer untill new line is not print
puts -nonewline "enter the name: "
flush stdout
gets stdin name

puts -nonewline "enter the city: "
flush stdout
gets stdin city

puts "name: $name";
puts "city: $city";
