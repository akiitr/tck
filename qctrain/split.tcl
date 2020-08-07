

set s "root:x:0:0:root:root/:/bin/bash"

set items [split $s :] ; #split using :
puts "array items after split are: $items"
