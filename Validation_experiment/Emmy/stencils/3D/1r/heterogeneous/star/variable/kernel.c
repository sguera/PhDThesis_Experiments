void kernel_loop(double *a, double *b, double *W, int P, int N, int M)
{
  #pragma omp parallel for schedule(runtime)
  for (int k = 1; k < (M - 1); k++)
  {
    for (int j = 1; j < (N - 1); j++)
    {
      for (int i = 1; i < (P - 1); i++)
      {
        b[(i + (j * P)) + (k * (P * N))] = ((((((W[((0 + (i * 7)) + (j * (7 * P))) + (k * ((7 * P) * N))] * a[(i + (j * P)) + (k * (P * N))]) + (W[((1 + (i * 7)) + (j * (7 * P))) + (k * ((7 * P) * N))] * a[((i - 1) + (j * P)) + (k * (P * N))])) + (W[((2 + (i * 7)) + (j * (7 * P))) + (k * ((7 * P) * N))] * a[((i + 1) + (j * P)) + (k * (P * N))])) + (W[((3 + (i * 7)) + (j * (7 * P))) + (k * ((7 * P) * N))] * a[(i + (j * P)) + ((k - 1) * (P * N))])) + (W[((4 + (i * 7)) + (j * (7 * P))) + (k * ((7 * P) * N))] * a[(i + (j * P)) + ((k + 1) * (P * N))])) + (W[((5 + (i * 7)) + (j * (7 * P))) + (k * ((7 * P) * N))] * a[(i + ((j - 1) * P)) + (k * (P * N))])) + (W[((6 + (i * 7)) + (j * (7 * P))) + (k * ((7 * P) * N))] * a[(i + ((j + 1) * P)) + (k * (P * N))]);
      }

    }

  }

}

