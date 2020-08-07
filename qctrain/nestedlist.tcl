

set items {{1 2 3} {4 5 6} {7 8 9}}

foreach row $items {
	foreach col $row {
		puts -nonewline "$col\t"
	}
	puts ""
}
