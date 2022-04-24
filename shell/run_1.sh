#!/usr/bin/bash
#SBATCH -n 1

module add mpi/openmpi3-x86_64

(mpiexec -n 1 cwk2 2048) >> results/result_1_1.txt
(mpiexec -n 1 cwk2 2048) >> results/result_1_2.txt
(mpiexec -n 1 cwk2 2048) >> results/result_1_3.txt