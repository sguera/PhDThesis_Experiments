double a[M][N];
double b[M][N];
double W[M][N][5];

for(int j=2; j < M-2; j++){
for(int i=2; i < N-2; i++){
b[j][i] = W[j][i][0] * a[j][i]
+ W[j][i][1] * (a[j][i-1] + a[j-1][i] + a[j+1][i] + a[j][i+1])
+ W[j][i][2] * (a[j][i-2] + a[j-1][i-1] + a[j+1][i-1] + a[j-2][i] + a[j+2][i] + a[j-1][i+1] + a[j+1][i+1] + a[j][i+2])
+ W[j][i][3] * (a[j-1][i-2] + a[j+1][i-2] + a[j-2][i-1] + a[j+2][i-1] + a[j-2][i+1] + a[j+2][i+1] + a[j-1][i+2] + a[j+1][i+2])
+ W[j][i][4] * (a[j-2][i-2] + a[j+2][i-2] + a[j-2][i+2] + a[j+2][i+2])
;
}
}
