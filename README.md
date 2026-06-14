# Parameterized 8-Bit ALU with Isolated Status Register

## Overview
This repository contains the RTL design and verification of a fully parameterized Arithmetic Logic Unit (ALU) written in Verilog. Designed with a focus on hardware safety, this core isolates Status Flags (Zero, Carry, Overflow) to prevent unwanted memory latches during synthesis.

## Key Architecture Features
* **Parameterized Width:** Easily scalable by changing a single parameter.
* **Continuous Flag Assignment:** Status flags are routed outside the main procedural block using ternary operators, ensuring clean combinational logic.
* **Physical Implementation:** Successfully synthesized and implemented on Xilinx Artix-7 FPGA architecture.

## Performance Metrics
* **Max Propagation Delay:** 11.502 ns (Logic: 39.6% | Route: 60.4%)
* **Theoretical Fmax:** 86.94 MHz 
* **Throughput:** ~86.9 million operations per second

## RTL Schematic
*(Check the uploaded images for the Elaborated Design schematic from Vivado)*

## Verification
The design was extensively verified using a custom Verilog testbench in Vivado. The stimulus block intentionally injects edge-case signed arithmetic to prove the physical triggering of the Overflow (V) and Carry (C) flags. 
*(Check the uploaded images for the behavioral simulation waveform)*
