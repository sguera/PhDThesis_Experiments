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
void initialize_example_parm(double *  U_0_0, double *  U_0_1, double c0, double c1, double c2, long M_MAX, long N_MAX, long cb_x, long cb_y, long chunk);
void example_parm(double *  *  U_0_1_out, double *  U_0_0, double *  U_0_1, double c0, double c1, double c2, long M_MAX, long N_MAX, long cb_x, long cb_y, long chunk, int _unroll_p3);

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
		initialize_example_parm(((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), 0.2, 0.3, 0.65, M_MAX, N_MAX, cb_x, cb_y, chunk);
		initialize_example_parm(U_0_0_ref, U_0_1_ref, 0.2, 0.3, 0.65, M_MAX, N_MAX, cb_x, cb_y, chunk);
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
	
	long nFlopsPerStencil = 11;
	long nGridPointsCount = 5 * ((200*(M_MAX-2))*(N_MAX-2));
	long nBytesTransferred = 5 * (200*(((M_MAX*N_MAX)*sizeof (double))+((M_MAX*N_MAX)*sizeof (double))));
	
	// warm up
#pragma omp parallel
	{
		// compute_stencil -->
		example_parm(( & U_0_1_out), ((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), 0.2, 0.3, 0.65, M_MAX, N_MAX, cb_x, cb_y, chunk, _unroll_p3);
		// <--
		
	}
	
	// run the benchmark
	tic ();
#pragma omp parallel private(i)
	for (i = 0; i < 5; i++)
	{
		// compute_stencil -->
		example_parm(( & U_0_1_out), ((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), 0.2, 0.3, 0.65, M_MAX, N_MAX, cb_x, cb_y, chunk, _unroll_p3);
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
			initialize_example_parm(((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), 0.2, 0.3, 0.65, M_MAX, N_MAX, cb_x, cb_y, chunk);
			initialize_example_parm(U_0_0_ref, U_0_1_ref, 0.2, 0.3, 0.65, M_MAX, N_MAX, cb_x, cb_y, chunk);
			// <--
			
#pragma omp barrier
			// compute_stencil -->
			example_parm(( & U_0_1_out), ((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), 0.2, 0.3, 0.65, M_MAX, N_MAX, cb_x, cb_y, chunk, _unroll_p3);
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
			initialize_example_parm(((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), 0.2, 0.3, 0.65, M_MAX, N_MAX, cb_x, cb_y, chunk);
			initialize_example_parm(U_0_0_ref, U_0_1_ref, 0.2, 0.3, 0.65, M_MAX, N_MAX, cb_x, cb_y, chunk);
			// <--
			
#pragma omp barrier
			// compute_stencil -->
			example_parm(( & U_0_1_out), ((double * )((((uintptr_t)U_0_0)+31)&( ~ ((uintptr_t)31)))), ((double * )((((uintptr_t)U_0_1)+31)&( ~ ((uintptr_t)31)))), 0.2, 0.3, 0.65, M_MAX, N_MAX, cb_x, cb_y, chunk, _unroll_p3);
			// <--
			
		}
		// validate_computation -->
		int bHasErrors = 0;
		int _idx0;
		int _idx2;
		int _idx3;
		int _idx4;
		int _idx5;
		int _idx6;
		int _idx7;
		int _idx8;
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
					for (p3_loc_idx_y=1; p3_loc_idx_y<((N_MAX-2)+1); p3_loc_idx_y+=1)
					{
						for (p3_loc_idx_x=1; p3_loc_idx_x<((M_MAX-2)+1); p3_loc_idx_x+=1)
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
							/* _idx6 = ((M_MAX*(p3_loc_idx_y-1))+(p3_loc_idx_x-1)) */
							_idx6=(_idx3-M_MAX);
							/* _idx7 = ((M_MAX*(p3_loc_idx_y-1))+(p3_loc_idx_x+1)) */
							_idx7=((( - M_MAX)+_idx0)+1);
							/* _idx8 = ((M_MAX*(p3_loc_idx_y+1))+(p3_loc_idx_x-1)) */
							_idx8=((M_MAX+_idx0)-1);
							/* _idx9 = ((M_MAX*(p3_loc_idx_y+1))+(p3_loc_idx_x+1)) */
							_idx9=((2*M_MAX)+_idx7);
							U_0_1_ref[_idx0]=((0.2*U_0_0_ref[_idx0])+((0.3*((U_0_0_ref[_idx2]+U_0_0_ref[_idx3])+(U_0_0_ref[_idx4]+U_0_0_ref[_idx5])))+(0.65*((U_0_0_ref[_idx6]+U_0_0_ref[_idx7])+(U_0_0_ref[_idx8]+U_0_0_ref[_idx9])))));
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
			for (p3_loc_idx_y=1; p3_loc_idx_y<((N_MAX-2)+1); p3_loc_idx_y+=1)
			{
				for (p3_loc_idx_x=1; p3_loc_idx_x<((M_MAX-2)+1); p3_loc_idx_x+=1)
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
