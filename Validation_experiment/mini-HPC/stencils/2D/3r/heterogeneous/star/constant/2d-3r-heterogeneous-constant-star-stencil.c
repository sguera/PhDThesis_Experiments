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

for(int j=3; j < M-3; j++){
for(int i=3; i < N-3; i++){
b[j][i] = c0 * a[j][i]
+ c1 * a[j][i-1] + c2 * a[j][i+1]
+ c3 * a[j-1][i] + c4 * a[j+1][i]
+ c5 * a[j][i-2] + c6 * a[j][i+2]
+ c7 * a[j-2][i] + c8 * a[j+2][i]
+ c9 * a[j][i-3] + c10 * a[j][i+3]
+ c11 * a[j-3][i] + c12 * a[j+3][i]
;
}
}
