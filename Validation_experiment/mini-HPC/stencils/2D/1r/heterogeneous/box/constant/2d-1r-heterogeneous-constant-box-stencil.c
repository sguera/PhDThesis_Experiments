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

for(int j=1; j < M-1; j++){
for(int i=1; i < N-1; i++){
b[j][i] = c0 * a[j][i]
+ c1 * a[j-1][i-1]
+ c2 * a[j][i-1]
+ c3 * a[j+1][i-1]
+ c4 * a[j-1][i]
+ c5 * a[j+1][i]
+ c6 * a[j-1][i+1]
+ c7 * a[j][i+1]
+ c8 * a[j+1][i+1]
;
}
}
