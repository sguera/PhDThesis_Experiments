void kernel_loop(double *a, double *b, double c0, int N, int M)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 3; j < (M - 3); j++)
  {
    for (int i = 3; i < (N - 3); i++)
    {
      b[i + (j * N)] = c0 * ((((((((((((a[i + (j * N)] + a[(i - 1) + (j * N)]) + a[(i + 1) + (j * N)]) + a[i + ((j - 1) * N)]) + a[i + ((j + 1) * N)]) + a[(i - 2) + (j * N)]) + a[(i + 2) + (j * N)]) + a[i + ((j - 2) * N)]) + a[i + ((j + 2) * N)]) + a[(i - 3) + (j * N)]) + a[(i + 3) + (j * N)]) + a[i + ((j - 3) * N)]) + a[i + ((j + 3) * N)]);
    }

  }

}

