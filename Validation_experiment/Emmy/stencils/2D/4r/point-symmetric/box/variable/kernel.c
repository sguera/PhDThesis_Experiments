void kernel_loop(double *a, double *b, double *W, int M, int N)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 4; j < (M - 4); j++)
  {
    for (int i = 4; i < (N - 4); i++)
    {
      b[i + (j * N)] = ((((((((((((((((((((((((((((((((((((((((W[(0 + (i * 41)) + (j * (41 * N))] * a[i + (j * N)]) + (W[(1 + (i * 41)) + (j * (41 * N))] * (a[(i - 1) + (j * N)] + a[(i + 1) + (j * N)]))) + (W[(2 + (i * 41)) + (j * (41 * N))] * (a[i + ((j - 1) * N)] + a[i + ((j + 1) * N)]))) + (W[(3 + (i * 41)) + (j * (41 * N))] * (a[(i - 2) + (j * N)] + a[(i + 2) + (j * N)]))) + (W[(4 + (i * 41)) + (j * (41 * N))] * (a[(i - 1) + ((j - 1) * N)] + a[(i + 1) + ((j + 1) * N)]))) + (W[(5 + (i * 41)) + (j * (41 * N))] * (a[(i - 1) + ((j + 1) * N)] + a[(i + 1) + ((j - 1) * N)]))) + (W[(6 + (i * 41)) + (j * (41 * N))] * (a[i + ((j - 2) * N)] + a[i + ((j + 2) * N)]))) + (W[(7 + (i * 41)) + (j * (41 * N))] * (a[(i - 3) + (j * N)] + a[(i + 3) + (j * N)]))) + (W[(8 + (i * 41)) + (j * (41 * N))] * (a[(i - 2) + ((j - 1) * N)] + a[(i + 2) + ((j + 1) * N)]))) + (W[(9 + (i * 41)) + (j * (41 * N))] * (a[(i - 2) + ((j + 1) * N)] + a[(i + 2) + ((j - 1) * N)]))) + (W[(10 + (i * 41)) + (j * (41 * N))] * (a[(i - 1) + ((j - 2) * N)] + a[(i + 1) + ((j + 2) * N)]))) + (W[(11 + (i * 41)) + (j * (41 * N))] * (a[(i - 1) + ((j + 2) * N)] + a[(i + 1) + ((j - 2) * N)]))) + (W[(12 + (i * 41)) + (j * (41 * N))] * (a[i + ((j - 3) * N)] + a[i + ((j + 3) * N)]))) + (W[(13 + (i * 41)) + (j * (41 * N))] * (a[(i - 4) + (j * N)] + a[(i + 4) + (j * N)]))) + (W[(14 + (i * 41)) + (j * (41 * N))] * (a[(i - 3) + ((j - 1) * N)] + a[(i + 3) + ((j + 1) * N)]))) + (W[(15 + (i * 41)) + (j * (41 * N))] * (a[(i - 3) + ((j + 1) * N)] + a[(i + 3) + ((j - 1) * N)]))) + (W[(16 + (i * 41)) + (j * (41 * N))] * (a[(i - 2) + ((j - 2) * N)] + a[(i + 2) + ((j + 2) * N)]))) + (W[(17 + (i * 41)) + (j * (41 * N))] * (a[(i - 2) + ((j + 2) * N)] + a[(i + 2) + ((j - 2) * N)]))) + (W[(18 + (i * 41)) + (j * (41 * N))] * (a[(i - 1) + ((j - 3) * N)] + a[(i + 1) + ((j + 3) * N)]))) + (W[(19 + (i * 41)) + (j * (41 * N))] * (a[(i - 1) + ((j + 3) * N)] + a[(i + 1) + ((j - 3) * N)]))) + (W[(20 + (i * 41)) + (j * (41 * N))] * (a[i + ((j - 4) * N)] + a[i + ((j + 4) * N)]))) + (W[(21 + (i * 41)) + (j * (41 * N))] * (a[(i - 4) + ((j - 1) * N)] + a[(i + 4) + ((j + 1) * N)]))) + (W[(22 + (i * 41)) + (j * (41 * N))] * (a[(i - 4) + ((j + 1) * N)] + a[(i + 4) + ((j - 1) * N)]))) + (W[(23 + (i * 41)) + (j * (41 * N))] * (a[(i - 3) + ((j - 2) * N)] + a[(i + 3) + ((j + 2) * N)]))) + (W[(24 + (i * 41)) + (j * (41 * N))] * (a[(i - 3) + ((j + 2) * N)] + a[(i + 3) + ((j - 2) * N)]))) + (W[(25 + (i * 41)) + (j * (41 * N))] * (a[(i - 2) + ((j - 3) * N)] + a[(i + 2) + ((j + 3) * N)]))) + (W[(26 + (i * 41)) + (j * (41 * N))] * (a[(i - 2) + ((j + 3) * N)] + a[(i + 2) + ((j - 3) * N)]))) + (W[(27 + (i * 41)) + (j * (41 * N))] * (a[(i - 1) + ((j - 4) * N)] + a[(i + 1) + ((j + 4) * N)]))) + (W[(28 + (i * 41)) + (j * (41 * N))] * (a[(i - 1) + ((j + 4) * N)] + a[(i + 1) + ((j - 4) * N)]))) + (W[(29 + (i * 41)) + (j * (41 * N))] * (a[(i - 4) + ((j - 2) * N)] + a[(i + 4) + ((j + 2) * N)]))) + (W[(30 + (i * 41)) + (j * (41 * N))] * (a[(i - 4) + ((j + 2) * N)] + a[(i + 4) + ((j - 2) * N)]))) + (W[(31 + (i * 41)) + (j * (41 * N))] * (a[(i - 3) + ((j - 3) * N)] + a[(i + 3) + ((j + 3) * N)]))) + (W[(32 + (i * 41)) + (j * (41 * N))] * (a[(i - 3) + ((j + 3) * N)] + a[(i + 3) + ((j - 3) * N)]))) + (W[(33 + (i * 41)) + (j * (41 * N))] * (a[(i - 2) + ((j - 4) * N)] + a[(i + 2) + ((j + 4) * N)]))) + (W[(34 + (i * 41)) + (j * (41 * N))] * (a[(i - 2) + ((j + 4) * N)] + a[(i + 2) + ((j - 4) * N)]))) + (W[(35 + (i * 41)) + (j * (41 * N))] * (a[(i - 4) + ((j - 3) * N)] + a[(i + 4) + ((j + 3) * N)]))) + (W[(36 + (i * 41)) + (j * (41 * N))] * (a[(i - 4) + ((j + 3) * N)] + a[(i + 4) + ((j - 3) * N)]))) + (W[(37 + (i * 41)) + (j * (41 * N))] * (a[(i - 3) + ((j - 4) * N)] + a[(i + 3) + ((j + 4) * N)]))) + (W[(38 + (i * 41)) + (j * (41 * N))] * (a[(i - 3) + ((j + 4) * N)] + a[(i + 3) + ((j - 4) * N)]))) + (W[(39 + (i * 41)) + (j * (41 * N))] * (a[(i - 4) + ((j - 4) * N)] + a[(i + 4) + ((j + 4) * N)]))) + (W[(40 + (i * 41)) + (j * (41 * N))] * (a[(i - 4) + ((j + 4) * N)] + a[(i + 4) + ((j - 4) * N)]));
    }

  }

}
