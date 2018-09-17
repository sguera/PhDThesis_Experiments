void kernel_loop(double *a, double *b, double *W, int M, int N)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 3; j < (M - 3); j++)
  {
    for (int i = 3; i < (N - 3); i++)
    {
      b[i + (j * N)] = ((((((((((((((((((((((((W[(0 + (i * 25)) + (j * (25 * N))] * a[i + (j * N)]) + (W[(1 + (i * 25)) + (j * (25 * N))] * (a[(i - 1) + (j * N)] + a[(i + 1) + (j * N)]))) + (W[(2 + (i * 25)) + (j * (25 * N))] * (a[i + ((j - 1) * N)] + a[i + ((j + 1) * N)]))) + (W[(3 + (i * 25)) + (j * (25 * N))] * (a[(i - 2) + (j * N)] + a[(i + 2) + (j * N)]))) + (W[(4 + (i * 25)) + (j * (25 * N))] * (a[(i - 1) + ((j - 1) * N)] + a[(i + 1) + ((j + 1) * N)]))) + (W[(5 + (i * 25)) + (j * (25 * N))] * (a[(i - 1) + ((j + 1) * N)] + a[(i + 1) + ((j - 1) * N)]))) + (W[(6 + (i * 25)) + (j * (25 * N))] * (a[i + ((j - 2) * N)] + a[i + ((j + 2) * N)]))) + (W[(7 + (i * 25)) + (j * (25 * N))] * (a[(i - 3) + (j * N)] + a[(i + 3) + (j * N)]))) + (W[(8 + (i * 25)) + (j * (25 * N))] * (a[(i - 2) + ((j - 1) * N)] + a[(i + 2) + ((j + 1) * N)]))) + (W[(9 + (i * 25)) + (j * (25 * N))] * (a[(i - 2) + ((j + 1) * N)] + a[(i + 2) + ((j - 1) * N)]))) + (W[(10 + (i * 25)) + (j * (25 * N))] * (a[(i - 1) + ((j - 2) * N)] + a[(i + 1) + ((j + 2) * N)]))) + (W[(11 + (i * 25)) + (j * (25 * N))] * (a[(i - 1) + ((j + 2) * N)] + a[(i + 1) + ((j - 2) * N)]))) + (W[(12 + (i * 25)) + (j * (25 * N))] * (a[i + ((j - 3) * N)] + a[i + ((j + 3) * N)]))) + (W[(13 + (i * 25)) + (j * (25 * N))] * (a[(i - 3) + ((j - 1) * N)] + a[(i + 3) + ((j + 1) * N)]))) + (W[(14 + (i * 25)) + (j * (25 * N))] * (a[(i - 3) + ((j + 1) * N)] + a[(i + 3) + ((j - 1) * N)]))) + (W[(15 + (i * 25)) + (j * (25 * N))] * (a[(i - 2) + ((j - 2) * N)] + a[(i + 2) + ((j + 2) * N)]))) + (W[(16 + (i * 25)) + (j * (25 * N))] * (a[(i - 2) + ((j + 2) * N)] + a[(i + 2) + ((j - 2) * N)]))) + (W[(17 + (i * 25)) + (j * (25 * N))] * (a[(i - 1) + ((j - 3) * N)] + a[(i + 1) + ((j + 3) * N)]))) + (W[(18 + (i * 25)) + (j * (25 * N))] * (a[(i - 1) + ((j + 3) * N)] + a[(i + 1) + ((j - 3) * N)]))) + (W[(19 + (i * 25)) + (j * (25 * N))] * (a[(i - 3) + ((j - 2) * N)] + a[(i + 3) + ((j + 2) * N)]))) + (W[(20 + (i * 25)) + (j * (25 * N))] * (a[(i - 3) + ((j + 2) * N)] + a[(i + 3) + ((j - 2) * N)]))) + (W[(21 + (i * 25)) + (j * (25 * N))] * (a[(i - 2) + ((j - 3) * N)] + a[(i + 2) + ((j + 3) * N)]))) + (W[(22 + (i * 25)) + (j * (25 * N))] * (a[(i - 2) + ((j + 3) * N)] + a[(i + 2) + ((j - 3) * N)]))) + (W[(23 + (i * 25)) + (j * (25 * N))] * (a[(i - 3) + ((j - 3) * N)] + a[(i + 3) + ((j + 3) * N)]))) + (W[(24 + (i * 25)) + (j * (25 * N))] * (a[(i - 3) + ((j + 3) * N)] + a[(i + 3) + ((j - 3) * N)]));
    }

  }

}

