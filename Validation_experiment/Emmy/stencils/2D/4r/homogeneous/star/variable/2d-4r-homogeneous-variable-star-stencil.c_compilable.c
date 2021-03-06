#include "kerncraft.h"
#include <stdlib.h>

void dummy(void *);
extern int var_false;
int main(int argc, char **argv)
{
  const int N = atoi(argv[2]);
  const int M = atoi(argv[1]);
  double *a = aligned_malloc((sizeof(double)) * (M * N), 32);
  for (int i = 0; i < (M * N); ++i)
    a[i] = 0.49795506534730005;

  double *b = aligned_malloc((sizeof(double)) * (M * N), 32);
  for (int i = 0; i < (M * N); ++i)
    b[i] = 0.4150803324887108;

  double *W = aligned_malloc((sizeof(double)) * ((M * N) * 1), 32);
  for (int i = 0; i < ((M * N) * 1); ++i)
    W[i] = 0.7607425694244915;

  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(W);
  }

  for (int j = 4; j < (M - 4); j++)
  {
    for (int i = 4; i < (N - 4); i++)
    {
      b[i + (j * N)] = W[(0 + (i * 1)) + (j * (1 * N))] * ((((((((((((((((a[i + (j * N)] + a[(i - 1) + (j * N)]) + a[(i + 1) + (j * N)]) + a[i + ((j - 1) * N)]) + a[i + ((j + 1) * N)]) + a[(i - 2) + (j * N)]) + a[(i + 2) + (j * N)]) + a[i + ((j - 2) * N)]) + a[i + ((j + 2) * N)]) + a[(i - 3) + (j * N)]) + a[(i + 3) + (j * N)]) + a[i + ((j - 3) * N)]) + a[i + ((j + 3) * N)]) + a[(i - 4) + (j * N)]) + a[(i + 4) + (j * N)]) + a[i + ((j - 4) * N)]) + a[i + ((j + 4) * N)]);
    }

  }

  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(W);
  }

}

