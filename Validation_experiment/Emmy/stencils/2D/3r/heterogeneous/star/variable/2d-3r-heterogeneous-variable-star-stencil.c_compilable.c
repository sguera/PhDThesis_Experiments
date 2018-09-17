#include "kerncraft.h"
#include <stdlib.h>

void dummy(void *);
extern int var_false;
int main(int argc, char **argv)
{
  const int M = atoi(argv[2]);
  const int N = atoi(argv[1]);
  double *a = aligned_malloc((sizeof(double)) * (M * N), 32);
  for (int i = 0; i < (M * N); ++i)
    a[i] = 0.49795506534730005;

  double *b = aligned_malloc((sizeof(double)) * (M * N), 32);
  for (int i = 0; i < (M * N); ++i)
    b[i] = 0.4150803324887108;

  double *W = aligned_malloc((sizeof(double)) * ((M * N) * 13), 32);
  for (int i = 0; i < ((M * N) * 13); ++i)
    W[i] = 0.7607425694244915;

  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(W);
  }

  for (int j = 3; j < (M - 3); j++)
  {
    for (int i = 3; i < (N - 3); i++)
    {
      b[i + (j * N)] = ((((((((((((W[(0 + (i * 13)) + (j * (13 * N))] * a[i + (j * N)]) + (W[(1 + (i * 13)) + (j * (13 * N))] * a[(i - 1) + (j * N)])) + (W[(2 + (i * 13)) + (j * (13 * N))] * a[(i + 1) + (j * N)])) + (W[(3 + (i * 13)) + (j * (13 * N))] * a[i + ((j - 1) * N)])) + (W[(4 + (i * 13)) + (j * (13 * N))] * a[i + ((j + 1) * N)])) + (W[(5 + (i * 13)) + (j * (13 * N))] * a[(i - 2) + (j * N)])) + (W[(6 + (i * 13)) + (j * (13 * N))] * a[(i + 2) + (j * N)])) + (W[(7 + (i * 13)) + (j * (13 * N))] * a[i + ((j - 2) * N)])) + (W[(8 + (i * 13)) + (j * (13 * N))] * a[i + ((j + 2) * N)])) + (W[(9 + (i * 13)) + (j * (13 * N))] * a[(i - 3) + (j * N)])) + (W[(10 + (i * 13)) + (j * (13 * N))] * a[(i + 3) + (j * N)])) + (W[(11 + (i * 13)) + (j * (13 * N))] * a[i + ((j - 3) * N)])) + (W[(12 + (i * 13)) + (j * (13 * N))] * a[i + ((j + 3) * N)]);
    }

  }

  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(W);
  }

}

