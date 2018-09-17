double a[M][N];
double b[M][N];
double W[M][N][13];

for(int j=3; j < M-3; j++){
for(int i=3; i < N-3; i++){
b[j][i] = W[j][i][0] * a[j][i]
+ W[j][i][1] * a[j][i-1] + W[j][i][2] * a[j][i+1]
+ W[j][i][3] * a[j-1][i] + W[j][i][4] * a[j+1][i]
+ W[j][i][5] * a[j][i-2] + W[j][i][6] * a[j][i+2]
+ W[j][i][7] * a[j-2][i] + W[j][i][8] * a[j+2][i]
+ W[j][i][9] * a[j][i-3] + W[j][i][10] * a[j][i+3]
+ W[j][i][11] * a[j-3][i] + W[j][i][12] * a[j+3][i]
;
}
}
