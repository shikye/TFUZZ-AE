# TurboFuzz Artifact (HPCA 2026 AE)

This repository contains the artifact accompanying our HPCA 2026 paper:

> **TurboFuzz: FPGA Accelerated Hardware Fuzzing for Processor Agile Verification**  
> Submission ID: **#2090**

The artifact includes:

- The RTL and FPGA project of **TurboFuzz**, an FPGA-accelerated hardware fuzzer with online checking.
- Host-side utilities for instrumentation, workload generation, memory image construction, and experiment orchestration.
- Pre-computed datasets and scripts for regenerating **scaled-down versions** of all key figures (Figures 6–11) and tables.

The artifact enables reviewers to:

1. Inspect TurboFuzz’s microarchitecture and its integration with the Rocket RISC-V core.
2. Run a short, self-contained fuzzing experiment.
3. Re-generate all plots directly from the provided txt datasets (no FPGA required).

> **Note:** To maintain reasonable AE runtimes, the provided datasets are scaled-down versions of the full results. Relative trends match the paper even if absolute values differ.

---

## 1. Repository Layout

```
.
├── README.md
├── LICENSE
├── fpga/
├── software/
├── data/
└── experiments/
```

---

### **fpga/**
FPGA design artifacts for the TurboFuzz SoC prototype.

- `bitstreams/`  
  Pre-built bitstreams used for HPCA AE.

- `project/`  
  Compressed Vivado project archive (e.g., `turbofuzz_vivado.tar.gz`) for reviewers who wish to inspect or rebuild the FPGA design.  
  (Using the pre-built bitstream is sufficient for AE.)

---

### **software/**
Host-side utilities used for instrumentation, workload generation, and preparing inputs for simulation.

The directory is organized into several modules:

- `instrumentation/`  
  FIRRTL-based instrumentation pass that inserts TurboFuzz coverage hooks into the DUT (Rocket).

- `workload_gen/`  
  Workload generation utilities for creating runnable test programs.

  In addition, workload_gen provides a one-command flow to generate SimPoint-style sliced workloads via make.
  This pipeline automatically performs:

  Build the benchmark (compile the original benchmark).

  Extract basic block information from the benchmark.

  Run profile extraction and clustering (SimPoint-style) to select representative slices.

  Hack/transform the original benchmark to integrate the sampled slices back into the benchmark source/build.

  Rebuild the benchmark and export the final runnable workload to the on_board/ directory.

  (The generated artifacts under on_board/ can be directly used for on-board/FPGA runs, depending on the rest of the flow.)

- `workload_prefix/`  
  Prefix-based workload builder for constructing program fragments or instruction prefixes.

- `mem_builder/`  
  Converts processed logs into memory images (`.mem` or binary) for simulation or FPGA runs.

- `simpoint_tools/`  
  Utilities for constructing SimPoint-based benchmark slices.  
  Depends on `workload_gen/`.

---

### **data/**
All pre-computed data used to reproduce the plots in the paper.  
Each figure has a dedicated subdirectory:

- `fig6_inst_cov/` – instruction-level coverage (Fig. 6)  
- `fig7_cov_instr/` – instrumentation comparison (Fig. 7)  
- `fig8_prevalence/` – instruction prevalence (Fig. 8)  
- `fig9_corpus/` – corpus evolution (Fig. 9)  
- `fig10_deepexplore/` – TurboFuzz + DeepExplore (Fig. 10)  
- `fig11_overall/` – overall coverage vs. time (Fig. 11)

Some subdirectories contain multiple files (e.g., `cov_data_difuzz_*.txt`, `cov_data_hwfuzz_*.txt`) representing different techniques.

Scripts in `experiments/` load data directly from these subdirectories.

Full raw logs (hundreds of MB per file) are provided only in the artifact archive and are not tracked in the public GitHub mirror to avoid exceeding GitHub's file size limits.

```bash
python3 manage_large_files.py restore
```


---

### **experiments/**
Scripts to reproduce the figures from the paper.

Each figure is implemented as a standalone Python script:

- `fig6_inst_cov/run.py`
- `fig7_cov_instr/run.py`
- `fig8_prevalence/run.py`
- `fig9_corpus/run.py`
- `fig10_deepexplore/run.py`
- `fig11_overall/run.py`

**Usage example (for Fig. 8):**

```bash
cd experiments/fig8_prevalence
python3 run.py
```

Each script:

1. Reads its corresponding data from `../../data/figX_xxx/`
2. Reconstructs the scaled-down figure from the paper  
3. Writes PNG/PDF output to the current directory (or a `results/` subdirectory)

All scripts rely only on `matplotlib` and `pandas`.  
**No LaTeX installation is required.**

---

## 2. System Requirements

### **Hardware**
Host machine (Linux):

- ≥ 4 CPU cores  
- ≥ 16 GB RAM  
- ≥ 50 GB disk space (including FPGA tools)

FPGA board (optional):

- AMD Zynq UltraScale+ XCZU19EG (32 GB DDR4), or a compatible US+ board

> FPGA hardware is **not required** for re-running the software-only flow (plot reproduction).

---

### **Software**
Tested on:

- Ubuntu 20.04+
- GCC / G++ ≥ 9
- git, make, cmake
- Python ≥ 3.8 with:
  - numpy  
  - pandas  
  - matplotlib
- Vivado 2020.2 (optional; only needed for bitstream rebuild)

---

## (Optional) 3. One-Command Plot Reproduction

If the reviewer wants a single command that regenerates all plots:

If you clone from github, you need git lfs and please run follow command first:
```bash
python3 manage_large_files.py restore
```

and then commom commands:

```bash
for d in experiments/*; do
    if [ -f "$d/run.py" ]; then
        (cd "$d" && python3 run.py)
    fi
done
```
(You may include this as `experiments/run_all.sh` if desired.)

After running run.py, each figure will be generated under the corresponding experiments/<exp_name>/ directory (i.e., the same directory where run.py is located).

and if you want to regenerate the workload flow:
```bash
cd software/simpoint_tools
make
```



