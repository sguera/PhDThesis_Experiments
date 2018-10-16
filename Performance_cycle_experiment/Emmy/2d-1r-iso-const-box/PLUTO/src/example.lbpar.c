#include <omp.h>
#include <math.h>
#define ceild(n,d)  ceil(((double)(n))/((double)(d)))
#define floord(n,d) floor(((double)(n))/((double)(d)))
#define max(x,y)    ((x) > (y)? (x) : (y))
#define min(x,y)    ((x) < (y)? (x) : (y))

#include <stdlib.h>
#include <math.h>

#include "timing.h"
#include "dim_input.h"

int main(int argc, char **argv)
{

  int M = M_MAX;
  int N = N_MAX;
  int repeat = T_MAX;

  double ***a = malloc((sizeof(double**)*2));
  a[0] = (double**) malloc(sizeof(double*)*M);
  a[1] = (double**) malloc(sizeof(double*)*M);
  for(int i = 0; i < M; i++){
    a[0][i] = (double*) malloc(sizeof(double*)*N);
    a[1][i] = (double*) malloc(sizeof(double*)*N);
  }


  #pragma omp parallel for schedule(runtime)
  for (int j = 0; j < M; ++j)
    for (int i = 0; i < N; ++i)
      a[0][j][i] = rand() / ((double ) RAND_MAX);

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
  double cput_end;

  timing(&wct_start, &cput_start);
/* Copyright (C) 1991-2012 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* We do support the IEC 559 math functionality, real and complex.  */
/* wchar_t uses ISO/IEC 10646 (2nd ed., published 2011-03-15) /
   Unicode 6.0.  */
/* We do not support C11 <threads.h>.  */
  int t1, t2, t3, t4, t5, t6;
 int lb, ub, lbp, ubp, lb2, ub2;
 register int lbv, ubv;
/* Start of CLooG code */
if ((M >= 3) && (N >= 3) && (repeat >= 1)) {
  for (t1=-1;t1<=floord(repeat-1,8);t1++) {
    lbp=max(ceild(t1,2),ceild(16*t1-repeat+2,16));
    ubp=min(floord(repeat+M-3,16),floord(8*t1+M+5,16));
#pragma omp parallel for private(lbv,ubv,t3,t4,t5,t6)
    for (t2=lbp;t2<=ubp;t2++) {
      for (t3=max(max(0,ceild(t1-1,2)),ceild(16*t2-M-12,16));t3<=min(min(min(floord(repeat+N-3,16),floord(8*t1+N+13,16)),floord(16*t2+N+12,16)),floord(16*t1-16*t2+M+N+11,16));t3++) {
        for (t4=max(max(max(max(0,8*t1),16*t1-16*t2+1),16*t2-M+2),16*t3-N+2);t4<=min(min(min(min(repeat-1,8*t1+15),16*t2+14),16*t3+14),16*t1-16*t2+M+13);t4++) {
          for (t5=max(max(16*t2,t4+1),-16*t1+16*t2+2*t4-15);t5<=min(min(16*t2+15,-16*t1+16*t2+2*t4),t4+M-2);t5++) {
            lbv=max(16*t3,t4+1);
            ubv=min(16*t3+15,t4+N-2);
#pragma ivdep
#pragma vector always
            for (t6=lbv;t6<=ubv;t6++) {
              a[( t4 + 1) % 2][ (-t4+t5)][ (-t4+t6)] = (((c0 * a[ t4 % 2][ (-t4+t5)][ (-t4+t6)]) + (c1 * (((a[ t4 % 2][ (-t4+t5)][ (-t4+t6) - 1] + a[ t4 % 2][ (-t4+t5) - 1][ (-t4+t6)]) + a[ t4 % 2][ (-t4+t5) + 1][ (-t4+t6)]) + a[ t4 % 2][ (-t4+t5)][ (-t4+t6) + 1]))) + (c2 * (((a[ t4 % 2][ (-t4+t5) - 1][ (-t4+t6) - 1] + a[ t4 % 2][ (-t4+t5) + 1][ (-t4+t6) - 1]) + a[ t4 % 2][ (-t4+t5) - 1][ (-t4+t6) + 1]) + a[ t4 % 2][ (-t4+t5) + 1][ (-t4+t6) + 1])));;
            }
          }
        }
      }
    }
  }
}
/* End of CLooG code */
  
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


  return EXIT_SUCCESS;
}
