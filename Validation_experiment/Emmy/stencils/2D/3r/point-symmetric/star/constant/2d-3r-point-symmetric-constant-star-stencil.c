double a[M][N];
double b[M][N];
double c0;
double c1;
double c2;
double c3;
double c4;
double c5;
double c6;

for(int j=3; j < M-3; j++){
for(int i=3; i < N-3; i++){
b[j][i] = c0 * a[j][i]
+ c1 * (a[j][i-1] + a[j][i+1])
+ c2 * (a[j-1][i] + a[j+1][i])
+ c3 * (a[j][i-2] + a[j][i+2])
+ c4 * (a[j-2][i] + a[j+2][i])
+ c5 * (a[j][i-3] + a[j][i+3])
+ c6 * (a[j-3][i] + a[j+3][i])
;
}
}
