# ELISA Analysis: Introductory Standard Curve Modeling & Quantification

This repository provides a complete, reproducible methodology for **synthetic** ELISA (enzyme-linked immunosorbent assay) data analysis. It demonstrates how to do the following:

- Load ELISA standard curve data
- Fit a nonlinear regression model
- Generate a standard curve
- Estimate concentrations from corresponding absorbance values
- Organize scientific code and documentation

---

## Repository Structure

ELISA-Analysis/

- data/ : synthetic_elisa_data.csv           # Synthetic ELISA standard curve data
- code/ : elisa_analysis.R                   # R script for curve fitting and plotting
- figures/ : standard_curve_example.png      # Generated standard curve figure
- notes/ : elisa_protocol.md                 # Simplified ELISA protocol
- README.md :                                # Project overview and instructions

---

## Methodology

### 1. Data Source
All data in this repository was generated to mimic a typical ELISA standard curve. No proprietary or laboratory data is included.

### 2. Standard Curve Modeling
The analysis uses a **nonlinear regression model** commonly applied to ELISA data, either a 4‑parameter logistic (4PL) model or Michaelis–Menten‑style saturation curve depending on the script you choose.

### 3. Analysis Steps
1. Import synthetic CSV data  
2. Fit nonlinear model to standard curve  
3. Plot absorbance vs. concentration  
4. Overlay fitted curve  
5. Estimate unknown sample concentrations (optional)

### 4. Software
- R (DESeq2 not required; base R + nls is enough)  
- Python (pandas, scipy, matplotlib)  

---

## How to Run the Analysis
1. Open `code/elisa_analysis.R`  
2. Run the script  
3. A figure will be saved to `figures/standard_curve_example.png`
