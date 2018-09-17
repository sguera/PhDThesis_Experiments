void kernel_loop(double *a, double *b, double c0, int N, int M)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 1; j < (M - 1); j++)
  {
    for (int i = 1; i < (N - 1); i++)
    {
      b[i + (j * N)] = c0 * ((((a[i + (j * N)] + a[(i - 1) + (j * N)]) + a[(i + 1) + (j * N)]) + a[i + ((j - 1) * N)]) + a[i + ((j + 1) * N)]);
    }

  }

}

