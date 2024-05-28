// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.1 (64-bit)
// Tool Version Limit: 2023.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xmem_streaming.h"

extern XMem_streaming_Config XMem_streaming_ConfigTable[];

#ifdef SDT
XMem_streaming_Config *XMem_streaming_LookupConfig(UINTPTR BaseAddress) {
	XMem_streaming_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMem_streaming_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMem_streaming_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMem_streaming_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMem_streaming_Initialize(XMem_streaming *InstancePtr, UINTPTR BaseAddress) {
	XMem_streaming_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMem_streaming_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMem_streaming_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMem_streaming_Config *XMem_streaming_LookupConfig(u16 DeviceId) {
	XMem_streaming_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMEM_STREAMING_NUM_INSTANCES; Index++) {
		if (XMem_streaming_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMem_streaming_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMem_streaming_Initialize(XMem_streaming *InstancePtr, u16 DeviceId) {
	XMem_streaming_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMem_streaming_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMem_streaming_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

