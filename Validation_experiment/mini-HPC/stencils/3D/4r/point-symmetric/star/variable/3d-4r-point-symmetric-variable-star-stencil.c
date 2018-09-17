double a[M][N][P];
double b[M][N][P];
double W[M][N][P][13];

for(int k=4; k < M-4; k++){
for(int j=4; j < N-4; j++){
for(int i=4; i < P-4; i++){
b[k][j][i] = W[k][j][i][0] * a[k][j][i]
+ W[k][j][i][1] * (a[k][j][i-1] + a[k][j][i+1])
+ W[k][j][i][2] * (a[k-1][j][i] + a[k+1][j][i])
+ W[k][j][i][3] * (a[k][j-1][i] + a[k][j+1][i])
+ W[k][j][i][4] * (a[k][j][i-2] + a[k][j][i+2])
+ W[k][j][i][5] * (a[k-2][j][i] + a[k+2][j][i])
+ W[k][j][i][6] * (a[k][j-2][i] + a[k][j+2][i])
+ W[k][j][i][7] * (a[k][j][i-3] + a[k][j][i+3])
+ W[k][j][i][8] * (a[k-3][j][i] + a[k+3][j][i])
+ W[k][j][i][9] * (a[k][j-3][i] + a[k][j+3][i])
+ W[k][j][i][10] * (a[k][j][i-4] + a[k][j][i+4])
+ W[k][j][i][11] * (a[k-4][j][i] + a[k+4][j][i])
+ W[k][j][i][12] * (a[k][j-4][i] + a[k][j+4][i])
;
}
}
}
