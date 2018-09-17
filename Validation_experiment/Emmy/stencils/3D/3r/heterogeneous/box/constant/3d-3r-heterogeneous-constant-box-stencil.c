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
double c172;
double c173;
double c174;
double c175;
double c176;
double c177;
double c178;
double c179;
double c180;
double c181;
double c182;
double c183;
double c184;
double c185;
double c186;
double c187;
double c188;
double c189;
double c190;
double c191;
double c192;
double c193;
double c194;
double c195;
double c196;
double c197;
double c198;
double c199;
double c200;
double c201;
double c202;
double c203;
double c204;
double c205;
double c206;
double c207;
double c208;
double c209;
double c210;
double c211;
double c212;
double c213;
double c214;
double c215;
double c216;
double c217;
double c218;
double c219;
double c220;
double c221;
double c222;
double c223;
double c224;
double c225;
double c226;
double c227;
double c228;
double c229;
double c230;
double c231;
double c232;
double c233;
double c234;
double c235;
double c236;
double c237;
double c238;
double c239;
double c240;
double c241;
double c242;
double c243;
double c244;
double c245;
double c246;
double c247;
double c248;
double c249;
double c250;
double c251;
double c252;
double c253;
double c254;
double c255;
double c256;
double c257;
double c258;
double c259;
double c260;
double c261;
double c262;
double c263;
double c264;
double c265;
double c266;
double c267;
double c268;
double c269;
double c270;
double c271;
double c272;
double c273;
double c274;
double c275;
double c276;
double c277;
double c278;
double c279;
double c280;
double c281;
double c282;
double c283;
double c284;
double c285;
double c286;
double c287;
double c288;
double c289;
double c290;
double c291;
double c292;
double c293;
double c294;
double c295;
double c296;
double c297;
double c298;
double c299;
double c300;
double c301;
double c302;
double c303;
double c304;
double c305;
double c306;
double c307;
double c308;
double c309;
double c310;
double c311;
double c312;
double c313;
double c314;
double c315;
double c316;
double c317;
double c318;
double c319;
double c320;
double c321;
double c322;
double c323;
double c324;
double c325;
double c326;
double c327;
double c328;
double c329;
double c330;
double c331;
double c332;
double c333;
double c334;
double c335;
double c336;
double c337;
double c338;
double c339;
double c340;
double c341;
double c342;

