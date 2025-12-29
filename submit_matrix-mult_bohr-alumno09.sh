#!/bin/bash
#
# ================================================================= 
# Laboratorio 6: GPUs con Python
# 3.4. Actividad extra: Multiplicación de matrices con Pytorch
# =================================================================
#
#SBATCH -p bohr-gpu
#SBATCH --chdir=/home/alumno09/lab-gpu
#SBATCH -J matrix-mult_pytorch
#SBATCH --output=matrix-mult_pytorch-%j.out

# Cargar módulo
module load anaconda/2025.06

echo "========================================"
echo "Ejecutando matrix-mult-alumno09.ipynb"
echo "========================================"

# Ejecutar notebook
ipython matrix-mult-alumno09.ipynb

# Limpiar entorno
module unload anaconda/2025.06
