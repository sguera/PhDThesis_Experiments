#include "kerncraft.h"
#include <stdlib.h>

void dummy(void *);
extern int var_false;
int main(int argc, char **argv)
{
  const int P = atoi(argv[3]);
  const int M = atoi(argv[2]);
  const int N = atoi(argv[1]);
  double *a = aligned_malloc((sizeof(double)) * ((M * N) * P), 32);
  for (int i = 0; i < ((M * N) * P); ++i)
    a[i] = 0.49795506534730005;

  double *b = aligned_malloc((sizeof(double)) * ((M * N) * P), 32);
  for (int i = 0; i < ((M * N) * P); ++i)
    b[i] = 0.4150803324887108;

  double *W = aligned_malloc((sizeof(double)) * (((M * N) * P) * 10), 32);
  for (int i = 0; i < (((M * N) * P) * 10); ++i)
    W[i] = 0.7607425694244915;

  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(W);
  }

  for (int k = 3; k < (M - 3); k++)
  {
    for (int j = 3; j < (N - 3); j++)
    {
      for (int i = 3; i < (P - 3); i++)
      {
        b[(i + (j * P)) + (k * (P * N))] = (((((((((W[((0 + (i * 10)) + (j * (10 * P))) + (k * ((10 * P) * N))] * a[(i + (j * P)) + (k * (P * N))]) + (W[((1 + (i * 10)) + (j * (10 * P))) + (k * ((10 * P) * N))] * (a[((i - 1) + (j * P)) + (k * (P * N))] + a[((i + 1) + (j * P)) + (k * (P * N))]))) + (W[((2 + (i * 10)) + (j * (10 * P))) + (k * ((10 * P) * N))] * (a[(i + (j * P)) + ((k - 1) * (P * N))] + a[(i + (j * P)) + ((k + 1) * (P * N))]))) + (W[((3 + (i * 10)) + (j * (10 * P))) + (k * ((10 * P) * N))] * (a[(i + ((j - 1) * P)) + (k * (P * N))] + a[(i + ((j + 1) * P)) + (k * (P * N))]))) + (W[((4 + (i * 10)) + (j * (10 * P))) + (k * ((10 * P) * N))] * (a[((i - 2) + (j * P)) + (k * (P * N))] + a[((i + 2) + (j * P)) + (k * (P * N))]))) + (W[((5 + (i * 10)) + (j * (10 * P))) + (k * ((10 * P) * N))] * (a[(i + (j * P)) + ((k - 2) * (P * N))] + a[(i + (j * P)) + ((k + 2) * (P * N))]))) + (W[((6 + (i * 10)) + (j * (10 * P))) + (k * ((10 * P) * N))] * (a[(i + ((j - 2) * P)) + (k * (P * N))] + a[(i + ((j + 2) * P)) + (k * (P * N))]))) + (W[((7 + (i * 10)) + (j * (10 * P))) + (k * ((10 * P) * N))] * (a[((i - 3) + (j * P)) + (k * (P * N))] + a[((i + 3) + (j * P)) + (k * (P * N))]))) + (W[((8 + (i * 10)) + (j * (10 * P))) + (k * ((10 * P) * N))] * (a[(i + (j * P)) + ((k - 3) * (P * N))] + a[(i + (j * P)) + ((k + 3) * (P * N))]))) + (W[((9 + (i * 10)) + (j * (10 * P))) + (k * ((10 * P) * N))] * (a[(i + ((j - 3) * P)) + (k * (P * N))] + a[(i + ((j + 3) * P)) + (k * (P * N))]));
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

