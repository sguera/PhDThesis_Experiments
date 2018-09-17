void kernel_loop(double *a, double *b, double *W, int M, int P, int N)
{
  #pragma omp parallel for schedule(runtime)
  for (int k = 1; k < (M - 1); k++)
  {
    for (int j = 1; j < (N - 1); j++)
    {
      for (int i = 1; i < (P - 1); i++)
      {
        b[(i + (j * P)) + (k * (P * N))] = (((((((((((((W[((0 + (i * 14)) + (j * (14 * P))) + (k * ((14 * P) * N))] * a[(i + (j * P)) + (k * (P * N))]) + (W[((1 + (i * 14)) + (j * (14 * P))) + (k * ((14 * P) * N))] * (a[((i - 1) + (j * P)) + (k * (P * N))] + a[((i + 1) + (j * P)) + (k * (P * N))]))) + (W[((2 + (i * 14)) + (j * (14 * P))) + (k * ((14 * P) * N))] * (a[(i + ((j - 1) * P)) + (k * (P * N))] + a[(i + ((j + 1) * P)) + (k * (P * N))]))) + (W[((3 + (i * 14)) + (j * (14 * P))) + (k * ((14 * P) * N))] * (a[(i + (j * P)) + ((k - 1) * (P * N))] + a[(i + (j * P)) + ((k + 1) * (P * N))]))) + (W[((4 + (i * 14)) + (j * (14 * P))) + (k * ((14 * P) * N))] * (a[((i - 1) + ((j - 1) * P)) + (k * (P * N))] + a[((i + 1) + ((j + 1) * P)) + (k * (P * N))]))) + (W[((5 + (i * 14)) + (j * (14 * P))) + (k * ((14 * P) * N))] * (a[((i - 1) + (j * P)) + ((k - 1) * (P * N))] + a[((i + 1) + (j * P)) + ((k + 1) * (P * N))]))) + (W[((6 + (i * 14)) + (j * (14 * P))) + (k * ((14 * P) * N))] * (a[((i - 1) + (j * P)) + ((k + 1) * (P * N))] + a[((i + 1) + (j * P)) + ((k - 1) * (P * N))]))) + (W[((7 + (i * 14)) + (j * (14 * P))) + (k * ((14 * P) * N))] * (a[((i - 1) + ((j + 1) * P)) + (k * (P * N))] + a[((i + 1) + ((j - 1) * P)) + (k * (P * N))]))) + (W[((8 + (i * 14)) + (j * (14 * P))) + (k * ((14 * P) * N))] * (a[(i + ((j - 1) * P)) + ((k - 1) * (P * N))] + a[(i + ((j + 1) * P)) + ((k + 1) * (P * N))]))) + (W[((9 + (i * 14)) + (j * (14 * P))) + (k * ((14 * P) * N))] * (a[(i + ((j - 1) * P)) + ((k + 1) * (P * N))] + a[(i + ((j + 1) * P)) + ((k - 1) * (P * N))]))) + (W[((10 + (i * 14)) + (j * (14 * P))) + (k * ((14 * P) * N))] * (a[((i - 1) + ((j - 1) * P)) + ((k - 1) * (P * N))] + a[((i + 1) + ((j + 1) * P)) + ((k + 1) * (P * N))]))) + (W[((11 + (i * 14)) + (j * (14 * P))) + (k * ((14 * P) * N))] * (a[((i - 1) + ((j - 1) * P)) + ((k + 1) * (P * N))] + a[((i + 1) + ((j + 1) * P)) + ((k - 1) * (P * N))]))) + (W[((12 + (i * 14)) + (j * (14 * P))) + (k * ((14 * P) * N))] * (a[((i - 1) + ((j + 1) * P)) + ((k - 1) * (P * N))] + a[((i + 1) + ((j - 1) * P)) + ((k + 1) * (P * N))]))) + (W[((13 + (i * 14)) + (j * (14 * P))) + (k * ((14 * P) * N))] * (a[((i - 1) + ((j + 1) * P)) + ((k + 1) * (P * N))] + a[((i + 1) + ((j - 1) * P)) + ((k - 1) * (P * N))]));
      }

    }

  }

}

