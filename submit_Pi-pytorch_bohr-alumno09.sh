#!/bin/bash
#
# ================================================================= 
# Laboratorio 6: GPUs con Python
# 3.4. Actividad extra: Cálculo de π con Pytorch
# =================================================================
#
#SBATCH -p bohr-gpu
#SBATCH --chdir=/home/alumno09/lab-gpu
#SBATCH -J pi_pytorch
#SBATCH --output=pi_pytorch-%j.out

# Cargar módulo
module load anaconda/2025.06

echo "========================================"
echo "Ejecutando pi-gpu-pytorch-alumno09.ipynb"
echo "========================================"

# Ejecutar notebook
ipython pi-gpu-pytorch-alumno09.ipynb

# Limpiar entorno
module unload anaconda/2025.06
