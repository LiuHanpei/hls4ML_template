#include "utils.h"


void load_data (
		fp16 data_buf[DATA_SIZE],
		axi_datatype data_in[AXI_SIZE]
		)
{
	for(int i=0; i<AXI_SIZE; i++)
	{
		axi_datatype data = data_in[i];
		for(int ii=0; ii<BUS_WIDTH; ii++)
		{
			data_buf[i*BUS_WIDTH+ii].range(15,0) = data.range(0+(ii*16), 15+(ii*16));
		}
	}
}


void send_data (
		axi_datatype data_out[AXI_SIZE],
		fp16 data_buf[DATA_SIZE]
		)
{
	for(int i=0; i<AXI_SIZE; i++)
	{
		axi_datatype data = 0;
		for(int ii=0; ii<BUS_WIDTH; ii++)
		{
			data.range(0+(ii*16), 15+(ii*16)) = data_buf[i*BUS_WIDTH+ii].range(15,0);
		}
		data_out[i] = data;
	}
}

void data_process (
		fp16 data_buf[DATA_SIZE]
	)
{
	for(int i=0; i< DATA_SIZE; i++)
		data_buf[i] = data_buf[i] / 2;
}

