void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, double c4, double c5, double c6, double c7, double c8, double c9, double c10, double c11, double c12, double c13, double c14, double c15, double c16, double c17, double c18, double c19, double c20, double c21, double c22, double c23, double c24, int M, int N)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 2; j < (M - 2); j++)
  {
    for (int i = 2; i < (N - 2); i++)
    {
      b[i + (j * N)] = ((((((((((((((((((((((((c0 * a[i + (j * N)]) + (c1 * a[(i - 2) + ((j - 2) * N)])) + (c2 * a[(i - 2) + ((j - 1) * N)])) + (c3 * a[(i - 2) + (j * N)])) + (c4 * a[(i - 2) + ((j + 1) * N)])) + (c5 * a[(i - 2) + ((j + 2) * N)])) + (c6 * a[(i - 1) + ((j - 2) * N)])) + (c7 * a[(i - 1) + ((j - 1) * N)])) + (c8 * a[(i - 1) + (j * N)])) + (c9 * a[(i - 1) + ((j + 1) * N)])) + (c10 * a[(i - 1) + ((j + 2) * N)])) + (c11 * a[i + ((j - 2) * N)])) + (c12 * a[i + ((j - 1) * N)])) + (c13 * a[i + ((j + 1) * N)])) + (c14 * a[i + ((j + 2) * N)])) + (c15 * a[(i + 1) + ((j - 2) * N)])) + (c16 * a[(i + 1) + ((j - 1) * N)])) + (c17 * a[(i + 1) + (j * N)])) + (c18 * a[(i + 1) + ((j + 1) * N)])) + (c19 * a[(i + 1) + ((j + 2) * N)])) + (c20 * a[(i + 2) + ((j - 2) * N)])) + (c21 * a[(i + 2) + ((j - 1) * N)])) + (c22 * a[(i + 2) + (j * N)])) + (c23 * a[(i + 2) + ((j + 1) * N)])) + (c24 * a[(i + 2) + ((j + 2) * N)]);
    }

  }

}

