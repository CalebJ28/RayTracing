// kernel.cu
#include <cuda_runtime.h>
#include <stdint.h> // For uint32_t

__global__ void renderKernel(uint32_t* imageData, int width, int height, uint32_t color)
{
    int x = blockIdx.x * blockDim.x + threadIdx.x;
    int y = blockIdx.y * blockDim.y + threadIdx.y;

    if (x < width && y < height)
    {
        int index = y * width + x;
        imageData[index] = color;
    }
}
