double a[M][N][P];
double b[M][N][P];
double c0;
double c1;
double c2;
double c3;
double c4;

for(int k=4; k < M-4; k++){
for(int j=4; j < N-4; j++){
for(int i=4; i < P-4; i++){
b[k][j][i] = c0 * a[k][j][i]
+ c1 * ((a[k][j][i-1] + a[k][j][i+1]) + (a[k-1][j][i] + a[k+1][j][i]) + (a[k][j-1][i] + a[k][j+1][i]))
+ c2 * ((a[k][j][i-2] + a[k][j][i+2]) + (a[k-2][j][i] + a[k+2][j][i]) + (a[k][j-2][i] + a[k][j+2][i]))
+ c3 * ((a[k][j][i-3] + a[k][j][i+3]) + (a[k-3][j][i] + a[k+3][j][i]) + (a[k][j-3][i] + a[k][j+3][i]))
+ c4 * ((a[k][j][i-4] + a[k][j][i+4]) + (a[k-4][j][i] + a[k+4][j][i]) + (a[k][j-4][i] + a[k][j+4][i]))
;
}
}
}
