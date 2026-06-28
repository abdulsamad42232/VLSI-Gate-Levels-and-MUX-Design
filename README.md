```markdown
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

```

---

## 💻 Part 1: Basic Logic Gates (Dataflow)

A single combinatorial module mapping concurrent logic operations for parallel execution. The automated testbench cycles through all possible input combinations to verify functionality.

### 🖥️ Console Output: Automated Truth Table

```text
=========================================================
Time	A B | AND	OR	XOR	NAND	NOR	XNOR
=========================================================
0ns	    0 0 |  0	0	0	1	1	1
10000ns	0 1 |  0	1	1	1	0	0
20000ns	1 0 |  0	1	1	1	0	0
30000ns	1 1 |  1	1	0	0	0	1
=========================================================
Basic Gates Simulation Complete.

```

### 📊 Waveform Verification

---

## 💻 Part 2: 2-to-1 Multiplexer Comparative Architectures

To demonstrate multi-level design abstraction, a 2:1 MUX was modeled in three distinct ways:

* **Gate-Level:** Modeled structural logic connections using primitive hardware instantiations.
* **Dataflow:** Modeled via continuous assignment with ternary conditional expressions.
* **Behavioral:** Modeled using algorithmic procedural logic blocks (`always @(*)`).

### 🖥️ Console Output: Equivalence Checking

The testbench instantiates all three MUX architectures simultaneously. The synchronized output below proves 100% functional equivalence across all abstraction levels:

```text
======================================================
Time	sel a b | Beh_Out  Data_Out  Gate_Out
======================================================
0ns	     0  0 0 |    0         0         0
10000ns	 0  0 1 |    0         0         0
20000ns	 0  1 0 |    1         1         1
30000ns	 0  1 1 |    1         1         1
40000ns	 1  0 0 |    0         0         0
50000ns	 1  0 1 |    1         1         1
60000ns	 1  1 0 |    0         0         0
70000ns	 1  1 1 |    1         1         1
======================================================
Multiplexer Equivalence Simulation Complete.

```

### 📊 Waveform Verification

Notice the perfect synchronization of the bottom three output signals, physically proving equivalence.

---

## 🛠️ Tools & Technologies Used

* **Hardware Description Language:** Verilog
* **Simulation Engine:** Mentor Graphics ModelSim
* **Development Environment:** Visual Studio Code
* **Methodology:** Hardware Functional Verification / Equivalence Checking

---

*Developed by Abdul Samad Khan*

```

***

### What was fixed:
1. **Restored the triple backticks (` 
http://googleusercontent.com/immersive_entry_chip/0

```
