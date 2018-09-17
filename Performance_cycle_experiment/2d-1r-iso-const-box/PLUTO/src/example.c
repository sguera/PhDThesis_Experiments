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
  #pragma scop
  for (int n = 0; n < repeat; n++)
  {
    for(int j = 1; j < M - 1; j++){
      for(int i = 1; i < N - 1; i++){
        a[(n+1)%2][j][i] = c0 * a[n%2][j][i]
                + c1 * (a[n%2][j][i-1] + a[n%2][j-1][i] + a[n%2][j+1][i] + a[n%2][j][i+1])
                + c2 * (a[n%2][j-1][i-1] + a[n%2][j+1][i-1] + a[n%2][j-1][i+1] + a[n%2][j+1][i+1])
        ;
      }
    }
  }
  #pragma endscop
  
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
