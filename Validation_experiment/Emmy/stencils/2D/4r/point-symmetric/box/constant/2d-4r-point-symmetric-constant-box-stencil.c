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
double c25;
double c26;
double c27;
double c28;
double c29;
double c30;
double c31;
double c32;
double c33;
double c34;
double c35;
double c36;
double c37;
double c38;
double c39;
double c40;

for(int j=4; j < M-4; j++){
for(int i=4; i < N-4; i++){
b[j][i] = c0 * a[j][i]
+ c1 * (a[j][i-1] + a[j][i+1])
+ c2 * (a[j-1][i] + a[j+1][i])
+ c3 * (a[j][i-2] + a[j][i+2])
+ c4 * (a[j-1][i-1] + a[j+1][i+1])
+ c5 * (a[j+1][i-1] + a[j-1][i+1])
+ c6 * (a[j-2][i] + a[j+2][i])
+ c7 * (a[j][i-3] + a[j][i+3])
+ c8 * (a[j-1][i-2] + a[j+1][i+2])
+ c9 * (a[j+1][i-2] + a[j-1][i+2])
+ c10 * (a[j-2][i-1] + a[j+2][i+1])
+ c11 * (a[j+2][i-1] + a[j-2][i+1])
+ c12 * (a[j-3][i] + a[j+3][i])
+ c13 * (a[j][i-4] + a[j][i+4])
+ c14 * (a[j-1][i-3] + a[j+1][i+3])
+ c15 * (a[j+1][i-3] + a[j-1][i+3])
+ c16 * (a[j-2][i-2] + a[j+2][i+2])
+ c17 * (a[j+2][i-2] + a[j-2][i+2])
+ c18 * (a[j-3][i-1] + a[j+3][i+1])
+ c19 * (a[j+3][i-1] + a[j-3][i+1])
+ c20 * (a[j-4][i] + a[j+4][i])
+ c21 * (a[j-1][i-4] + a[j+1][i+4])
+ c22 * (a[j+1][i-4] + a[j-1][i+4])
+ c23 * (a[j-2][i-3] + a[j+2][i+3])
+ c24 * (a[j+2][i-3] + a[j-2][i+3])
+ c25 * (a[j-3][i-2] + a[j+3][i+2])
+ c26 * (a[j+3][i-2] + a[j-3][i+2])
+ c27 * (a[j-4][i-1] + a[j+4][i+1])
+ c28 * (a[j+4][i-1] + a[j-4][i+1])
+ c29 * (a[j-2][i-4] + a[j+2][i+4])
+ c30 * (a[j+2][i-4] + a[j-2][i+4])
+ c31 * (a[j-3][i-3] + a[j+3][i+3])
+ c32 * (a[j+3][i-3] + a[j-3][i+3])
+ c33 * (a[j-4][i-2] + a[j+4][i+2])
+ c34 * (a[j+4][i-2] + a[j-4][i+2])
+ c35 * (a[j-3][i-4] + a[j+3][i+4])
+ c36 * (a[j+3][i-4] + a[j-3][i+4])
+ c37 * (a[j-4][i-3] + a[j+4][i+3])
+ c38 * (a[j+4][i-3] + a[j-4][i+3])
+ c39 * (a[j-4][i-4] + a[j+4][i+4])
+ c40 * (a[j+4][i-4] + a[j-4][i+4])
;
}
}
