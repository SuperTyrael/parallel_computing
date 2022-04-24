#!/usr/bin/bash
#SBATCH -n 2

module add mpi/openmpi3-x86_64

(mpiexec -n 2 cwk2 2048) >> results/result_2.txt
(mpiexec -n 2 cwk2 2048) >> results/result_2.txt
(mpiexec -n 2 cwk2 2048) >> results/result_2.txt
(mpiexec -n 2 cwk2 2048) >> results/result_2.txt