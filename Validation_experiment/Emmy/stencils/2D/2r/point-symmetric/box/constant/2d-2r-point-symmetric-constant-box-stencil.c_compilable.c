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

  double c0;
  c0 = 0.7607425694244915;
  double c1;
  c1 = 0.5922194377496228;
  double c2;
  c2 = 0.7185218422063921;
  double c3;
  c3 = 0.8064795423829658;
  double c4;
  c4 = 0.42349479927878386;
  double c5;
  c5 = 0.4770701249923631;
  double c6;
  c6 = 0.3407877839027452;
  double c7;
  c7 = 0.4026989847762731;
  double c8;
  c8 = 0.49640643544913043;
  double c9;
  c9 = 0.18744775958650606;
  double c10;
  c10 = 0.37617006097409766;
  double c11;
  c11 = 0.5766912912719707;
  double c12;
  c12 = 0.9347334891110758;
  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(&c0);
    dummy(&c1);
    dummy(&c2);
    dummy(&c3);
    dummy(&c4);
    dummy(&c5);
    dummy(&c6);
    dummy(&c7);
    dummy(&c8);
    dummy(&c9);
    dummy(&c10);
    dummy(&c11);
    dummy(&c12);
  }

  for (int j = 2; j < (M - 2); j++)
  {
    for (int i = 2; i < (N - 2); i++)
    {
      b[i + (j * N)] = ((((((((((((c0 * a[i + (j * N)]) + (c1 * (a[(i - 1) + (j * N)] + a[(i + 1) + (j * N)]))) + (c2 * (a[i + ((j - 1) * N)] + a[i + ((j + 1) * N)]))) + (c3 * (a[(i - 2) + (j * N)] + a[(i + 2) + (j * N)]))) + (c4 * (a[(i - 1) + ((j - 1) * N)] + a[(i + 1) + ((j + 1) * N)]))) + (c5 * (a[(i - 1) + ((j + 1) * N)] + a[(i + 1) + ((j - 1) * N)]))) + (c6 * (a[i + ((j - 2) * N)] + a[i + ((j + 2) * N)]))) + (c7 * (a[(i - 2) + ((j - 1) * N)] + a[(i + 2) + ((j + 1) * N)]))) + (c8 * (a[(i - 2) + ((j + 1) * N)] + a[(i + 2) + ((j - 1) * N)]))) + (c9 * (a[(i - 1) + ((j - 2) * N)] + a[(i + 1) + ((j + 2) * N)]))) + (c10 * (a[(i - 1) + ((j + 2) * N)] + a[(i + 1) + ((j - 2) * N)]))) + (c11 * (a[(i - 2) + ((j - 2) * N)] + a[(i + 2) + ((j + 2) * N)]))) + (c12 * (a[(i - 2) + ((j + 2) * N)] + a[(i + 2) + ((j - 2) * N)]));
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
    dummy(&c4);
    dummy(&c5);
    dummy(&c6);
    dummy(&c7);
    dummy(&c8);
    dummy(&c9);
    dummy(&c10);
    dummy(&c11);
    dummy(&c12);
  }

}

