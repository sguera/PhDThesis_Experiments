void kernel_loop(double *a, double *b, double *W, int M, int N)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 4; j < (M - 4); j++)
  {
    for (int i = 4; i < (N - 4); i++)
    {
      b[i + (j * N)] = ((((W[(0 + (i * 5)) + (j * (5 * N))] * a[i + (j * N)]) + (W[(1 + (i * 5)) + (j * (5 * N))] * ((a[(i - 1) + (j * N)] + a[(i + 1) + (j * N)]) + (a[i + ((j - 1) * N)] + a[i + ((j + 1) * N)])))) + (W[(2 + (i * 5)) + (j * (5 * N))] * ((a[(i - 2) + (j * N)] + a[(i + 2) + (j * N)]) + (a[i + ((j - 2) * N)] + a[i + ((j + 2) * N)])))) + (W[(3 + (i * 5)) + (j * (5 * N))] * ((a[(i - 3) + (j * N)] + a[(i + 3) + (j * N)]) + (a[i + ((j - 3) * N)] + a[i + ((j + 3) * N)])))) + (W[(4 + (i * 5)) + (j * (5 * N))] * ((a[(i - 4) + (j * N)] + a[(i + 4) + (j * N)]) + (a[i + ((j - 4) * N)] + a[i + ((j + 4) * N)])));
    }

  }

}
