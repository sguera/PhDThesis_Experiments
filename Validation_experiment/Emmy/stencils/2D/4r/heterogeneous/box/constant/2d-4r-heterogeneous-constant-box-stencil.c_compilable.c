#include "kerncraft.h"
#include <stdlib.h>

void dummy(void *);
extern int var_false;
int main(int argc, char **argv)
{
  const int N = atoi(argv[2]);
  const int M = atoi(argv[1]);
  double *a = aligned_malloc((sizeof(double)) * (M * N), 32);
  for (int i = 0; i < (M * N); ++i)
    a[i] = 0.49795506534730005;

  double *b = aligned_malloc((sizeof(double)) * (M * N), 32);
  for (int i = 0; i < (M * N); ++i)
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
  }

  for (int j = 4; j < (M - 4); j++)
  {
    for (int i = 4; i < (N - 4); i++)
    {
      b[i + (j * N)] = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((c0 * a[i + (j * N)]) + (c1 * a[(i - 4) + ((j - 4) * N)])) + (c2 * a[(i - 4) + ((j - 3) * N)])) + (c3 * a[(i - 4) + ((j - 2) * N)])) + (c4 * a[(i - 4) + ((j - 1) * N)])) + (c5 * a[(i - 4) + (j * N)])) + (c6 * a[(i - 4) + ((j + 1) * N)])) + (c7 * a[(i - 4) + ((j + 2) * N)])) + (c8 * a[(i - 4) + ((j + 3) * N)])) + (c9 * a[(i - 4) + ((j + 4) * N)])) + (c10 * a[(i - 3) + ((j - 4) * N)])) + (c11 * a[(i - 3) + ((j - 3) * N)])) + (c12 * a[(i - 3) + ((j - 2) * N)])) + (c13 * a[(i - 3) + ((j - 1) * N)])) + (c14 * a[(i - 3) + (j * N)])) + (c15 * a[(i - 3) + ((j + 1) * N)])) + (c16 * a[(i - 3) + ((j + 2) * N)])) + (c17 * a[(i - 3) + ((j + 3) * N)])) + (c18 * a[(i - 3) + ((j + 4) * N)])) + (c19 * a[(i - 2) + ((j - 4) * N)])) + (c20 * a[(i - 2) + ((j - 3) * N)])) + (c21 * a[(i - 2) + ((j - 2) * N)])) + (c22 * a[(i - 2) + ((j - 1) * N)])) + (c23 * a[(i - 2) + (j * N)])) + (c24 * a[(i - 2) + ((j + 1) * N)])) + (c25 * a[(i - 2) + ((j + 2) * N)])) + (c26 * a[(i - 2) + ((j + 3) * N)])) + (c27 * a[(i - 2) + ((j + 4) * N)])) + (c28 * a[(i - 1) + ((j - 4) * N)])) + (c29 * a[(i - 1) + ((j - 3) * N)])) + (c30 * a[(i - 1) + ((j - 2) * N)])) + (c31 * a[(i - 1) + ((j - 1) * N)])) + (c32 * a[(i - 1) + (j * N)])) + (c33 * a[(i - 1) + ((j + 1) * N)])) + (c34 * a[(i - 1) + ((j + 2) * N)])) + (c35 * a[(i - 1) + ((j + 3) * N)])) + (c36 * a[(i - 1) + ((j + 4) * N)])) + (c37 * a[i + ((j - 4) * N)])) + (c38 * a[i + ((j - 3) * N)])) + (c39 * a[i + ((j - 2) * N)])) + (c40 * a[i + ((j - 1) * N)])) + (c41 * a[i + ((j + 1) * N)])) + (c42 * a[i + ((j + 2) * N)])) + (c43 * a[i + ((j + 3) * N)])) + (c44 * a[i + ((j + 4) * N)])) + (c45 * a[(i + 1) + ((j - 4) * N)])) + (c46 * a[(i + 1) + ((j - 3) * N)])) + (c47 * a[(i + 1) + ((j - 2) * N)])) + (c48 * a[(i + 1) + ((j - 1) * N)])) + (c49 * a[(i + 1) + (j * N)])) + (c50 * a[(i + 1) + ((j + 1) * N)])) + (c51 * a[(i + 1) + ((j + 2) * N)])) + (c52 * a[(i + 1) + ((j + 3) * N)])) + (c53 * a[(i + 1) + ((j + 4) * N)])) + (c54 * a[(i + 2) + ((j - 4) * N)])) + (c55 * a[(i + 2) + ((j - 3) * N)])) + (c56 * a[(i + 2) + ((j - 2) * N)])) + (c57 * a[(i + 2) + ((j - 1) * N)])) + (c58 * a[(i + 2) + (j * N)])) + (c59 * a[(i + 2) + ((j + 1) * N)])) + (c60 * a[(i + 2) + ((j + 2) * N)])) + (c61 * a[(i + 2) + ((j + 3) * N)])) + (c62 * a[(i + 2) + ((j + 4) * N)])) + (c63 * a[(i + 3) + ((j - 4) * N)])) + (c64 * a[(i + 3) + ((j - 3) * N)])) + (c65 * a[(i + 3) + ((j - 2) * N)])) + (c66 * a[(i + 3) + ((j - 1) * N)])) + (c67 * a[(i + 3) + (j * N)])) + (c68 * a[(i + 3) + ((j + 1) * N)])) + (c69 * a[(i + 3) + ((j + 2) * N)])) + (c70 * a[(i + 3) + ((j + 3) * N)])) + (c71 * a[(i + 3) + ((j + 4) * N)])) + (c72 * a[(i + 4) + ((j - 4) * N)])) + (c73 * a[(i + 4) + ((j - 3) * N)])) + (c74 * a[(i + 4) + ((j - 2) * N)])) + (c75 * a[(i + 4) + ((j - 1) * N)])) + (c76 * a[(i + 4) + (j * N)])) + (c77 * a[(i + 4) + ((j + 1) * N)])) + (c78 * a[(i + 4) + ((j + 2) * N)])) + (c79 * a[(i + 4) + ((j + 3) * N)])) + (c80 * a[(i + 4) + ((j + 4) * N)]);
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
  }

}

