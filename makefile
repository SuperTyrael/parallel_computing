#
# Simple makefile for coursework 3.
# Should work on both cloud-hpc1.leeds.ac.uk and also on a Mac.
#
EXE = cwk3
OS = $(shell uname)

ifeq ($(OS), Linux)
	CC = nvcc -lOpenCL
endif

ifeq ($(OS), Darwin)
	MSG = Mac uses clang with deprecation warnings silenced. May need to change compiler and options depending on your set-up.
	CC = clang -framework OpenCL -DCL_SILENCE_DEPRECATION
endif

all:
	@echo "$(MSG)"
	@echo
	$(CC) -o $(EXE) cwk3.c



