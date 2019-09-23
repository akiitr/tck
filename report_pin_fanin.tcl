proc report_pin_fanin { label pin_name module_scope report_file } {
# Is pin_name an input port or cell pin?
set isport 0
if {[regexp {\.} $pin_name]} {
# this is a cell pin
set pin [get_pins $pin_name]
} else {
# this is a module port
set pin [get_ports $pin_name]
set isport 1
}
set startpoints [all_fanin -flat -startpoints_only -to $pin]
set startpoint_count [sizeof_collection $endpoints]
set logic_cone_pins [all_fanin -flat -to $pin]
set logic_cone_size [sizeof_collection $logic_cone_pins]
set reverse_traces_count na
# If we're reporting for a port, do the reverse lookup to see
# what else fans into the endpoints (used for fan-out-of-one check)
if {$isport} {
set reverse_traces_count 0
foreach_in_collection startpoint $startpoints {
set reverse_traces [all_fanout -flat -endpoints_only -to $startpoint]
incr reverse_traces_count [sizeof_collection $reverse_traces]
}
}
echo "$label $pin_name $module_scope $startpoint_count $logic_cone_size \
$reverse_traces_count" >> $report_file
}


### read verilog file from which to extract registers
read_verilog aes_cipher_top_syn.v
set module_scope aes_cipher_top_syn
set report_file "reg.rep"


foreach_in_collection reg [all_registers -cells -edge_triggered] {
set reg_full_name [get_object_name $reg]
# Report fanin stats for each register "D" pin
foreach_in_collection reg_pin [get_pins $reg_full_name/* -filter {pin_direction == in}] {
set reg_pin_name [get_object_name $reg_pin]
# only report for name ending with '.D' or 'next_state'
if {[regexp -nocase {\.D$|\/next_state} $reg_pin_name]} {
query_object $reg_pin_name
report_pin_fanin "ri" $reg_pin_name $module_scope $report_file
}
}
}
