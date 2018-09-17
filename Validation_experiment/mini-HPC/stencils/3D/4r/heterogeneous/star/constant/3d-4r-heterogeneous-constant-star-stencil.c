double a[M][N][P];
double b[M][N][P];
double c0;
double c1;
double c2;
double c3;
double c4;
double c5;
double c6;
double c7;
double c8;
double c9;
double c10;
double c11;
double c12;
double c13;
double c14;
double c15;
double c16;
double c17;
double c18;
double c19;
double c20;
double c21;
double c22;
double c23;
double c24;

for(int k=4; k < M-4; k++){
for(int j=4; j < N-4; j++){
for(int i=4; i < P-4; i++){
b[k][j][i] = c0 * a[k][j][i]
+ c1 * a[k][j][i-1] + c2 * a[k][j][i+1]
+ c3 * a[k-1][j][i] + c4 * a[k+1][j][i]
+ c5 * a[k][j-1][i] + c6 * a[k][j+1][i]
+ c7 * a[k][j][i-2] + c8 * a[k][j][i+2]
+ c9 * a[k-2][j][i] + c10 * a[k+2][j][i]
+ c11 * a[k][j-2][i] + c12 * a[k][j+2][i]
+ c13 * a[k][j][i-3] + c14 * a[k][j][i+3]
+ c15 * a[k-3][j][i] + c16 * a[k+3][j][i]
+ c17 * a[k][j-3][i] + c18 * a[k][j+3][i]
+ c19 * a[k][j][i-4] + c20 * a[k][j][i+4]
+ c21 * a[k-4][j][i] + c22 * a[k+4][j][i]
+ c23 * a[k][j-4][i] + c24 * a[k][j+4][i]
;
}
}
}
