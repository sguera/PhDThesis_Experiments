double a[M][N][P];
double b[M][N][P];
double W[M][N][P][27];

for(int k=1; k < M-1; k++){
for(int j=1; j < N-1; j++){
for(int i=1; i < P-1; i++){
b[k][j][i] = W[k][j][i][0] * a[k][j][i]
+ W[k][j][i][1] * a[k-1][j-1][i-1]
+ W[k][j][i][2] * a[k][j-1][i-1]
+ W[k][j][i][3] * a[k+1][j-1][i-1]
+ W[k][j][i][4] * a[k-1][j][i-1]
+ W[k][j][i][5] * a[k][j][i-1]
+ W[k][j][i][6] * a[k+1][j][i-1]
+ W[k][j][i][7] * a[k-1][j+1][i-1]
+ W[k][j][i][8] * a[k][j+1][i-1]
+ W[k][j][i][9] * a[k+1][j+1][i-1]
+ W[k][j][i][10] * a[k-1][j-1][i]
+ W[k][j][i][11] * a[k][j-1][i]
+ W[k][j][i][12] * a[k+1][j-1][i]
+ W[k][j][i][13] * a[k-1][j][i]
+ W[k][j][i][14] * a[k+1][j][i]
+ W[k][j][i][15] * a[k-1][j+1][i]
+ W[k][j][i][16] * a[k][j+1][i]
+ W[k][j][i][17] * a[k+1][j+1][i]
+ W[k][j][i][18] * a[k-1][j-1][i+1]
+ W[k][j][i][19] * a[k][j-1][i+1]
+ W[k][j][i][20] * a[k+1][j-1][i+1]
+ W[k][j][i][21] * a[k-1][j][i+1]
+ W[k][j][i][22] * a[k][j][i+1]
+ W[k][j][i][23] * a[k+1][j][i+1]
+ W[k][j][i][24] * a[k-1][j+1][i+1]
+ W[k][j][i][25] * a[k][j+1][i+1]
+ W[k][j][i][26] * a[k+1][j+1][i+1]
;
}
}
}