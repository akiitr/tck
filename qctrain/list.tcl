
# list or array
set items [list 2.2 3 4 5 pam jane nick "larry wall" .98 1]
puts "the elemets of the array initalze by \[list 1 ..\] are: $items with length: [llength $items]"

set items { 2.2 3 4 5 pam jane nick "larry wall" .98 1}
puts "the elemets of the array initalize by {} are: $items with length: [llength $items]"

puts "appending qualcomm & ak: [lappend items qualcomm ak] array: $items with length: [llength $items]"

#indexing
puts "first element: [lindex $items 0] last element: [lindex $items end] scond last: [lindex $items end-1]"

#inserting element
set items [linsert $items 0 anubhav]; #please check not working
puts "inserted name anubhav in begining of list NOT WORKING: $items"

#updating 
lset items end Anubhav
puts "changing my name ak to anubhav updated: $items"

#sorting
#by default ASCII sort
set sorted [lsort $items]
puts "sorted ascrnding array: $sorted"

set sorted [lsort -decreasing $items]
puts "sorted in descending order: $sorted"

set items { 2.2 3 4 5 .98 1}

# Manual numeric sort
set sorted [lsort -real $items]
puts "Numeric ascending sort: $sorted"

set sorted [lsort -real -decreasing $items]
puts "numeri descending sort: $sorted"

#reverse the list
puts "reversing list: $items result ->: [lreverse $items]"
#iterating

foreach item $items {
	puts $item;
}
