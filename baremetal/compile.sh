#!/bin/bash
riscv64-linux-gnu-as -march=rv32i -mabi=ilp32 -o hello_world.o -c hello_world.s
riscv64-linux-gnu-ld -T link.ld --no-dynamic-linker -m elf32lriscv -static -nostdlib -s -o hello.elf hello_world.o
