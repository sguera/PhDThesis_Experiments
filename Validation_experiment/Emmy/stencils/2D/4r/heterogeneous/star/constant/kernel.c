void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, double c4, double c5, double c6, double c7, double c8, double c9, double c10, double c11, double c12, double c13, double c14, double c15, double c16, int N, int M)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 4; j < (M - 4); j++)
  {
    for (int i = 4; i < (N - 4); i++)
    {
      b[i + (j * N)] = ((((((((((((((((c0 * a[i + (j * N)]) + (c1 * a[(i - 1) + (j * N)])) + (c2 * a[(i + 1) + (j * N)])) + (c3 * a[i + ((j - 1) * N)])) + (c4 * a[i + ((j + 1) * N)])) + (c5 * a[(i - 2) + (j * N)])) + (c6 * a[(i + 2) + (j * N)])) + (c7 * a[i + ((j - 2) * N)])) + (c8 * a[i + ((j + 2) * N)])) + (c9 * a[(i - 3) + (j * N)])) + (c10 * a[(i + 3) + (j * N)])) + (c11 * a[i + ((j - 3) * N)])) + (c12 * a[i + ((j + 3) * N)])) + (c13 * a[(i - 4) + (j * N)])) + (c14 * a[(i + 4) + (j * N)])) + (c15 * a[i + ((j - 4) * N)])) + (c16 * a[i + ((j + 4) * N)]);
    }

  }

}

