#!/bin/bash

CLOCK=150
MEM=1000

CLOCK=150
MEM=500

FAN0=95
FAN1=95
FAN2=95


nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=${FAN0} \
                -a [gpu:1]/GPUFanControlState=1 -a [fan:1]/GPUTargetFanSpeed=${FAN1} \
                -a [gpu:2]/GPUFanControlState=1 -a [fan:2]/GPUTargetFanSpeed=${FAN2} \
		-a [gpu:0]/GPUPowerMizerMode=1 -a [gpu:1]/GPUPowerMizerMode=1 -a [gpu:2]/GPUPowerMizerMode=1 \
		-a [gpu:0]/GPUMemoryTransferRateOffset[3]=${MEM} -a [gpu:0]/GPUGraphicsClockOffset[3]=${CLOCK} \
		-a [gpu:1]/GPUMemoryTransferRateOffset[3]=${MEM} -a [gpu:1]/GPUGraphicsClockOffset[3]=${CLOCK} \
		-a [gpu:2]/GPUMemoryTransferRateOffset[3]=${MEM} -a [gpu:2]/GPUGraphicsClockOffset[3]=${CLOCK} 
