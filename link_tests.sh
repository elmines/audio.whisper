#!/bin/bash

g++  ethan.cpp src/audio.whisper.so
LD_TRACE_LOADED_OBJECTS=1 /apps/compilers/gcc/12.2.0/lib/ld-linux-x86-64.so.2 src/audio.whisper.so 

