void kernel_loop(double *a, double *b, double *W, int N, int M)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 1; j < (M - 1); j++)
  {
    for (int i = 1; i < (N - 1); i++)
    {
      b[i + (j * N)] = ((W[(0 + (i * 3)) + (j * (3 * N))] * a[i + (j * N)]) + (W[(1 + (i * 3)) + (j * (3 * N))] * (((a[(i - 1) + (j * N)] + a[i + ((j - 1) * N)]) + a[i + ((j + 1) * N)]) + a[(i + 1) + (j * N)]))) + (W[(2 + (i * 3)) + (j * (3 * N))] * (((a[(i - 1) + ((j - 1) * N)] + a[(i - 1) + ((j + 1) * N)]) + a[(i + 1) + ((j - 1) * N)]) + a[(i + 1) + ((j + 1) * N)]));
    }

  }

}

