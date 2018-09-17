#include <stdlib.h>
#include <math.h>

#include "timing.h"
#include "kerncraft.h"
#include "kernel.c"
#ifdef LIKWID_PERFMON
#include <likwid.h>
#endif
#include "dim_input.h"

void* aligned_malloc(size_t, size_t);
extern int var_false;
void dummy(double *);
extern void kernel_loop(double *a, double *b, double *W, int N, int M);
int main(int argc, char **argv)
{
  
  #ifdef LIKWID_PERFMON
  LIKWID_MARKER_INIT;
  #pragma omp parallel
  {
    LIKWID_MARKER_REGISTER("Sweep");
  }
  #endif

  int M = M_MAX;
  int N = N_MAX;
  double *a = aligned_malloc((sizeof(double)) * (M * N), 32);
  #pragma omp parallel for schedule(runtime)
  for (int i = 0; i < (M * N); ++i)
    a[i] = rand() / ((double ) RAND_MAX);

  double *b = aligned_malloc((sizeof(double)) * (M * N), 32);
  #pragma omp parallel for schedule(runtime)
  for (int i = 0; i < (M * N); ++i)
    b[i] = rand() / ((double ) RAND_MAX);

  double *W = aligned_malloc((sizeof(double)) * ((M * N) * 49), 32);
  #pragma omp parallel for schedule(runtime)
  for (int i = 0; i < ((M * N) * 49); ++i)
    W[i] = (rand() / ((double ) RAND_MAX)) / 51.0;

  int repeat = 1;
  double runtime = 0.0;
  double wct_start;
  double wct_end;
  double cput_start;
  double *tmp;
  double cput_end;
  while ((runtime < 2.0) || (repeat <= 2))
  {
    timing(&wct_start, &cput_start);
    for (int n = 0; n < repeat; ++n)
    {
      kernel_loop(a, b, W, M, N);
      tmp = a;
      a = b;
      b = tmp;
    }

    timing(&wct_end, &cput_end);
    runtime = wct_end - wct_start;
    repeat *= 2;
  }

  repeat /= 2;
  
  #ifdef LIKWID_PERFMON
  #pragma omp parallel
  {
    LIKWID_MARKER_START("Sweep");
  }
  #endif

  for (int n = 0; n < repeat; ++n)
  {
    kernel_loop(a, b, W, M, N);
    tmp = a;
    a = b;
    b = tmp;
  }

  
  #ifdef LIKWID_PERFMON
  #pragma omp parallel
  {
    LIKWID_MARKER_STOP("Sweep");
  }
  #endif

  printf("iterations: %d\n", repeat);
  printf("Total iterations: %lld LUP\n", ((long long ) repeat) * (((long long ) (M - 6)) * ((long long ) (N - 6))));
  printf("FLOP: 97\n");
  printf("Total work: %lld FLOP\n", (((long long ) repeat) * (((long long ) (M - 6)) * ((long long ) (N - 6)))) * 97);
  printf("performance: %lf GLUP/s\n", ((((double ) repeat) * (((double ) (M - 6)) * ((double ) (N - 6)))) / runtime) / 1000000000.);
  printf("Performance in GFLOP/s: %lf\n", (((((double ) repeat) * (((double ) (M - 6)) * ((double ) (N - 6)))) * 97) / runtime) / 1000000000.);
  printf("size: %d\n", (M * N));
  printf("time: %lf\n", runtime);
  double total = 0.0;
  for (int j = 3; j < (M - 3); j++)
  {
    for (int i = 3; i < (N - 3); i++)
    {
      total = total + (a[i + (j * N)] - b[i + (j * N)]);
    }

  }

  printf("diff(a-b): %lf\n", total);
  
  #ifdef LIKWID_PERFMON
  LIKWID_MARKER_CLOSE;
  #endif

}