for(int k=3; k < M-3; k++){
for(int j=3; j < N-3; j++){
for(int i=3; i < P-3; i++){
b[k][j][i] = c0 * a[k][j][i]
+ c1 * a[k-3][j-3][i-3]
+ c2 * a[k-2][j-3][i-3]
+ c3 * a[k-1][j-3][i-3]
+ c4 * a[k][j-3][i-3]
+ c5 * a[k+1][j-3][i-3]
+ c6 * a[k+2][j-3][i-3]
+ c7 * a[k+3][j-3][i-3]
+ c8 * a[k-3][j-2][i-3]
+ c9 * a[k-2][j-2][i-3]
+ c10 * a[k-1][j-2][i-3]
+ c11 * a[k][j-2][i-3]
+ c12 * a[k+1][j-2][i-3]
+ c13 * a[k+2][j-2][i-3]
+ c14 * a[k+3][j-2][i-3]
+ c15 * a[k-3][j-1][i-3]
+ c16 * a[k-2][j-1][i-3]
+ c17 * a[k-1][j-1][i-3]
+ c18 * a[k][j-1][i-3]
+ c19 * a[k+1][j-1][i-3]
+ c20 * a[k+2][j-1][i-3]
+ c21 * a[k+3][j-1][i-3]
+ c22 * a[k-3][j][i-3]
+ c23 * a[k-2][j][i-3]
+ c24 * a[k-1][j][i-3]
+ c25 * a[k][j][i-3]
+ c26 * a[k+1][j][i-3]
+ c27 * a[k+2][j][i-3]
+ c28 * a[k+3][j][i-3]
+ c29 * a[k-3][j+1][i-3]
+ c30 * a[k-2][j+1][i-3]
+ c31 * a[k-1][j+1][i-3]
+ c32 * a[k][j+1][i-3]
+ c33 * a[k+1][j+1][i-3]
+ c34 * a[k+2][j+1][i-3]
+ c35 * a[k+3][j+1][i-3]
+ c36 * a[k-3][j+2][i-3]
+ c37 * a[k-2][j+2][i-3]
+ c38 * a[k-1][j+2][i-3]
+ c39 * a[k][j+2][i-3]
+ c40 * a[k+1][j+2][i-3]
+ c41 * a[k+2][j+2][i-3]
+ c42 * a[k+3][j+2][i-3]
+ c43 * a[k-3][j+3][i-3]
+ c44 * a[k-2][j+3][i-3]
+ c45 * a[k-1][j+3][i-3]
+ c46 * a[k][j+3][i-3]
+ c47 * a[k+1][j+3][i-3]
+ c48 * a[k+2][j+3][i-3]
+ c49 * a[k+3][j+3][i-3]
+ c50 * a[k-3][j-3][i-2]
+ c51 * a[k-2][j-3][i-2]
+ c52 * a[k-1][j-3][i-2]
+ c53 * a[k][j-3][i-2]
+ c54 * a[k+1][j-3][i-2]
+ c55 * a[k+2][j-3][i-2]
+ c56 * a[k+3][j-3][i-2]
+ c57 * a[k-3][j-2][i-2]
+ c58 * a[k-2][j-2][i-2]
+ c59 * a[k-1][j-2][i-2]
+ c60 * a[k][j-2][i-2]
+ c61 * a[k+1][j-2][i-2]
+ c62 * a[k+2][j-2][i-2]
+ c63 * a[k+3][j-2][i-2]
+ c64 * a[k-3][j-1][i-2]
+ c65 * a[k-2][j-1][i-2]
+ c66 * a[k-1][j-1][i-2]
+ c67 * a[k][j-1][i-2]
+ c68 * a[k+1][j-1][i-2]
+ c69 * a[k+2][j-1][i-2]
+ c70 * a[k+3][j-1][i-2]
+ c71 * a[k-3][j][i-2]
+ c72 * a[k-2][j][i-2]
+ c73 * a[k-1][j][i-2]
+ c74 * a[k][j][i-2]
+ c75 * a[k+1][j][i-2]
+ c76 * a[k+2][j][i-2]
+ c77 * a[k+3][j][i-2]
+ c78 * a[k-3][j+1][i-2]
+ c79 * a[k-2][j+1][i-2]
+ c80 * a[k-1][j+1][i-2]
+ c81 * a[k][j+1][i-2]
+ c82 * a[k+1][j+1][i-2]
+ c83 * a[k+2][j+1][i-2]
+ c84 * a[k+3][j+1][i-2]
+ c85 * a[k-3][j+2][i-2]
+ c86 * a[k-2][j+2][i-2]
+ c87 * a[k-1][j+2][i-2]
+ c88 * a[k][j+2][i-2]
+ c89 * a[k+1][j+2][i-2]
+ c90 * a[k+2][j+2][i-2]
+ c91 * a[k+3][j+2][i-2]
+ c92 * a[k-3][j+3][i-2]
+ c93 * a[k-2][j+3][i-2]
+ c94 * a[k-1][j+3][i-2]
+ c95 * a[k][j+3][i-2]
+ c96 * a[k+1][j+3][i-2]
+ c97 * a[k+2][j+3][i-2]
+ c98 * a[k+3][j+3][i-2]
+ c99 * a[k-3][j-3][i-1]
+ c100 * a[k-2][j-3][i-1]
+ c101 * a[k-1][j-3][i-1]
+ c102 * a[k][j-3][i-1]
+ c103 * a[k+1][j-3][i-1]
+ c104 * a[k+2][j-3][i-1]
+ c105 * a[k+3][j-3][i-1]
+ c106 * a[k-3][j-2][i-1]
+ c107 * a[k-2][j-2][i-1]
+ c108 * a[k-1][j-2][i-1]
+ c109 * a[k][j-2][i-1]
+ c110 * a[k+1][j-2][i-1]
+ c111 * a[k+2][j-2][i-1]
+ c112 * a[k+3][j-2][i-1]
+ c113 * a[k-3][j-1][i-1]
+ c114 * a[k-2][j-1][i-1]
+ c115 * a[k-1][j-1][i-1]
+ c116 * a[k][j-1][i-1]
+ c117 * a[k+1][j-1][i-1]
+ c118 * a[k+2][j-1][i-1]
+ c119 * a[k+3][j-1][i-1]
+ c120 * a[k-3][j][i-1]
+ c121 * a[k-2][j][i-1]
+ c122 * a[k-1][j][i-1]
+ c123 * a[k][j][i-1]
+ c124 * a[k+1][j][i-1]
+ c125 * a[k+2][j][i-1]
+ c126 * a[k+3][j][i-1]
+ c127 * a[k-3][j+1][i-1]
+ c128 * a[k-2][j+1][i-1]
+ c129 * a[k-1][j+1][i-1]
+ c130 * a[k][j+1][i-1]
+ c131 * a[k+1][j+1][i-1]
+ c132 * a[k+2][j+1][i-1]
+ c133 * a[k+3][j+1][i-1]
+ c134 * a[k-3][j+2][i-1]
+ c135 * a[k-2][j+2][i-1]
+ c136 * a[k-1][j+2][i-1]
+ c137 * a[k][j+2][i-1]
+ c138 * a[k+1][j+2][i-1]
+ c139 * a[k+2][j+2][i-1]
+ c140 * a[k+3][j+2][i-1]
+ c141 * a[k-3][j+3][i-1]
+ c142 * a[k-2][j+3][i-1]
+ c143 * a[k-1][j+3][i-1]
+ c144 * a[k][j+3][i-1]
+ c145 * a[k+1][j+3][i-1]
+ c146 * a[k+2][j+3][i-1]
+ c147 * a[k+3][j+3][i-1]
+ c148 * a[k-3][j-3][i]
+ c149 * a[k-2][j-3][i]
+ c150 * a[k-1][j-3][i]
+ c151 * a[k][j-3][i]
+ c152 * a[k+1][j-3][i]
+ c153 * a[k+2][j-3][i]
+ c154 * a[k+3][j-3][i]
+ c155 * a[k-3][j-2][i]
+ c156 * a[k-2][j-2][i]
+ c157 * a[k-1][j-2][i]
+ c158 * a[k][j-2][i]
+ c159 * a[k+1][j-2][i]
+ c160 * a[k+2][j-2][i]
+ c161 * a[k+3][j-2][i]
+ c162 * a[k-3][j-1][i]
+ c163 * a[k-2][j-1][i]
+ c164 * a[k-1][j-1][i]
+ c165 * a[k][j-1][i]
+ c166 * a[k+1][j-1][i]
+ c167 * a[k+2][j-1][i]
+ c168 * a[k+3][j-1][i]
+ c169 * a[k-3][j][i]
+ c170 * a[k-2][j][i]
+ c171 * a[k-1][j][i]
+ c172 * a[k+1][j][i]
+ c173 * a[k+2][j][i]
+ c174 * a[k+3][j][i]
+ c175 * a[k-3][j+1][i]
+ c176 * a[k-2][j+1][i]
+ c177 * a[k-1][j+1][i]
+ c178 * a[k][j+1][i]
+ c179 * a[k+1][j+1][i]
+ c180 * a[k+2][j+1][i]
+ c181 * a[k+3][j+1][i]
+ c182 * a[k-3][j+2][i]
+ c183 * a[k-2][j+2][i]
+ c184 * a[k-1][j+2][i]
+ c185 * a[k][j+2][i]
+ c186 * a[k+1][j+2][i]
+ c187 * a[k+2][j+2][i]
+ c188 * a[k+3][j+2][i]
+ c189 * a[k-3][j+3][i]
+ c190 * a[k-2][j+3][i]
+ c191 * a[k-1][j+3][i]
+ c192 * a[k][j+3][i]
+ c193 * a[k+1][j+3][i]
+ c194 * a[k+2][j+3][i]
+ c195 * a[k+3][j+3][i]
+ c196 * a[k-3][j-3][i+1]
+ c197 * a[k-2][j-3][i+1]
+ c198 * a[k-1][j-3][i+1]
+ c199 * a[k][j-3][i+1]
+ c200 * a[k+1][j-3][i+1]
+ c201 * a[k+2][j-3][i+1]
+ c202 * a[k+3][j-3][i+1]
+ c203 * a[k-3][j-2][i+1]
+ c204 * a[k-2][j-2][i+1]
+ c205 * a[k-1][j-2][i+1]
+ c206 * a[k][j-2][i+1]
+ c207 * a[k+1][j-2][i+1]
+ c208 * a[k+2][j-2][i+1]
+ c209 * a[k+3][j-2][i+1]
+ c210 * a[k-3][j-1][i+1]
+ c211 * a[k-2][j-1][i+1]
+ c212 * a[k-1][j-1][i+1]
+ c213 * a[k][j-1][i+1]
+ c214 * a[k+1][j-1][i+1]
+ c215 * a[k+2][j-1][i+1]
+ c216 * a[k+3][j-1][i+1]
+ c217 * a[k-3][j][i+1]
+ c218 * a[k-2][j][i+1]
+ c219 * a[k-1][j][i+1]
+ c220 * a[k][j][i+1]
+ c221 * a[k+1][j][i+1]
+ c222 * a[k+2][j][i+1]
+ c223 * a[k+3][j][i+1]
+ c224 * a[k-3][j+1][i+1]
+ c225 * a[k-2][j+1][i+1]
+ c226 * a[k-1][j+1][i+1]
+ c227 * a[k][j+1][i+1]
+ c228 * a[k+1][j+1][i+1]
+ c229 * a[k+2][j+1][i+1]
+ c230 * a[k+3][j+1][i+1]
+ c231 * a[k-3][j+2][i+1]
+ c232 * a[k-2][j+2][i+1]
+ c233 * a[k-1][j+2][i+1]
+ c234 * a[k][j+2][i+1]
+ c235 * a[k+1][j+2][i+1]
+ c236 * a[k+2][j+2][i+1]
+ c237 * a[k+3][j+2][i+1]
+ c238 * a[k-3][j+3][i+1]
+ c239 * a[k-2][j+3][i+1]
+ c240 * a[k-1][j+3][i+1]
+ c241 * a[k][j+3][i+1]
+ c242 * a[k+1][j+3][i+1]
+ c243 * a[k+2][j+3][i+1]
+ c244 * a[k+3][j+3][i+1]
+ c245 * a[k-3][j-3][i+2]
+ c246 * a[k-2][j-3][i+2]
+ c247 * a[k-1][j-3][i+2]
+ c248 * a[k][j-3][i+2]
+ c249 * a[k+1][j-3][i+2]
+ c250 * a[k+2][j-3][i+2]
+ c251 * a[k+3][j-3][i+2]
+ c252 * a[k-3][j-2][i+2]
+ c253 * a[k-2][j-2][i+2]
+ c254 * a[k-1][j-2][i+2]
+ c255 * a[k][j-2][i+2]
+ c256 * a[k+1][j-2][i+2]
+ c257 * a[k+2][j-2][i+2]
+ c258 * a[k+3][j-2][i+2]
+ c259 * a[k-3][j-1][i+2]
+ c260 * a[k-2][j-1][i+2]
+ c261 * a[k-1][j-1][i+2]
+ c262 * a[k][j-1][i+2]
+ c263 * a[k+1][j-1][i+2]
+ c264 * a[k+2][j-1][i+2]
+ c265 * a[k+3][j-1][i+2]
+ c266 * a[k-3][j][i+2]
+ c267 * a[k-2][j][i+2]
+ c268 * a[k-1][j][i+2]
+ c269 * a[k][j][i+2]
+ c270 * a[k+1][j][i+2]
+ c271 * a[k+2][j][i+2]
+ c272 * a[k+3][j][i+2]
+ c273 * a[k-3][j+1][i+2]
+ c274 * a[k-2][j+1][i+2]
+ c275 * a[k-1][j+1][i+2]
+ c276 * a[k][j+1][i+2]
+ c277 * a[k+1][j+1][i+2]
+ c278 * a[k+2][j+1][i+2]
+ c279 * a[k+3][j+1][i+2]
+ c280 * a[k-3][j+2][i+2]
+ c281 * a[k-2][j+2][i+2]
+ c282 * a[k-1][j+2][i+2]
+ c283 * a[k][j+2][i+2]
+ c284 * a[k+1][j+2][i+2]
+ c285 * a[k+2][j+2][i+2]
+ c286 * a[k+3][j+2][i+2]
+ c287 * a[k-3][j+3][i+2]
+ c288 * a[k-2][j+3][i+2]
+ c289 * a[k-1][j+3][i+2]
+ c290 * a[k][j+3][i+2]
+ c291 * a[k+1][j+3][i+2]
+ c292 * a[k+2][j+3][i+2]
+ c293 * a[k+3][j+3][i+2]
+ c294 * a[k-3][j-3][i+3]
+ c295 * a[k-2][j-3][i+3]
+ c296 * a[k-1][j-3][i+3]
+ c297 * a[k][j-3][i+3]
+ c298 * a[k+1][j-3][i+3]
+ c299 * a[k+2][j-3][i+3]
+ c300 * a[k+3][j-3][i+3]
+ c301 * a[k-3][j-2][i+3]
+ c302 * a[k-2][j-2][i+3]
+ c303 * a[k-1][j-2][i+3]
+ c304 * a[k][j-2][i+3]
+ c305 * a[k+1][j-2][i+3]
+ c306 * a[k+2][j-2][i+3]
+ c307 * a[k+3][j-2][i+3]
+ c308 * a[k-3][j-1][i+3]
+ c309 * a[k-2][j-1][i+3]
+ c310 * a[k-1][j-1][i+3]
+ c311 * a[k][j-1][i+3]
+ c312 * a[k+1][j-1][i+3]
+ c313 * a[k+2][j-1][i+3]
+ c314 * a[k+3][j-1][i+3]
+ c315 * a[k-3][j][i+3]
+ c316 * a[k-2][j][i+3]
+ c317 * a[k-1][j][i+3]
+ c318 * a[k][j][i+3]
+ c319 * a[k+1][j][i+3]
+ c320 * a[k+2][j][i+3]
+ c321 * a[k+3][j][i+3]
+ c322 * a[k-3][j+1][i+3]
+ c323 * a[k-2][j+1][i+3]
+ c324 * a[k-1][j+1][i+3]
+ c325 * a[k][j+1][i+3]
+ c326 * a[k+1][j+1][i+3]
+ c327 * a[k+2][j+1][i+3]
+ c328 * a[k+3][j+1][i+3]
+ c329 * a[k-3][j+2][i+3]
+ c330 * a[k-2][j+2][i+3]
+ c331 * a[k-1][j+2][i+3]
+ c332 * a[k][j+2][i+3]
+ c333 * a[k+1][j+2][i+3]
+ c334 * a[k+2][j+2][i+3]
+ c335 * a[k+3][j+2][i+3]
+ c336 * a[k-3][j+3][i+3]
+ c337 * a[k-2][j+3][i+3]
+ c338 * a[k-1][j+3][i+3]
+ c339 * a[k][j+3][i+3]
+ c340 * a[k+1][j+3][i+3]
+ c341 * a[k+2][j+3][i+3]
+ c342 * a[k+3][j+3][i+3]
;
}
}
}
