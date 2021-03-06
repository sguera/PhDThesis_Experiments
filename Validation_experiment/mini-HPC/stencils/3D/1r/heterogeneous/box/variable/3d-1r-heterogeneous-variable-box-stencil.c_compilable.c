#include "kerncraft.h"
#include <stdlib.h>

void dummy(void *);
extern int var_false;
int main(int argc, char **argv)
{
  const int P = atoi(argv[3]);
  const int N = atoi(argv[2]);
  const int M = atoi(argv[1]);
  double *a = aligned_malloc((sizeof(double)) * ((M * N) * P), 32);
  for (int i = 0; i < ((M * N) * P); ++i)
    a[i] = 0.49795506534730005;

  double *b = aligned_malloc((sizeof(double)) * ((M * N) * P), 32);
  for (int i = 0; i < ((M * N) * P); ++i)
    b[i] = 0.4150803324887108;

  double *W = aligned_malloc((sizeof(double)) * (((M * N) * P) * 27), 32);
  for (int i = 0; i < (((M * N) * P) * 27); ++i)
    W[i] = 0.7607425694244915;

  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(W);
  }

  for (int k = 1; k < (M - 1); k++)
  {
    for (int j = 1; j < (N - 1); j++)
    {
      for (int i = 1; i < (P - 1); i++)
      {
        b[(i + (j * P)) + (k * (P * N))] = ((((((((((((((((((((((((((W[((0 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + (j * P)) + (k * (P * N))]) + (W[((1 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + ((j - 1) * P)) + ((k - 1) * (P * N))])) + (W[((2 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + ((j - 1) * P)) + (k * (P * N))])) + (W[((3 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + ((j - 1) * P)) + ((k + 1) * (P * N))])) + (W[((4 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + (j * P)) + ((k - 1) * (P * N))])) + (W[((5 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + (j * P)) + (k * (P * N))])) + (W[((6 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + (j * P)) + ((k + 1) * (P * N))])) + (W[((7 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + ((j + 1) * P)) + ((k - 1) * (P * N))])) + (W[((8 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + ((j + 1) * P)) + (k * (P * N))])) + (W[((9 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + ((j + 1) * P)) + ((k + 1) * (P * N))])) + (W[((10 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + ((j - 1) * P)) + ((k - 1) * (P * N))])) + (W[((11 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + ((j - 1) * P)) + (k * (P * N))])) + (W[((12 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + ((j - 1) * P)) + ((k + 1) * (P * N))])) + (W[((13 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + (j * P)) + ((k - 1) * (P * N))])) + (W[((14 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + (j * P)) + ((k + 1) * (P * N))])) + (W[((15 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + ((j + 1) * P)) + ((k - 1) * (P * N))])) + (W[((16 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + ((j + 1) * P)) + (k * (P * N))])) + (W[((17 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + ((j + 1) * P)) + ((k + 1) * (P * N))])) + (W[((18 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + ((j - 1) * P)) + ((k - 1) * (P * N))])) + (W[((19 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + ((j - 1) * P)) + (k * (P * N))])) + (W[((20 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + ((j - 1) * P)) + ((k + 1) * (P * N))])) + (W[((21 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + (j * P)) + ((k - 1) * (P * N))])) + (W[((22 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + (j * P)) + (k * (P * N))])) + (W[((23 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + (j * P)) + ((k + 1) * (P * N))])) + (W[((24 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + ((j + 1) * P)) + ((k - 1) * (P * N))])) + (W[((25 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + ((j + 1) * P)) + (k * (P * N))])) + (W[((26 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + ((j + 1) * P)) + ((k + 1) * (P * N))]);
      }

    }

  }

  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(W);
  }

}

