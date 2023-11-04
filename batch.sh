#!/bin/bash -l
#SBATCH --job-name=imageomp
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --output imageomp-job_%j.out
#SBATCH --error imageomp-job_%j.err
#SBATCH --partition=standard

# Bind your OpenMP threads
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# Start my application
srun imageomp
./imageomp pic1.jpg edge
