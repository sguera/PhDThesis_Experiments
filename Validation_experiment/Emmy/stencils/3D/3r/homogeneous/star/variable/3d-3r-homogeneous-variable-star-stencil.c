double a[M][N][P];
double b[M][N][P];
double W[M][N][P][1];

for(int k=3; k < M-3; k++){
for(int j=3; j < N-3; j++){
for(int i=3; i < P-3; i++){
b[k][j][i] = W[k][j][i][0] * (a[k][j][i]
+ a[k][j][i-1] + a[k][j][i+1]
+ a[k-1][j][i] + a[k+1][j][i]
+ a[k][j-1][i] + a[k][j+1][i]
+ a[k][j][i-2] + a[k][j][i+2]
+ a[k-2][j][i] + a[k+2][j][i]
+ a[k][j-2][i] + a[k][j+2][i]
+ a[k][j][i-3] + a[k][j][i+3]
+ a[k-3][j][i] + a[k+3][j][i]
+ a[k][j-3][i] + a[k][j+3][i]
);
}
}
}
