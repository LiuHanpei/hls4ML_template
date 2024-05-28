// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.1 (64-bit)
// Tool Version Limit: 2023.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      mem_streaming
`define AUTOTB_DUT_INST AESL_inst_mem_streaming
`define AUTOTB_TOP      apatb_mem_streaming_top
`define AUTOTB_LAT_RESULT_FILE "mem_streaming.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "mem_streaming.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_mem_streaming_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_out_r 1
`define AESL_DEPTH_in_r 1
`define AESL_DEPTH_data_out 1
`define AESL_DEPTH_data_in 1
`define AUTOTB_TVIN_in_r  "../tv/cdatafile/c.mem_streaming.autotvin_in_r.dat"
`define AUTOTB_TVIN_data_out  "../tv/cdatafile/c.mem_streaming.autotvin_data_out.dat"
`define AUTOTB_TVIN_data_in  "../tv/cdatafile/c.mem_streaming.autotvin_data_in.dat"
`define AUTOTB_TVIN_in_r_out_wrapc  "../tv/rtldatafile/rtl.mem_streaming.autotvin_in_r.dat"
`define AUTOTB_TVIN_data_out_out_wrapc  "../tv/rtldatafile/rtl.mem_streaming.autotvin_data_out.dat"
`define AUTOTB_TVIN_data_in_out_wrapc  "../tv/rtldatafile/rtl.mem_streaming.autotvin_data_in.dat"
`define AUTOTB_TVOUT_out_r  "../tv/cdatafile/c.mem_streaming.autotvout_out_r.dat"
`define AUTOTB_TVOUT_out_r_out_wrapc  "../tv/rtldatafile/rtl.mem_streaming.autotvout_out_r.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 87;
parameter LENGTH_data_in = 1;
parameter LENGTH_data_out = 1;
parameter LENGTH_in_r = 5;
parameter LENGTH_out_r = 5;

