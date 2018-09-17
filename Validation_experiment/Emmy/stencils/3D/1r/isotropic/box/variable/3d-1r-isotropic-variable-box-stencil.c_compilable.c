#include "kerncraft.h"
#include <stdlib.h>

void dummy(void *);
extern int var_false;
int main(int argc, char **argv)
{
  const int M = atoi(argv[3]);
  const int P = atoi(argv[2]);
  const int N = atoi(argv[1]);
  double *a = aligned_malloc((sizeof(double)) * ((M * N) * P), 32);
  for (int i = 0; i < ((M * N) * P); ++i)
    a[i] = 0.49795506534730005;

  double *b = aligned_malloc((sizeof(double)) * ((M * N) * P), 32);
  for (int i = 0; i < ((M * N) * P); ++i)
    b[i] = 0.4150803324887108;

  double *W = aligned_malloc((sizeof(double)) * (((M * N) * P) * 4), 32);
  for (int i = 0; i < (((M * N) * P) * 4); ++i)
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
        b[(i + (j * P)) + (k * (P * N))] = (((W[((0 + (i * 4)) + (j * (4 * P))) + (k * ((4 * P) * N))] * a[(i + (j * P)) + (k * (P * N))]) + (W[((1 + (i * 4)) + (j * (4 * P))) + (k * ((4 * P) * N))] * (((((a[((i - 1) + (j * P)) + (k * (P * N))] + a[(i + ((j - 1) * P)) + (k * (P * N))]) + a[(i + (j * P)) + ((k - 1) * (P * N))]) + a[(i + (j * P)) + ((k + 1) * (P * N))]) + a[(i + ((j + 1) * P)) + (k * (P * N))]) + a[((i + 1) + (j * P)) + (k * (P * N))]))) + (W[((2 + (i * 4)) + (j * (4 * P))) + (k * ((4 * P) * N))] * (((((((((((a[((i - 1) + ((j - 1) * P)) + (k * (P * N))] + a[((i - 1) + (j * P)) + ((k - 1) * (P * N))]) + a[((i - 1) + (j * P)) + ((k + 1) * (P * N))]) + a[((i - 1) + ((j + 1) * P)) + (k * (P * N))]) + a[(i + ((j - 1) * P)) + ((k - 1) * (P * N))]) + a[(i + ((j - 1) * P)) + ((k + 1) * (P * N))]) + a[(i + ((j + 1) * P)) + ((k - 1) * (P * N))]) + a[(i + ((j + 1) * P)) + ((k + 1) * (P * N))]) + a[((i + 1) + ((j - 1) * P)) + (k * (P * N))]) + a[((i + 1) + (j * P)) + ((k - 1) * (P * N))]) + a[((i + 1) + (j * P)) + ((k + 1) * (P * N))]) + a[((i + 1) + ((j + 1) * P)) + (k * (P * N))]))) + (W[((3 + (i * 4)) + (j * (4 * P))) + (k * ((4 * P) * N))] * (((((((a[((i - 1) + ((j - 1) * P)) + ((k - 1) * (P * N))] + a[((i - 1) + ((j - 1) * P)) + ((k + 1) * (P * N))]) + a[((i - 1) + ((j + 1) * P)) + ((k - 1) * (P * N))]) + a[((i - 1) + ((j + 1) * P)) + ((k + 1) * (P * N))]) + a[((i + 1) + ((j - 1) * P)) + ((k - 1) * (P * N))]) + a[((i + 1) + ((j - 1) * P)) + ((k + 1) * (P * N))]) + a[((i + 1) + ((j + 1) * P)) + ((k - 1) * (P * N))]) + a[((i + 1) + ((j + 1) * P)) + ((k + 1) * (P * N))]));
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

