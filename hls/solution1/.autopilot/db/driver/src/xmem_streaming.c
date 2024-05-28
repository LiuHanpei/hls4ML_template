// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.1 (64-bit)
// Tool Version Limit: 2023.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmem_streaming.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMem_streaming_CfgInitialize(XMem_streaming *InstancePtr, XMem_streaming_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMem_streaming_Start(XMem_streaming *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMem_streaming_ReadReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMem_streaming_WriteReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMem_streaming_IsDone(XMem_streaming *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMem_streaming_ReadReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMem_streaming_IsIdle(XMem_streaming *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMem_streaming_ReadReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMem_streaming_IsReady(XMem_streaming *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMem_streaming_ReadReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMem_streaming_EnableAutoRestart(XMem_streaming *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMem_streaming_WriteReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMem_streaming_DisableAutoRestart(XMem_streaming *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMem_streaming_WriteReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_AP_CTRL, 0);
}

void XMem_streaming_Set_data_out(XMem_streaming *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMem_streaming_WriteReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_DATA_OUT_DATA, (u32)(Data));
    XMem_streaming_WriteReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_DATA_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XMem_streaming_Get_data_out(XMem_streaming *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMem_streaming_ReadReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_DATA_OUT_DATA);
    Data += (u64)XMem_streaming_ReadReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_DATA_OUT_DATA + 4) << 32;
    return Data;
}

void XMem_streaming_Set_data_in(XMem_streaming *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMem_streaming_WriteReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_DATA_IN_DATA, (u32)(Data));
    XMem_streaming_WriteReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_DATA_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XMem_streaming_Get_data_in(XMem_streaming *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMem_streaming_ReadReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_DATA_IN_DATA);
    Data += (u64)XMem_streaming_ReadReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_DATA_IN_DATA + 4) << 32;
    return Data;
}

void XMem_streaming_InterruptGlobalEnable(XMem_streaming *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMem_streaming_WriteReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_GIE, 1);
}

void XMem_streaming_InterruptGlobalDisable(XMem_streaming *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMem_streaming_WriteReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_GIE, 0);
}

void XMem_streaming_InterruptEnable(XMem_streaming *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMem_streaming_ReadReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_IER);
    XMem_streaming_WriteReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_IER, Register | Mask);
}

void XMem_streaming_InterruptDisable(XMem_streaming *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMem_streaming_ReadReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_IER);
    XMem_streaming_WriteReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMem_streaming_InterruptClear(XMem_streaming *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMem_streaming_WriteReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_ISR, Mask);
}

u32 XMem_streaming_InterruptGetEnabled(XMem_streaming *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMem_streaming_ReadReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_IER);
}

u32 XMem_streaming_InterruptGetStatus(XMem_streaming *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMem_streaming_ReadReg(InstancePtr->Control_BaseAddress, XMEM_STREAMING_CONTROL_ADDR_ISR);
}

