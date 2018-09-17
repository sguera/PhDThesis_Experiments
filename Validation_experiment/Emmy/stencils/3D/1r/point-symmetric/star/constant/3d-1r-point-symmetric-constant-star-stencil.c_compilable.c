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

  double c0;
  c0 = 0.7607425694244915;
  double c1;
  c1 = 0.5922194377496228;
  double c2;
  c2 = 0.7185218422063921;
  double c3;
  c3 = 0.8064795423829658;
  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(&c0);
    dummy(&c1);
    dummy(&c2);
    dummy(&c3);
  }

  for (int k = 1; k < (M - 1); k++)
  {
    for (int j = 1; j < (N - 1); j++)
    {
      for (int i = 1; i < (P - 1); i++)
      {
        b[(i + (j * P)) + (k * (P * N))] = (((c0 * a[(i + (j * P)) + (k * (P * N))]) + (c1 * (a[((i - 1) + (j * P)) + (k * (P * N))] + a[((i + 1) + (j * P)) + (k * (P * N))]))) + (c2 * (a[(i + (j * P)) + ((k - 1) * (P * N))] + a[(i + (j * P)) + ((k + 1) * (P * N))]))) + (c3 * (a[(i + ((j - 1) * P)) + (k * (P * N))] + a[(i + ((j + 1) * P)) + (k * (P * N))]));
      }

    }

  }

  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(&c0);
    dummy(&c1);
    dummy(&c2);
    dummy(&c3);
  }

}

