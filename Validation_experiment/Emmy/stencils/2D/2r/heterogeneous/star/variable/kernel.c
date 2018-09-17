void kernel_loop(double *a, double *b, double *W, int M, int N)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 2; j < (M - 2); j++)
  {
    for (int i = 2; i < (N - 2); i++)
    {
      b[i + (j * N)] = ((((((((W[(0 + (i * 9)) + (j * (9 * N))] * a[i + (j * N)]) + (W[(1 + (i * 9)) + (j * (9 * N))] * a[(i - 1) + (j * N)])) + (W[(2 + (i * 9)) + (j * (9 * N))] * a[(i + 1) + (j * N)])) + (W[(3 + (i * 9)) + (j * (9 * N))] * a[i + ((j - 1) * N)])) + (W[(4 + (i * 9)) + (j * (9 * N))] * a[i + ((j + 1) * N)])) + (W[(5 + (i * 9)) + (j * (9 * N))] * a[(i - 2) + (j * N)])) + (W[(6 + (i * 9)) + (j * (9 * N))] * a[(i + 2) + (j * N)])) + (W[(7 + (i * 9)) + (j * (9 * N))] * a[i + ((j - 2) * N)])) + (W[(8 + (i * 9)) + (j * (9 * N))] * a[i + ((j + 2) * N)]);
    }

  }

}

