#include "kerncraft.h"
#include <stdlib.h>

void dummy(void *);
extern int var_false;
int main(int argc, char **argv)
{
  const int N = atoi(argv[3]);
  const int P = atoi(argv[2]);
  const int M = atoi(argv[1]);
  double *a = aligned_malloc((sizeof(double)) * ((M * N) * P), 32);
  for (int i = 0; i < ((M * N) * P); ++i)
    a[i] = 0.49795506534730005;

  double *b = aligned_malloc((sizeof(double)) * ((M * N) * P), 32);
  for (int i = 0; i < ((M * N) * P); ++i)
    b[i] = 0.4150803324887108;

  double c0;
  c0 = 0.7607425694244915;
  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(&c0);
  }

  for (int k = 4; k < (M - 4); k++)
  {
    for (int j = 4; j < (N - 4); j++)
    {
      for (int i = 4; i < (P - 4); i++)
      {
        b[(i + (j * P)) + (k * (P * N))] = c0 * ((((((((((((((((((((((((a[(i + (j * P)) + (k * (P * N))] + a[((i - 1) + (j * P)) + (k * (P * N))]) + a[((i + 1) + (j * P)) + (k * (P * N))]) + a[(i + (j * P)) + ((k - 1) * (P * N))]) + a[(i + (j * P)) + ((k + 1) * (P * N))]) + a[(i + ((j - 1) * P)) + (k * (P * N))]) + a[(i + ((j + 1) * P)) + (k * (P * N))]) + a[((i - 2) + (j * P)) + (k * (P * N))]) + a[((i + 2) + (j * P)) + (k * (P * N))]) + a[(i + (j * P)) + ((k - 2) * (P * N))]) + a[(i + (j * P)) + ((k + 2) * (P * N))]) + a[(i + ((j - 2) * P)) + (k * (P * N))]) + a[(i + ((j + 2) * P)) + (k * (P * N))]) + a[((i - 3) + (j * P)) + (k * (P * N))]) + a[((i + 3) + (j * P)) + (k * (P * N))]) + a[(i + (j * P)) + ((k - 3) * (P * N))]) + a[(i + (j * P)) + ((k + 3) * (P * N))]) + a[(i + ((j - 3) * P)) + (k * (P * N))]) + a[(i + ((j + 3) * P)) + (k * (P * N))]) + a[((i - 4) + (j * P)) + (k * (P * N))]) + a[((i + 4) + (j * P)) + (k * (P * N))]) + a[(i + (j * P)) + ((k - 4) * (P * N))]) + a[(i + (j * P)) + ((k + 4) * (P * N))]) + a[(i + ((j - 4) * P)) + (k * (P * N))]) + a[(i + ((j + 4) * P)) + (k * (P * N))]);
      }

    }

  }

  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(&c0);
  }

}

