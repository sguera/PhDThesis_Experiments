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

  double *W = aligned_malloc((sizeof(double)) * ((M * N) * 25), 32);
  for (int i = 0; i < ((M * N) * 25); ++i)
    W[i] = 0.7607425694244915;

  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(W);
  }

  for (int j = 2; j < (M - 2); j++)
  {
    for (int i = 2; i < (N - 2); i++)
    {
      b[i + (j * N)] = ((((((((((((((((((((((((W[(0 + (i * 25)) + (j * (25 * N))] * a[i + (j * N)]) + (W[(1 + (i * 25)) + (j * (25 * N))] * a[(i - 2) + ((j - 2) * N)])) + (W[(2 + (i * 25)) + (j * (25 * N))] * a[(i - 2) + ((j - 1) * N)])) + (W[(3 + (i * 25)) + (j * (25 * N))] * a[(i - 2) + (j * N)])) + (W[(4 + (i * 25)) + (j * (25 * N))] * a[(i - 2) + ((j + 1) * N)])) + (W[(5 + (i * 25)) + (j * (25 * N))] * a[(i - 2) + ((j + 2) * N)])) + (W[(6 + (i * 25)) + (j * (25 * N))] * a[(i - 1) + ((j - 2) * N)])) + (W[(7 + (i * 25)) + (j * (25 * N))] * a[(i - 1) + ((j - 1) * N)])) + (W[(8 + (i * 25)) + (j * (25 * N))] * a[(i - 1) + (j * N)])) + (W[(9 + (i * 25)) + (j * (25 * N))] * a[(i - 1) + ((j + 1) * N)])) + (W[(10 + (i * 25)) + (j * (25 * N))] * a[(i - 1) + ((j + 2) * N)])) + (W[(11 + (i * 25)) + (j * (25 * N))] * a[i + ((j - 2) * N)])) + (W[(12 + (i * 25)) + (j * (25 * N))] * a[i + ((j - 1) * N)])) + (W[(13 + (i * 25)) + (j * (25 * N))] * a[i + ((j + 1) * N)])) + (W[(14 + (i * 25)) + (j * (25 * N))] * a[i + ((j + 2) * N)])) + (W[(15 + (i * 25)) + (j * (25 * N))] * a[(i + 1) + ((j - 2) * N)])) + (W[(16 + (i * 25)) + (j * (25 * N))] * a[(i + 1) + ((j - 1) * N)])) + (W[(17 + (i * 25)) + (j * (25 * N))] * a[(i + 1) + (j * N)])) + (W[(18 + (i * 25)) + (j * (25 * N))] * a[(i + 1) + ((j + 1) * N)])) + (W[(19 + (i * 25)) + (j * (25 * N))] * a[(i + 1) + ((j + 2) * N)])) + (W[(20 + (i * 25)) + (j * (25 * N))] * a[(i + 2) + ((j - 2) * N)])) + (W[(21 + (i * 25)) + (j * (25 * N))] * a[(i + 2) + ((j - 1) * N)])) + (W[(22 + (i * 25)) + (j * (25 * N))] * a[(i + 2) + (j * N)])) + (W[(23 + (i * 25)) + (j * (25 * N))] * a[(i + 2) + ((j + 1) * N)])) + (W[(24 + (i * 25)) + (j * (25 * N))] * a[(i + 2) + ((j + 2) * N)]);
    }

  }

  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(W);
  }

}

