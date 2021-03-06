void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, double c4, double c5, double c6, int P, int N, int M)
{
  #pragma omp parallel for schedule(runtime)
  for (int k = 1; k < (M - 1); k++)
  {
    for (int j = 1; j < (N - 1); j++)
    {
      for (int i = 1; i < (P - 1); i++)
      {
        b[(i + (j * P)) + (k * (P * N))] = ((((((c0 * a[(i + (j * P)) + (k * (P * N))]) + (c1 * a[((i - 1) + (j * P)) + (k * (P * N))])) + (c2 * a[((i + 1) + (j * P)) + (k * (P * N))])) + (c3 * a[(i + (j * P)) + ((k - 1) * (P * N))])) + (c4 * a[(i + (j * P)) + ((k + 1) * (P * N))])) + (c5 * a[(i + ((j - 1) * P)) + (k * (P * N))])) + (c6 * a[(i + ((j + 1) * P)) + (k * (P * N))]);
      }

    }

  }

}

