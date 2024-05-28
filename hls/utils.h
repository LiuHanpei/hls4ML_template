#include "mem_streaming.h"



void load_data (
		fp16 data_buf[DATA_SIZE],
		axi_datatype data_in[AXI_SIZE]
		);


void send_data (
		axi_datatype data_out[AXI_SIZE],
		fp16 data_buf[DATA_SIZE]
		);


void mem_streaming (
		axi_datatype data_out[AXI_SIZE],
		axi_datatype data_in[AXI_SIZE]
	);

void data_process (
		fp16 data_buf[DATA_SIZE]
	);

