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
extern void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, double c4, double c5, double c6, double c7, double c8, double c9, double c10, double c11, double c12, double c13, int M, int P, int N);
int main(int argc, char **argv)
{
  
  #ifdef LIKWID_PERFMON
  LIKWID_MARKER_INIT;
  #pragma omp parallel
  {
    LIKWID_MARKER_REGISTER("Sweep");
  }
  #endif

  int N = N_MAX;
  int P = P_MAX;
  int M = M_MAX;
  double *a = aligned_malloc((sizeof(double)) * ((M * N) * P), 32);
  #pragma omp parallel for schedule(runtime)
  for (int i = 0; i < ((M * N) * P); ++i)
    a[i] = rand() / ((double ) RAND_MAX);

  double *b = aligned_malloc((sizeof(double)) * ((M * N) * P), 32);
  #pragma omp parallel for schedule(runtime)
  for (int i = 0; i < ((M * N) * P); ++i)
    b[i] = rand() / ((double ) RAND_MAX);

  double c0;
  c0 = (rand() / ((double ) RAND_MAX)) / 16.0;
  double c1;
  c1 = (rand() / ((double ) RAND_MAX)) / 16.0;
  double c2;
  c2 = (rand() / ((double ) RAND_MAX)) / 16.0;
  double c3;
  c3 = (rand() / ((double ) RAND_MAX)) / 16.0;
  double c4;
  c4 = (rand() / ((double ) RAND_MAX)) / 16.0;
  double c5;
  c5 = (rand() / ((double ) RAND_MAX)) / 16.0;
  double c6;
  c6 = (rand() / ((double ) RAND_MAX)) / 16.0;
  double c7;
  c7 = (rand() / ((double ) RAND_MAX)) / 16.0;
  double c8;
  c8 = (rand() / ((double ) RAND_MAX)) / 16.0;
  double c9;
  c9 = (rand() / ((double ) RAND_MAX)) / 16.0;
  double c10;
  c10 = (rand() / ((double ) RAND_MAX)) / 16.0;
  double c11;
  c11 = (rand() / ((double ) RAND_MAX)) / 16.0;
  double c12;
  c12 = (rand() / ((double ) RAND_MAX)) / 16.0;
  double c13;
  c13 = (rand() / ((double ) RAND_MAX)) / 16.0;
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
      kernel_loop(a, b, c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, M, N, P);
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
    kernel_loop(a, b, c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, M, N, P);
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
  printf("Total iterations: %lld LUP\n", ((long long ) repeat) * ((((long long ) (M - 2)) * ((long long ) (N - 2))) * ((long long ) (P - 2))));
  printf("FLOP: 40\n");
  printf("Total work: %lld FLOP\n", (((long long ) repeat) * ((((long long ) (M - 2)) * ((long long ) (N - 2))) * ((long long ) (P - 2)))) * 40);
  printf("performance: %lf GLUP/s\n", ((((double ) repeat) * ((((double ) (M - 2)) * ((double ) (N - 2))) * ((double ) (P - 2)))) / runtime) / 1000000000.);
  printf("Performance in GFLOP/s: %lf\n", (((((double ) repeat) * ((((double ) (M - 2)) * ((double ) (N - 2))) * ((double ) (P - 2)))) * 40) / runtime) / 1000000000.);
  printf("size: %d\n", (M * N * P));
  printf("time: %lf\n", runtime);
  double total = 0.0;
  for (int k = 1; k < (M - 1); k++)
  {
    for (int j = 1; j < (N - 1); j++)
    {
      for (int i = 1; i < (P - 1); i++)
      {
        total = total + (a[(i + (j * P)) + (k * (P * N))] - b[(i + (j * P)) + (k * (P * N))]);
      }

    }

  }

  printf("diff(a-b): %lf\n", total);
  
  #ifdef LIKWID_PERFMON
  LIKWID_MARKER_CLOSE;
  #endif

}