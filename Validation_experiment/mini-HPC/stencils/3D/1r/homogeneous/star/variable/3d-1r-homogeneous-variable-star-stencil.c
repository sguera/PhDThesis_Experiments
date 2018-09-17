double a[M][N][P];
double b[M][N][P];
double W[M][N][P][1];

for(int k=1; k < M-1; k++){
for(int j=1; j < N-1; j++){
for(int i=1; i < P-1; i++){
b[k][j][i] = W[k][j][i] * (a[k][j][i]
+ a[k][j][i-1] + a[k][j][i+1]
+ a[k-1][j][i] + a[k+1][j][i]
+ a[k][j-1][i] + a[k][j+1][i]
);
}
}
}
