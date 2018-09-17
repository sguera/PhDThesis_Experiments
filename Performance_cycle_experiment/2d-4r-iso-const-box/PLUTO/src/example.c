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
  c0 = (rand() / ((double ) RAND_MAX)) / 11.0;
  double c1;
  c1 = (rand() / ((double ) RAND_MAX)) / 11.0;
  double c2;
  c2 = (rand() / ((double ) RAND_MAX)) / 11.0;
  double c3;
  c3 = (rand() / ((double ) RAND_MAX)) / 11.0;
  double c4;
  c4 = (rand() / ((double ) RAND_MAX)) / 11.0;
  double c5;
  c5 = (rand() / ((double ) RAND_MAX)) / 11.0;
  double c6;
  c6 = (rand() / ((double ) RAND_MAX)) / 11.0;
  double c7;
  c7 = (rand() / ((double ) RAND_MAX)) / 11.0;
  double c8;
  c8 = (rand() / ((double ) RAND_MAX)) / 11.0;
  
  double runtime = 0.0;
  double wct_start;
  double wct_end;
  double cput_start;
  double *tmp;
  double cput_end;

  timing(&wct_start, &cput_start);
  #pragma scop
  for (int n = 0; n < repeat; ++n)
  {
    for(int j=4; j < M-4; j++){
      for(int i=4; i < N-4; i++){
        a[(n+1)%2][j][i] = c0 * a[n%2][j][i]
                + c1 * (a[n%2][j][i-1] + a[n%2][j-1][i] + a[n%2][j+1][i] + a[n%2][j][i+1])
                + c2 * (a[n%2][j][i-2] + a[n%2][j-1][i-1] + a[n%2][j+1][i-1] + a[n%2][j-2][i] + a[n%2][j+2][i] + a[n%2][j-1][i+1] + a[n%2][j+1][i+1] + a[n%2][j][i+2])
                + c3 * (a[n%2][j][i-3] + a[n%2][j-1][i-2] + a[n%2][j+1][i-2] + a[n%2][j-2][i-1] + a[n%2][j+2][i-1] + a[n%2][j-3][i] + a[n%2][j+3][i] + a[n%2][j-2][i+1] + a[n%2][j+2][i+1] + a[n%2][j-1][i+2] + a[n%2][j+1][i+2] + a[n%2][j][i+3])
                + c4 * (a[n%2][j][i-4] + a[n%2][j-1][i-3] + a[n%2][j+1][i-3] + a[n%2][j-2][i-2] + a[n%2][j+2][i-2] + a[n%2][j-3][i-1] + a[n%2][j+3][i-1] + a[n%2][j-4][i] + a[n%2][j+4][i] + a[n%2][j-3][i+1] + a[n%2][j+3][i+1] + a[n%2][j-2][i+2] + a[n%2][j+2][i+2] + a[n%2][j-1][i+3] + a[n%2][j+1][i+3] + a[n%2][j][i+4])
                + c5 * (a[n%2][j-1][i-4] + a[n%2][j+1][i-4] + a[n%2][j-2][i-3] + a[n%2][j+2][i-3] + a[n%2][j-3][i-2] + a[n%2][j+3][i-2] + a[n%2][j-4][i-1] + a[n%2][j+4][i-1] + a[n%2][j-4][i+1] + a[n%2][j+4][i+1] + a[n%2][j-3][i+2] + a[n%2][j+3][i+2] + a[n%2][j-2][i+3] + a[n%2][j+2][i+3] + a[n%2][j-1][i+4] + a[n%2][j+1][i+4])
                + c6 * (a[n%2][j-2][i-4] + a[n%2][j+2][i-4] + a[n%2][j-3][i-3] + a[n%2][j+3][i-3] + a[n%2][j-4][i-2] + a[n%2][j+4][i-2] + a[n%2][j-4][i+2] + a[n%2][j+4][i+2] + a[n%2][j-3][i+3] + a[n%2][j+3][i+3] + a[n%2][j-2][i+4] + a[n%2][j+2][i+4])
                + c7 * (a[n%2][j-3][i-4] + a[n%2][j+3][i-4] + a[n%2][j-4][i-3] + a[n%2][j+4][i-3] + a[n%2][j-4][i+3] + a[n%2][j+4][i+3] + a[n%2][j-3][i+4] + a[n%2][j+3][i+4])
                + c8 * (a[n%2][j-4][i-4] + a[n%2][j+4][i-4] + a[n%2][j-4][i+4] + a[n%2][j+4][i+4])
        ;
      }
    }
  }
  #pragma endscop

  timing(&wct_end, &cput_end);
  runtime = wct_end - wct_start;

  printf("iterations: %d\n", repeat);
  printf("Total iterations: %lld LUP\n", ((long long ) repeat) * (((long long ) (M - 8)) * ((long long ) (N - 8))));
  printf("FLOP: 89\n");
  printf("Total work: %lld FLOP\n", (((long long ) repeat) * (((long long ) (M - 8)) * ((long long ) (N - 8)))) * 89);
  printf("performance: %lf GLUP/s\n", ((((double ) repeat) * (((double ) (M - 8)) * ((double ) (N - 8)))) / runtime) / 1000000000.);
  printf("Performance in GFLOP/s: %lf\n", (((((double ) repeat) * (((double ) (M - 8)) * ((double ) (N - 8)))) * 89) / runtime) / 1000000000.);
  printf("size: %d\n", (M * N));
  printf("time: %lf\n", runtime);


  return EXIT_SUCCESS;
}
