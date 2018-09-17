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

for(int k=4; k < M-4; k++){
for(int j=4; j < N-4; j++){
for(int i=4; i < P-4; i++){
b[k][j][i] = c0 * a[k][j][i]
+ c1 * (a[k][j][i-1] + a[k][j][i+1])
+ c2 * (a[k-1][j][i] + a[k+1][j][i])
+ c3 * (a[k][j-1][i] + a[k][j+1][i])
+ c4 * (a[k][j][i-2] + a[k][j][i+2])
+ c5 * (a[k-2][j][i] + a[k+2][j][i])
+ c6 * (a[k][j-2][i] + a[k][j+2][i])
+ c7 * (a[k][j][i-3] + a[k][j][i+3])
+ c8 * (a[k-3][j][i] + a[k+3][j][i])
+ c9 * (a[k][j-3][i] + a[k][j+3][i])
+ c10 * (a[k][j][i-4] + a[k][j][i+4])
+ c11 * (a[k-4][j][i] + a[k+4][j][i])
+ c12 * (a[k][j-4][i] + a[k][j+4][i])
;
}
}
}
