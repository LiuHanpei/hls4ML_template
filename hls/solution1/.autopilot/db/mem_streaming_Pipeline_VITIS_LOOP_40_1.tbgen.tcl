set moduleName mem_streaming_Pipeline_VITIS_LOOP_40_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {mem_streaming_Pipeline_VITIS_LOOP_40_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_buf_4 int 16 regular {array 10 { 0 1 } 1 1 }  }
	{ data_buf_3 int 16 regular {array 10 { 0 1 } 1 1 }  }
	{ data_buf_2 int 16 regular {array 10 { 0 1 } 1 1 }  }
	{ data_buf_1 int 16 regular {array 10 { 0 1 } 1 1 }  }
	{ data_buf int 16 regular {array 10 { 0 1 } 1 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "data_buf_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "data_buf_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "data_buf_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "data_buf_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "data_buf", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_buf_4_address0 sc_out sc_lv 4 signal 0 } 
	{ data_buf_4_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_buf_4_we0 sc_out sc_logic 1 signal 0 } 
	{ data_buf_4_d0 sc_out sc_lv 16 signal 0 } 
	{ data_buf_4_address1 sc_out sc_lv 4 signal 0 } 
	{ data_buf_4_ce1 sc_out sc_logic 1 signal 0 } 
	{ data_buf_4_q1 sc_in sc_lv 16 signal 0 } 
	{ data_buf_3_address0 sc_out sc_lv 4 signal 1 } 
	{ data_buf_3_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_buf_3_we0 sc_out sc_logic 1 signal 1 } 
	{ data_buf_3_d0 sc_out sc_lv 16 signal 1 } 
	{ data_buf_3_address1 sc_out sc_lv 4 signal 1 } 
	{ data_buf_3_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_buf_3_q1 sc_in sc_lv 16 signal 1 } 
	{ data_buf_2_address0 sc_out sc_lv 4 signal 2 } 
	{ data_buf_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_buf_2_we0 sc_out sc_logic 1 signal 2 } 
	{ data_buf_2_d0 sc_out sc_lv 16 signal 2 } 
	{ data_buf_2_address1 sc_out sc_lv 4 signal 2 } 
	{ data_buf_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ data_buf_2_q1 sc_in sc_lv 16 signal 2 } 
	{ data_buf_1_address0 sc_out sc_lv 4 signal 3 } 
	{ data_buf_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_buf_1_we0 sc_out sc_logic 1 signal 3 } 
	{ data_buf_1_d0 sc_out sc_lv 16 signal 3 } 
	{ data_buf_1_address1 sc_out sc_lv 4 signal 3 } 
	{ data_buf_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ data_buf_1_q1 sc_in sc_lv 16 signal 3 } 
	{ data_buf_address0 sc_out sc_lv 4 signal 4 } 
	{ data_buf_ce0 sc_out sc_logic 1 signal 4 } 
	{ data_buf_we0 sc_out sc_logic 1 signal 4 } 
	{ data_buf_d0 sc_out sc_lv 16 signal 4 } 
	{ data_buf_address1 sc_out sc_lv 4 signal 4 } 
	{ data_buf_ce1 sc_out sc_logic 1 signal 4 } 
	{ data_buf_q1 sc_in sc_lv 16 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_4", "role": "address0" }} , 
 	{ "name": "data_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_4", "role": "ce0" }} , 
 	{ "name": "data_buf_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_4", "role": "we0" }} , 
 	{ "name": "data_buf_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_4", "role": "d0" }} , 
 	{ "name": "data_buf_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_4", "role": "address1" }} , 
 	{ "name": "data_buf_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_4", "role": "ce1" }} , 
 	{ "name": "data_buf_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_4", "role": "q1" }} , 
 	{ "name": "data_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_3", "role": "address0" }} , 
 	{ "name": "data_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_3", "role": "ce0" }} , 
 	{ "name": "data_buf_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_3", "role": "we0" }} , 
 	{ "name": "data_buf_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_3", "role": "d0" }} , 
 	{ "name": "data_buf_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_3", "role": "address1" }} , 
 	{ "name": "data_buf_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_3", "role": "ce1" }} , 
 	{ "name": "data_buf_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_3", "role": "q1" }} , 
 	{ "name": "data_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_2", "role": "address0" }} , 
 	{ "name": "data_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_2", "role": "ce0" }} , 
 	{ "name": "data_buf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_2", "role": "we0" }} , 
 	{ "name": "data_buf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_2", "role": "d0" }} , 
 	{ "name": "data_buf_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_2", "role": "address1" }} , 
 	{ "name": "data_buf_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_2", "role": "ce1" }} , 
 	{ "name": "data_buf_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_2", "role": "q1" }} , 
 	{ "name": "data_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_1", "role": "address0" }} , 
 	{ "name": "data_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_1", "role": "ce0" }} , 
 	{ "name": "data_buf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_1", "role": "we0" }} , 
 	{ "name": "data_buf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_1", "role": "d0" }} , 
 	{ "name": "data_buf_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_1", "role": "address1" }} , 
 	{ "name": "data_buf_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_1", "role": "ce1" }} , 
 	{ "name": "data_buf_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_1", "role": "q1" }} , 
 	{ "name": "data_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf", "role": "address0" }} , 
 	{ "name": "data_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf", "role": "ce0" }} , 
 	{ "name": "data_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf", "role": "we0" }} , 
 	{ "name": "data_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf", "role": "d0" }} , 
 	{ "name": "data_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf", "role": "address1" }} , 
 	{ "name": "data_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf", "role": "ce1" }} , 
 	{ "name": "data_buf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "mem_streaming_Pipeline_VITIS_LOOP_40_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "52", "EstimateLatencyMax" : "52",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_buf_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data_buf_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data_buf_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data_buf_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data_buf", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_11_3_16_1_1_U8", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mem_streaming_Pipeline_VITIS_LOOP_40_1 {
		data_buf_4 {Type IO LastRead 0 FirstWrite 1}
		data_buf_3 {Type IO LastRead 0 FirstWrite 1}
		data_buf_2 {Type IO LastRead 0 FirstWrite 1}
		data_buf_1 {Type IO LastRead 0 FirstWrite 1}
		data_buf {Type IO LastRead 0 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "52", "Max" : "52"}
	, {"Name" : "Interval", "Min" : "52", "Max" : "52"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_buf_4 { ap_memory {  { data_buf_4_address0 mem_address 1 4 }  { data_buf_4_ce0 mem_ce 1 1 }  { data_buf_4_we0 mem_we 1 1 }  { data_buf_4_d0 mem_din 1 16 }  { data_buf_4_address1 MemPortADDR2 1 4 }  { data_buf_4_ce1 MemPortCE2 1 1 }  { data_buf_4_q1 in_data 0 16 } } }
	data_buf_3 { ap_memory {  { data_buf_3_address0 mem_address 1 4 }  { data_buf_3_ce0 mem_ce 1 1 }  { data_buf_3_we0 mem_we 1 1 }  { data_buf_3_d0 mem_din 1 16 }  { data_buf_3_address1 MemPortADDR2 1 4 }  { data_buf_3_ce1 MemPortCE2 1 1 }  { data_buf_3_q1 in_data 0 16 } } }
	data_buf_2 { ap_memory {  { data_buf_2_address0 mem_address 1 4 }  { data_buf_2_ce0 mem_ce 1 1 }  { data_buf_2_we0 mem_we 1 1 }  { data_buf_2_d0 mem_din 1 16 }  { data_buf_2_address1 MemPortADDR2 1 4 }  { data_buf_2_ce1 MemPortCE2 1 1 }  { data_buf_2_q1 in_data 0 16 } } }
	data_buf_1 { ap_memory {  { data_buf_1_address0 mem_address 1 4 }  { data_buf_1_ce0 mem_ce 1 1 }  { data_buf_1_we0 mem_we 1 1 }  { data_buf_1_d0 mem_din 1 16 }  { data_buf_1_address1 MemPortADDR2 1 4 }  { data_buf_1_ce1 MemPortCE2 1 1 }  { data_buf_1_q1 in_data 0 16 } } }
	data_buf { ap_memory {  { data_buf_address0 mem_address 1 4 }  { data_buf_ce0 mem_ce 1 1 }  { data_buf_we0 mem_we 1 1 }  { data_buf_d0 mem_din 1 16 }  { data_buf_address1 MemPortADDR2 1 4 }  { data_buf_ce1 MemPortCE2 1 1 }  { data_buf_q1 in_data 0 16 } } }
}
