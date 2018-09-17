double a[M][N];
double b[M][N];
double c0;
double c1;
double c2;
double c3;

for(int j=3; j < M-3; j++){
for(int i=3; i < N-3; i++){
b[j][i] = c0 * a[j][i]
+ c1 * ((a[j][i-1] + a[j][i+1]) + (a[j-1][i] + a[j+1][i]))
+ c2 * ((a[j][i-2] + a[j][i+2]) + (a[j-2][i] + a[j+2][i]))
+ c3 * ((a[j][i-3] + a[j][i+3]) + (a[j-3][i] + a[j+3][i]))
;
}
}
