set moduleName mem_streaming_Pipeline_VITIS_LOOP_25_1
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
set C_modelName {mem_streaming_Pipeline_VITIS_LOOP_25_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_r int 256 regular {axi_master 1}  }
	{ sext_ln25 int 59 regular  }
	{ data_buf int 16 regular {array 10 { 1 1 } 1 1 }  }
	{ data_buf_1 int 16 regular {array 10 { 1 1 } 1 1 }  }
	{ data_buf_2 int 16 regular {array 10 { 1 1 } 1 1 }  }
	{ data_buf_3 int 16 regular {array 10 { 1 1 } 1 1 }  }
	{ data_buf_4 int 16 regular {array 10 { 1 1 } 1 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "out_r", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "data_out","offset": { "type": "dynamic","port_name": "data_out","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln25", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "data_buf", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_buf_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_buf_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_buf_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_buf_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 83
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_out_r_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_out_r_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_out_r_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_out_r_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_out_r_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_out_r_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_out_r_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_out_r_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_out_r_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_out_r_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_out_r_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_out_r_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_out_r_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_out_r_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_out_r_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_out_r_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_out_r_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_out_r_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_out_r_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_out_r_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_out_r_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_out_r_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_out_r_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_out_r_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_out_r_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_out_r_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_out_r_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_out_r_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_out_r_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_out_r_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_out_r_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_out_r_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_out_r_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_out_r_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_out_r_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_out_r_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_out_r_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_out_r_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_out_r_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_out_r_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_out_r_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_out_r_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_out_r_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_out_r_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_out_r_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_out_r_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln25 sc_in sc_lv 59 signal 1 } 
	{ data_buf_address0 sc_out sc_lv 4 signal 2 } 
	{ data_buf_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_buf_q0 sc_in sc_lv 16 signal 2 } 
	{ data_buf_address1 sc_out sc_lv 4 signal 2 } 
	{ data_buf_ce1 sc_out sc_logic 1 signal 2 } 
	{ data_buf_q1 sc_in sc_lv 16 signal 2 } 
	{ data_buf_1_address0 sc_out sc_lv 4 signal 3 } 
	{ data_buf_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_buf_1_q0 sc_in sc_lv 16 signal 3 } 
	{ data_buf_1_address1 sc_out sc_lv 4 signal 3 } 
	{ data_buf_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ data_buf_1_q1 sc_in sc_lv 16 signal 3 } 
	{ data_buf_2_address0 sc_out sc_lv 4 signal 4 } 
	{ data_buf_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ data_buf_2_q0 sc_in sc_lv 16 signal 4 } 
	{ data_buf_2_address1 sc_out sc_lv 4 signal 4 } 
	{ data_buf_2_ce1 sc_out sc_logic 1 signal 4 } 
	{ data_buf_2_q1 sc_in sc_lv 16 signal 4 } 
	{ data_buf_3_address0 sc_out sc_lv 4 signal 5 } 
	{ data_buf_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ data_buf_3_q0 sc_in sc_lv 16 signal 5 } 
	{ data_buf_3_address1 sc_out sc_lv 4 signal 5 } 
	{ data_buf_3_ce1 sc_out sc_logic 1 signal 5 } 
	{ data_buf_3_q1 sc_in sc_lv 16 signal 5 } 
	{ data_buf_4_address0 sc_out sc_lv 4 signal 6 } 
	{ data_buf_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ data_buf_4_q0 sc_in sc_lv 16 signal 6 } 
	{ data_buf_4_address1 sc_out sc_lv 4 signal 6 } 
	{ data_buf_4_ce1 sc_out sc_logic 1 signal 6 } 
	{ data_buf_4_q1 sc_in sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_out_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_out_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_out_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_out_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "AWID" }} , 
 	{ "name": "m_axi_out_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_out_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_out_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_out_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_out_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_out_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_out_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_out_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_out_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_out_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_out_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_out_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "out_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_out_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_out_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_out_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "WID" }} , 
 	{ "name": "m_axi_out_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_out_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_out_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_out_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_out_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ARID" }} , 
 	{ "name": "m_axi_out_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_out_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_out_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_out_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_out_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_out_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_out_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_out_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_out_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_out_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_out_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_out_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "out_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_out_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_out_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "RID" }} , 
 	{ "name": "m_axi_out_r_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_r", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_out_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_out_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_out_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_out_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_out_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_out_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "BID" }} , 
 	{ "name": "m_axi_out_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "BUSER" }} , 
 	{ "name": "sext_ln25", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln25", "role": "default" }} , 
 	{ "name": "data_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf", "role": "address0" }} , 
 	{ "name": "data_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf", "role": "ce0" }} , 
 	{ "name": "data_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf", "role": "q0" }} , 
 	{ "name": "data_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf", "role": "address1" }} , 
 	{ "name": "data_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf", "role": "ce1" }} , 
 	{ "name": "data_buf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf", "role": "q1" }} , 
 	{ "name": "data_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_1", "role": "address0" }} , 
 	{ "name": "data_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_1", "role": "ce0" }} , 
 	{ "name": "data_buf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_1", "role": "q0" }} , 
 	{ "name": "data_buf_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_1", "role": "address1" }} , 
 	{ "name": "data_buf_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_1", "role": "ce1" }} , 
 	{ "name": "data_buf_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_1", "role": "q1" }} , 
 	{ "name": "data_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_2", "role": "address0" }} , 
 	{ "name": "data_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_2", "role": "ce0" }} , 
 	{ "name": "data_buf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_2", "role": "q0" }} , 
 	{ "name": "data_buf_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_2", "role": "address1" }} , 
 	{ "name": "data_buf_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_2", "role": "ce1" }} , 
 	{ "name": "data_buf_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_2", "role": "q1" }} , 
 	{ "name": "data_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_3", "role": "address0" }} , 
 	{ "name": "data_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_3", "role": "ce0" }} , 
 	{ "name": "data_buf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_3", "role": "q0" }} , 
 	{ "name": "data_buf_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_3", "role": "address1" }} , 
 	{ "name": "data_buf_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_3", "role": "ce1" }} , 
 	{ "name": "data_buf_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_3", "role": "q1" }} , 
 	{ "name": "data_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_4", "role": "address0" }} , 
 	{ "name": "data_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_4", "role": "ce0" }} , 
 	{ "name": "data_buf_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_4", "role": "q0" }} , 
 	{ "name": "data_buf_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_buf_4", "role": "address1" }} , 
 	{ "name": "data_buf_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf_4", "role": "ce1" }} , 
 	{ "name": "data_buf_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_buf_4", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mem_streaming_Pipeline_VITIS_LOOP_25_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_r", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln25", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_buf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_buf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_buf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_buf_4", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_25_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mem_streaming_Pipeline_VITIS_LOOP_25_1 {
		out_r {Type O LastRead -1 FirstWrite 2}
		sext_ln25 {Type I LastRead 0 FirstWrite -1}
		data_buf {Type I LastRead 1 FirstWrite -1}
		data_buf_1 {Type I LastRead 1 FirstWrite -1}
		data_buf_2 {Type I LastRead 1 FirstWrite -1}
		data_buf_3 {Type I LastRead 1 FirstWrite -1}
		data_buf_4 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_out_r_AWVALID VALID 1 1 }  { m_axi_out_r_AWREADY READY 0 1 }  { m_axi_out_r_AWADDR ADDR 1 64 }  { m_axi_out_r_AWID ID 1 1 }  { m_axi_out_r_AWLEN SIZE 1 32 }  { m_axi_out_r_AWSIZE BURST 1 3 }  { m_axi_out_r_AWBURST LOCK 1 2 }  { m_axi_out_r_AWLOCK CACHE 1 2 }  { m_axi_out_r_AWCACHE PROT 1 4 }  { m_axi_out_r_AWPROT QOS 1 3 }  { m_axi_out_r_AWQOS REGION 1 4 }  { m_axi_out_r_AWREGION USER 1 4 }  { m_axi_out_r_AWUSER DATA 1 1 }  { m_axi_out_r_WVALID VALID 1 1 }  { m_axi_out_r_WREADY READY 0 1 }  { m_axi_out_r_WDATA FIFONUM 1 256 }  { m_axi_out_r_WSTRB STRB 1 32 }  { m_axi_out_r_WLAST LAST 1 1 }  { m_axi_out_r_WID ID 1 1 }  { m_axi_out_r_WUSER DATA 1 1 }  { m_axi_out_r_ARVALID VALID 1 1 }  { m_axi_out_r_ARREADY READY 0 1 }  { m_axi_out_r_ARADDR ADDR 1 64 }  { m_axi_out_r_ARID ID 1 1 }  { m_axi_out_r_ARLEN SIZE 1 32 }  { m_axi_out_r_ARSIZE BURST 1 3 }  { m_axi_out_r_ARBURST LOCK 1 2 }  { m_axi_out_r_ARLOCK CACHE 1 2 }  { m_axi_out_r_ARCACHE PROT 1 4 }  { m_axi_out_r_ARPROT QOS 1 3 }  { m_axi_out_r_ARQOS REGION 1 4 }  { m_axi_out_r_ARREGION USER 1 4 }  { m_axi_out_r_ARUSER DATA 1 1 }  { m_axi_out_r_RVALID VALID 0 1 }  { m_axi_out_r_RREADY READY 1 1 }  { m_axi_out_r_RDATA FIFONUM 0 256 }  { m_axi_out_r_RLAST LAST 0 1 }  { m_axi_out_r_RID ID 0 1 }  { m_axi_out_r_RFIFONUM LEN 0 9 }  { m_axi_out_r_RUSER DATA 0 1 }  { m_axi_out_r_RRESP RESP 0 2 }  { m_axi_out_r_BVALID VALID 0 1 }  { m_axi_out_r_BREADY READY 1 1 }  { m_axi_out_r_BRESP RESP 0 2 }  { m_axi_out_r_BID ID 0 1 }  { m_axi_out_r_BUSER DATA 0 1 } } }
	sext_ln25 { ap_none {  { sext_ln25 in_data 0 59 } } }
	data_buf { ap_memory {  { data_buf_address0 mem_address 1 4 }  { data_buf_ce0 mem_ce 1 1 }  { data_buf_q0 mem_dout 0 16 }  { data_buf_address1 MemPortADDR2 1 4 }  { data_buf_ce1 MemPortCE2 1 1 }  { data_buf_q1 in_data 0 16 } } }
	data_buf_1 { ap_memory {  { data_buf_1_address0 mem_address 1 4 }  { data_buf_1_ce0 mem_ce 1 1 }  { data_buf_1_q0 mem_dout 0 16 }  { data_buf_1_address1 MemPortADDR2 1 4 }  { data_buf_1_ce1 MemPortCE2 1 1 }  { data_buf_1_q1 MemPortDOUT2 0 16 } } }
	data_buf_2 { ap_memory {  { data_buf_2_address0 mem_address 1 4 }  { data_buf_2_ce0 mem_ce 1 1 }  { data_buf_2_q0 mem_dout 0 16 }  { data_buf_2_address1 MemPortADDR2 1 4 }  { data_buf_2_ce1 MemPortCE2 1 1 }  { data_buf_2_q1 MemPortDOUT2 0 16 } } }
	data_buf_3 { ap_memory {  { data_buf_3_address0 mem_address 1 4 }  { data_buf_3_ce0 mem_ce 1 1 }  { data_buf_3_q0 mem_dout 0 16 }  { data_buf_3_address1 MemPortADDR2 1 4 }  { data_buf_3_ce1 MemPortCE2 1 1 }  { data_buf_3_q1 MemPortDOUT2 0 16 } } }
	data_buf_4 { ap_memory {  { data_buf_4_address0 mem_address 1 4 }  { data_buf_4_ce0 mem_ce 1 1 }  { data_buf_4_q0 mem_dout 0 16 }  { data_buf_4_address1 MemPortADDR2 1 4 }  { data_buf_4_ce1 MemPortCE2 1 1 }  { data_buf_4_q1 MemPortDOUT2 0 16 } } }
}