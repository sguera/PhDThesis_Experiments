void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, double c4, int M, int P, int N)
{
  #pragma omp parallel for schedule(runtime)
  for (int k = 4; k < (M - 4); k++)
  {
    for (int j = 4; j < (N - 4); j++)
    {
      for (int i = 4; i < (P - 4); i++)
      {
        b[(i + (j * P)) + (k * (P * N))] = ((((c0 * a[(i + (j * P)) + (k * (P * N))]) + (c1 * (((a[((i - 1) + (j * P)) + (k * (P * N))] + a[((i + 1) + (j * P)) + (k * (P * N))]) + (a[(i + (j * P)) + ((k - 1) * (P * N))] + a[(i + (j * P)) + ((k + 1) * (P * N))])) + (a[(i + ((j - 1) * P)) + (k * (P * N))] + a[(i + ((j + 1) * P)) + (k * (P * N))])))) + (c2 * (((a[((i - 2) + (j * P)) + (k * (P * N))] + a[((i + 2) + (j * P)) + (k * (P * N))]) + (a[(i + (j * P)) + ((k - 2) * (P * N))] + a[(i + (j * P)) + ((k + 2) * (P * N))])) + (a[(i + ((j - 2) * P)) + (k * (P * N))] + a[(i + ((j + 2) * P)) + (k * (P * N))])))) + (c3 * (((a[((i - 3) + (j * P)) + (k * (P * N))] + a[((i + 3) + (j * P)) + (k * (P * N))]) + (a[(i + (j * P)) + ((k - 3) * (P * N))] + a[(i + (j * P)) + ((k + 3) * (P * N))])) + (a[(i + ((j - 3) * P)) + (k * (P * N))] + a[(i + ((j + 3) * P)) + (k * (P * N))])))) + (c4 * (((a[((i - 4) + (j * P)) + (k * (P * N))] + a[((i + 4) + (j * P)) + (k * (P * N))]) + (a[(i + (j * P)) + ((k - 4) * (P * N))] + a[(i + (j * P)) + ((k + 4) * (P * N))])) + (a[(i + ((j - 4) * P)) + (k * (P * N))] + a[(i + ((j + 4) * P)) + (k * (P * N))])));
      }

    }

  }

}

