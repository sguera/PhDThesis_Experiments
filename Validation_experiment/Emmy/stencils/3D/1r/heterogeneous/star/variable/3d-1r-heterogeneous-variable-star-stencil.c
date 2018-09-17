double a[M][N][P];
double b[M][N][P];
double W[M][N][P][7];

for(int k=1; k < M-1; k++){
for(int j=1; j < N-1; j++){
for(int i=1; i < P-1; i++){
b[k][j][i] = W[k][j][i][0] * a[k][j][i]
+ W[k][j][i][1] * a[k][j][i-1] + W[k][j][i][2] * a[k][j][i+1]
+ W[k][j][i][3] * a[k-1][j][i] + W[k][j][i][4] * a[k+1][j][i]
+ W[k][j][i][5] * a[k][j-1][i] + W[k][j][i][6] * a[k][j+1][i]
;
}
}
}
