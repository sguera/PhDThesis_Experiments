double a[M][N][P];
double b[M][N][P];
double W[M][N][P][19];

for(int k=3; k < M-3; k++){
for(int j=3; j < N-3; j++){
for(int i=3; i < P-3; i++){
b[k][j][i] = W[k][j][i][0] * a[k][j][i]
+ W[k][j][i][1] * a[k][j][i-1] + W[k][j][i][2] * a[k][j][i+1]
+ W[k][j][i][3] * a[k-1][j][i] + W[k][j][i][4] * a[k+1][j][i]
+ W[k][j][i][5] * a[k][j-1][i] + W[k][j][i][6] * a[k][j+1][i]
+ W[k][j][i][7] * a[k][j][i-2] + W[k][j][i][8] * a[k][j][i+2]
+ W[k][j][i][9] * a[k-2][j][i] + W[k][j][i][10] * a[k+2][j][i]
+ W[k][j][i][11] * a[k][j-2][i] + W[k][j][i][12] * a[k][j+2][i]
+ W[k][j][i][13] * a[k][j][i-3] + W[k][j][i][14] * a[k][j][i+3]
+ W[k][j][i][15] * a[k-3][j][i] + W[k][j][i][16] * a[k+3][j][i]
+ W[k][j][i][17] * a[k][j-3][i] + W[k][j][i][18] * a[k][j+3][i]
;
}
}
}
