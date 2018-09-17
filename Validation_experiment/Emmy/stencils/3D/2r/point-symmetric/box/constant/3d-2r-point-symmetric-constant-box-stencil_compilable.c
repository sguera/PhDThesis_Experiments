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
extern void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, double c4, double c5, double c6, double c7, double c8, double c9, double c10, double c11, double c12, double c13, double c14, double c15, double c16, double c17, double c18, double c19, double c20, double c21, double c22, double c23, double c24, double c25, double c26, double c27, double c28, double c29, double c30, double c31, double c32, double c33, double c34, double c35, double c36, double c37, double c38, double c39, double c40, double c41, double c42, double c43, double c44, double c45, double c46, double c47, double c48, double c49, double c50, double c51, double c52, double c53, double c54, double c55, double c56, double c57, double c58, double c59, double c60, double c61, double c62, int N, int M, int P);
int main(int argc, char **argv)
{
  
  #ifdef LIKWID_PERFMON
  LIKWID_MARKER_INIT;
  #pragma omp parallel
  {
    LIKWID_MARKER_REGISTER("Sweep");
  }
  #endif

  int P = P_MAX;
  int M = M_MAX;
  int N = N_MAX;
  double *a = aligned_malloc((sizeof(double)) * ((M * N) * P), 32);
  #pragma omp parallel for schedule(runtime)
  for (int i = 0; i < ((M * N) * P); ++i)
    a[i] = rand() / ((double ) RAND_MAX);

  double *b = aligned_malloc((sizeof(double)) * ((M * N) * P), 32);
  #pragma omp parallel for schedule(runtime)
  for (int i = 0; i < ((M * N) * P); ++i)
    b[i] = rand() / ((double ) RAND_MAX);

  double c0;
  c0 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c1;
  c1 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c2;
  c2 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c3;
  c3 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c4;
  c4 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c5;
  c5 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c6;
  c6 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c7;
  c7 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c8;
  c8 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c9;
  c9 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c10;
  c10 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c11;
  c11 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c12;
  c12 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c13;
  c13 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c14;
  c14 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c15;
  c15 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c16;
  c16 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c17;
  c17 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c18;
  c18 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c19;
  c19 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c20;
  c20 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c21;
  c21 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c22;
  c22 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c23;
  c23 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c24;
  c24 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c25;
  c25 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c26;
  c26 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c27;
  c27 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c28;
  c28 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c29;
  c29 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c30;
  c30 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c31;
  c31 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c32;
  c32 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c33;
  c33 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c34;
  c34 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c35;
  c35 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c36;
  c36 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c37;
  c37 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c38;
  c38 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c39;
  c39 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c40;
  c40 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c41;
  c41 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c42;
  c42 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c43;
  c43 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c44;
  c44 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c45;
  c45 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c46;
  c46 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c47;
  c47 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c48;
  c48 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c49;
  c49 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c50;
  c50 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c51;
  c51 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c52;
  c52 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c53;
  c53 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c54;
  c54 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c55;
  c55 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c56;
  c56 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c57;
  c57 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c58;
  c58 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c59;
  c59 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c60;
  c60 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c61;
  c61 = (rand() / ((double ) RAND_MAX)) / 65.0;
  double c62;
  c62 = (rand() / ((double ) RAND_MAX)) / 65.0;
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
      kernel_loop(a, b, c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, M, N, P);
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
    kernel_loop(a, b, c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, M, N, P);
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
  printf("Total iterations: %lld LUP\n", ((long long ) repeat) * ((((long long ) (M - 4)) * ((long long ) (N - 4))) * ((long long ) (P - 4))));
  printf("FLOP: 187\n");
  printf("Total work: %lld FLOP\n", (((long long ) repeat) * ((((long long ) (M - 4)) * ((long long ) (N - 4))) * ((long long ) (P - 4)))) * 187);
  printf("performance: %lf GLUP/s\n", ((((double ) repeat) * ((((double ) (M - 4)) * ((double ) (N - 4))) * ((double ) (P - 4)))) / runtime) / 1000000000.);
  printf("Performance in GFLOP/s: %lf\n", (((((double ) repeat) * ((((double ) (M - 4)) * ((double ) (N - 4))) * ((double ) (P - 4)))) * 187) / runtime) / 1000000000.);
  printf("size: %d\n", (M * N * P));
  printf("time: %lf\n", runtime);
  double total = 0.0;
  for (int k = 2; k < (M - 2); k++)
  {
    for (int j = 2; j < (N - 2); j++)
    {
      for (int i = 2; i < (P - 2); i++)
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