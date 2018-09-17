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
extern void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, double c4, double c5, double c6, double c7, double c8, double c9, double c10, double c11, double c12, double c13, double c14, double c15, double c16, double c17, double c18, double c19, double c20, double c21, double c22, double c23, double c24, double c25, double c26, double c27, double c28, double c29, double c30, double c31, double c32, double c33, double c34, double c35, double c36, double c37, double c38, double c39, double c40, double c41, double c42, double c43, double c44, double c45, double c46, double c47, double c48, double c49, double c50, double c51, double c52, double c53, double c54, double c55, double c56, double c57, double c58, double c59, double c60, double c61, double c62, double c63, double c64, double c65, double c66, double c67, double c68, double c69, double c70, double c71, double c72, double c73, double c74, double c75, double c76, double c77, double c78, double c79, double c80, double c81, double c82, double c83, double c84, double c85, double c86, double c87, double c88, double c89, double c90, double c91, double c92, double c93, double c94, double c95, double c96, double c97, double c98, double c99, double c100, double c101, double c102, double c103, double c104, double c105, double c106, double c107, double c108, double c109, double c110, double c111, double c112, double c113, double c114, double c115, double c116, double c117, double c118, double c119, double c120, double c121, double c122, double c123, double c124, int M, int P, int N);
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
  c0 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c1;
  c1 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c2;
  c2 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c3;
  c3 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c4;
  c4 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c5;
  c5 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c6;
  c6 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c7;
  c7 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c8;
  c8 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c9;
  c9 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c10;
  c10 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c11;
  c11 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c12;
  c12 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c13;
  c13 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c14;
  c14 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c15;
  c15 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c16;
  c16 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c17;
  c17 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c18;
  c18 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c19;
  c19 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c20;
  c20 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c21;
  c21 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c22;
  c22 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c23;
  c23 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c24;
  c24 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c25;
  c25 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c26;
  c26 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c27;
  c27 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c28;
  c28 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c29;
  c29 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c30;
  c30 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c31;
  c31 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c32;
  c32 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c33;
  c33 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c34;
  c34 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c35;
  c35 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c36;
  c36 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c37;
  c37 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c38;
  c38 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c39;
  c39 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c40;
  c40 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c41;
  c41 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c42;
  c42 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c43;
  c43 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c44;
  c44 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c45;
  c45 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c46;
  c46 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c47;
  c47 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c48;
  c48 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c49;
  c49 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c50;
  c50 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c51;
  c51 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c52;
  c52 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c53;
  c53 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c54;
  c54 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c55;
  c55 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c56;
  c56 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c57;
  c57 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c58;
  c58 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c59;
  c59 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c60;
  c60 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c61;
  c61 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c62;
  c62 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c63;
  c63 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c64;
  c64 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c65;
  c65 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c66;
  c66 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c67;
  c67 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c68;
  c68 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c69;
  c69 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c70;
  c70 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c71;
  c71 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c72;
  c72 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c73;
  c73 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c74;
  c74 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c75;
  c75 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c76;
  c76 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c77;
  c77 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c78;
  c78 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c79;
  c79 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c80;
  c80 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c81;
  c81 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c82;
  c82 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c83;
  c83 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c84;
  c84 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c85;
  c85 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c86;
  c86 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c87;
  c87 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c88;
  c88 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c89;
  c89 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c90;
  c90 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c91;
  c91 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c92;
  c92 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c93;
  c93 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c94;
  c94 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c95;
  c95 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c96;
  c96 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c97;
  c97 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c98;
  c98 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c99;
  c99 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c100;
  c100 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c101;
  c101 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c102;
  c102 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c103;
  c103 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c104;
  c104 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c105;
  c105 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c106;
  c106 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c107;
  c107 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c108;
  c108 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c109;
  c109 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c110;
  c110 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c111;
  c111 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c112;
  c112 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c113;
  c113 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c114;
  c114 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c115;
  c115 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c116;
  c116 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c117;
  c117 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c118;
  c118 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c119;
  c119 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c120;
  c120 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c121;
  c121 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c122;
  c122 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c123;
  c123 = (rand() / ((double ) RAND_MAX)) / 127.0;
  double c124;
  c124 = (rand() / ((double ) RAND_MAX)) / 127.0;
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
      kernel_loop(a, b, c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90, c91, c92, c93, c94, c95, c96, c97, c98, c99, c100, c101, c102, c103, c104, c105, c106, c107, c108, c109, c110, c111, c112, c113, c114, c115, c116, c117, c118, c119, c120, c121, c122, c123, c124, M, N, P);
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
    kernel_loop(a, b, c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, c54, c55, c56, c57, c58, c59, c60, c61, c62, c63, c64, c65, c66, c67, c68, c69, c70, c71, c72, c73, c74, c75, c76, c77, c78, c79, c80, c81, c82, c83, c84, c85, c86, c87, c88, c89, c90, c91, c92, c93, c94, c95, c96, c97, c98, c99, c100, c101, c102, c103, c104, c105, c106, c107, c108, c109, c110, c111, c112, c113, c114, c115, c116, c117, c118, c119, c120, c121, c122, c123, c124, M, N, P);
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
  printf("FLOP: 249\n");
  printf("Total work: %lld FLOP\n", (((long long ) repeat) * ((((long long ) (M - 4)) * ((long long ) (N - 4))) * ((long long ) (P - 4)))) * 249);
  printf("performance: %lf GLUP/s\n", ((((double ) repeat) * ((((double ) (M - 4)) * ((double ) (N - 4))) * ((double ) (P - 4)))) / runtime) / 1000000000.);
  printf("Performance in GFLOP/s: %lf\n", (((((double ) repeat) * ((((double ) (M - 4)) * ((double ) (N - 4))) * ((double ) (P - 4)))) * 249) / runtime) / 1000000000.);
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