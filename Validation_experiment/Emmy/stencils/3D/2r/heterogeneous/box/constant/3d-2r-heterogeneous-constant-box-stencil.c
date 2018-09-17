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
double c63;
double c64;
double c65;
double c66;
double c67;
double c68;
double c69;
double c70;
double c71;
double c72;
double c73;
double c74;
double c75;
double c76;
double c77;
double c78;
double c79;
double c80;
double c81;
double c82;
double c83;
double c84;
double c85;
double c86;
double c87;
double c88;
double c89;
double c90;
double c91;
double c92;
double c93;
double c94;
double c95;
double c96;
double c97;
double c98;
double c99;
double c100;
double c101;
double c102;
double c103;
double c104;
double c105;
double c106;
double c107;
double c108;
double c109;
double c110;
double c111;
double c112;
double c113;
double c114;
double c115;
double c116;
double c117;
double c118;
double c119;
double c120;
double c121;
double c122;
double c123;
double c124;

for(int k=2; k < M-2; k++){
for(int j=2; j < N-2; j++){
for(int i=2; i < P-2; i++){
b[k][j][i] = c0 * a[k][j][i]
+ c1 * a[k-2][j-2][i-2]
+ c2 * a[k-1][j-2][i-2]
+ c3 * a[k][j-2][i-2]
+ c4 * a[k+1][j-2][i-2]
+ c5 * a[k+2][j-2][i-2]
+ c6 * a[k-2][j-1][i-2]
+ c7 * a[k-1][j-1][i-2]
+ c8 * a[k][j-1][i-2]
+ c9 * a[k+1][j-1][i-2]
+ c10 * a[k+2][j-1][i-2]
+ c11 * a[k-2][j][i-2]
+ c12 * a[k-1][j][i-2]
+ c13 * a[k][j][i-2]
+ c14 * a[k+1][j][i-2]
+ c15 * a[k+2][j][i-2]
+ c16 * a[k-2][j+1][i-2]
+ c17 * a[k-1][j+1][i-2]
+ c18 * a[k][j+1][i-2]
+ c19 * a[k+1][j+1][i-2]
+ c20 * a[k+2][j+1][i-2]
+ c21 * a[k-2][j+2][i-2]
+ c22 * a[k-1][j+2][i-2]
+ c23 * a[k][j+2][i-2]
+ c24 * a[k+1][j+2][i-2]
+ c25 * a[k+2][j+2][i-2]
+ c26 * a[k-2][j-2][i-1]
+ c27 * a[k-1][j-2][i-1]
+ c28 * a[k][j-2][i-1]
+ c29 * a[k+1][j-2][i-1]
+ c30 * a[k+2][j-2][i-1]
+ c31 * a[k-2][j-1][i-1]
+ c32 * a[k-1][j-1][i-1]
+ c33 * a[k][j-1][i-1]
+ c34 * a[k+1][j-1][i-1]
+ c35 * a[k+2][j-1][i-1]
+ c36 * a[k-2][j][i-1]
+ c37 * a[k-1][j][i-1]
+ c38 * a[k][j][i-1]
+ c39 * a[k+1][j][i-1]
+ c40 * a[k+2][j][i-1]
+ c41 * a[k-2][j+1][i-1]
+ c42 * a[k-1][j+1][i-1]
+ c43 * a[k][j+1][i-1]
+ c44 * a[k+1][j+1][i-1]
+ c45 * a[k+2][j+1][i-1]
+ c46 * a[k-2][j+2][i-1]
+ c47 * a[k-1][j+2][i-1]
+ c48 * a[k][j+2][i-1]
+ c49 * a[k+1][j+2][i-1]
+ c50 * a[k+2][j+2][i-1]
+ c51 * a[k-2][j-2][i]
+ c52 * a[k-1][j-2][i]
+ c53 * a[k][j-2][i]
+ c54 * a[k+1][j-2][i]
+ c55 * a[k+2][j-2][i]
+ c56 * a[k-2][j-1][i]
+ c57 * a[k-1][j-1][i]
+ c58 * a[k][j-1][i]
+ c59 * a[k+1][j-1][i]
+ c60 * a[k+2][j-1][i]
+ c61 * a[k-2][j][i]
+ c62 * a[k-1][j][i]
+ c63 * a[k+1][j][i]
+ c64 * a[k+2][j][i]
+ c65 * a[k-2][j+1][i]
+ c66 * a[k-1][j+1][i]
+ c67 * a[k][j+1][i]
+ c68 * a[k+1][j+1][i]
+ c69 * a[k+2][j+1][i]
+ c70 * a[k-2][j+2][i]
+ c71 * a[k-1][j+2][i]
+ c72 * a[k][j+2][i]
+ c73 * a[k+1][j+2][i]
+ c74 * a[k+2][j+2][i]
+ c75 * a[k-2][j-2][i+1]
+ c76 * a[k-1][j-2][i+1]
+ c77 * a[k][j-2][i+1]
+ c78 * a[k+1][j-2][i+1]
+ c79 * a[k+2][j-2][i+1]
+ c80 * a[k-2][j-1][i+1]
+ c81 * a[k-1][j-1][i+1]
+ c82 * a[k][j-1][i+1]
+ c83 * a[k+1][j-1][i+1]
+ c84 * a[k+2][j-1][i+1]
+ c85 * a[k-2][j][i+1]
+ c86 * a[k-1][j][i+1]
+ c87 * a[k][j][i+1]
+ c88 * a[k+1][j][i+1]
+ c89 * a[k+2][j][i+1]
+ c90 * a[k-2][j+1][i+1]
+ c91 * a[k-1][j+1][i+1]
+ c92 * a[k][j+1][i+1]
+ c93 * a[k+1][j+1][i+1]
+ c94 * a[k+2][j+1][i+1]
+ c95 * a[k-2][j+2][i+1]
+ c96 * a[k-1][j+2][i+1]
+ c97 * a[k][j+2][i+1]
+ c98 * a[k+1][j+2][i+1]
+ c99 * a[k+2][j+2][i+1]
+ c100 * a[k-2][j-2][i+2]
+ c101 * a[k-1][j-2][i+2]
+ c102 * a[k][j-2][i+2]
+ c103 * a[k+1][j-2][i+2]
+ c104 * a[k+2][j-2][i+2]
+ c105 * a[k-2][j-1][i+2]
+ c106 * a[k-1][j-1][i+2]
+ c107 * a[k][j-1][i+2]
+ c108 * a[k+1][j-1][i+2]
+ c109 * a[k+2][j-1][i+2]
+ c110 * a[k-2][j][i+2]
+ c111 * a[k-1][j][i+2]
+ c112 * a[k][j][i+2]
+ c113 * a[k+1][j][i+2]
+ c114 * a[k+2][j][i+2]
+ c115 * a[k-2][j+1][i+2]
+ c116 * a[k-1][j+1][i+2]
+ c117 * a[k][j+1][i+2]
+ c118 * a[k+1][j+1][i+2]
+ c119 * a[k+2][j+1][i+2]
+ c120 * a[k-2][j+2][i+2]
+ c121 * a[k-1][j+2][i+2]
+ c122 * a[k][j+2][i+2]
+ c123 * a[k+1][j+2][i+2]
+ c124 * a[k+2][j+2][i+2]
;
}
}
}
