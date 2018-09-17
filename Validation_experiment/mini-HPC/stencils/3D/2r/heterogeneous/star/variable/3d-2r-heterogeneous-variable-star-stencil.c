double a[M][N][P];
double b[M][N][P];
double W[M][N][P][13];

for(int k=2; k < M-2; k++){
for(int j=2; j < N-2; j++){
for(int i=2; i < P-2; i++){
b[k][j][i] = W[k][j][i][0] * a[k][j][i]
+ W[k][j][i][1] * a[k][j][i-1] + W[k][j][i][2] * a[k][j][i+1]
+ W[k][j][i][3] * a[k-1][j][i] + W[k][j][i][4] * a[k+1][j][i]
+ W[k][j][i][5] * a[k][j-1][i] + W[k][j][i][6] * a[k][j+1][i]
+ W[k][j][i][7] * a[k][j][i-2] + W[k][j][i][8] * a[k][j][i+2]
+ W[k][j][i][9] * a[k-2][j][i] + W[k][j][i][10] * a[k+2][j][i]
+ W[k][j][i][11] * a[k][j-2][i] + W[k][j][i][12] * a[k][j+2][i]
;
}
}
}
