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

for(int k=3; k < M-3; k++){
for(int j=3; j < N-3; j++){
for(int i=3; i < P-3; i++){
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
;
}
}
}
