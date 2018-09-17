double a[M][N][P];
double b[M][N][P];
double W[M][N][P][25];

for(int k=4; k < M-4; k++){
for(int j=4; j < N-4; j++){
for(int i=4; i < P-4; i++){
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
+ W[k][j][i][19] * a[k][j][i-4] + W[k][j][i][20] * a[k][j][i+4]
+ W[k][j][i][21] * a[k-4][j][i] + W[k][j][i][22] * a[k+4][j][i]
+ W[k][j][i][23] * a[k][j-4][i] + W[k][j][i][24] * a[k][j+4][i]
;
}
}
}
