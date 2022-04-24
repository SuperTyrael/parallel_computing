Complete the table below with your results, and then provide your interpretation at the end.

Note that:

- When calculating the parallel speed-up S, use the time output by the code, which corresponds
  to the parallel calculation and does not include initialising the matrix/vectors or
  performing the serial check.

- Take as the serial execution time the time output by the code when run with a single process
  (hence the speed-up for 1 process should be 1.0).


No. Process:    Mean time (average of 3 runs):    Parallel speed-up, S:    Efficiency, E(%)
============    ==============================    =====================    ================
1                          0.145081                     0.145081                  100%
2                     0.036265266666666664              0.145081                  400%
4                                      No enough slots avaliable on HPC LEEDS
8                         0.026214975                   0.145081                  553%

Interpretation:
Obivously, the parallel methods hugely boost up the running speed of our programme, two processes parallel can brings over 400% efficiency increse, the performance increase exponentially with the growth of the number of parallel processes. However, as the number of processes increases, the improvement of performance shrinks. This phenomenon is mentioned in Lecture 4 that the parallel overheads adversly affect the performance due to the growing burden on communication. 