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
double c125;
double c126;
double c127;
double c128;
double c129;
double c130;
double c131;
double c132;
double c133;
double c134;
double c135;
double c136;
double c137;
double c138;
double c139;
double c140;
double c141;
double c142;
double c143;
double c144;
double c145;
double c146;
double c147;
double c148;
double c149;
double c150;
double c151;
double c152;
double c153;
double c154;
double c155;
double c156;
double c157;
double c158;
double c159;
double c160;
double c161;
double c162;
double c163;
double c164;
double c165;
double c166;
double c167;
double c168;
double c169;
double c170;
double c171;

for(int k=3; k < M-3; k++){
for(int j=3; j < N-3; j++){
for(int i=3; i < P-3; i++){
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
+ c13 * (a[k][j][i-3] + a[k][j][i+3])
+ c14 * (a[k][j-1][i-2] + a[k][j+1][i+2])
+ c15 * (a[k-1][j][i-2] + a[k+1][j][i+2])
+ c16 * (a[k+1][j][i-2] + a[k-1][j][i+2])
+ c17 * (a[k][j+1][i-2] + a[k][j-1][i+2])
+ c18 * (a[k][j-2][i-1] + a[k][j+2][i+1])
+ c19 * (a[k-1][j-1][i-1] + a[k+1][j+1][i+1])
+ c20 * (a[k+1][j-1][i-1] + a[k-1][j+1][i+1])
+ c21 * (a[k-2][j][i-1] + a[k+2][j][i+1])
+ c22 * (a[k+2][j][i-1] + a[k-2][j][i+1])
+ c23 * (a[k-1][j+1][i-1] + a[k+1][j-1][i+1])
+ c24 * (a[k+1][j+1][i-1] + a[k-1][j-1][i+1])
+ c25 * (a[k][j+2][i-1] + a[k][j-2][i+1])
+ c26 * (a[k][j-3][i] + a[k][j+3][i])
+ c27 * (a[k-1][j-2][i] + a[k+1][j+2][i])
+ c28 * (a[k+1][j-2][i] + a[k-1][j+2][i])
+ c29 * (a[k-2][j-1][i] + a[k+2][j+1][i])
+ c30 * (a[k+2][j-1][i] + a[k-2][j+1][i])
+ c31 * (a[k-3][j][i] + a[k+3][j][i])
+ c32 * (a[k][j-1][i-3] + a[k][j+1][i+3])
+ c33 * (a[k-1][j][i-3] + a[k+1][j][i+3])
+ c34 * (a[k+1][j][i-3] + a[k-1][j][i+3])
+ c35 * (a[k][j+1][i-3] + a[k][j-1][i+3])
+ c36 * (a[k][j-2][i-2] + a[k][j+2][i+2])
+ c37 * (a[k-1][j-1][i-2] + a[k+1][j+1][i+2])
+ c38 * (a[k+1][j-1][i-2] + a[k-1][j+1][i+2])
+ c39 * (a[k-2][j][i-2] + a[k+2][j][i+2])
+ c40 * (a[k+2][j][i-2] + a[k-2][j][i+2])
+ c41 * (a[k-1][j+1][i-2] + a[k+1][j-1][i+2])
+ c42 * (a[k+1][j+1][i-2] + a[k-1][j-1][i+2])
+ c43 * (a[k][j+2][i-2] + a[k][j-2][i+2])
+ c44 * (a[k][j-3][i-1] + a[k][j+3][i+1])
+ c45 * (a[k-1][j-2][i-1] + a[k+1][j+2][i+1])
+ c46 * (a[k+1][j-2][i-1] + a[k-1][j+2][i+1])
+ c47 * (a[k-2][j-1][i-1] + a[k+2][j+1][i+1])
+ c48 * (a[k+2][j-1][i-1] + a[k-2][j+1][i+1])
+ c49 * (a[k-3][j][i-1] + a[k+3][j][i+1])
+ c50 * (a[k+3][j][i-1] + a[k-3][j][i+1])
+ c51 * (a[k-2][j+1][i-1] + a[k+2][j-1][i+1])
+ c52 * (a[k+2][j+1][i-1] + a[k-2][j-1][i+1])
+ c53 * (a[k-1][j+2][i-1] + a[k+1][j-2][i+1])
+ c54 * (a[k+1][j+2][i-1] + a[k-1][j-2][i+1])
+ c55 * (a[k][j+3][i-1] + a[k][j-3][i+1])
+ c56 * (a[k-1][j-3][i] + a[k+1][j+3][i])
+ c57 * (a[k+1][j-3][i] + a[k-1][j+3][i])
+ c58 * (a[k-2][j-2][i] + a[k+2][j+2][i])
+ c59 * (a[k+2][j-2][i] + a[k-2][j+2][i])
+ c60 * (a[k-3][j-1][i] + a[k+3][j+1][i])
+ c61 * (a[k+3][j-1][i] + a[k-3][j+1][i])
+ c62 * (a[k][j-2][i-3] + a[k][j+2][i+3])
+ c63 * (a[k-1][j-1][i-3] + a[k+1][j+1][i+3])
+ c64 * (a[k+1][j-1][i-3] + a[k-1][j+1][i+3])
+ c65 * (a[k-2][j][i-3] + a[k+2][j][i+3])
+ c66 * (a[k+2][j][i-3] + a[k-2][j][i+3])
+ c67 * (a[k-1][j+1][i-3] + a[k+1][j-1][i+3])
+ c68 * (a[k+1][j+1][i-3] + a[k-1][j-1][i+3])
+ c69 * (a[k][j+2][i-3] + a[k][j-2][i+3])
+ c70 * (a[k][j-3][i-2] + a[k][j+3][i+2])
+ c71 * (a[k-1][j-2][i-2] + a[k+1][j+2][i+2])
+ c72 * (a[k+1][j-2][i-2] + a[k-1][j+2][i+2])
+ c73 * (a[k-2][j-1][i-2] + a[k+2][j+1][i+2])
+ c74 * (a[k+2][j-1][i-2] + a[k-2][j+1][i+2])
+ c75 * (a[k-3][j][i-2] + a[k+3][j][i+2])
+ c76 * (a[k+3][j][i-2] + a[k-3][j][i+2])
+ c77 * (a[k-2][j+1][i-2] + a[k+2][j-1][i+2])
+ c78 * (a[k+2][j+1][i-2] + a[k-2][j-1][i+2])
+ c79 * (a[k-1][j+2][i-2] + a[k+1][j-2][i+2])
+ c80 * (a[k+1][j+2][i-2] + a[k-1][j-2][i+2])
+ c81 * (a[k][j+3][i-2] + a[k][j-3][i+2])
+ c82 * (a[k-1][j-3][i-1] + a[k+1][j+3][i+1])
+ c83 * (a[k+1][j-3][i-1] + a[k-1][j+3][i+1])
+ c84 * (a[k-2][j-2][i-1] + a[k+2][j+2][i+1])
+ c85 * (a[k+2][j-2][i-1] + a[k-2][j+2][i+1])
+ c86 * (a[k-3][j-1][i-1] + a[k+3][j+1][i+1])
+ c87 * (a[k+3][j-1][i-1] + a[k-3][j+1][i+1])
+ c88 * (a[k-3][j+1][i-1] + a[k+3][j-1][i+1])
+ c89 * (a[k+3][j+1][i-1] + a[k-3][j-1][i+1])
+ c90 * (a[k-2][j+2][i-1] + a[k+2][j-2][i+1])
+ c91 * (a[k+2][j+2][i-1] + a[k-2][j-2][i+1])
+ c92 * (a[k-1][j+3][i-1] + a[k+1][j-3][i+1])
+ c93 * (a[k+1][j+3][i-1] + a[k-1][j-3][i+1])
+ c94 * (a[k-2][j-3][i] + a[k+2][j+3][i])
+ c95 * (a[k+2][j-3][i] + a[k-2][j+3][i])
+ c96 * (a[k-3][j-2][i] + a[k+3][j+2][i])
+ c97 * (a[k+3][j-2][i] + a[k-3][j+2][i])
+ c98 * (a[k][j-3][i-3] + a[k][j+3][i+3])
+ c99 * (a[k-1][j-2][i-3] + a[k+1][j+2][i+3])
+ c100 * (a[k+1][j-2][i-3] + a[k-1][j+2][i+3])
+ c101 * (a[k-2][j-1][i-3] + a[k+2][j+1][i+3])
+ c102 * (a[k+2][j-1][i-3] + a[k-2][j+1][i+3])
+ c103 * (a[k-3][j][i-3] + a[k+3][j][i+3])
+ c104 * (a[k+3][j][i-3] + a[k-3][j][i+3])
+ c105 * (a[k-2][j+1][i-3] + a[k+2][j-1][i+3])
+ c106 * (a[k+2][j+1][i-3] + a[k-2][j-1][i+3])
+ c107 * (a[k-1][j+2][i-3] + a[k+1][j-2][i+3])
+ c108 * (a[k+1][j+2][i-3] + a[k-1][j-2][i+3])
+ c109 * (a[k][j+3][i-3] + a[k][j-3][i+3])
+ c110 * (a[k-1][j-3][i-2] + a[k+1][j+3][i+2])
+ c111 * (a[k+1][j-3][i-2] + a[k-1][j+3][i+2])
+ c112 * (a[k-2][j-2][i-2] + a[k+2][j+2][i+2])
+ c113 * (a[k+2][j-2][i-2] + a[k-2][j+2][i+2])
+ c114 * (a[k-3][j-1][i-2] + a[k+3][j+1][i+2])
+ c115 * (a[k+3][j-1][i-2] + a[k-3][j+1][i+2])
+ c116 * (a[k-3][j+1][i-2] + a[k+3][j-1][i+2])
+ c117 * (a[k+3][j+1][i-2] + a[k-3][j-1][i+2])
+ c118 * (a[k-2][j+2][i-2] + a[k+2][j-2][i+2])
+ c119 * (a[k+2][j+2][i-2] + a[k-2][j-2][i+2])
+ c120 * (a[k-1][j+3][i-2] + a[k+1][j-3][i+2])
+ c121 * (a[k+1][j+3][i-2] + a[k-1][j-3][i+2])
+ c122 * (a[k-2][j-3][i-1] + a[k+2][j+3][i+1])
+ c123 * (a[k+2][j-3][i-1] + a[k-2][j+3][i+1])
+ c124 * (a[k-3][j-2][i-1] + a[k+3][j+2][i+1])
+ c125 * (a[k+3][j-2][i-1] + a[k-3][j+2][i+1])
+ c126 * (a[k-3][j+2][i-1] + a[k+3][j-2][i+1])
+ c127 * (a[k+3][j+2][i-1] + a[k-3][j-2][i+1])
+ c128 * (a[k-2][j+3][i-1] + a[k+2][j-3][i+1])
+ c129 * (a[k+2][j+3][i-1] + a[k-2][j-3][i+1])
+ c130 * (a[k-3][j-3][i] + a[k+3][j+3][i])
+ c131 * (a[k+3][j-3][i] + a[k-3][j+3][i])
+ c132 * (a[k-1][j-3][i-3] + a[k+1][j+3][i+3])
+ c133 * (a[k+1][j-3][i-3] + a[k-1][j+3][i+3])
+ c134 * (a[k-2][j-2][i-3] + a[k+2][j+2][i+3])
+ c135 * (a[k+2][j-2][i-3] + a[k-2][j+2][i+3])
+ c136 * (a[k-3][j-1][i-3] + a[k+3][j+1][i+3])
+ c137 * (a[k+3][j-1][i-3] + a[k-3][j+1][i+3])
+ c138 * (a[k-3][j+1][i-3] + a[k+3][j-1][i+3])
+ c139 * (a[k+3][j+1][i-3] + a[k-3][j-1][i+3])
+ c140 * (a[k-2][j+2][i-3] + a[k+2][j-2][i+3])
+ c141 * (a[k+2][j+2][i-3] + a[k-2][j-2][i+3])
+ c142 * (a[k-1][j+3][i-3] + a[k+1][j-3][i+3])
+ c143 * (a[k+1][j+3][i-3] + a[k-1][j-3][i+3])
+ c144 * (a[k-2][j-3][i-2] + a[k+2][j+3][i+2])
+ c145 * (a[k+2][j-3][i-2] + a[k-2][j+3][i+2])
+ c146 * (a[k-3][j-2][i-2] + a[k+3][j+2][i+2])
+ c147 * (a[k+3][j-2][i-2] + a[k-3][j+2][i+2])
+ c148 * (a[k-3][j+2][i-2] + a[k+3][j-2][i+2])
+ c149 * (a[k+3][j+2][i-2] + a[k-3][j-2][i+2])
+ c150 * (a[k-2][j+3][i-2] + a[k+2][j-3][i+2])
+ c151 * (a[k+2][j+3][i-2] + a[k-2][j-3][i+2])
+ c152 * (a[k-3][j-3][i-1] + a[k+3][j+3][i+1])
+ c153 * (a[k+3][j-3][i-1] + a[k-3][j+3][i+1])
+ c154 * (a[k-3][j+3][i-1] + a[k+3][j-3][i+1])
+ c155 * (a[k+3][j+3][i-1] + a[k-3][j-3][i+1])
+ c156 * (a[k-2][j-3][i-3] + a[k+2][j+3][i+3])
+ c157 * (a[k+2][j-3][i-3] + a[k-2][j+3][i+3])
+ c158 * (a[k-3][j-2][i-3] + a[k+3][j+2][i+3])
+ c159 * (a[k+3][j-2][i-3] + a[k-3][j+2][i+3])
+ c160 * (a[k-3][j+2][i-3] + a[k+3][j-2][i+3])
+ c161 * (a[k+3][j+2][i-3] + a[k-3][j-2][i+3])
+ c162 * (a[k-2][j+3][i-3] + a[k+2][j-3][i+3])
+ c163 * (a[k+2][j+3][i-3] + a[k-2][j-3][i+3])
+ c164 * (a[k-3][j-3][i-2] + a[k+3][j+3][i+2])
+ c165 * (a[k+3][j-3][i-2] + a[k-3][j+3][i+2])
+ c166 * (a[k-3][j+3][i-2] + a[k+3][j-3][i+2])
+ c167 * (a[k+3][j+3][i-2] + a[k-3][j-3][i+2])
+ c168 * (a[k-3][j-3][i-3] + a[k+3][j+3][i+3])
+ c169 * (a[k+3][j-3][i-3] + a[k-3][j+3][i+3])
+ c170 * (a[k-3][j+3][i-3] + a[k+3][j-3][i+3])
+ c171 * (a[k+3][j+3][i-3] + a[k-3][j-3][i+3])
;
}
}
}
