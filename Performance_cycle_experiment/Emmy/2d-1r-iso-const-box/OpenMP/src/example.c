#include <stdlib.h>
#include <math.h>

#include "timing.h"
#include "kerncraft.h"
#include "kernel.c"

#include "dim_input.h"

void* aligned_malloc(size_t, size_t);
int main(int argc, char **argv)
{

  int M = M_MAX;
  int N = N_MAX;
  int repeat = T_MAX;
  
  double *a = aligned_malloc((sizeof(double)) * (M * N), 32);
  #pragma omp parallel for schedule(static)
  for (int i = 0; i < (M * N); ++i)
    a[i] = rand() / ((double ) RAND_MAX);

  double *b = aligned_malloc((sizeof(double)) * (M * N), 32);
  #pragma omp parallel for schedule(static)
  for (int i = 0; i < (M * N); ++i)
    b[i] = rand() / ((double ) RAND_MAX);

  double c0;
  c0 = (rand() / ((double ) RAND_MAX)) / 5.0;
  double c1;
  c1 = (rand() / ((double ) RAND_MAX)) / 5.0;
  double c2;
  c2 = (rand() / ((double ) RAND_MAX)) / 5.0;

  double runtime = 0.0;
  double wct_start;
  double wct_end;
  double cput_start;
  double *tmp;
  double cput_end;

  timing(&wct_start, &cput_start);
  for (int n = 0; n < repeat; ++n)
  {
    kernel_loop(a, b, c0, c1, c2, M, N);
    tmp = a;
    a = b;
    b = tmp;
  }
  timing(&wct_end, &cput_end);
  runtime = wct_end - wct_start;

  printf("iterations: %d\n", repeat);
  printf("Total iterations: %lld LUP\n", ((long long ) repeat) * (((long long ) (M - 2)) * ((long long ) (N - 2))));
  printf("FLOP: 11\n");
  printf("Total work: %lld FLOP\n", (((long long ) repeat) * (((long long ) (M - 2)) * ((long long ) (N - 2)))) * 11);
  printf("performance: %lf GLUP/s\n", ((((double ) repeat) * (((double ) (M - 2)) * ((double ) (N - 2)))) / runtime) / 1000000000.);
  printf("Performance in GFLOP/s: %lf\n", (((((double ) repeat) * (((double ) (M - 2)) * ((double ) (N - 2)))) * 11) / runtime) / 1000000000.);
  printf("size: %d\n", (M * N));
  printf("time: %lf\n", runtime);

}
