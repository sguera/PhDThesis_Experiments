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
extern void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, double c4, double c5, double c6, double c7, double c8, double c9, double c10, double c11, double c12, double c13, double c14, double c15, double c16, double c17, double c18, double c19, double c20, double c21, double c22, double c23, double c24, double c25, double c26, double c27, double c28, double c29, double c30, double c31, double c32, double c33, double c34, double c35, double c36, double c37, double c38, double c39, double c40, int N, int M);
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

  double c0;
  c0 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c1;
  c1 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c2;
  c2 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c3;
  c3 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c4;
  c4 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c5;
  c5 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c6;
  c6 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c7;
  c7 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c8;
  c8 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c9;
  c9 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c10;
  c10 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c11;
  c11 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c12;
  c12 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c13;
  c13 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c14;
  c14 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c15;
  c15 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c16;
  c16 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c17;
  c17 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c18;
  c18 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c19;
  c19 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c20;
  c20 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c21;
  c21 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c22;
  c22 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c23;
  c23 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c24;
  c24 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c25;
  c25 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c26;
  c26 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c27;
  c27 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c28;
  c28 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c29;
  c29 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c30;
  c30 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c31;
  c31 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c32;
  c32 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c33;
  c33 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c34;
  c34 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c35;
  c35 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c36;
  c36 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c37;
  c37 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c38;
  c38 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c39;
  c39 = (rand() / ((double ) RAND_MAX)) / 43.0;
  double c40;
  c40 = (rand() / ((double ) RAND_MAX)) / 43.0;
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
      kernel_loop(a, b, c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, M, N);
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
    kernel_loop(a, b, c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, M, N);
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
  printf("Total iterations: %lld LUP\n", ((long long ) repeat) * (((long long ) (M - 8)) * ((long long ) (N - 8))));
  printf("FLOP: 121\n");
  printf("Total work: %lld FLOP\n", (((long long ) repeat) * (((long long ) (M - 8)) * ((long long ) (N - 8)))) * 121);
  printf("performance: %lf GLUP/s\n", ((((double ) repeat) * (((double ) (M - 8)) * ((double ) (N - 8)))) / runtime) / 1000000000.);
  printf("Performance in GFLOP/s: %lf\n", (((((double ) repeat) * (((double ) (M - 8)) * ((double ) (N - 8)))) * 121) / runtime) / 1000000000.);
  printf("size: %d\n", (M * N));
  printf("time: %lf\n", runtime);
  double total = 0.0;
  for (int j = 4; j < (M - 4); j++)
  {
    for (int i = 4; i < (N - 4); i++)
    {
      total = total + (a[i + (j * N)] - b[i + (j * N)]);
    }

  }

  printf("diff(a-b): %lf\n", total);
  
  #ifdef LIKWID_PERFMON
  LIKWID_MARKER_CLOSE;
  #endif

}