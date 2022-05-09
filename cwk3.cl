// Kernel for the heat equation.
__kernel
void heatmap(__global float *deviceGrid, __global float *newGrid){
    int i = get_global_id(0);
    int j = get_global_id(1);
    int N = get_global_size(0);
    if (i==0 || j==0 || i==N-1 || j==N-1)
        newGrid[i*N+j] = 0.0;
    else
        newGrid[i*N+j] = 0.25*(deviceGrid[i*N+(j-1)] + deviceGrid[i*N+(j+1)]+deviceGrid[(i+1)*N+j] + deviceGrid[(i-1)*N+j]);
}