double a[M][N][P];
double b[M][N][P];
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
double c41;
double c42;
double c43;
double c44;
double c45;
double c46;
double c47;
double c48;
double c49;
double c50;
double c51;
double c52;
double c53;
double c54;
double c55;
double c56;
double c57;
double c58;
double c59;
double c60;
double c61;
double c62;

for(int k=2; k < M-2; k++){
for(int j=2; j < N-2; j++){
for(int i=2; i < P-2; i++){
b[k][j][i] = c0 * a[k][j][i]
+ c1 * (a[k][j][i-1] + a[k][j][i+1])
+ c2 * (a[k][j-1][i] + a[k][j+1][i])
+ c3 * (a[k-1][j][i] + a[k+1][j][i])
+ c4 * (a[k][j][i-2] + a[k][j][i+2])
+ c5 * (a[k][j-1][i-1] + a[k][j+1][i+1])
+ c6 * (a[k-1][j][i-1] + a[k+1][j][i+1])
+ c7 * (a[k+1][j][i-1] + a[k-1][j][i+1])
+ c8 * (a[k][j+1][i-1] + a[k][j-1][i+1])
+ c9 * (a[k][j-2][i] + a[k][j+2][i])
+ c10 * (a[k-1][j-1][i] + a[k+1][j+1][i])
+ c11 * (a[k+1][j-1][i] + a[k-1][j+1][i])
+ c12 * (a[k-2][j][i] + a[k+2][j][i])
+ c13 * (a[k][j-1][i-2] + a[k][j+1][i+2])
+ c14 * (a[k-1][j][i-2] + a[k+1][j][i+2])
+ c15 * (a[k+1][j][i-2] + a[k-1][j][i+2])
+ c16 * (a[k][j+1][i-2] + a[k][j-1][i+2])
+ c17 * (a[k][j-2][i-1] + a[k][j+2][i+1])
+ c18 * (a[k-1][j-1][i-1] + a[k+1][j+1][i+1])
+ c19 * (a[k+1][j-1][i-1] + a[k-1][j+1][i+1])
+ c20 * (a[k-2][j][i-1] + a[k+2][j][i+1])
+ c21 * (a[k+2][j][i-1] + a[k-2][j][i+1])
+ c22 * (a[k-1][j+1][i-1] + a[k+1][j-1][i+1])
+ c23 * (a[k+1][j+1][i-1] + a[k-1][j-1][i+1])
+ c24 * (a[k][j+2][i-1] + a[k][j-2][i+1])
+ c25 * (a[k-1][j-2][i] + a[k+1][j+2][i])
+ c26 * (a[k+1][j-2][i] + a[k-1][j+2][i])
+ c27 * (a[k-2][j-1][i] + a[k+2][j+1][i])
+ c28 * (a[k+2][j-1][i] + a[k-2][j+1][i])
+ c29 * (a[k][j-2][i-2] + a[k][j+2][i+2])
+ c30 * (a[k-1][j-1][i-2] + a[k+1][j+1][i+2])
+ c31 * (a[k+1][j-1][i-2] + a[k-1][j+1][i+2])
+ c32 * (a[k-2][j][i-2] + a[k+2][j][i+2])
+ c33 * (a[k+2][j][i-2] + a[k-2][j][i+2])
+ c34 * (a[k-1][j+1][i-2] + a[k+1][j-1][i+2])
+ c35 * (a[k+1][j+1][i-2] + a[k-1][j-1][i+2])
+ c36 * (a[k][j+2][i-2] + a[k][j-2][i+2])
+ c37 * (a[k-1][j-2][i-1] + a[k+1][j+2][i+1])
+ c38 * (a[k+1][j-2][i-1] + a[k-1][j+2][i+1])
+ c39 * (a[k-2][j-1][i-1] + a[k+2][j+1][i+1])
+ c40 * (a[k+2][j-1][i-1] + a[k-2][j+1][i+1])
+ c41 * (a[k-2][j+1][i-1] + a[k+2][j-1][i+1])
+ c42 * (a[k+2][j+1][i-1] + a[k-2][j-1][i+1])
+ c43 * (a[k-1][j+2][i-1] + a[k+1][j-2][i+1])
+ c44 * (a[k+1][j+2][i-1] + a[k-1][j-2][i+1])
+ c45 * (a[k-2][j-2][i] + a[k+2][j+2][i])
+ c46 * (a[k+2][j-2][i] + a[k-2][j+2][i])
+ c47 * (a[k-1][j-2][i-2] + a[k+1][j+2][i+2])
+ c48 * (a[k+1][j-2][i-2] + a[k-1][j+2][i+2])
+ c49 * (a[k-2][j-1][i-2] + a[k+2][j+1][i+2])
+ c50 * (a[k+2][j-1][i-2] + a[k-2][j+1][i+2])
+ c51 * (a[k-2][j+1][i-2] + a[k+2][j-1][i+2])
+ c52 * (a[k+2][j+1][i-2] + a[k-2][j-1][i+2])
+ c53 * (a[k-1][j+2][i-2] + a[k+1][j-2][i+2])
+ c54 * (a[k+1][j+2][i-2] + a[k-1][j-2][i+2])
+ c55 * (a[k-2][j-2][i-1] + a[k+2][j+2][i+1])
+ c56 * (a[k+2][j-2][i-1] + a[k-2][j+2][i+1])
+ c57 * (a[k-2][j+2][i-1] + a[k+2][j-2][i+1])
+ c58 * (a[k+2][j+2][i-1] + a[k-2][j-2][i+1])
+ c59 * (a[k-2][j-2][i-2] + a[k+2][j+2][i+2])
+ c60 * (a[k+2][j-2][i-2] + a[k-2][j+2][i+2])
+ c61 * (a[k-2][j+2][i-2] + a[k+2][j-2][i+2])
+ c62 * (a[k+2][j+2][i-2] + a[k-2][j-2][i+2])
;
}
}
}
