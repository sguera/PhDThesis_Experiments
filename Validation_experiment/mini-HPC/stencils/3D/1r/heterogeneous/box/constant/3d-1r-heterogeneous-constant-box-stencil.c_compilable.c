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
  double c13;
  c13 = 0.6141869445310516;
  double c14;
  c14 = 0.16633596241546544;
  double c15;
  c15 = 0.4591684954235413;
  double c16;
  c16 = 0.23343124735297294;
  double c17;
  c17 = 0.6019289926308247;
  double c18;
  c18 = 0.9594515706840488;
  double c19;
  c19 = 0.3324800913116588;
  double c20;
  c20 = 0.3446901877864387;
  double c21;
  c21 = 0.40040349591908486;
  double c22;
  c22 = 0.4301409758222361;
  double c23;
  c23 = 0.5171306262458621;
  double c24;
  c24 = 0.32654558889242;
  double c25;
  c25 = 0.8094620207898686;
  double c26;
  c26 = 0.9932961417944479;
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
    dummy(&c13);
    dummy(&c14);
    dummy(&c15);
    dummy(&c16);
    dummy(&c17);
    dummy(&c18);
    dummy(&c19);
    dummy(&c20);
    dummy(&c21);
    dummy(&c22);
    dummy(&c23);
    dummy(&c24);
    dummy(&c25);
    dummy(&c26);
  }

  for (int k = 1; k < (M - 1); k++)
  {
    for (int j = 1; j < (N - 1); j++)
    {
      for (int i = 1; i < (P - 1); i++)
      {
        b[(i + (j * P)) + (k * (P * N))] = ((((((((((((((((((((((((((c0 * a[(i + (j * P)) + (k * (P * N))]) + (c1 * a[((i - 1) + ((j - 1) * P)) + ((k - 1) * (P * N))])) + (c2 * a[((i - 1) + ((j - 1) * P)) + (k * (P * N))])) + (c3 * a[((i - 1) + ((j - 1) * P)) + ((k + 1) * (P * N))])) + (c4 * a[((i - 1) + (j * P)) + ((k - 1) * (P * N))])) + (c5 * a[((i - 1) + (j * P)) + (k * (P * N))])) + (c6 * a[((i - 1) + (j * P)) + ((k + 1) * (P * N))])) + (c7 * a[((i - 1) + ((j + 1) * P)) + ((k - 1) * (P * N))])) + (c8 * a[((i - 1) + ((j + 1) * P)) + (k * (P * N))])) + (c9 * a[((i - 1) + ((j + 1) * P)) + ((k + 1) * (P * N))])) + (c10 * a[(i + ((j - 1) * P)) + ((k - 1) * (P * N))])) + (c11 * a[(i + ((j - 1) * P)) + (k * (P * N))])) + (c12 * a[(i + ((j - 1) * P)) + ((k + 1) * (P * N))])) + (c13 * a[(i + (j * P)) + ((k - 1) * (P * N))])) + (c14 * a[(i + (j * P)) + ((k + 1) * (P * N))])) + (c15 * a[(i + ((j + 1) * P)) + ((k - 1) * (P * N))])) + (c16 * a[(i + ((j + 1) * P)) + (k * (P * N))])) + (c17 * a[(i + ((j + 1) * P)) + ((k + 1) * (P * N))])) + (c18 * a[((i + 1) + ((j - 1) * P)) + ((k - 1) * (P * N))])) + (c19 * a[((i + 1) + ((j - 1) * P)) + (k * (P * N))])) + (c20 * a[((i + 1) + ((j - 1) * P)) + ((k + 1) * (P * N))])) + (c21 * a[((i + 1) + (j * P)) + ((k - 1) * (P * N))])) + (c22 * a[((i + 1) + (j * P)) + (k * (P * N))])) + (c23 * a[((i + 1) + (j * P)) + ((k + 1) * (P * N))])) + (c24 * a[((i + 1) + ((j + 1) * P)) + ((k - 1) * (P * N))])) + (c25 * a[((i + 1) + ((j + 1) * P)) + (k * (P * N))])) + (c26 * a[((i + 1) + ((j + 1) * P)) + ((k + 1) * (P * N))]);
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
    dummy(&c4);
    dummy(&c5);
    dummy(&c6);
    dummy(&c7);
    dummy(&c8);
    dummy(&c9);
    dummy(&c10);
    dummy(&c11);
    dummy(&c12);
    dummy(&c13);
    dummy(&c14);
    dummy(&c15);
    dummy(&c16);
    dummy(&c17);
    dummy(&c18);
    dummy(&c19);
    dummy(&c20);
    dummy(&c21);
    dummy(&c22);
    dummy(&c23);
    dummy(&c24);
    dummy(&c25);
    dummy(&c26);
  }

}

