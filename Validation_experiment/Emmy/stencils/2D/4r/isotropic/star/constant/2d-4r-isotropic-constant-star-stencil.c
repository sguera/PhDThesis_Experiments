double a[M][N];
double b[M][N];
double c0;
double c1;
double c2;
double c3;
double c4;

for(int j=4; j < M-4; j++){
for(int i=4; i < N-4; i++){
b[j][i] = c0 * a[j][i]
+ c1 * ((a[j][i-1] + a[j][i+1]) + (a[j-1][i] + a[j+1][i]))
+ c2 * ((a[j][i-2] + a[j][i+2]) + (a[j-2][i] + a[j+2][i]))
+ c3 * ((a[j][i-3] + a[j][i+3]) + (a[j-3][i] + a[j+3][i]))
+ c4 * ((a[j][i-4] + a[j][i+4]) + (a[j-4][i] + a[j+4][i]))
;
}
}
