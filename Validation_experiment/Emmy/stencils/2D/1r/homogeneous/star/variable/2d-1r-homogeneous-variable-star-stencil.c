double a[M][N];
double b[M][N];
double W[M][N][1];

for(int j=1; j < M-1; j++){
for(int i=1; i < N-1; i++){
b[j][i] = W[j][i][0] * (a[j][i]
+ a[j][i-1] + a[j][i+1]
+ a[j-1][i] + a[j+1][i]
);
}
}
