void kernel_loop(double *a, double *b, double *W, int N, int M)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 3; j < (M - 3); j++)
  {
    for (int i = 3; i < (N - 3); i++)
    {
      b[i + (j * N)] = ((((((W[(0 + (i * 7)) + (j * (7 * N))] * a[i + (j * N)]) + (W[(1 + (i * 7)) + (j * (7 * N))] * (a[(i - 1) + (j * N)] + a[(i + 1) + (j * N)]))) + (W[(2 + (i * 7)) + (j * (7 * N))] * (a[i + ((j - 1) * N)] + a[i + ((j + 1) * N)]))) + (W[(3 + (i * 7)) + (j * (7 * N))] * (a[(i - 2) + (j * N)] + a[(i + 2) + (j * N)]))) + (W[(4 + (i * 7)) + (j * (7 * N))] * (a[i + ((j - 2) * N)] + a[i + ((j + 2) * N)]))) + (W[(5 + (i * 7)) + (j * (7 * N))] * (a[(i - 3) + (j * N)] + a[(i + 3) + (j * N)]))) + (W[(6 + (i * 7)) + (j * (7 * N))] * (a[i + ((j - 3) * N)] + a[i + ((j + 3) * N)]));
    }

  }

}

