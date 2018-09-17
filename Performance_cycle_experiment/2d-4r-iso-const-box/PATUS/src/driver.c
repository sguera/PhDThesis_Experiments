#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>


#include <omp.h>
#include <immintrin.h>
#include <x86intrin.h>
#include <avxmathlib.h>
#include <math.h>
#include "patusrt.h"

// forward_decls -->
void initialize_example_parm(double *  U_0_0, double *  U_0_1, double c0, double c1, double c2, double c3, double c4, double c5, double c6, double c7, double c8, long M_MAX, long N_MAX, long cb_x, long cb_y, long chunk);
void example_parm(double *  *  U_0_1_out, double *  U_0_0, double *  U_0_1, double c0, double c1, double c2, double c3, double c4, double c5, double c6, double c7, double c8, long M_MAX, long N_MAX, long cb_x, long cb_y, long chunk, int _unroll_p3);

// <--


int main (int argc, char** argv)
{
	int i;
	
	// prepare grids
	// declare_grids -->
	double *  U_0_1_out;
	double *  U_0_1_out_ref;
	double *  U_0_0;
	double *  U_0_0_ref;
	double *  U_0_1;
	double *  U_0_1_ref;
	int nParamArgsCount = 0;
	char *  *  rgArgs = ((char *  * )malloc((argc*sizeof (char * ))));
	int ii;
	for (ii=1; ii<argc;  ++ ii)
	{
		if ((( * argv[ii])!='-'))
		{
			rgArgs[nParamArgsCount]=argv[ii];
			 ++ nParamArgsCount;
		}
	}
	if ((nParamArgsCount!=6))
	{
		printf("Wrong number of parameters. Syntax:\n%s <M_MAX> <N_MAX> <cb_x> <cb_y> <chunk> <_unroll_p3>\n", argv[0]);
		exit(-1);
	}
	long M_MAX = atoi(rgArgs[0]);
	long N_MAX = atoi(rgArgs[1]);
	long cb_x = atoi(rgArgs[2]);
	long cb_y = atoi(rgArgs[3]);
	long chunk = atoi(rgArgs[4]);
	long _unroll_p3 = atoi(rgArgs[5]);
	free(rgArgs);
	// <--
	
	// allocate_grids -->
	if (((M_MAX%4)!=0))
	{
		printf("Non-native, aligned SIMD type mode requires that M_MAX is divisible by 4 [M_MAX = %ld].\n", M_MAX);
		return -1;
	}
	U_0_0=((double * )malloc((((M_MAX*N_MAX)*sizeof (double))+31)));
	U_0_0_ref=((double * )malloc((((M_MAX*N_MAX)*sizeof (double))+31)));
	if (((M_MAX%4)!=0))
	{
		printf("Non-native, aligned SIMD type mode requires that M_MAX is divisible by 4 [M_MAX = %ld].\n", M_MAX);
		return -1;
	}
	U_0_1=((double * )malloc((((M_MAX*N_MAX)*sizeof (double))+31)));
	U_0_1_ref=((double * )malloc((((M_MAX*N_MAX)*sizeof (double))+31)));
	// <--
	
	
	// initialize
#pragma omp parallel
	{
		// initialize_grids -->
		initialize_example_parm(((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), 0.2, 0.3, 0.65, 0.15, 0.75, 0.45, 0.25, 0.85, 0.35, M_MAX, N_MAX, cb_x, cb_y, chunk);
		initialize_example_parm(U_0_0_ref, U_0_1_ref, 0.2, 0.3, 0.65, 0.15, 0.75, 0.45, 0.25, 0.85, 0.35, M_MAX, N_MAX, cb_x, cb_y, chunk);
		// <--
		
	}
	
	// write output
	if (has_arg ("-o", argc, argv))
	{
		// write_grids -->
		write_data_d("U_0_0.0.data", 2, ((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), M_MAX, N_MAX);
		write_data_d("U_0_1.0.data", 2, ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), M_MAX, N_MAX);
		// <--
		
	}
	
	long nFlopsPerStencil = 89;
	long nGridPointsCount = 5 * ((200*(M_MAX-8))*(N_MAX-8));
	long nBytesTransferred = 5 * (200*(((M_MAX*N_MAX)*sizeof (double))+((M_MAX*N_MAX)*sizeof (double))));
	
	// warm up
#pragma omp parallel
	{
		// compute_stencil -->
		example_parm(( & U_0_1_out), ((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), 0.2, 0.3, 0.65, 0.15, 0.75, 0.45, 0.25, 0.85, 0.35, M_MAX, N_MAX, cb_x, cb_y, chunk, _unroll_p3);
		// <--
		
	}
	
	// run the benchmark
	tic ();
#pragma omp parallel private(i)
	for (i = 0; i < 5; i++)
	{
		// compute_stencil -->
		example_parm(( & U_0_1_out), ((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), 0.2, 0.3, 0.65, 0.15, 0.75, 0.45, 0.25, 0.85, 0.35, M_MAX, N_MAX, cb_x, cb_y, chunk, _unroll_p3);
		// <--
		
#pragma omp barrier
	}
	toc (nFlopsPerStencil, nGridPointsCount, nBytesTransferred);
	
	// write output
	if (has_arg ("-o", argc, argv))
	{
#pragma omp parallel
		{
			// initialize_grids -->
			initialize_example_parm(((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), 0.2, 0.3, 0.65, 0.15, 0.75, 0.45, 0.25, 0.85, 0.35, M_MAX, N_MAX, cb_x, cb_y, chunk);
			initialize_example_parm(U_0_0_ref, U_0_1_ref, 0.2, 0.3, 0.65, 0.15, 0.75, 0.45, 0.25, 0.85, 0.35, M_MAX, N_MAX, cb_x, cb_y, chunk);
			// <--
			
#pragma omp barrier
			// compute_stencil -->
			example_parm(( & U_0_1_out), ((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), 0.2, 0.3, 0.65, 0.15, 0.75, 0.45, 0.25, 0.85, 0.35, M_MAX, N_MAX, cb_x, cb_y, chunk, _unroll_p3);
			// <--
			
		}
		// write_grids -->
		write_data_d("U_0_1_out.1.data", 2, U_0_1_out, M_MAX, N_MAX);
		// <--
		
	}
	
	// validate
	if (1)
	{
#pragma omp parallel
		{
			// initialize_grids -->
			initialize_example_parm(((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), 0.2, 0.3, 0.65, 0.15, 0.75, 0.45, 0.25, 0.85, 0.35, M_MAX, N_MAX, cb_x, cb_y, chunk);
			initialize_example_parm(U_0_0_ref, U_0_1_ref, 0.2, 0.3, 0.65, 0.15, 0.75, 0.45, 0.25, 0.85, 0.35, M_MAX, N_MAX, cb_x, cb_y, chunk);
			// <--
			
#pragma omp barrier
			// compute_stencil -->
			example_parm(( & U_0_1_out), ((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), 0.2, 0.3, 0.65, 0.15, 0.75, 0.45, 0.25, 0.85, 0.35, M_MAX, N_MAX, cb_x, cb_y, chunk, _unroll_p3);
			// <--
			
		}
		// validate_computation -->
		int bHasErrors = 0;
		int _idx0;
		int _idx10;
		int _idx11;
		int _idx12;
		int _idx13;
		int _idx14;
		int _idx15;
		int _idx16;
		int _idx17;
		int _idx18;
		int _idx19;
		int _idx2;
		int _idx20;
		int _idx21;
		int _idx22;
		int _idx23;
		int _idx24;
		int _idx25;
		int _idx26;
		int _idx27;
		int _idx28;
		int _idx29;
		int _idx3;
		int _idx30;
		int _idx31;
		int _idx32;
		int _idx33;
		int _idx34;
		int _idx35;
		int _idx36;
		int _idx37;
		int _idx38;
		int _idx39;
		int _idx4;
		int _idx40;
		int _idx41;
		int _idx42;
		int _idx43;
		int _idx44;
		int _idx45;
		int _idx46;
		int _idx47;
		int _idx48;
		int _idx49;
		int _idx5;
		int _idx50;
		int _idx51;
		int _idx52;
		int _idx53;
		int _idx54;
		int _idx55;
		int _idx56;
		int _idx57;
		int _idx58;
		int _idx59;
		int _idx6;
		int _idx60;
		int _idx61;
		int _idx62;
		int _idx63;
		int _idx64;
		int _idx65;
		int _idx66;
		int _idx67;
		int _idx68;
		int _idx69;
		int _idx7;
		int _idx70;
		int _idx71;
		int _idx72;
		int _idx73;
		int _idx74;
		int _idx75;
		int _idx76;
		int _idx77;
		int _idx78;
		int _idx79;
		int _idx8;
		int _idx80;
		int _idx81;
		int _idx9;
		int p3_loc_idx_x;
		int p3_loc_idx_y;
		int t_ref;
		double *  tmp_swap_2;
		{
			/*
			for t_ref = 1..200 by 1 parallel 1 <level 0> schedule 1 { ... }
			*/
			for (t_ref=1; t_ref<=200; t_ref+=1)
			{
				/*
				for POINT pt_ref[t=t][0] of size [1, 1] in u0[t=t][0] + [ min=[0, 0], max=[0, 0] ] parallel 1 <level 0> schedule default { ... }
				*/
				{
					/* Index bounds calculations for iterators in pt_ref[t=t][0] */
					for (p3_loc_idx_y=4; p3_loc_idx_y<((N_MAX-5)+1); p3_loc_idx_y+=1)
					{
						for (p3_loc_idx_x=4; p3_loc_idx_x<((M_MAX-5)+1); p3_loc_idx_x+=1)
						{
							/*
							pt_ref[t=t][0]=stencil(pt_ref[t=t][0])
							*/
							/* _idx0 = ((M_MAX*p3_loc_idx_y)+p3_loc_idx_x) */
							_idx0=((M_MAX*p3_loc_idx_y)+p3_loc_idx_x);
							/* _idx2 = ((M_MAX*(p3_loc_idx_y-1))+p3_loc_idx_x) */
							_idx2=(_idx0-M_MAX);
							/* _idx3 = ((M_MAX*p3_loc_idx_y)+(p3_loc_idx_x-1)) */
							_idx3=(_idx0-1);
							/* _idx4 = ((M_MAX*p3_loc_idx_y)+(p3_loc_idx_x+1)) */
							_idx4=(_idx0+1);
							/* _idx5 = ((M_MAX*(p3_loc_idx_y+1))+p3_loc_idx_x) */
							_idx5=(M_MAX+_idx0);
							/* _idx6 = ((M_MAX*(p3_loc_idx_y-2))+p3_loc_idx_x) */
							_idx6=(_idx2-M_MAX);
							/* _idx7 = ((M_MAX*(p3_loc_idx_y-1))+(p3_loc_idx_x-1)) */
							_idx7=((M_MAX+_idx6)-1);
							/* _idx8 = ((M_MAX*(p3_loc_idx_y-1))+(p3_loc_idx_x+1)) */
							_idx8=((M_MAX+_idx6)+1);
							/* _idx9 = ((M_MAX*p3_loc_idx_y)+(p3_loc_idx_x-2)) */
							_idx9=((M_MAX+_idx8)-3);
							/* _idx10 = ((M_MAX*p3_loc_idx_y)+(p3_loc_idx_x+2)) */
							_idx10=((M_MAX+_idx8)+1);
							/* _idx11 = ((M_MAX*(p3_loc_idx_y+1))+(p3_loc_idx_x-1)) */
							_idx11=((M_MAX+_idx10)-3);
							/* _idx12 = ((M_MAX*(p3_loc_idx_y+1))+(p3_loc_idx_x+1)) */
							_idx12=((M_MAX+_idx10)-1);
							/* _idx13 = ((M_MAX*(p3_loc_idx_y+2))+p3_loc_idx_x) */
							_idx13=((M_MAX+_idx12)-1);
							/* _idx14 = ((M_MAX*(p3_loc_idx_y-3))+p3_loc_idx_x) */
							_idx14=(_idx6-M_MAX);
							/* _idx15 = ((M_MAX*(p3_loc_idx_y-2))+(p3_loc_idx_x-1)) */
							_idx15=((M_MAX+_idx14)-1);
							/* _idx16 = ((M_MAX*(p3_loc_idx_y-2))+(p3_loc_idx_x+1)) */
							_idx16=((M_MAX+_idx14)+1);
							/* _idx17 = ((M_MAX*(p3_loc_idx_y-1))+(p3_loc_idx_x-2)) */
							_idx17=((M_MAX+_idx16)-3);
							/* _idx18 = ((M_MAX*(p3_loc_idx_y-1))+(p3_loc_idx_x+2)) */
							_idx18=(_idx10-M_MAX);
							/* _idx19 = ((M_MAX*p3_loc_idx_y)+(p3_loc_idx_x-3)) */
							_idx19=(_idx10-5);
							/* _idx20 = ((M_MAX*p3_loc_idx_y)+(p3_loc_idx_x+3)) */
							_idx20=((( - M_MAX)+_idx12)+2);
							/* _idx21 = ((M_MAX*(p3_loc_idx_y+1))+(p3_loc_idx_x-2)) */
							_idx21=(_idx12-3);
							/* _idx22 = ((M_MAX*(p3_loc_idx_y+1))+(p3_loc_idx_x+2)) */
							_idx22=(_idx12+1);
							/* _idx23 = ((M_MAX*(p3_loc_idx_y+2))+(p3_loc_idx_x-1)) */
							_idx23=((M_MAX+_idx12)-2);
							/* _idx24 = ((M_MAX*(p3_loc_idx_y+2))+(p3_loc_idx_x+1)) */
							_idx24=(M_MAX+_idx12);
							/* _idx25 = ((M_MAX*(p3_loc_idx_y+3))+p3_loc_idx_x) */
							_idx25=((6*M_MAX)+_idx14);
							/* _idx26 = ((M_MAX*(p3_loc_idx_y-4))+p3_loc_idx_x) */
							_idx26=(_idx14-M_MAX);
							/* _idx27 = ((M_MAX*(p3_loc_idx_y-3))+(p3_loc_idx_x-1)) */
							_idx27=(_idx14-1);
							/* _idx28 = ((M_MAX*(p3_loc_idx_y-3))+(p3_loc_idx_x+1)) */
							_idx28=(_idx14+1);
							/* _idx29 = ((M_MAX*(p3_loc_idx_y-2))+(p3_loc_idx_x-2)) */
							_idx29=((M_MAX+_idx14)-2);
							/* _idx30 = ((M_MAX*(p3_loc_idx_y-2))+(p3_loc_idx_x+2)) */
							_idx30=((M_MAX+_idx14)+2);
							/* _idx31 = ((M_MAX*(p3_loc_idx_y-1))+(p3_loc_idx_x-3)) */
							_idx31=((M_MAX+_idx16)-4);
							/* _idx32 = ((M_MAX*(p3_loc_idx_y-1))+(p3_loc_idx_x+3)) */
							_idx32=((( - M_MAX)+_idx4)+2);
							/* _idx33 = ((M_MAX*p3_loc_idx_y)+(p3_loc_idx_x-4)) */
							_idx33=(_idx4-5);
							/* _idx34 = ((M_MAX*p3_loc_idx_y)+(p3_loc_idx_x+4)) */
							_idx34=(_idx4+3);
							/* _idx35 = ((M_MAX*(p3_loc_idx_y+1))+(p3_loc_idx_x-3)) */
							_idx35=((M_MAX+_idx4)-4);
							/* _idx36 = ((M_MAX*(p3_loc_idx_y+1))+(p3_loc_idx_x+3)) */
							_idx36=(_idx35+6);
							/* _idx37 = ((M_MAX*(p3_loc_idx_y+2))+(p3_loc_idx_x-2)) */
							_idx37=((M_MAX+_idx35)+1);
							/* _idx38 = ((M_MAX*(p3_loc_idx_y+2))+(p3_loc_idx_x+2)) */
							_idx38=((M_MAX+_idx35)+5);
							/* _idx39 = ((M_MAX*(p3_loc_idx_y+3))+(p3_loc_idx_x-1)) */
							_idx39=(_idx25-1);
							/* _idx40 = ((M_MAX*(p3_loc_idx_y+3))+(p3_loc_idx_x+1)) */
							_idx40=((3*M_MAX)+_idx4);
							/* _idx41 = ((M_MAX*(p3_loc_idx_y+4))+p3_loc_idx_x) */
							_idx41=((7*M_MAX)+_idx14);
							/* _idx42 = ((M_MAX*(p3_loc_idx_y-4))+(p3_loc_idx_x-1)) */
							_idx42=(_idx26-1);
							/* _idx43 = ((M_MAX*(p3_loc_idx_y-4))+(p3_loc_idx_x+1)) */
							_idx43=((( - M_MAX)+_idx14)+1);
							/* _idx44 = ((M_MAX*(p3_loc_idx_y-3))+(p3_loc_idx_x-2)) */
							_idx44=(_idx14-2);
							/* _idx45 = ((M_MAX*(p3_loc_idx_y-3))+(p3_loc_idx_x+2)) */
							_idx45=(_idx14+2);
							/* _idx46 = ((M_MAX*(p3_loc_idx_y-2))+(p3_loc_idx_x-3)) */
							_idx46=((M_MAX+_idx14)-3);
							/* _idx47 = ((M_MAX*(p3_loc_idx_y-2))+(p3_loc_idx_x+3)) */
							_idx47=((M_MAX+_idx14)+3);
							/* _idx48 = ((M_MAX*(p3_loc_idx_y-1))+(p3_loc_idx_x-4)) */
							_idx48=(_idx32-7);
							/* _idx49 = ((M_MAX*(p3_loc_idx_y-1))+(p3_loc_idx_x+4)) */
							_idx49=((( - M_MAX)+_idx4)+3);
							/* _idx50 = ((M_MAX*(p3_loc_idx_y+1))+(p3_loc_idx_x-4)) */
							_idx50=((M_MAX+_idx4)-5);
							/* _idx51 = ((M_MAX*(p3_loc_idx_y+1))+(p3_loc_idx_x+4)) */
							_idx51=((2*M_MAX)+_idx49);
							/* _idx52 = ((M_MAX*(p3_loc_idx_y+2))+(p3_loc_idx_x-3)) */
							_idx52=((M_MAX+_idx11)-2);
							/* _idx53 = ((M_MAX*(p3_loc_idx_y+2))+(p3_loc_idx_x+3)) */
							_idx53=((3*M_MAX)+_idx32);
							/* _idx54 = ((M_MAX*(p3_loc_idx_y+3))+(p3_loc_idx_x-2)) */
							_idx54=((5*M_MAX)+_idx29);
							/* _idx55 = ((M_MAX*(p3_loc_idx_y+3))+(p3_loc_idx_x+2)) */
							_idx55=((( - M_MAX)+_idx41)+2);
							/* _idx56 = ((M_MAX*(p3_loc_idx_y+4))+(p3_loc_idx_x-1)) */
							_idx56=((M_MAX+_idx55)-3);
							/* _idx57 = ((M_MAX*(p3_loc_idx_y+4))+(p3_loc_idx_x+1)) */
							_idx57=((4*M_MAX)+_idx4);
							/* _idx58 = ((M_MAX*(p3_loc_idx_y-4))+(p3_loc_idx_x-2)) */
							_idx58=(_idx44-M_MAX);
							/* _idx59 = ((M_MAX*(p3_loc_idx_y-4))+(p3_loc_idx_x+2)) */
							_idx59=((( - M_MAX)+_idx27)+3);
							/* _idx60 = ((M_MAX*(p3_loc_idx_y-3))+(p3_loc_idx_x-3)) */
							_idx60=(_idx27-2);
							/* _idx61 = ((M_MAX*(p3_loc_idx_y-3))+(p3_loc_idx_x+3)) */
							_idx61=((( - M_MAX)+_idx30)+1);
							/* _idx62 = ((M_MAX*(p3_loc_idx_y-2))+(p3_loc_idx_x-4)) */
							_idx62=(_idx30-6);
							/* _idx63 = ((M_MAX*(p3_loc_idx_y-2))+(p3_loc_idx_x+4)) */
							_idx63=(_idx49-M_MAX);
							/* _idx64 = ((M_MAX*(p3_loc_idx_y+2))+(p3_loc_idx_x-4)) */
							_idx64=((4*M_MAX)+_idx62);
							/* _idx65 = ((M_MAX*(p3_loc_idx_y+2))+(p3_loc_idx_x+4)) */
							_idx65=((3*M_MAX)+_idx49);
							/* _idx66 = ((M_MAX*(p3_loc_idx_y+3))+(p3_loc_idx_x-3)) */
							_idx66=(_idx55-5);
							/* _idx67 = ((M_MAX*(p3_loc_idx_y+3))+(p3_loc_idx_x+3)) */
							_idx67=((4*M_MAX)+_idx32);
							/* _idx68 = ((M_MAX*(p3_loc_idx_y+4))+(p3_loc_idx_x-2)) */
							_idx68=((M_MAX+_idx67)-5);
							/* _idx69 = ((M_MAX*(p3_loc_idx_y+4))+(p3_loc_idx_x+2)) */
							_idx69=((M_MAX+_idx67)-1);
							/* _idx70 = ((M_MAX*(p3_loc_idx_y-4))+(p3_loc_idx_x-3)) */
							_idx70=(_idx60-M_MAX);
							/* _idx71 = ((M_MAX*(p3_loc_idx_y-4))+(p3_loc_idx_x+3)) */
							_idx71=((( - M_MAX)+_idx27)+4);
							/* _idx72 = ((M_MAX*(p3_loc_idx_y-3))+(p3_loc_idx_x-4)) */
							_idx72=(_idx62-M_MAX);
							/* _idx73 = ((M_MAX*(p3_loc_idx_y-3))+(p3_loc_idx_x+4)) */
							_idx73=(_idx63-M_MAX);
							/* _idx74 = ((M_MAX*(p3_loc_idx_y+3))+(p3_loc_idx_x-4)) */
							_idx74=(_idx67-7);
							/* _idx75 = ((M_MAX*(p3_loc_idx_y+3))+(p3_loc_idx_x+4)) */
							_idx75=((4*M_MAX)+_idx49);
							/* _idx76 = ((M_MAX*(p3_loc_idx_y+4))+(p3_loc_idx_x-3)) */
							_idx76=((M_MAX+_idx75)-7);
							/* _idx77 = ((M_MAX*(p3_loc_idx_y+4))+(p3_loc_idx_x+3)) */
							_idx77=((5*M_MAX)+_idx32);
							/* _idx78 = ((M_MAX*(p3_loc_idx_y-4))+(p3_loc_idx_x-4)) */
							_idx78=(_idx70-1);
							/* _idx79 = ((M_MAX*(p3_loc_idx_y-4))+(p3_loc_idx_x+4)) */
							_idx79=((( - M_MAX)+_idx27)+5);
							/* _idx80 = ((M_MAX*(p3_loc_idx_y+4))+(p3_loc_idx_x-4)) */
							_idx80=((M_MAX+_idx75)-8);
							/* _idx81 = ((M_MAX*(p3_loc_idx_y+4))+(p3_loc_idx_x+4)) */
							_idx81=((5*M_MAX)+_idx49);
							U_0_1_ref[_idx0]=((((0.2*U_0_0_ref[_idx0])+(0.3*((U_0_0_ref[_idx2]+U_0_0_ref[_idx3])+(U_0_0_ref[_idx4]+U_0_0_ref[_idx5]))))+((0.65*(((U_0_0_ref[_idx6]+U_0_0_ref[_idx7])+(U_0_0_ref[_idx8]+U_0_0_ref[_idx9]))+((U_0_0_ref[_idx10]+U_0_0_ref[_idx11])+(U_0_0_ref[_idx12]+U_0_0_ref[_idx13]))))+(0.15*(((U_0_0_ref[_idx14]+(U_0_0_ref[_idx15]+U_0_0_ref[_idx16]))+(U_0_0_ref[_idx17]+(U_0_0_ref[_idx18]+U_0_0_ref[_idx19])))+((U_0_0_ref[_idx20]+(U_0_0_ref[_idx21]+U_0_0_ref[_idx22]))+(U_0_0_ref[_idx23]+(U_0_0_ref[_idx24]+U_0_0_ref[_idx25])))))))+(((0.75*((((U_0_0_ref[_idx26]+U_0_0_ref[_idx27])+(U_0_0_ref[_idx28]+U_0_0_ref[_idx29]))+((U_0_0_ref[_idx30]+U_0_0_ref[_idx31])+(U_0_0_ref[_idx32]+U_0_0_ref[_idx33])))+(((U_0_0_ref[_idx34]+U_0_0_ref[_idx35])+(U_0_0_ref[_idx36]+U_0_0_ref[_idx37]))+((U_0_0_ref[_idx38]+U_0_0_ref[_idx39])+(U_0_0_ref[_idx40]+U_0_0_ref[_idx41])))))+(0.45*((((U_0_0_ref[_idx42]+U_0_0_ref[_idx43])+(U_0_0_ref[_idx44]+U_0_0_ref[_idx45]))+((U_0_0_ref[_idx46]+U_0_0_ref[_idx47])+(U_0_0_ref[_idx48]+U_0_0_ref[_idx49])))+(((U_0_0_ref[_idx50]+U_0_0_ref[_idx51])+(U_0_0_ref[_idx52]+U_0_0_ref[_idx53]))+((U_0_0_ref[_idx54]+U_0_0_ref[_idx55])+(U_0_0_ref[_idx56]+U_0_0_ref[_idx57]))))))+((0.25*(((U_0_0_ref[_idx58]+(U_0_0_ref[_idx59]+U_0_0_ref[_idx60]))+(U_0_0_ref[_idx61]+(U_0_0_ref[_idx62]+U_0_0_ref[_idx63])))+((U_0_0_ref[_idx64]+(U_0_0_ref[_idx65]+U_0_0_ref[_idx66]))+(U_0_0_ref[_idx67]+(U_0_0_ref[_idx68]+U_0_0_ref[_idx69])))))+((0.85*(((U_0_0_ref[_idx70]+U_0_0_ref[_idx71])+(U_0_0_ref[_idx72]+U_0_0_ref[_idx73]))+((U_0_0_ref[_idx74]+U_0_0_ref[_idx75])+(U_0_0_ref[_idx76]+U_0_0_ref[_idx77]))))+(0.35*((U_0_0_ref[_idx78]+U_0_0_ref[_idx79])+(U_0_0_ref[_idx80]+U_0_0_ref[_idx81])))))));
						}
					}
				}
				U_0_1_out_ref=U_0_1_ref;
				tmp_swap_2=U_0_0_ref;
				U_0_0_ref=U_0_1_ref;
				U_0_1_ref=tmp_swap_2;
#pragma omp barrier 
			}
		}
		/*
		for POINT pt_ref[t=t][0] of size [1, 1] in u0[t=t][0] + [ min=[0, 0], max=[0, 0] ] parallel 1 <level 0> schedule default { ... }
		*/
		{
			/* Index bounds calculations for iterators in pt_ref[t=t][0] */
			for (p3_loc_idx_y=4; p3_loc_idx_y<((N_MAX-5)+1); p3_loc_idx_y+=1)
			{
				for (p3_loc_idx_x=4; p3_loc_idx_x<((M_MAX-5)+1); p3_loc_idx_x+=1)
				{
					/* _idx0 = ((M_MAX*p3_loc_idx_y)+p3_loc_idx_x) */
					_idx0=((M_MAX*p3_loc_idx_y)+p3_loc_idx_x);
					if ((fabs(((U_0_1_out[_idx0]-U_0_1_out_ref[_idx0])/U_0_1_out_ref[_idx0]))>1.0E-4))
					{
						bHasErrors=1;
						break;
					}
				}
			}
		}
		// <--
		
		if (( ! bHasErrors))
		puts ("Validation OK.");
		else
		{
			// deallocate_grids -->
			free(U_0_0);
			free(U_0_0_ref);
			free(U_0_1);
			free(U_0_1_ref);
			// <--
			
			puts ("Validation failed.");
			return -1;
		}
	}
	
	// free memory
	// deallocate_grids -->
	free(U_0_0);
	free(U_0_0_ref);
	free(U_0_1);
	free(U_0_1_ref);
	// <--
	
	
	return 0;
}
