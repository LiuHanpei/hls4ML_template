// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.1 (64-bit)
// Tool Version Limit: 2023.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMEM_STREAMING_H
#define XMEM_STREAMING_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmem_streaming_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XMem_streaming_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMem_streaming;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMem_streaming_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMem_streaming_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMem_streaming_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMem_streaming_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XMem_streaming_Initialize(XMem_streaming *InstancePtr, UINTPTR BaseAddress);
XMem_streaming_Config* XMem_streaming_LookupConfig(UINTPTR BaseAddress);
#else
int XMem_streaming_Initialize(XMem_streaming *InstancePtr, u16 DeviceId);
XMem_streaming_Config* XMem_streaming_LookupConfig(u16 DeviceId);
#endif
int XMem_streaming_CfgInitialize(XMem_streaming *InstancePtr, XMem_streaming_Config *ConfigPtr);
#else
int XMem_streaming_Initialize(XMem_streaming *InstancePtr, const char* InstanceName);
int XMem_streaming_Release(XMem_streaming *InstancePtr);
#endif

void XMem_streaming_Start(XMem_streaming *InstancePtr);
u32 XMem_streaming_IsDone(XMem_streaming *InstancePtr);
u32 XMem_streaming_IsIdle(XMem_streaming *InstancePtr);
u32 XMem_streaming_IsReady(XMem_streaming *InstancePtr);
void XMem_streaming_EnableAutoRestart(XMem_streaming *InstancePtr);
void XMem_streaming_DisableAutoRestart(XMem_streaming *InstancePtr);

void XMem_streaming_Set_data_out(XMem_streaming *InstancePtr, u64 Data);
u64 XMem_streaming_Get_data_out(XMem_streaming *InstancePtr);
void XMem_streaming_Set_data_in(XMem_streaming *InstancePtr, u64 Data);
u64 XMem_streaming_Get_data_in(XMem_streaming *InstancePtr);

void XMem_streaming_InterruptGlobalEnable(XMem_streaming *InstancePtr);
void XMem_streaming_InterruptGlobalDisable(XMem_streaming *InstancePtr);
void XMem_streaming_InterruptEnable(XMem_streaming *InstancePtr, u32 Mask);
void XMem_streaming_InterruptDisable(XMem_streaming *InstancePtr, u32 Mask);
void XMem_streaming_InterruptClear(XMem_streaming *InstancePtr, u32 Mask);
u32 XMem_streaming_InterruptGetEnabled(XMem_streaming *InstancePtr);
u32 XMem_streaming_InterruptGetStatus(XMem_streaming *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
