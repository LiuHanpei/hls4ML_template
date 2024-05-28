# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
data_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
data_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


