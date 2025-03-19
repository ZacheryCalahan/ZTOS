# Zac's Toy OS (ZTOS)

This project is my implementation of a toy OS, written for x86 (and later x86_64) CPUs. Later in development I may also include other architectures, primarily RISC-V.

# Current Features

# What's to Implement?
- [ ] System Calls
- [ ] Userland
- [ ] Multithreding
- [ ] Scheduler

# Build
Building this requires a very specific toolchain targeting x86_64 in the /var/opt/cross folder. This can be edited to your own location in the makefile. 

## Prerequisites
- Build binutils version `2.44`.
- Build gcc version `12.2.0`.

## Make
- Run `make build` to build, or `make run` to run in qemu.