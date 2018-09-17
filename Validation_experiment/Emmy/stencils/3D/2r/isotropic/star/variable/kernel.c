void kernel_loop(double *a, double *b, double *W, int M, int N, int P)
{
  #pragma omp parallel for schedule(runtime)
  for (int k = 2; k < (M - 2); k++)
  {
    for (int j = 2; j < (N - 2); j++)
    {
      for (int i = 2; i < (P - 2); i++)
      {
        b[(i + (j * P)) + (k * (P * N))] = ((W[((0 + (i * 3)) + (j * (3 * P))) + (k * ((3 * P) * N))] * a[(i + (j * P)) + (k * (P * N))]) + (W[((1 + (i * 3)) + (j * (3 * P))) + (k * ((3 * P) * N))] * (((a[((i - 1) + (j * P)) + (k * (P * N))] + a[((i + 1) + (j * P)) + (k * (P * N))]) + (a[(i + (j * P)) + ((k - 1) * (P * N))] + a[(i + (j * P)) + ((k + 1) * (P * N))])) + (a[(i + ((j - 1) * P)) + (k * (P * N))] + a[(i + ((j + 1) * P)) + (k * (P * N))])))) + (W[((2 + (i * 3)) + (j * (3 * P))) + (k * ((3 * P) * N))] * (((a[((i - 2) + (j * P)) + (k * (P * N))] + a[((i + 2) + (j * P)) + (k * (P * N))]) + (a[(i + (j * P)) + ((k - 2) * (P * N))] + a[(i + (j * P)) + ((k + 2) * (P * N))])) + (a[(i + ((j - 2) * P)) + (k * (P * N))] + a[(i + ((j + 2) * P)) + (k * (P * N))])));
      }

    }

  }

}

