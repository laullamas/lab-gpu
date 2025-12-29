#!/bin/bash
#
# ================================================================= 
# Laboratorio 6: GPUs con Python
# 3.3. Cálculo de π con Monte Carlo en GPU
# =================================================================
#
#SBATCH -p bohr-gpu
#SBATCH --chdir=/home/alumno09/lab-gpu
#SBATCH -J pi_gpu
#SBATCH --output=pi_gpu-%j.out

# Cargar módulo
module load anaconda/2025.06

# Leer parámetro N (número de elementos)
N=$1

echo "========================================"
echo "Ejecutando pi-gpu-alumno09.ipynb"
echo "N=$N"
echo "========================================"

# Ejecutar notebook
ipython pi-gpu-alumno09.ipynb $N

# Limpiar entorno
module unload anaconda/2025.06
