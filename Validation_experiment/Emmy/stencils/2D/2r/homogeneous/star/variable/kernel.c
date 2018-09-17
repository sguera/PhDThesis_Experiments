void kernel_loop(double *a, double *b, double *W, int M, int N)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 2; j < (M - 2); j++)
  {
    for (int i = 2; i < (N - 2); i++)
    {
      b[i + (j * N)] = W[(0 + (i * 1)) + (j * (1 * N))] * ((((((((a[i + (j * N)] + a[(i - 1) + (j * N)]) + a[(i + 1) + (j * N)]) + a[i + ((j - 1) * N)]) + a[i + ((j + 1) * N)]) + a[(i - 2) + (j * N)]) + a[(i + 2) + (j * N)]) + a[i + ((j - 2) * N)]) + a[i + ((j + 2) * N)]);
    }

  }

}

