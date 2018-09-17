void kernel_loop(double *a, double *b, double c0, double c1, double c2, double c3, double c4, double c5, double c6, double c7, double c8, double c9, double c10, double c11, double c12, double c13, double c14, double c15, double c16, double c17, double c18, double c19, double c20, double c21, double c22, double c23, double c24, double c25, double c26, double c27, double c28, double c29, double c30, double c31, double c32, double c33, double c34, double c35, double c36, double c37, double c38, double c39, double c40, double c41, double c42, double c43, double c44, double c45, double c46, double c47, double c48, int N, int M)
{
  #pragma omp parallel for schedule(runtime)
  for (int j = 3; j < (M - 3); j++)
  {
    for (int i = 3; i < (N - 3); i++)
    {
      b[i + (j * N)] = ((((((((((((((((((((((((((((((((((((((((((((((((c0 * a[i + (j * N)]) + (c1 * a[(i - 3) + ((j - 3) * N)])) + (c2 * a[(i - 3) + ((j - 2) * N)])) + (c3 * a[(i - 3) + ((j - 1) * N)])) + (c4 * a[(i - 3) + (j * N)])) + (c5 * a[(i - 3) + ((j + 1) * N)])) + (c6 * a[(i - 3) + ((j + 2) * N)])) + (c7 * a[(i - 3) + ((j + 3) * N)])) + (c8 * a[(i - 2) + ((j - 3) * N)])) + (c9 * a[(i - 2) + ((j - 2) * N)])) + (c10 * a[(i - 2) + ((j - 1) * N)])) + (c11 * a[(i - 2) + (j * N)])) + (c12 * a[(i - 2) + ((j + 1) * N)])) + (c13 * a[(i - 2) + ((j + 2) * N)])) + (c14 * a[(i - 2) + ((j + 3) * N)])) + (c15 * a[(i - 1) + ((j - 3) * N)])) + (c16 * a[(i - 1) + ((j - 2) * N)])) + (c17 * a[(i - 1) + ((j - 1) * N)])) + (c18 * a[(i - 1) + (j * N)])) + (c19 * a[(i - 1) + ((j + 1) * N)])) + (c20 * a[(i - 1) + ((j + 2) * N)])) + (c21 * a[(i - 1) + ((j + 3) * N)])) + (c22 * a[i + ((j - 3) * N)])) + (c23 * a[i + ((j - 2) * N)])) + (c24 * a[i + ((j - 1) * N)])) + (c25 * a[i + ((j + 1) * N)])) + (c26 * a[i + ((j + 2) * N)])) + (c27 * a[i + ((j + 3) * N)])) + (c28 * a[(i + 1) + ((j - 3) * N)])) + (c29 * a[(i + 1) + ((j - 2) * N)])) + (c30 * a[(i + 1) + ((j - 1) * N)])) + (c31 * a[(i + 1) + (j * N)])) + (c32 * a[(i + 1) + ((j + 1) * N)])) + (c33 * a[(i + 1) + ((j + 2) * N)])) + (c34 * a[(i + 1) + ((j + 3) * N)])) + (c35 * a[(i + 2) + ((j - 3) * N)])) + (c36 * a[(i + 2) + ((j - 2) * N)])) + (c37 * a[(i + 2) + ((j - 1) * N)])) + (c38 * a[(i + 2) + (j * N)])) + (c39 * a[(i + 2) + ((j + 1) * N)])) + (c40 * a[(i + 2) + ((j + 2) * N)])) + (c41 * a[(i + 2) + ((j + 3) * N)])) + (c42 * a[(i + 3) + ((j - 3) * N)])) + (c43 * a[(i + 3) + ((j - 2) * N)])) + (c44 * a[(i + 3) + ((j - 1) * N)])) + (c45 * a[(i + 3) + (j * N)])) + (c46 * a[(i + 3) + ((j + 1) * N)])) + (c47 * a[(i + 3) + ((j + 2) * N)])) + (c48 * a[(i + 3) + ((j + 3) * N)]);
    }

  }

}

