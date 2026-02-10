# KANELÉ: Kolmogorov–Arnold Networks for Efficient LUT-based Evaluation


Published in 34th ACM/SIGDA International Symposium on Field-Programmable Gate Arrays (FPGA' 2026) - Best Paper Nominee

Authors: Duc Hoang*, Aarush Gupta*, Philip Harris. MIT. *Equal Contributions. 

[![PDF (Publisher)](https://img.shields.io/badge/PDF-Publisher-blue)](https://dl.acm.org/doi/10.1145/3748173.3779202)
[![PDF (arXiv)](https://img.shields.io/badge/PDF-arXiv-b31b1b)](https://arxiv.org/abs/2512.12850)


<p align="center">
   <img src="graphics/KANELE_logo.png" alt="KANELÉ" width="250"/>
</p>

![KAN Teaser](graphics/KAN_Teaser.jpg)


## Usage Guide

### 1. (Optional) Activate the Environment

We provided the environment in the `environment.yml` file, see [Conda](#Conda) section for setting up. To activate the environment:
   
```bash
conda activate kanele
```

### 2. Train the model on a benchmark

```bash
cd benchmarks/<bench-mark-name>
```

There will be different versions of the training script in each directory, namely `train_float.py`, `train_quant.py` etc. To reproduce the results reported in the paper, you can run

```bash
python train_quant.py
```

Where benchmark names could be `JSC_CERNBox`, or `MNIST`. This will generate the trained model saved in `benchmarks/<bench-mark-name>/models` 

### 3. Convert the trained model to FPGA hardware

In the same benchmark directory:

```bash
python convert.py
```

Each of the convert file will have a `model_tag` parameter, if you do train a new model you have to modify it. Otherwise we provide the trained models as a baseline. 

### 4. Xsim

To run xsim with the generated RTL

```bash
cd models/<model-tag>/firmware/sim
```

To check for correctness:

```bash
vivado -mode batch -source sim.tcl
```

To measure latency:

```latency
vivado -mode batch -source sim_latency.tcl
```

### 5. Building bitfile or place and route in OOC (out-of-context) mode:

To build the bit-file, or compile the project out of context

```bash
cd models/<model-tag>/firmware/
```

```bash
vivado -mode batch -source vivado/build_full.tcl
```

or
```bash
vivado -mode batch -source vivado/build_ooc.tcl
```

## Related FPGA benchmarks information
* Xilinx Virtex UltraScale+ FPGA: `xcvu9p-flgb2104-2-i` 
* Zynq UltraScale+ MPSoC: `xczu7ev-ffvc1156-2-e`
* Vivado version: `2024.1`

## Conda 

Create conda environment:

```
conda env create -f environment.yml
```

Activate the environment:

```
conda activate kanele
```

And then do whatever you want in this environment (edit files, open notebooks, etc.). To deactivate the environment:

```
conda deactivate
```

If you make any update for the environment, please edit the `environment.yml` file and run:

```
conda env update --file environment.yml  --prune
```

Reference on conda environment here: https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html
**Pytorch Note:** Some people have encountered issue with Pytorch package installation within the environment, it's typically solved by installing Pytorch with the appropriate environment here: https://pytorch.org/

# Citation

If you find the work useful to your research, you can cite us here: 

```
@inproceedings{Hoang:2025sdb,
    author = "Hoang, Duc and Gupta, Aarush and Harris, Philip",
    title = "{KANEL{\'E}: Kolmogorov-Arnold Networks for Efficient LUT-based Evaluation}",
    eprint = "2512.12850",
    archivePrefix = "arXiv",
    primaryClass = "cs.AR",
    doi = "10.1145/3748173.3779202",
    month = "12",
    year = "2025"
}
```
