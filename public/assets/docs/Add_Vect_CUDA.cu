%%cu
#include <cuda.h>
#include <device_launch_parameters.h>
#include <cuda_device_runtime_api.h>
#include <cuda_runtime_api.h>
#include <stdio.h>
#include<stdlib.h>

//using namespace std;

__global__ void add(int *a, int *b, int *c) 
{   
    c[blockIdx.x] = a[blockIdx.x] + b[blockIdx.x];  
 } 

void charger(int* a, int N)
{
   int i;
   for (i = 0; i < N; ++i)
    a[i] = i;
    }

#define N 12  
int main(void) 
{   
    int *a, *b, *c;  // host (CPU) copies of a, b, c   
    int *d_a, *d_b, *d_c;  // device (GPU) copies of a, b, c   
    int size = N * sizeof(int);      
 
    // Alloc space for device copies of a, b, c   
    cudaMalloc((void **)&d_a, size);   
    cudaMalloc((void **)&d_b, size);   
    cudaMalloc((void **)&d_c, size);    
 
    // Alloc space for host copies of a, b, c and setup input values   
    a = (int *)malloc(size); 
    charger(a, N);   
    b = (int *)malloc(size); 
    charger(b, N);   
    c = (int *)malloc(size);  
 
    // Copy inputs to device   
    cudaMemcpy(d_a, a, size, cudaMemcpyHostToDevice);   
    cudaMemcpy(d_b, b, size, cudaMemcpyHostToDevice);    
 
    // Launch add() kernel on GPU with N blocks   
    add<<<N,1>>>(d_a, d_b, d_c);    
    
    // Copy result back to host   
    cudaMemcpy(c, d_c, size, cudaMemcpyDeviceToHost);   
    printf("Le vecteur C = A + B :\n") ;
    for (int i=0;i<N;i++)
      printf("%d |", c[i]);
    // Cleanup   
    free(a); 
    free(b); 
    free(c);   
    cudaFree(d_a); 
    cudaFree(d_b); 
    cudaFree(d_c);   
 return 0;  
} 