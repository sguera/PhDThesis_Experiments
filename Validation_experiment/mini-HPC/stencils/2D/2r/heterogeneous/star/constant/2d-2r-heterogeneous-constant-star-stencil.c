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

for(int j=2; j < M-2; j++){
for(int i=2; i < N-2; i++){
b[j][i] = c0 * a[j][i]
+ c1 * a[j][i-1] + c2 * a[j][i+1]
+ c3 * a[j-1][i] + c4 * a[j+1][i]
+ c5 * a[j][i-2] + c6 * a[j][i+2]
+ c7 * a[j-2][i] + c8 * a[j+2][i]
;
}
}
