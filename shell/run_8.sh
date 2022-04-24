#!/usr/bin/bash
#SBATCH -n 8

module add mpi/openmpi3-x86_64

(mpiexec -n 8 cwk2 2048) >> results/result_8_1.txt
(mpiexec -n 8 cwk2 2048) >> results/result_8_2.txt
(mpiexec -n 8 cwk2 2048) >> results/result_8_3.txt