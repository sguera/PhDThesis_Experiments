void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, double c4, double c5, double c6, double c7, double c8, int N, int M)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 2; j < (M - 2); j++)
  {
    for (int i = 2; i < (N - 2); i++)
    {
      b[i + (j * N)] = ((((((((c0 * a[i + (j * N)]) + (c1 * a[(i - 1) + (j * N)])) + (c2 * a[(i + 1) + (j * N)])) + (c3 * a[i + ((j - 1) * N)])) + (c4 * a[i + ((j + 1) * N)])) + (c5 * a[(i - 2) + (j * N)])) + (c6 * a[(i + 2) + (j * N)])) + (c7 * a[i + ((j - 2) * N)])) + (c8 * a[i + ((j + 2) * N)]);
    }

  }

}

