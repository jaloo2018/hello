#!/bin/bash

# cpp: Stop after the preprocessing stage
gcc -v -E -o hello.i hello.c

# cc1: Stop after the stage of compilation proper
gcc -v -S -o hello.s hello.i

# as: Compile or assemble the source files, but do not link.
gcc -v -c -o hello.o hello.s

# ld:
gcc -v -o hello hello.o
