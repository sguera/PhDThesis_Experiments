void kernel_loop(double *a, double *b, double *W, int P, int M, int N)
{
  #pragma omp parallel for schedule(runtime)
  for (int k = 1; k < (M - 1); k++)
  {
    for (int j = 1; j < (N - 1); j++)
    {
      for (int i = 1; i < (P - 1); i++)
      {
        b[(i + (j * P)) + (k * (P * N))] = ((((((((((((((((((((((((((W[((0 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + (j * P)) + (k * (P * N))]) + (W[((1 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + ((j - 1) * P)) + ((k - 1) * (P * N))])) + (W[((2 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + ((j - 1) * P)) + (k * (P * N))])) + (W[((3 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + ((j - 1) * P)) + ((k + 1) * (P * N))])) + (W[((4 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + (j * P)) + ((k - 1) * (P * N))])) + (W[((5 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + (j * P)) + (k * (P * N))])) + (W[((6 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + (j * P)) + ((k + 1) * (P * N))])) + (W[((7 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + ((j + 1) * P)) + ((k - 1) * (P * N))])) + (W[((8 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + ((j + 1) * P)) + (k * (P * N))])) + (W[((9 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i - 1) + ((j + 1) * P)) + ((k + 1) * (P * N))])) + (W[((10 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + ((j - 1) * P)) + ((k - 1) * (P * N))])) + (W[((11 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + ((j - 1) * P)) + (k * (P * N))])) + (W[((12 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + ((j - 1) * P)) + ((k + 1) * (P * N))])) + (W[((13 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + (j * P)) + ((k - 1) * (P * N))])) + (W[((14 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + (j * P)) + ((k + 1) * (P * N))])) + (W[((15 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + ((j + 1) * P)) + ((k - 1) * (P * N))])) + (W[((16 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + ((j + 1) * P)) + (k * (P * N))])) + (W[((17 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[(i + ((j + 1) * P)) + ((k + 1) * (P * N))])) + (W[((18 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + ((j - 1) * P)) + ((k - 1) * (P * N))])) + (W[((19 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + ((j - 1) * P)) + (k * (P * N))])) + (W[((20 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + ((j - 1) * P)) + ((k + 1) * (P * N))])) + (W[((21 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + (j * P)) + ((k - 1) * (P * N))])) + (W[((22 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + (j * P)) + (k * (P * N))])) + (W[((23 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + (j * P)) + ((k + 1) * (P * N))])) + (W[((24 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + ((j + 1) * P)) + ((k - 1) * (P * N))])) + (W[((25 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + ((j + 1) * P)) + (k * (P * N))])) + (W[((26 + (i * 27)) + (j * (27 * P))) + (k * ((27 * P) * N))] * a[((i + 1) + ((j + 1) * P)) + ((k + 1) * (P * N))]);
      }

    }

  }

}

