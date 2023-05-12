#!/bin/bash
#SBATCH -A m499
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 0:05:00
#SBATCH -n 4
#SBATCH --ntasks-per-node=4
#SBATCH -c 32
#SBATCH --gpus-per-task=1
#SBATCH --gpu-bind=single:1
#SBATCH --job-name=test

module load PrgEnv-gnu
module load arm-forge

ddt --offline -o offline.html -trace-at=sub,i,a\(1\) -break-at=offline.f:23,5:3:2 srun -n 4 ./offline

