void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, int M, int N, int P)
{
  #pragma omp parallel for schedule(runtime)
  for (int k = 3; k < (M - 3); k++)
  {
    for (int j = 3; j < (N - 3); j++)
    {
      for (int i = 3; i < (P - 3); i++)
      {
        b[(i + (j * P)) + (k * (P * N))] = (((c0 * a[(i + (j * P)) + (k * (P * N))]) + (c1 * (((a[((i - 1) + (j * P)) + (k * (P * N))] + a[((i + 1) + (j * P)) + (k * (P * N))]) + (a[(i + (j * P)) + ((k - 1) * (P * N))] + a[(i + (j * P)) + ((k + 1) * (P * N))])) + (a[(i + ((j - 1) * P)) + (k * (P * N))] + a[(i + ((j + 1) * P)) + (k * (P * N))])))) + (c2 * (((a[((i - 2) + (j * P)) + (k * (P * N))] + a[((i + 2) + (j * P)) + (k * (P * N))]) + (a[(i + (j * P)) + ((k - 2) * (P * N))] + a[(i + (j * P)) + ((k + 2) * (P * N))])) + (a[(i + ((j - 2) * P)) + (k * (P * N))] + a[(i + ((j + 2) * P)) + (k * (P * N))])))) + (c3 * (((a[((i - 3) + (j * P)) + (k * (P * N))] + a[((i + 3) + (j * P)) + (k * (P * N))]) + (a[(i + (j * P)) + ((k - 3) * (P * N))] + a[(i + (j * P)) + ((k + 3) * (P * N))])) + (a[(i + ((j - 3) * P)) + (k * (P * N))] + a[(i + ((j + 3) * P)) + (k * (P * N))])));
      }

    }

  }

}

