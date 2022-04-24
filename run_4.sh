#!/usr/bin/bash
#SBATCH -n 4

module add mpi/openmpi3-x86_64
(mpiexec -n 4 cwk2 2048) >> results/result_4.txt
(mpiexec -n 4 cwk2 2048) >> results/result_4.txt
(mpiexec -n 4 cwk2 2048) >> results/result_4.txt
(mpiexec -n 4 cwk2 2048) >> results/result_4.txt