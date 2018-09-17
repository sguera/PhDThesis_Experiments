void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, double c4, double c5, double c6, double c7, double c8, double c9, double c10, double c11, double c12, double c13, double c14, double c15, double c16, double c17, double c18, double c19, double c20, double c21, double c22, double c23, double c24, double c25, double c26, int M, int P, int N)
{
  #pragma omp parallel for schedule(runtime)
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

}

