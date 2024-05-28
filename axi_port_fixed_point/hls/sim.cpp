#include <iomanip>
#include "utils.h"
using namespace std;


fp16 data_in[DATA_SIZE];
fp16 data_out[DATA_SIZE];
axi_datatype data_bus_in[AXI_SIZE];
axi_datatype data_bus_out[AXI_SIZE];

fp16 step = 0.1;
fp16 counter = 0;

int main()
{
	//initialize input for testing
	for(int i=0; i<DATA_SIZE; i++)
	{
		data_in[i] = counter;
		counter += step;
	}

	//pack the data into axi
	for (int i=0; i<AXI_SIZE; i++)
	{
		axi_datatype data1 = 0;
		for (int ii=0; ii<BUS_WIDTH; ii++)
			data1.range(0+(ii*16), 15+((ii*16))) = data_in[i*BUS_WIDTH+ii].range(15,0);
		data_bus_in[i] = data1;
	}

	mem_streaming(
			data_bus_out,
			data_bus_in
			);

	//unpack the data from axi
	for (int i=0; i<AXI_SIZE; i++)
	{
		axi_datatype data2 = data_bus_out[i];
		for (int ii=0; ii< BUS_WIDTH; ii++)
			data_out[i*BUS_WIDTH+ii].range(15,0) = data2.range(0+(ii*16), 15+((ii*16)));
	}

	//result verification
	for(int i=0; i<DATA_SIZE; i++)
		std::cout << "result_verify: data_out[" << i <<"]:" << data_out[i] << std::endl;

}
