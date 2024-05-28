#include "utils.h"


void mem_streaming (
		axi_datatype data_out[AXI_SIZE],
		axi_datatype data_in[AXI_SIZE]
	)
{
#pragma HLS interface m_axi port=data_in  offset=slave bundle=in
#pragma HLS interface m_axi port=data_out offset=slave bundle=out
#pragma HLS INTERFACE s_axilite register  port=return

	fp16 data_buf[DATA_SIZE];

	load_data (
		data_buf,
		data_in
		);

	data_process (
		data_buf
	);

	send_data (
		data_out,
		data_buf
	);
}
