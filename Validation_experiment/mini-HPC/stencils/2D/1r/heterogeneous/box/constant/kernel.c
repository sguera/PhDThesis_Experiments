void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, double c4, double c5, double c6, double c7, double c8, int N, int M)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 1; j < (M - 1); j++)
  {
    for (int i = 1; i < (N - 1); i++)
    {
      b[i + (j * N)] = ((((((((c0 * a[i + (j * N)]) + (c1 * a[(i - 1) + ((j - 1) * N)])) + (c2 * a[(i - 1) + (j * N)])) + (c3 * a[(i - 1) + ((j + 1) * N)])) + (c4 * a[i + ((j - 1) * N)])) + (c5 * a[i + ((j + 1) * N)])) + (c6 * a[(i + 1) + ((j - 1) * N)])) + (c7 * a[(i + 1) + (j * N)])) + (c8 * a[(i + 1) + ((j + 1) * N)]);
    }

  }

}

