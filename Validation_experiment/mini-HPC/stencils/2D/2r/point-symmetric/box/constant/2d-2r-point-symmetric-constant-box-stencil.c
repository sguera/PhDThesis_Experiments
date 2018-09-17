double a[M][N];
double b[M][N];
double c0;
double c1;
double c2;
double c3;
double c4;
double c5;
double c6;
double c7;
double c8;
double c9;
double c10;
double c11;
double c12;

for(int j=2; j < M-2; j++){
for(int i=2; i < N-2; i++){
b[j][i] = c0 * a[j][i]
+ c1 * (a[j][i-1] + a[j][i+1])
+ c2 * (a[j-1][i] + a[j+1][i])
+ c3 * (a[j][i-2] + a[j][i+2])
+ c4 * (a[j-1][i-1] + a[j+1][i+1])
+ c5 * (a[j+1][i-1] + a[j-1][i+1])
+ c6 * (a[j-2][i] + a[j+2][i])
+ c7 * (a[j-1][i-2] + a[j+1][i+2])
+ c8 * (a[j+1][i-2] + a[j-1][i+2])
+ c9 * (a[j-2][i-1] + a[j+2][i+1])
+ c10 * (a[j+2][i-1] + a[j-2][i+1])
+ c11 * (a[j-2][i-2] + a[j+2][i+2])
+ c12 * (a[j+2][i-2] + a[j-2][i+2])
;
}
}
