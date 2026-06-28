# Multi-Level Abstraction Modeling and Equivalence Checking in Verilog

[![Hardware: Verilog](https://img.shields.io/badge/Hardware-Verilog-blue.svg)](#)
[![Simulation: ModelSim](https://img.shields.io/badge/Simulation-ModelSim-green.svg)](#)

## 📌 Project Overview
This repository demonstrates professional VLSI design methodologies by implementing and verifying basic digital logic structures across three fundamental hardware description abstraction levels: **Gate-Level (Structural)**, **Dataflow**, and **Behavioral** modeling. 

The project proves functional equivalence across these architectures using automated testbenches and visual waveform verification.

### Key Objectives Achieved:
1. **Parallel Logic Execution:** Implementation of a comprehensive combinatorial unit containing fundamental logic gates (`AND`, `OR`, `XOR`, `NAND`, `NOR`, `XNOR`) using Dataflow modeling.
2. **Equivalence Checking:** Design and comparative analysis of a 2-to-1 Multiplexer (MUX) using three distinct architectural modeling styles to prove identical hardware behavior.
3. **Automated Verification:** Development of self-checking testbenches utilizing `$monitor` for real-time console truth-table generation.

---

## 📁 Repository Structure

```text
VLSI-Gate-Levels-and-MUX-Design/
├── rtl/                        # Synthesizable Verilog Source Code
│   ├── basic_gates.v           # Dataflow modeling of 6 logic gates
│   ├── mux_behavioral.v        # Procedural logic MUX (always block)
│   ├── mux_dataflow.v          # Continuous assignment MUX (assign)
│   └── mux_gate.v              # Structural primitives MUX (and, or, not)
├── tb/                         # Automated Verification Testbenches
│   ├── tb_basic_gates.v        
│   └── tb_mux.v                
└── docs/                       # Verification outputs and waveforms
    ├── basic_gates_wave.png
    └── mux_verification_wave.png
