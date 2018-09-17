void kernel_loop(double *a, double *b, double *W, int N, int M)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 4; j < (M - 4); j++)
  {
    for (int i = 4; i < (N - 4); i++)
    {
      b[i + (j * N)] = W[i + (j * 1)] * ((((((((((((((((a[i + (j * N)] + a[(i - 1) + (j * N)]) + a[(i + 1) + (j * N)]) + a[i + ((j - 1) * N)]) + a[i + ((j + 1) * N)]) + a[(i - 2) + (j * N)]) + a[(i + 2) + (j * N)]) + a[i + ((j - 2) * N)]) + a[i + ((j + 2) * N)]) + a[(i - 3) + (j * N)]) + a[(i + 3) + (j * N)]) + a[i + ((j - 3) * N)]) + a[i + ((j + 3) * N)]) + a[(i - 4) + (j * N)]) + a[(i + 4) + (j * N)]) + a[i + ((j - 4) * N)]) + a[i + ((j + 4) * N)]);
    }

  }

}

