# TurboFuzz Software Components

This directory contains the host-side software used in the TurboFuzz workflow.  
Each submodule provides one stage of the pipeline: instrumentation, workload generation, memory image construction, or SimPoint benchmark preparation.

## Directory Overview

### `instrumentation/`
FIRRTL-based instrumentation pass that inserts TurboFuzz coverage counters and event hooks into the Rocket DUT.  
Typically invoked automatically during the build process.

### `workload_gen/`
General-purpose workload builder (based on `nexus-am`).  
Used to construct the programs that TurboFuzz executes on the DUT.

### `workload_prefix/`
Prefix-based workload constructor.  
Generates instruction prefixes or program fragments used in guided workload generation.

### `mem_builder/`
Log-to-memory conversion utilities.  
Transforms processed execution logs into memory images (`.mem`, `.bin`) suitable for simulation and FPGA execution.

### `simpoint_tools/`
Tools for building SimPoint benchmark slices.  
Uses `workload_gen` to generate runnable programs matching SimPoint-selected regions.

