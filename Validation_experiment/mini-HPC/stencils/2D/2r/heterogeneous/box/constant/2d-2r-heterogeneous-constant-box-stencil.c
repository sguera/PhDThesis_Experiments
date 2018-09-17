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
double c13;
double c14;
double c15;
double c16;
double c17;
double c18;
double c19;
double c20;
double c21;
double c22;
double c23;
double c24;

for(int j=2; j < M-2; j++){
for(int i=2; i < N-2; i++){
b[j][i] = c0 * a[j][i]
+ c1 * a[j-2][i-2]
+ c2 * a[j-1][i-2]
+ c3 * a[j][i-2]
+ c4 * a[j+1][i-2]
+ c5 * a[j+2][i-2]
+ c6 * a[j-2][i-1]
+ c7 * a[j-1][i-1]
+ c8 * a[j][i-1]
+ c9 * a[j+1][i-1]
+ c10 * a[j+2][i-1]
+ c11 * a[j-2][i]
+ c12 * a[j-1][i]
+ c13 * a[j+1][i]
+ c14 * a[j+2][i]
+ c15 * a[j-2][i+1]
+ c16 * a[j-1][i+1]
+ c17 * a[j][i+1]
+ c18 * a[j+1][i+1]
+ c19 * a[j+2][i+1]
+ c20 * a[j-2][i+2]
+ c21 * a[j-1][i+2]
+ c22 * a[j][i+2]
+ c23 * a[j+1][i+2]
+ c24 * a[j+2][i+2]
;
}
}
