void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, double c4, double c5, double c6, double c7, double c8, double c9, double c10, double c11, double c12, int M, int N, int P)
{
  #pragma omp parallel for schedule(runtime)
  for (int k = 2; k < (M - 2); k++)
  {
    for (int j = 2; j < (N - 2); j++)
    {
      for (int i = 2; i < (P - 2); i++)
      {
        b[(i + (j * P)) + (k * (P * N))] = ((((((((((((c0 * a[(i + (j * P)) + (k * (P * N))]) + (c1 * a[((i - 1) + (j * P)) + (k * (P * N))])) + (c2 * a[((i + 1) + (j * P)) + (k * (P * N))])) + (c3 * a[(i + (j * P)) + ((k - 1) * (P * N))])) + (c4 * a[(i + (j * P)) + ((k + 1) * (P * N))])) + (c5 * a[(i + ((j - 1) * P)) + (k * (P * N))])) + (c6 * a[(i + ((j + 1) * P)) + (k * (P * N))])) + (c7 * a[((i - 2) + (j * P)) + (k * (P * N))])) + (c8 * a[((i + 2) + (j * P)) + (k * (P * N))])) + (c9 * a[(i + (j * P)) + ((k - 2) * (P * N))])) + (c10 * a[(i + (j * P)) + ((k + 2) * (P * N))])) + (c11 * a[(i + ((j - 2) * P)) + (k * (P * N))])) + (c12 * a[(i + ((j + 2) * P)) + (k * (P * N))]);
      }

    }

  }

}

