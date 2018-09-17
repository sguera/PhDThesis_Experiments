void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, double c4, double c5, double c6, int N, int M)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 3; j < (M - 3); j++)
  {
    for (int i = 3; i < (N - 3); i++)
    {
      b[i + (j * N)] = ((((((c0 * a[i + (j * N)]) + (c1 * (a[(i - 1) + (j * N)] + a[(i + 1) + (j * N)]))) + (c2 * (a[i + ((j - 1) * N)] + a[i + ((j + 1) * N)]))) + (c3 * (a[(i - 2) + (j * N)] + a[(i + 2) + (j * N)]))) + (c4 * (a[i + ((j - 2) * N)] + a[i + ((j + 2) * N)]))) + (c5 * (a[(i - 3) + (j * N)] + a[(i + 3) + (j * N)]))) + (c6 * (a[i + ((j - 3) * N)] + a[i + ((j + 3) * N)]));
    }

  }

}

