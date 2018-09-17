double a[M][N][P];
double b[M][N][P];
double W[M][N][P][63];

for(int k=2; k < M-2; k++){
for(int j=2; j < N-2; j++){
for(int i=2; i < P-2; i++){
b[k][j][i] = W[k][j][i][0] * a[k][j][i]
+ W[k][j][i][1] * (a[k][j][i-1] + a[k][j][i+1])
+ W[k][j][i][2] * (a[k][j-1][i] + a[k][j+1][i])
+ W[k][j][i][3] * (a[k-1][j][i] + a[k+1][j][i])
+ W[k][j][i][4] * (a[k][j][i-2] + a[k][j][i+2])
+ W[k][j][i][5] * (a[k][j-1][i-1] + a[k][j+1][i+1])
+ W[k][j][i][6] * (a[k-1][j][i-1] + a[k+1][j][i+1])
+ W[k][j][i][7] * (a[k+1][j][i-1] + a[k-1][j][i+1])
+ W[k][j][i][8] * (a[k][j+1][i-1] + a[k][j-1][i+1])
+ W[k][j][i][9] * (a[k][j-2][i] + a[k][j+2][i])
+ W[k][j][i][10] * (a[k-1][j-1][i] + a[k+1][j+1][i])
+ W[k][j][i][11] * (a[k+1][j-1][i] + a[k-1][j+1][i])
+ W[k][j][i][12] * (a[k-2][j][i] + a[k+2][j][i])
+ W[k][j][i][13] * (a[k][j-1][i-2] + a[k][j+1][i+2])
+ W[k][j][i][14] * (a[k-1][j][i-2] + a[k+1][j][i+2])
+ W[k][j][i][15] * (a[k+1][j][i-2] + a[k-1][j][i+2])
+ W[k][j][i][16] * (a[k][j+1][i-2] + a[k][j-1][i+2])
+ W[k][j][i][17] * (a[k][j-2][i-1] + a[k][j+2][i+1])
+ W[k][j][i][18] * (a[k-1][j-1][i-1] + a[k+1][j+1][i+1])
+ W[k][j][i][19] * (a[k+1][j-1][i-1] + a[k-1][j+1][i+1])
+ W[k][j][i][20] * (a[k-2][j][i-1] + a[k+2][j][i+1])
+ W[k][j][i][21] * (a[k+2][j][i-1] + a[k-2][j][i+1])
+ W[k][j][i][22] * (a[k-1][j+1][i-1] + a[k+1][j-1][i+1])
+ W[k][j][i][23] * (a[k+1][j+1][i-1] + a[k-1][j-1][i+1])
+ W[k][j][i][24] * (a[k][j+2][i-1] + a[k][j-2][i+1])
+ W[k][j][i][25] * (a[k-1][j-2][i] + a[k+1][j+2][i])
+ W[k][j][i][26] * (a[k+1][j-2][i] + a[k-1][j+2][i])
+ W[k][j][i][27] * (a[k-2][j-1][i] + a[k+2][j+1][i])
+ W[k][j][i][28] * (a[k+2][j-1][i] + a[k-2][j+1][i])
+ W[k][j][i][29] * (a[k][j-2][i-2] + a[k][j+2][i+2])
+ W[k][j][i][30] * (a[k-1][j-1][i-2] + a[k+1][j+1][i+2])
+ W[k][j][i][31] * (a[k+1][j-1][i-2] + a[k-1][j+1][i+2])
+ W[k][j][i][32] * (a[k-2][j][i-2] + a[k+2][j][i+2])
+ W[k][j][i][33] * (a[k+2][j][i-2] + a[k-2][j][i+2])
+ W[k][j][i][34] * (a[k-1][j+1][i-2] + a[k+1][j-1][i+2])
+ W[k][j][i][35] * (a[k+1][j+1][i-2] + a[k-1][j-1][i+2])
+ W[k][j][i][36] * (a[k][j+2][i-2] + a[k][j-2][i+2])
+ W[k][j][i][37] * (a[k-1][j-2][i-1] + a[k+1][j+2][i+1])
+ W[k][j][i][38] * (a[k+1][j-2][i-1] + a[k-1][j+2][i+1])
+ W[k][j][i][39] * (a[k-2][j-1][i-1] + a[k+2][j+1][i+1])
+ W[k][j][i][40] * (a[k+2][j-1][i-1] + a[k-2][j+1][i+1])
+ W[k][j][i][41] * (a[k-2][j+1][i-1] + a[k+2][j-1][i+1])
+ W[k][j][i][42] * (a[k+2][j+1][i-1] + a[k-2][j-1][i+1])
+ W[k][j][i][43] * (a[k-1][j+2][i-1] + a[k+1][j-2][i+1])
+ W[k][j][i][44] * (a[k+1][j+2][i-1] + a[k-1][j-2][i+1])
+ W[k][j][i][45] * (a[k-2][j-2][i] + a[k+2][j+2][i])
+ W[k][j][i][46] * (a[k+2][j-2][i] + a[k-2][j+2][i])
+ W[k][j][i][47] * (a[k-1][j-2][i-2] + a[k+1][j+2][i+2])
+ W[k][j][i][48] * (a[k+1][j-2][i-2] + a[k-1][j+2][i+2])
+ W[k][j][i][49] * (a[k-2][j-1][i-2] + a[k+2][j+1][i+2])
+ W[k][j][i][50] * (a[k+2][j-1][i-2] + a[k-2][j+1][i+2])
+ W[k][j][i][51] * (a[k-2][j+1][i-2] + a[k+2][j-1][i+2])
+ W[k][j][i][52] * (a[k+2][j+1][i-2] + a[k-2][j-1][i+2])
+ W[k][j][i][53] * (a[k-1][j+2][i-2] + a[k+1][j-2][i+2])
+ W[k][j][i][54] * (a[k+1][j+2][i-2] + a[k-1][j-2][i+2])
+ W[k][j][i][55] * (a[k-2][j-2][i-1] + a[k+2][j+2][i+1])
+ W[k][j][i][56] * (a[k+2][j-2][i-1] + a[k-2][j+2][i+1])
+ W[k][j][i][57] * (a[k-2][j+2][i-1] + a[k+2][j-2][i+1])
+ W[k][j][i][58] * (a[k+2][j+2][i-1] + a[k-2][j-2][i+1])
+ W[k][j][i][59] * (a[k-2][j-2][i-2] + a[k+2][j+2][i+2])
+ W[k][j][i][60] * (a[k+2][j-2][i-2] + a[k-2][j+2][i+2])
+ W[k][j][i][61] * (a[k-2][j+2][i-2] + a[k+2][j-2][i+2])
+ W[k][j][i][62] * (a[k+2][j+2][i-2] + a[k-2][j-2][i+2])
;
}
}
}