task read_token;
    input integer fp;
    output reg [535 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [5 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [5 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire  control_INTERRUPT;
wire  out_r_AWVALID;
wire  out_r_AWREADY;
wire [63 : 0] out_r_AWADDR;
wire [0 : 0] out_r_AWID;
wire [7 : 0] out_r_AWLEN;
wire [2 : 0] out_r_AWSIZE;
wire [1 : 0] out_r_AWBURST;
wire [1 : 0] out_r_AWLOCK;
wire [3 : 0] out_r_AWCACHE;
wire [2 : 0] out_r_AWPROT;
wire [3 : 0] out_r_AWQOS;
wire [3 : 0] out_r_AWREGION;
wire [0 : 0] out_r_AWUSER;
wire  out_r_WVALID;
wire  out_r_WREADY;
wire [255 : 0] out_r_WDATA;
wire [31 : 0] out_r_WSTRB;
wire  out_r_WLAST;
wire [0 : 0] out_r_WID;
wire [0 : 0] out_r_WUSER;
wire  out_r_ARVALID;
wire  out_r_ARREADY;
wire [63 : 0] out_r_ARADDR;
wire [0 : 0] out_r_ARID;
wire [7 : 0] out_r_ARLEN;
wire [2 : 0] out_r_ARSIZE;
wire [1 : 0] out_r_ARBURST;
wire [1 : 0] out_r_ARLOCK;
wire [3 : 0] out_r_ARCACHE;
wire [2 : 0] out_r_ARPROT;
wire [3 : 0] out_r_ARQOS;
wire [3 : 0] out_r_ARREGION;
wire [0 : 0] out_r_ARUSER;
wire  out_r_RVALID;
wire  out_r_RREADY;
wire [255 : 0] out_r_RDATA;
wire  out_r_RLAST;
wire [0 : 0] out_r_RID;
wire [0 : 0] out_r_RUSER;
wire [1 : 0] out_r_RRESP;
wire  out_r_BVALID;
wire  out_r_BREADY;
wire [1 : 0] out_r_BRESP;
wire [0 : 0] out_r_BID;
wire [0 : 0] out_r_BUSER;
wire  in_r_AWVALID;
wire  in_r_AWREADY;
wire [63 : 0] in_r_AWADDR;
wire [0 : 0] in_r_AWID;
wire [7 : 0] in_r_AWLEN;
wire [2 : 0] in_r_AWSIZE;
wire [1 : 0] in_r_AWBURST;
wire [1 : 0] in_r_AWLOCK;
wire [3 : 0] in_r_AWCACHE;
wire [2 : 0] in_r_AWPROT;
wire [3 : 0] in_r_AWQOS;
wire [3 : 0] in_r_AWREGION;
wire [0 : 0] in_r_AWUSER;
wire  in_r_WVALID;
wire  in_r_WREADY;
wire [255 : 0] in_r_WDATA;
wire [31 : 0] in_r_WSTRB;
wire  in_r_WLAST;
wire [0 : 0] in_r_WID;
wire [0 : 0] in_r_WUSER;
wire  in_r_ARVALID;
wire  in_r_ARREADY;
wire [63 : 0] in_r_ARADDR;
wire [0 : 0] in_r_ARID;
wire [7 : 0] in_r_ARLEN;
wire [2 : 0] in_r_ARSIZE;
wire [1 : 0] in_r_ARBURST;
wire [1 : 0] in_r_ARLOCK;
wire [3 : 0] in_r_ARCACHE;
wire [2 : 0] in_r_ARPROT;
wire [3 : 0] in_r_ARQOS;
wire [3 : 0] in_r_ARREGION;
wire [0 : 0] in_r_ARUSER;
wire  in_r_RVALID;
wire  in_r_RREADY;
wire [255 : 0] in_r_RDATA;
wire  in_r_RLAST;
wire [0 : 0] in_r_RID;
wire [0 : 0] in_r_RUSER;
wire [1 : 0] in_r_RRESP;
wire  in_r_BVALID;
wire  in_r_BREADY;
wire [1 : 0] in_r_BRESP;
wire [0 : 0] in_r_BID;
wire [0 : 0] in_r_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire control_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .interrupt(control_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_out_r_AWVALID(out_r_AWVALID),
    .m_axi_out_r_AWREADY(out_r_AWREADY),
    .m_axi_out_r_AWADDR(out_r_AWADDR),
    .m_axi_out_r_AWID(out_r_AWID),
    .m_axi_out_r_AWLEN(out_r_AWLEN),
    .m_axi_out_r_AWSIZE(out_r_AWSIZE),
    .m_axi_out_r_AWBURST(out_r_AWBURST),
    .m_axi_out_r_AWLOCK(out_r_AWLOCK),
    .m_axi_out_r_AWCACHE(out_r_AWCACHE),
    .m_axi_out_r_AWPROT(out_r_AWPROT),
    .m_axi_out_r_AWQOS(out_r_AWQOS),
    .m_axi_out_r_AWREGION(out_r_AWREGION),
    .m_axi_out_r_AWUSER(out_r_AWUSER),
    .m_axi_out_r_WVALID(out_r_WVALID),
    .m_axi_out_r_WREADY(out_r_WREADY),
    .m_axi_out_r_WDATA(out_r_WDATA),
    .m_axi_out_r_WSTRB(out_r_WSTRB),
    .m_axi_out_r_WLAST(out_r_WLAST),
    .m_axi_out_r_WID(out_r_WID),
    .m_axi_out_r_WUSER(out_r_WUSER),
    .m_axi_out_r_ARVALID(out_r_ARVALID),
    .m_axi_out_r_ARREADY(out_r_ARREADY),
    .m_axi_out_r_ARADDR(out_r_ARADDR),
    .m_axi_out_r_ARID(out_r_ARID),
    .m_axi_out_r_ARLEN(out_r_ARLEN),
    .m_axi_out_r_ARSIZE(out_r_ARSIZE),
    .m_axi_out_r_ARBURST(out_r_ARBURST),
    .m_axi_out_r_ARLOCK(out_r_ARLOCK),
    .m_axi_out_r_ARCACHE(out_r_ARCACHE),
    .m_axi_out_r_ARPROT(out_r_ARPROT),
    .m_axi_out_r_ARQOS(out_r_ARQOS),
    .m_axi_out_r_ARREGION(out_r_ARREGION),
    .m_axi_out_r_ARUSER(out_r_ARUSER),
    .m_axi_out_r_RVALID(out_r_RVALID),
    .m_axi_out_r_RREADY(out_r_RREADY),
    .m_axi_out_r_RDATA(out_r_RDATA),
    .m_axi_out_r_RLAST(out_r_RLAST),
    .m_axi_out_r_RID(out_r_RID),
    .m_axi_out_r_RUSER(out_r_RUSER),
    .m_axi_out_r_RRESP(out_r_RRESP),
    .m_axi_out_r_BVALID(out_r_BVALID),
    .m_axi_out_r_BREADY(out_r_BREADY),
    .m_axi_out_r_BRESP(out_r_BRESP),
    .m_axi_out_r_BID(out_r_BID),
    .m_axi_out_r_BUSER(out_r_BUSER),
    .m_axi_in_r_AWVALID(in_r_AWVALID),
    .m_axi_in_r_AWREADY(in_r_AWREADY),
    .m_axi_in_r_AWADDR(in_r_AWADDR),
    .m_axi_in_r_AWID(in_r_AWID),
    .m_axi_in_r_AWLEN(in_r_AWLEN),
    .m_axi_in_r_AWSIZE(in_r_AWSIZE),
    .m_axi_in_r_AWBURST(in_r_AWBURST),
    .m_axi_in_r_AWLOCK(in_r_AWLOCK),
    .m_axi_in_r_AWCACHE(in_r_AWCACHE),
    .m_axi_in_r_AWPROT(in_r_AWPROT),
    .m_axi_in_r_AWQOS(in_r_AWQOS),
    .m_axi_in_r_AWREGION(in_r_AWREGION),
    .m_axi_in_r_AWUSER(in_r_AWUSER),
    .m_axi_in_r_WVALID(in_r_WVALID),
    .m_axi_in_r_WREADY(in_r_WREADY),
    .m_axi_in_r_WDATA(in_r_WDATA),
    .m_axi_in_r_WSTRB(in_r_WSTRB),
    .m_axi_in_r_WLAST(in_r_WLAST),
    .m_axi_in_r_WID(in_r_WID),
    .m_axi_in_r_WUSER(in_r_WUSER),
    .m_axi_in_r_ARVALID(in_r_ARVALID),
    .m_axi_in_r_ARREADY(in_r_ARREADY),
    .m_axi_in_r_ARADDR(in_r_ARADDR),
    .m_axi_in_r_ARID(in_r_ARID),
    .m_axi_in_r_ARLEN(in_r_ARLEN),
    .m_axi_in_r_ARSIZE(in_r_ARSIZE),
    .m_axi_in_r_ARBURST(in_r_ARBURST),
    .m_axi_in_r_ARLOCK(in_r_ARLOCK),
    .m_axi_in_r_ARCACHE(in_r_ARCACHE),
    .m_axi_in_r_ARPROT(in_r_ARPROT),
    .m_axi_in_r_ARQOS(in_r_ARQOS),
    .m_axi_in_r_ARREGION(in_r_ARREGION),
    .m_axi_in_r_ARUSER(in_r_ARUSER),
    .m_axi_in_r_RVALID(in_r_RVALID),
    .m_axi_in_r_RREADY(in_r_RREADY),
    .m_axi_in_r_RDATA(in_r_RDATA),
    .m_axi_in_r_RLAST(in_r_RLAST),
    .m_axi_in_r_RID(in_r_RID),
    .m_axi_in_r_RUSER(in_r_RUSER),
    .m_axi_in_r_RRESP(in_r_RRESP),
    .m_axi_in_r_BVALID(in_r_BVALID),
    .m_axi_in_r_BREADY(in_r_BREADY),
    .m_axi_in_r_BRESP(in_r_BRESP),
    .m_axi_in_r_BID(in_r_BID),
    .m_axi_in_r_BUSER(in_r_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & control_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end




wire    AESL_axi_master_out_r_ready;
wire    AESL_axi_master_out_r_done;
AESL_axi_master_out_r AESL_AXI_MASTER_out_r(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_out_r_AWVALID (out_r_AWVALID),
    .TRAN_out_r_AWREADY (out_r_AWREADY),
    .TRAN_out_r_AWADDR (out_r_AWADDR),
    .TRAN_out_r_AWID (out_r_AWID),
    .TRAN_out_r_AWLEN (out_r_AWLEN),
    .TRAN_out_r_AWSIZE (out_r_AWSIZE),
    .TRAN_out_r_AWBURST (out_r_AWBURST),
    .TRAN_out_r_AWLOCK (out_r_AWLOCK),
    .TRAN_out_r_AWCACHE (out_r_AWCACHE),
    .TRAN_out_r_AWPROT (out_r_AWPROT),
    .TRAN_out_r_AWQOS (out_r_AWQOS),
    .TRAN_out_r_AWREGION (out_r_AWREGION),
    .TRAN_out_r_AWUSER (out_r_AWUSER),
    .TRAN_out_r_WVALID (out_r_WVALID),
    .TRAN_out_r_WREADY (out_r_WREADY),
    .TRAN_out_r_WDATA (out_r_WDATA),
    .TRAN_out_r_WSTRB (out_r_WSTRB),
    .TRAN_out_r_WLAST (out_r_WLAST),
    .TRAN_out_r_WID (out_r_WID),
    .TRAN_out_r_WUSER (out_r_WUSER),
    .TRAN_out_r_ARVALID (out_r_ARVALID),
    .TRAN_out_r_ARREADY (out_r_ARREADY),
    .TRAN_out_r_ARADDR (out_r_ARADDR),
    .TRAN_out_r_ARID (out_r_ARID),
    .TRAN_out_r_ARLEN (out_r_ARLEN),
    .TRAN_out_r_ARSIZE (out_r_ARSIZE),
    .TRAN_out_r_ARBURST (out_r_ARBURST),
    .TRAN_out_r_ARLOCK (out_r_ARLOCK),
    .TRAN_out_r_ARCACHE (out_r_ARCACHE),
    .TRAN_out_r_ARPROT (out_r_ARPROT),
    .TRAN_out_r_ARQOS (out_r_ARQOS),
    .TRAN_out_r_ARREGION (out_r_ARREGION),
    .TRAN_out_r_ARUSER (out_r_ARUSER),
    .TRAN_out_r_RVALID (out_r_RVALID),
    .TRAN_out_r_RREADY (out_r_RREADY),
    .TRAN_out_r_RDATA (out_r_RDATA),
    .TRAN_out_r_RLAST (out_r_RLAST),
    .TRAN_out_r_RID (out_r_RID),
    .TRAN_out_r_RUSER (out_r_RUSER),
    .TRAN_out_r_RRESP (out_r_RRESP),
    .TRAN_out_r_BVALID (out_r_BVALID),
    .TRAN_out_r_BREADY (out_r_BREADY),
    .TRAN_out_r_BRESP (out_r_BRESP),
    .TRAN_out_r_BID (out_r_BID),
    .TRAN_out_r_BUSER (out_r_BUSER),
    .ready (AESL_axi_master_out_r_ready),
    .done  (AESL_axi_master_out_r_done)
);
assign    AESL_axi_master_out_r_ready    =   ready;
assign    AESL_axi_master_out_r_done    =   AESL_done_delay;
wire    AESL_axi_master_in_r_ready;
wire    AESL_axi_master_in_r_done;
AESL_axi_master_in_r AESL_AXI_MASTER_in_r(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_in_r_AWVALID (in_r_AWVALID),
    .TRAN_in_r_AWREADY (in_r_AWREADY),
    .TRAN_in_r_AWADDR (in_r_AWADDR),
    .TRAN_in_r_AWID (in_r_AWID),
    .TRAN_in_r_AWLEN (in_r_AWLEN),
    .TRAN_in_r_AWSIZE (in_r_AWSIZE),
    .TRAN_in_r_AWBURST (in_r_AWBURST),
    .TRAN_in_r_AWLOCK (in_r_AWLOCK),
    .TRAN_in_r_AWCACHE (in_r_AWCACHE),
    .TRAN_in_r_AWPROT (in_r_AWPROT),
    .TRAN_in_r_AWQOS (in_r_AWQOS),
    .TRAN_in_r_AWREGION (in_r_AWREGION),
    .TRAN_in_r_AWUSER (in_r_AWUSER),
    .TRAN_in_r_WVALID (in_r_WVALID),
    .TRAN_in_r_WREADY (in_r_WREADY),
    .TRAN_in_r_WDATA (in_r_WDATA),
    .TRAN_in_r_WSTRB (in_r_WSTRB),
    .TRAN_in_r_WLAST (in_r_WLAST),
    .TRAN_in_r_WID (in_r_WID),
    .TRAN_in_r_WUSER (in_r_WUSER),
    .TRAN_in_r_ARVALID (in_r_ARVALID),
    .TRAN_in_r_ARREADY (in_r_ARREADY),
    .TRAN_in_r_ARADDR (in_r_ARADDR),
    .TRAN_in_r_ARID (in_r_ARID),
    .TRAN_in_r_ARLEN (in_r_ARLEN),
    .TRAN_in_r_ARSIZE (in_r_ARSIZE),
    .TRAN_in_r_ARBURST (in_r_ARBURST),
    .TRAN_in_r_ARLOCK (in_r_ARLOCK),
    .TRAN_in_r_ARCACHE (in_r_ARCACHE),
    .TRAN_in_r_ARPROT (in_r_ARPROT),
    .TRAN_in_r_ARQOS (in_r_ARQOS),
    .TRAN_in_r_ARREGION (in_r_ARREGION),
    .TRAN_in_r_ARUSER (in_r_ARUSER),
    .TRAN_in_r_RVALID (in_r_RVALID),
    .TRAN_in_r_RREADY (in_r_RREADY),
    .TRAN_in_r_RDATA (in_r_RDATA),
    .TRAN_in_r_RLAST (in_r_RLAST),
    .TRAN_in_r_RID (in_r_RID),
    .TRAN_in_r_RUSER (in_r_RUSER),
    .TRAN_in_r_RRESP (in_r_RRESP),
    .TRAN_in_r_BVALID (in_r_BVALID),
    .TRAN_in_r_BREADY (in_r_BREADY),
    .TRAN_in_r_BRESP (in_r_BRESP),
    .TRAN_in_r_BID (in_r_BID),
    .TRAN_in_r_BUSER (in_r_BUSER),
    .ready (AESL_axi_master_in_r_ready),
    .done  (AESL_axi_master_in_r_done)
);
assign    AESL_axi_master_in_r_ready    =   ready;
assign    AESL_axi_master_in_r_done    =   AESL_done_delay;

AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_interrupt (control_INTERRUPT),
    .TRAN_control_write_data_finish(control_write_data_finish),
    .TRAN_control_ready_out (AESL_ready),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_out (AESL_slave_output_done),
    .TRAN_control_idle_out (AESL_idle),
    .TRAN_control_write_start_in     (AESL_slave_write_start_in),
    .TRAN_control_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_in_r;
reg [31:0] size_in_r;
reg [31:0] size_in_r_backup;
reg end_data_out;
reg [31:0] size_data_out;
reg [31:0] size_data_out_backup;
reg end_data_in;
reg [31:0] size_data_in;
reg [31:0] size_data_in_backup;
reg end_out_r;
reg [31:0] size_out_r;
reg [31:0] size_out_r_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    # 0.1;
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    # 0.1;
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_out_r;

initial begin : dump_tvout_runtime_sign_out_r
    integer fp;
    dump_tvout_finish_out_r = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_r_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_r_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_out_r = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
