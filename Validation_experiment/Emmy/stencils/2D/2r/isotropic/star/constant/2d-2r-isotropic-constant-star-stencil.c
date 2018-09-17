double a[M][N];
double b[M][N];
double c0;
double c1;
double c2;

for(int j=2; j < M-2; j++){
for(int i=2; i < N-2; i++){
b[j][i] = c0 * a[j][i]
+ c1 * ((a[j][i-1] + a[j][i+1]) + (a[j-1][i] + a[j+1][i]))
+ c2 * ((a[j][i-2] + a[j][i+2]) + (a[j-2][i] + a[j+2][i]))
;
}
}
