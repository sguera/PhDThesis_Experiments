double a[M][N];
double b[M][N];
double W[M][N][9];

for(int j=2; j < M-2; j++){
for(int i=2; i < N-2; i++){
b[j][i] = W[j][i][0] * a[j][i]
+ W[j][i][1] * a[j][i-1] + W[j][i][2] * a[j][i+1]
+ W[j][i][3] * a[j-1][i] + W[j][i][4] * a[j+1][i]
+ W[j][i][5] * a[j][i-2] + W[j][i][6] * a[j][i+2]
+ W[j][i][7] * a[j-2][i] + W[j][i][8] * a[j+2][i]
;
}
}
