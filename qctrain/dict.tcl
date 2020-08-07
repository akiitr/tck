
set detail [dict create lang perl author {larry wall} version "5.2"]
puts "Dictionary: $detail SIZE: [dict size $detail]"

#add a element
dict set detail release bionic
puts "added an key release and value bionic"
puts "Dictionary: $detail SIZE: [dict size $detail]" 

#Updating an element
dict set detail version "5.3"
puts "Updated the version to 5.3"
puts "Dictionary: $detail SIZE: [dict size $detail]" 

#lookup operation
puts "looking up for author: [dict get $detail author]"
puts "looking up for lang: [dict get $detail lang]"

#Deleting an element
puts "removing the author: [dict remove $detail author]"
puts "removing teh lang: [dict remove $detail lang]"

# All keys and values
puts "All keys: [dict keys $detail]"
puts "All Vlaues: [dict values $detail]"

#Iterating the dictionary
dict for {key value} $detail {
	puts "$key -> $value"
}
