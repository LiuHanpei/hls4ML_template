set moduleName mem_streaming
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {mem_streaming}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_r int 256 regular {axi_master 1}  }
	{ in_r int 256 regular {axi_master 0}  }
	{ data_out int 64 regular {axi_slave 0}  }
	{ data_in int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "out_r", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "data_out","offset": { "type": "dynamic","port_name": "data_out","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "in_r", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "data_in","offset": { "type": "dynamic","port_name": "data_in","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "data_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "data_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_out_r_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_out_r_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_out_r_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_out_r_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_out_r_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_out_r_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_out_r_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_out_r_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_out_r_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_out_r_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_out_r_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_out_r_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_out_r_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_in_r_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_in_r_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_in_r_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_in_r_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_in_r_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_in_r_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_in_r_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_in_r_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_in_r_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_in_r_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_in_r_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_in_r_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_in_r_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_in_r_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_in_r_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_in_r_WDATA sc_out sc_lv 256 signal 1 } 
	{ m_axi_in_r_WSTRB sc_out sc_lv 32 signal 1 } 
	{ m_axi_in_r_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_in_r_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_in_r_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_in_r_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_in_r_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_in_r_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_in_r_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_in_r_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_in_r_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_in_r_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_in_r_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_in_r_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_in_r_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_in_r_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_in_r_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_in_r_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_in_r_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_in_r_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_in_r_RDATA sc_in sc_lv 256 signal 1 } 
	{ m_axi_in_r_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_in_r_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_in_r_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_in_r_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_in_r_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_in_r_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_in_r_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_in_r_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_in_r_BUSER sc_in sc_lv 1 signal 1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"mem_streaming","role":"start","value":"0","valid_bit":"0"},{"name":"mem_streaming","role":"continue","value":"0","valid_bit":"4"},{"name":"mem_streaming","role":"auto_start","value":"0","valid_bit":"7"},{"name":"data_out","role":"data","value":"16"},{"name":"data_in","role":"data","value":"28"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"mem_streaming","role":"start","value":"0","valid_bit":"0"},{"name":"mem_streaming","role":"done","value":"0","valid_bit":"1"},{"name":"mem_streaming","role":"idle","value":"0","valid_bit":"2"},{"name":"mem_streaming","role":"ready","value":"0","valid_bit":"3"},{"name":"mem_streaming","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_out_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_out_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_out_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_out_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "AWID" }} , 
 	{ "name": "m_axi_out_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_r", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_out_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_r", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_out_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_out_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_out_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_out_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_out_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_out_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "BID" }} , 
 	{ "name": "m_axi_out_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "BUSER" }} , 
 	{ "name": "m_axi_in_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_in_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_in_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_in_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "AWID" }} , 
 	{ "name": "m_axi_in_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_in_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_in_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_in_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_in_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_in_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_in_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_in_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_in_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_in_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_in_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_in_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "in_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_in_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_in_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_in_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "WID" }} , 
 	{ "name": "m_axi_in_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_in_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_in_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_in_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_in_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ARID" }} , 
 	{ "name": "m_axi_in_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_in_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_in_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_in_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_in_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_in_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_in_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_in_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_in_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_in_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_in_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_in_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "in_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_in_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_in_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "RID" }} , 
 	{ "name": "m_axi_in_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_in_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_in_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_in_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_in_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_in_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "BID" }} , 
 	{ "name": "m_axi_in_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "8", "11", "13", "14", "15"],
		"CDFG" : "mem_streaming",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "87", "EstimateLatencyMax" : "87",
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
					{"Name" : "out_r_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "out_r_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_mem_streaming_Pipeline_VITIS_LOOP_25_1_fu_134", "Port" : "out_r", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "in_r", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mem_streaming_Pipeline_VITIS_LOOP_9_1_fu_113", "Port" : "in_r", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "data_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_buf_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_buf_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_buf_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_buf_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mem_streaming_Pipeline_VITIS_LOOP_9_1_fu_113", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "mem_streaming_Pipeline_VITIS_LOOP_9_1",
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
			{"Name" : "in_r", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln9", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_buf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_buf_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_buf_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_buf_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_buf_4", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_9_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mem_streaming_Pipeline_VITIS_LOOP_9_1_fu_113.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mem_streaming_Pipeline_VITIS_LOOP_40_1_fu_125", "Parent" : "0", "Child" : ["9", "10"],
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mem_streaming_Pipeline_VITIS_LOOP_40_1_fu_125.sparsemux_11_3_16_1_1_U8", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mem_streaming_Pipeline_VITIS_LOOP_40_1_fu_125.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mem_streaming_Pipeline_VITIS_LOOP_25_1_fu_134", "Parent" : "0", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mem_streaming_Pipeline_VITIS_LOOP_25_1_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_r_m_axi_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_r_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mem_streaming {
		out_r {Type O LastRead 15 FirstWrite 2}
		in_r {Type I LastRead 1 FirstWrite -1}
		data_out {Type I LastRead 0 FirstWrite -1}
		data_in {Type I LastRead 0 FirstWrite -1}}
	mem_streaming_Pipeline_VITIS_LOOP_9_1 {
		in_r {Type I LastRead 1 FirstWrite -1}
		sext_ln9 {Type I LastRead 0 FirstWrite -1}
		data_buf {Type O LastRead -1 FirstWrite 2}
		data_buf_1 {Type O LastRead -1 FirstWrite 2}
		data_buf_2 {Type O LastRead -1 FirstWrite 2}
		data_buf_3 {Type O LastRead -1 FirstWrite 2}
		data_buf_4 {Type O LastRead -1 FirstWrite 2}}
	mem_streaming_Pipeline_VITIS_LOOP_40_1 {
		data_buf_4 {Type IO LastRead 0 FirstWrite 1}
		data_buf_3 {Type IO LastRead 0 FirstWrite 1}
		data_buf_2 {Type IO LastRead 0 FirstWrite 1}
		data_buf_1 {Type IO LastRead 0 FirstWrite 1}
		data_buf {Type IO LastRead 0 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "87", "Max" : "87"}
	, {"Name" : "Interval", "Min" : "88", "Max" : "88"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	out_r { m_axi {  { m_axi_out_r_AWVALID VALID 1 1 }  { m_axi_out_r_AWREADY READY 0 1 }  { m_axi_out_r_AWADDR ADDR 1 64 }  { m_axi_out_r_AWID ID 1 1 }  { m_axi_out_r_AWLEN SIZE 1 8 }  { m_axi_out_r_AWSIZE BURST 1 3 }  { m_axi_out_r_AWBURST LOCK 1 2 }  { m_axi_out_r_AWLOCK CACHE 1 2 }  { m_axi_out_r_AWCACHE PROT 1 4 }  { m_axi_out_r_AWPROT QOS 1 3 }  { m_axi_out_r_AWQOS REGION 1 4 }  { m_axi_out_r_AWREGION USER 1 4 }  { m_axi_out_r_AWUSER DATA 1 1 }  { m_axi_out_r_WVALID VALID 1 1 }  { m_axi_out_r_WREADY READY 0 1 }  { m_axi_out_r_WDATA FIFONUM 1 256 }  { m_axi_out_r_WSTRB STRB 1 32 }  { m_axi_out_r_WLAST LAST 1 1 }  { m_axi_out_r_WID ID 1 1 }  { m_axi_out_r_WUSER DATA 1 1 }  { m_axi_out_r_ARVALID VALID 1 1 }  { m_axi_out_r_ARREADY READY 0 1 }  { m_axi_out_r_ARADDR ADDR 1 64 }  { m_axi_out_r_ARID ID 1 1 }  { m_axi_out_r_ARLEN SIZE 1 8 }  { m_axi_out_r_ARSIZE BURST 1 3 }  { m_axi_out_r_ARBURST LOCK 1 2 }  { m_axi_out_r_ARLOCK CACHE 1 2 }  { m_axi_out_r_ARCACHE PROT 1 4 }  { m_axi_out_r_ARPROT QOS 1 3 }  { m_axi_out_r_ARQOS REGION 1 4 }  { m_axi_out_r_ARREGION USER 1 4 }  { m_axi_out_r_ARUSER DATA 1 1 }  { m_axi_out_r_RVALID VALID 0 1 }  { m_axi_out_r_RREADY READY 1 1 }  { m_axi_out_r_RDATA FIFONUM 0 256 }  { m_axi_out_r_RLAST LAST 0 1 }  { m_axi_out_r_RID ID 0 1 }  { m_axi_out_r_RUSER DATA 0 1 }  { m_axi_out_r_RRESP RESP 0 2 }  { m_axi_out_r_BVALID VALID 0 1 }  { m_axi_out_r_BREADY READY 1 1 }  { m_axi_out_r_BRESP RESP 0 2 }  { m_axi_out_r_BID ID 0 1 }  { m_axi_out_r_BUSER DATA 0 1 } } }
	in_r { m_axi {  { m_axi_in_r_AWVALID VALID 1 1 }  { m_axi_in_r_AWREADY READY 0 1 }  { m_axi_in_r_AWADDR ADDR 1 64 }  { m_axi_in_r_AWID ID 1 1 }  { m_axi_in_r_AWLEN SIZE 1 8 }  { m_axi_in_r_AWSIZE BURST 1 3 }  { m_axi_in_r_AWBURST LOCK 1 2 }  { m_axi_in_r_AWLOCK CACHE 1 2 }  { m_axi_in_r_AWCACHE PROT 1 4 }  { m_axi_in_r_AWPROT QOS 1 3 }  { m_axi_in_r_AWQOS REGION 1 4 }  { m_axi_in_r_AWREGION USER 1 4 }  { m_axi_in_r_AWUSER DATA 1 1 }  { m_axi_in_r_WVALID VALID 1 1 }  { m_axi_in_r_WREADY READY 0 1 }  { m_axi_in_r_WDATA FIFONUM 1 256 }  { m_axi_in_r_WSTRB STRB 1 32 }  { m_axi_in_r_WLAST LAST 1 1 }  { m_axi_in_r_WID ID 1 1 }  { m_axi_in_r_WUSER DATA 1 1 }  { m_axi_in_r_ARVALID VALID 1 1 }  { m_axi_in_r_ARREADY READY 0 1 }  { m_axi_in_r_ARADDR ADDR 1 64 }  { m_axi_in_r_ARID ID 1 1 }  { m_axi_in_r_ARLEN SIZE 1 8 }  { m_axi_in_r_ARSIZE BURST 1 3 }  { m_axi_in_r_ARBURST LOCK 1 2 }  { m_axi_in_r_ARLOCK CACHE 1 2 }  { m_axi_in_r_ARCACHE PROT 1 4 }  { m_axi_in_r_ARPROT QOS 1 3 }  { m_axi_in_r_ARQOS REGION 1 4 }  { m_axi_in_r_ARREGION USER 1 4 }  { m_axi_in_r_ARUSER DATA 1 1 }  { m_axi_in_r_RVALID VALID 0 1 }  { m_axi_in_r_RREADY READY 1 1 }  { m_axi_in_r_RDATA FIFONUM 0 256 }  { m_axi_in_r_RLAST LAST 0 1 }  { m_axi_in_r_RID ID 0 1 }  { m_axi_in_r_RUSER DATA 0 1 }  { m_axi_in_r_RRESP RESP 0 2 }  { m_axi_in_r_BVALID VALID 0 1 }  { m_axi_in_r_BREADY READY 1 1 }  { m_axi_in_r_BRESP RESP 0 2 }  { m_axi_in_r_BID ID 0 1 }  { m_axi_in_r_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict out_r {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict in_r {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ out_r 1 }
	{ in_r 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ out_r 1 }
	{ in_r 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
