#include "kerncraft.h"
#include <stdlib.h>

void dummy(void *);
extern int var_false;
int main(int argc, char **argv)
{
  const int N = atoi(argv[3]);
  const int P = atoi(argv[2]);
  const int M = atoi(argv[1]);
  double *a = aligned_malloc((sizeof(double)) * ((M * N) * P), 32);
  for (int i = 0; i < ((M * N) * P); ++i)
    a[i] = 0.49795506534730005;

  double *b = aligned_malloc((sizeof(double)) * ((M * N) * P), 32);
  for (int i = 0; i < ((M * N) * P); ++i)
    b[i] = 0.4150803324887108;

  double c0;
  c0 = 0.7607425694244915;
  double c1;
  c1 = 0.5922194377496228;
  double c2;
  c2 = 0.7185218422063921;
  double c3;
  c3 = 0.8064795423829658;
  double c4;
  c4 = 0.42349479927878386;
  double c5;
  c5 = 0.4770701249923631;
  double c6;
  c6 = 0.3407877839027452;
  double c7;
  c7 = 0.4026989847762731;
  double c8;
  c8 = 0.49640643544913043;
  double c9;
  c9 = 0.18744775958650606;
  double c10;
  c10 = 0.37617006097409766;
  double c11;
  c11 = 0.5766912912719707;
  double c12;
  c12 = 0.9347334891110758;
  double c13;
  c13 = 0.6141869445310516;
  double c14;
  c14 = 0.16633596241546544;
  double c15;
  c15 = 0.4591684954235413;
  double c16;
  c16 = 0.23343124735297294;
  double c17;
  c17 = 0.6019289926308247;
  double c18;
  c18 = 0.9594515706840488;
  double c19;
  c19 = 0.3324800913116588;
  double c20;
  c20 = 0.3446901877864387;
  double c21;
  c21 = 0.40040349591908486;
  double c22;
  c22 = 0.4301409758222361;
  double c23;
  c23 = 0.5171306262458621;
  double c24;
  c24 = 0.32654558889242;
  double c25;
  c25 = 0.8094620207898686;
  double c26;
  c26 = 0.9932961417944479;
  double c27;
  c27 = 0.23504725047352792;
  double c28;
  c28 = 0.7004515054636113;
  double c29;
  c29 = 0.10022270094739516;
  double c30;
  c30 = 0.2116677893394464;
  double c31;
  c31 = 0.6325849680538786;
  double c32;
  c32 = 0.9100510984049823;
  double c33;
  c33 = 0.16391014406664484;
  double c34;
  c34 = 0.736473199945086;
  double c35;
  c35 = 0.9470465779238487;
  double c36;
  c36 = 0.5735254053514187;
  double c37;
  c37 = 0.9965184954966466;
  double c38;
  c38 = 0.3855240426726757;
  double c39;
  c39 = 0.6211871172258951;
  double c40;
  c40 = 0.20170680326659618;
  double c41;
  c41 = 0.9228319870968963;
  double c42;
  c42 = 0.10080831432068982;
  double c43;
  c43 = 0.6075127187375302;
  double c44;
  c44 = 0.4398225840919484;
  double c45;
  c45 = 0.4768602532541101;
  double c46;
  c46 = 0.57577942994593;
  double c47;
  c47 = 0.7277289593862146;
  double c48;
  c48 = 0.2765558319139567;
  double c49;
  c49 = 0.10462275523114395;
  double c50;
  c50 = 0.605254726401927;
  double c51;
  c51 = 0.10947746342475662;
  double c52;
  c52 = 0.921655745262302;
  double c53;
  c53 = 0.49604696501814916;
  double c54;
  c54 = 0.6592612730265931;
  double c55;
  c55 = 0.9253903945757744;
  double c56;
  c56 = 0.19440772216171665;
  double c57;
  c57 = 0.2925955721225949;
  double c58;
  c58 = 0.33255213947796314;
  double c59;
  c59 = 0.3599232434784162;
  double c60;
  c60 = 0.4320888038675287;
  double c61;
  c61 = 0.6727503772435668;
  double c62;
  c62 = 0.47162683265677063;
  double c63;
  c63 = 0.9870675203341879;
  double c64;
  c64 = 0.4016727893916513;
  double c65;
  c65 = 0.8420060812234499;
  double c66;
  c66 = 0.22811889172097533;
  double c67;
  c67 = 0.33702827920570333;
  double c68;
  c68 = 0.9161764183375596;
  double c69;
  c69 = 0.7524569334317028;
  double c70;
  c70 = 0.7872215345468783;
  double c71;
  c71 = 0.8304409721288818;
  double c72;
  c72 = 0.3768867547214174;
  double c73;
  c73 = 0.8801505320446483;
  double c74;
  c74 = 0.6597203662179096;
  double c75;
  c75 = 0.315939599883132;
  double c76;
  c76 = 0.16490817890648213;
  double c77;
  c77 = 0.16486975777408408;
  double c78;
  c78 = 0.8297762417429217;
  double c79;
  c79 = 0.447540209474082;
  double c80;
  c80 = 0.8889387718926239;
  double c81;
  c81 = 0.2701552815617051;
  double c82;
  c82 = 0.6349148887733134;
  double c83;
  c83 = 0.42609686509717226;
  double c84;
  c84 = 0.7298193019726902;
  double c85;
  c85 = 0.14512812826958477;
  double c86;
  c86 = 0.13478968291132132;
  double c87;
  c87 = 0.4963621133811792;
  double c88;
  c88 = 0.7629686632783745;
  double c89;
  c89 = 0.40473951992784085;
  double c90;
  c90 = 0.8356279747202597;
  double c91;
  c91 = 0.4136226329809175;
  double c92;
  c92 = 0.9673981980178615;
  double c93;
  c93 = 0.7966860259928387;
  double c94;
  c94 = 0.5381471994950744;
  double c95;
  c95 = 0.5308058481906188;
  double c96;
  c96 = 0.33901705574935825;
  double c97;
  c97 = 0.7716543538706528;
  double c98;
  c98 = 0.9869503763426679;
  double c99;
  c99 = 0.9709131927664182;
  double c100;
  c100 = 0.13843855803854832;
  double c101;
  c101 = 0.8480160576407239;
  double c102;
  c102 = 0.9471446339470138;
  double c103;
  c103 = 0.842812805387867;
  double c104;
  c104 = 0.26834183472581563;
  double c105;
  c105 = 0.26747654005126875;
  double c106;
  c106 = 0.5193810527404438;
  double c107;
  c107 = 0.9976692025099555;
  double c108;
  c108 = 0.254021196891839;
  double c109;
  c109 = 0.7667059268839219;
  double c110;
  c110 = 0.6344976422803769;
  double c111;
  c111 = 0.7973627375374013;
  double c112;
  c112 = 0.9965643408783977;
  double c113;
  c113 = 0.19184136163506538;
  double c114;
  c114 = 0.8682405312394482;
  double c115;
  c115 = 0.7925010766160209;
  double c116;
  c116 = 0.45976639745260495;
  double c117;
  c117 = 0.45637433036062003;
  double c118;
  c118 = 0.8184256952716014;
  double c119;
  c119 = 0.5351811016403891;
  double c120;
  c120 = 0.8406573931420105;
  double c121;
  c121 = 0.7190049570888277;
  double c122;
  c122 = 0.10981159388050787;
  double c123;
  c123 = 0.6612585942100827;
  double c124;
  c124 = 0.7970774451125328;
  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(&c0);
    dummy(&c1);
    dummy(&c2);
    dummy(&c3);
    dummy(&c4);
    dummy(&c5);
    dummy(&c6);
    dummy(&c7);
    dummy(&c8);
    dummy(&c9);
    dummy(&c10);
    dummy(&c11);
    dummy(&c12);
    dummy(&c13);
    dummy(&c14);
    dummy(&c15);
    dummy(&c16);
    dummy(&c17);
    dummy(&c18);
    dummy(&c19);
    dummy(&c20);
    dummy(&c21);
    dummy(&c22);
    dummy(&c23);
    dummy(&c24);
    dummy(&c25);
    dummy(&c26);
    dummy(&c27);
    dummy(&c28);
    dummy(&c29);
    dummy(&c30);
    dummy(&c31);
    dummy(&c32);
    dummy(&c33);
    dummy(&c34);
    dummy(&c35);
    dummy(&c36);
    dummy(&c37);
    dummy(&c38);
    dummy(&c39);
    dummy(&c40);
    dummy(&c41);
    dummy(&c42);
    dummy(&c43);
    dummy(&c44);
    dummy(&c45);
    dummy(&c46);
    dummy(&c47);
    dummy(&c48);
    dummy(&c49);
    dummy(&c50);
    dummy(&c51);
    dummy(&c52);
    dummy(&c53);
    dummy(&c54);
    dummy(&c55);
    dummy(&c56);
    dummy(&c57);
    dummy(&c58);
    dummy(&c59);
    dummy(&c60);
    dummy(&c61);
    dummy(&c62);
    dummy(&c63);
    dummy(&c64);
    dummy(&c65);
    dummy(&c66);
    dummy(&c67);
    dummy(&c68);
    dummy(&c69);
    dummy(&c70);
    dummy(&c71);
    dummy(&c72);
    dummy(&c73);
    dummy(&c74);
    dummy(&c75);
    dummy(&c76);
    dummy(&c77);
    dummy(&c78);
    dummy(&c79);
    dummy(&c80);
    dummy(&c81);
    dummy(&c82);
    dummy(&c83);
    dummy(&c84);
    dummy(&c85);
    dummy(&c86);
    dummy(&c87);
    dummy(&c88);
    dummy(&c89);
    dummy(&c90);
    dummy(&c91);
    dummy(&c92);
    dummy(&c93);
    dummy(&c94);
    dummy(&c95);
    dummy(&c96);
    dummy(&c97);
    dummy(&c98);
    dummy(&c99);
    dummy(&c100);
    dummy(&c101);
    dummy(&c102);
    dummy(&c103);
    dummy(&c104);
    dummy(&c105);
    dummy(&c106);
    dummy(&c107);
    dummy(&c108);
    dummy(&c109);
    dummy(&c110);
    dummy(&c111);
    dummy(&c112);
    dummy(&c113);
    dummy(&c114);
    dummy(&c115);
    dummy(&c116);
    dummy(&c117);
    dummy(&c118);
    dummy(&c119);
    dummy(&c120);
    dummy(&c121);
    dummy(&c122);
    dummy(&c123);
    dummy(&c124);
  }

  for (int k = 2; k < (M - 2); k++)
  {
    for (int j = 2; j < (N - 2); j++)
    {
      for (int i = 2; i < (P - 2); i++)
      {
        b[(i + (j * P)) + (k * (P * N))] = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((c0 * a[(i + (j * P)) + (k * (P * N))]) + (c1 * a[((i - 2) + ((j - 2) * P)) + ((k - 2) * (P * N))])) + (c2 * a[((i - 2) + ((j - 2) * P)) + ((k - 1) * (P * N))])) + (c3 * a[((i - 2) + ((j - 2) * P)) + (k * (P * N))])) + (c4 * a[((i - 2) + ((j - 2) * P)) + ((k + 1) * (P * N))])) + (c5 * a[((i - 2) + ((j - 2) * P)) + ((k + 2) * (P * N))])) + (c6 * a[((i - 2) + ((j - 1) * P)) + ((k - 2) * (P * N))])) + (c7 * a[((i - 2) + ((j - 1) * P)) + ((k - 1) * (P * N))])) + (c8 * a[((i - 2) + ((j - 1) * P)) + (k * (P * N))])) + (c9 * a[((i - 2) + ((j - 1) * P)) + ((k + 1) * (P * N))])) + (c10 * a[((i - 2) + ((j - 1) * P)) + ((k + 2) * (P * N))])) + (c11 * a[((i - 2) + (j * P)) + ((k - 2) * (P * N))])) + (c12 * a[((i - 2) + (j * P)) + ((k - 1) * (P * N))])) + (c13 * a[((i - 2) + (j * P)) + (k * (P * N))])) + (c14 * a[((i - 2) + (j * P)) + ((k + 1) * (P * N))])) + (c15 * a[((i - 2) + (j * P)) + ((k + 2) * (P * N))])) + (c16 * a[((i - 2) + ((j + 1) * P)) + ((k - 2) * (P * N))])) + (c17 * a[((i - 2) + ((j + 1) * P)) + ((k - 1) * (P * N))])) + (c18 * a[((i - 2) + ((j + 1) * P)) + (k * (P * N))])) + (c19 * a[((i - 2) + ((j + 1) * P)) + ((k + 1) * (P * N))])) + (c20 * a[((i - 2) + ((j + 1) * P)) + ((k + 2) * (P * N))])) + (c21 * a[((i - 2) + ((j + 2) * P)) + ((k - 2) * (P * N))])) + (c22 * a[((i - 2) + ((j + 2) * P)) + ((k - 1) * (P * N))])) + (c23 * a[((i - 2) + ((j + 2) * P)) + (k * (P * N))])) + (c24 * a[((i - 2) + ((j + 2) * P)) + ((k + 1) * (P * N))])) + (c25 * a[((i - 2) + ((j + 2) * P)) + ((k + 2) * (P * N))])) + (c26 * a[((i - 1) + ((j - 2) * P)) + ((k - 2) * (P * N))])) + (c27 * a[((i - 1) + ((j - 2) * P)) + ((k - 1) * (P * N))])) + (c28 * a[((i - 1) + ((j - 2) * P)) + (k * (P * N))])) + (c29 * a[((i - 1) + ((j - 2) * P)) + ((k + 1) * (P * N))])) + (c30 * a[((i - 1) + ((j - 2) * P)) + ((k + 2) * (P * N))])) + (c31 * a[((i - 1) + ((j - 1) * P)) + ((k - 2) * (P * N))])) + (c32 * a[((i - 1) + ((j - 1) * P)) + ((k - 1) * (P * N))])) + (c33 * a[((i - 1) + ((j - 1) * P)) + (k * (P * N))])) + (c34 * a[((i - 1) + ((j - 1) * P)) + ((k + 1) * (P * N))])) + (c35 * a[((i - 1) + ((j - 1) * P)) + ((k + 2) * (P * N))])) + (c36 * a[((i - 1) + (j * P)) + ((k - 2) * (P * N))])) + (c37 * a[((i - 1) + (j * P)) + ((k - 1) * (P * N))])) + (c38 * a[((i - 1) + (j * P)) + (k * (P * N))])) + (c39 * a[((i - 1) + (j * P)) + ((k + 1) * (P * N))])) + (c40 * a[((i - 1) + (j * P)) + ((k + 2) * (P * N))])) + (c41 * a[((i - 1) + ((j + 1) * P)) + ((k - 2) * (P * N))])) + (c42 * a[((i - 1) + ((j + 1) * P)) + ((k - 1) * (P * N))])) + (c43 * a[((i - 1) + ((j + 1) * P)) + (k * (P * N))])) + (c44 * a[((i - 1) + ((j + 1) * P)) + ((k + 1) * (P * N))])) + (c45 * a[((i - 1) + ((j + 1) * P)) + ((k + 2) * (P * N))])) + (c46 * a[((i - 1) + ((j + 2) * P)) + ((k - 2) * (P * N))])) + (c47 * a[((i - 1) + ((j + 2) * P)) + ((k - 1) * (P * N))])) + (c48 * a[((i - 1) + ((j + 2) * P)) + (k * (P * N))])) + (c49 * a[((i - 1) + ((j + 2) * P)) + ((k + 1) * (P * N))])) + (c50 * a[((i - 1) + ((j + 2) * P)) + ((k + 2) * (P * N))])) + (c51 * a[(i + ((j - 2) * P)) + ((k - 2) * (P * N))])) + (c52 * a[(i + ((j - 2) * P)) + ((k - 1) * (P * N))])) + (c53 * a[(i + ((j - 2) * P)) + (k * (P * N))])) + (c54 * a[(i + ((j - 2) * P)) + ((k + 1) * (P * N))])) + (c55 * a[(i + ((j - 2) * P)) + ((k + 2) * (P * N))])) + (c56 * a[(i + ((j - 1) * P)) + ((k - 2) * (P * N))])) + (c57 * a[(i + ((j - 1) * P)) + ((k - 1) * (P * N))])) + (c58 * a[(i + ((j - 1) * P)) + (k * (P * N))])) + (c59 * a[(i + ((j - 1) * P)) + ((k + 1) * (P * N))])) + (c60 * a[(i + ((j - 1) * P)) + ((k + 2) * (P * N))])) + (c61 * a[(i + (j * P)) + ((k - 2) * (P * N))])) + (c62 * a[(i + (j * P)) + ((k - 1) * (P * N))])) + (c63 * a[(i + (j * P)) + ((k + 1) * (P * N))])) + (c64 * a[(i + (j * P)) + ((k + 2) * (P * N))])) + (c65 * a[(i + ((j + 1) * P)) + ((k - 2) * (P * N))])) + (c66 * a[(i + ((j + 1) * P)) + ((k - 1) * (P * N))])) + (c67 * a[(i + ((j + 1) * P)) + (k * (P * N))])) + (c68 * a[(i + ((j + 1) * P)) + ((k + 1) * (P * N))])) + (c69 * a[(i + ((j + 1) * P)) + ((k + 2) * (P * N))])) + (c70 * a[(i + ((j + 2) * P)) + ((k - 2) * (P * N))])) + (c71 * a[(i + ((j + 2) * P)) + ((k - 1) * (P * N))])) + (c72 * a[(i + ((j + 2) * P)) + (k * (P * N))])) + (c73 * a[(i + ((j + 2) * P)) + ((k + 1) * (P * N))])) + (c74 * a[(i + ((j + 2) * P)) + ((k + 2) * (P * N))])) + (c75 * a[((i + 1) + ((j - 2) * P)) + ((k - 2) * (P * N))])) + (c76 * a[((i + 1) + ((j - 2) * P)) + ((k - 1) * (P * N))])) + (c77 * a[((i + 1) + ((j - 2) * P)) + (k * (P * N))])) + (c78 * a[((i + 1) + ((j - 2) * P)) + ((k + 1) * (P * N))])) + (c79 * a[((i + 1) + ((j - 2) * P)) + ((k + 2) * (P * N))])) + (c80 * a[((i + 1) + ((j - 1) * P)) + ((k - 2) * (P * N))])) + (c81 * a[((i + 1) + ((j - 1) * P)) + ((k - 1) * (P * N))])) + (c82 * a[((i + 1) + ((j - 1) * P)) + (k * (P * N))])) + (c83 * a[((i + 1) + ((j - 1) * P)) + ((k + 1) * (P * N))])) + (c84 * a[((i + 1) + ((j - 1) * P)) + ((k + 2) * (P * N))])) + (c85 * a[((i + 1) + (j * P)) + ((k - 2) * (P * N))])) + (c86 * a[((i + 1) + (j * P)) + ((k - 1) * (P * N))])) + (c87 * a[((i + 1) + (j * P)) + (k * (P * N))])) + (c88 * a[((i + 1) + (j * P)) + ((k + 1) * (P * N))])) + (c89 * a[((i + 1) + (j * P)) + ((k + 2) * (P * N))])) + (c90 * a[((i + 1) + ((j + 1) * P)) + ((k - 2) * (P * N))])) + (c91 * a[((i + 1) + ((j + 1) * P)) + ((k - 1) * (P * N))])) + (c92 * a[((i + 1) + ((j + 1) * P)) + (k * (P * N))])) + (c93 * a[((i + 1) + ((j + 1) * P)) + ((k + 1) * (P * N))])) + (c94 * a[((i + 1) + ((j + 1) * P)) + ((k + 2) * (P * N))])) + (c95 * a[((i + 1) + ((j + 2) * P)) + ((k - 2) * (P * N))])) + (c96 * a[((i + 1) + ((j + 2) * P)) + ((k - 1) * (P * N))])) + (c97 * a[((i + 1) + ((j + 2) * P)) + (k * (P * N))])) + (c98 * a[((i + 1) + ((j + 2) * P)) + ((k + 1) * (P * N))])) + (c99 * a[((i + 1) + ((j + 2) * P)) + ((k + 2) * (P * N))])) + (c100 * a[((i + 2) + ((j - 2) * P)) + ((k - 2) * (P * N))])) + (c101 * a[((i + 2) + ((j - 2) * P)) + ((k - 1) * (P * N))])) + (c102 * a[((i + 2) + ((j - 2) * P)) + (k * (P * N))])) + (c103 * a[((i + 2) + ((j - 2) * P)) + ((k + 1) * (P * N))])) + (c104 * a[((i + 2) + ((j - 2) * P)) + ((k + 2) * (P * N))])) + (c105 * a[((i + 2) + ((j - 1) * P)) + ((k - 2) * (P * N))])) + (c106 * a[((i + 2) + ((j - 1) * P)) + ((k - 1) * (P * N))])) + (c107 * a[((i + 2) + ((j - 1) * P)) + (k * (P * N))])) + (c108 * a[((i + 2) + ((j - 1) * P)) + ((k + 1) * (P * N))])) + (c109 * a[((i + 2) + ((j - 1) * P)) + ((k + 2) * (P * N))])) + (c110 * a[((i + 2) + (j * P)) + ((k - 2) * (P * N))])) + (c111 * a[((i + 2) + (j * P)) + ((k - 1) * (P * N))])) + (c112 * a[((i + 2) + (j * P)) + (k * (P * N))])) + (c113 * a[((i + 2) + (j * P)) + ((k + 1) * (P * N))])) + (c114 * a[((i + 2) + (j * P)) + ((k + 2) * (P * N))])) + (c115 * a[((i + 2) + ((j + 1) * P)) + ((k - 2) * (P * N))])) + (c116 * a[((i + 2) + ((j + 1) * P)) + ((k - 1) * (P * N))])) + (c117 * a[((i + 2) + ((j + 1) * P)) + (k * (P * N))])) + (c118 * a[((i + 2) + ((j + 1) * P)) + ((k + 1) * (P * N))])) + (c119 * a[((i + 2) + ((j + 1) * P)) + ((k + 2) * (P * N))])) + (c120 * a[((i + 2) + ((j + 2) * P)) + ((k - 2) * (P * N))])) + (c121 * a[((i + 2) + ((j + 2) * P)) + ((k - 1) * (P * N))])) + (c122 * a[((i + 2) + ((j + 2) * P)) + (k * (P * N))])) + (c123 * a[((i + 2) + ((j + 2) * P)) + ((k + 1) * (P * N))])) + (c124 * a[((i + 2) + ((j + 2) * P)) + ((k + 2) * (P * N))]);
      }

    }

  }

  if (var_false)
  {
    dummy(a);
    dummy(b);
    dummy(&c0);
    dummy(&c1);
    dummy(&c2);
    dummy(&c3);
    dummy(&c4);
    dummy(&c5);
    dummy(&c6);
    dummy(&c7);
    dummy(&c8);
    dummy(&c9);
    dummy(&c10);
    dummy(&c11);
    dummy(&c12);
    dummy(&c13);
    dummy(&c14);
    dummy(&c15);
    dummy(&c16);
    dummy(&c17);
    dummy(&c18);
    dummy(&c19);
    dummy(&c20);
    dummy(&c21);
    dummy(&c22);
    dummy(&c23);
    dummy(&c24);
    dummy(&c25);
    dummy(&c26);
    dummy(&c27);
    dummy(&c28);
    dummy(&c29);
    dummy(&c30);
    dummy(&c31);
    dummy(&c32);
    dummy(&c33);
    dummy(&c34);
    dummy(&c35);
    dummy(&c36);
    dummy(&c37);
    dummy(&c38);
    dummy(&c39);
    dummy(&c40);
    dummy(&c41);
    dummy(&c42);
    dummy(&c43);
    dummy(&c44);
    dummy(&c45);
    dummy(&c46);
    dummy(&c47);
    dummy(&c48);
    dummy(&c49);
    dummy(&c50);
    dummy(&c51);
    dummy(&c52);
    dummy(&c53);
    dummy(&c54);
    dummy(&c55);
    dummy(&c56);
    dummy(&c57);
    dummy(&c58);
    dummy(&c59);
    dummy(&c60);
    dummy(&c61);
    dummy(&c62);
    dummy(&c63);
    dummy(&c64);
    dummy(&c65);
    dummy(&c66);
    dummy(&c67);
    dummy(&c68);
    dummy(&c69);
    dummy(&c70);
    dummy(&c71);
    dummy(&c72);
    dummy(&c73);
    dummy(&c74);
    dummy(&c75);
    dummy(&c76);
    dummy(&c77);
    dummy(&c78);
    dummy(&c79);
    dummy(&c80);
    dummy(&c81);
    dummy(&c82);
    dummy(&c83);
    dummy(&c84);
    dummy(&c85);
    dummy(&c86);
    dummy(&c87);
    dummy(&c88);
    dummy(&c89);
    dummy(&c90);
    dummy(&c91);
    dummy(&c92);
    dummy(&c93);
    dummy(&c94);
    dummy(&c95);
    dummy(&c96);
    dummy(&c97);
    dummy(&c98);
    dummy(&c99);
    dummy(&c100);
    dummy(&c101);
    dummy(&c102);
    dummy(&c103);
    dummy(&c104);
    dummy(&c105);
    dummy(&c106);
    dummy(&c107);
    dummy(&c108);
    dummy(&c109);
    dummy(&c110);
    dummy(&c111);
    dummy(&c112);
    dummy(&c113);
    dummy(&c114);
    dummy(&c115);
    dummy(&c116);
    dummy(&c117);
    dummy(&c118);
    dummy(&c119);
    dummy(&c120);
    dummy(&c121);
    dummy(&c122);
    dummy(&c123);
    dummy(&c124);
  }

}

