	.file	"3d-2r-isotropic-constant-star-stencil.c_compilable.c"
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$10, %edx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	%rsi, %rbx
	subq	$192, %rsp
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	call	strtol
	movl	%r13d, %r14d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %rbx
	imull	%r12d, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -88(%rbp)
	call	posix_memalign
	movq	-88(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -232(%rbp)
	testl	%r14d, %r14d
	jle	.L3
	movq	%rdi, %rax
	movl	$5, %esi
	leal	-1(%r14), %r15d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%r15d, %edx
	ja	.L32
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rdi)
	cmpl	$1, %eax
	je	.L34
	vmovsd	%xmm0, 8(%rdi)
	cmpl	$3, %eax
	jne	.L35
	vmovsd	%xmm0, 16(%rdi)
	movl	$3, %r8d
.L5:
	movl	%r14d, %edi
	movq	-232(%rbp), %rdx
	vmovapd	.LC1(%rip), %ymm0
	subl	%eax, %edi
	movl	%edi, %esi
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
	shrl	$2, %esi
	.p2align 4,,10
	.p2align 3
.L7:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%esi, %eax
	jb	.L7
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%r8), %eax
	cmpl	%edi, %edx
	je	.L59
	vzeroupper
	movq	-232(%rbp), %rsi
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L8:
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L60
	testl	%r14d, %r14d
	movl	$1, %eax
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	cmpl	$4, %r15d
	ja	.L61
	movq	$0, -224(%rbp)
	xorl	%eax, %eax
.L22:
	vmovsd	.LC2(%rip), %xmm0
	movq	-224(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L26
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L26:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -72(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-2(%r13), %eax
	movl	%eax, -168(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$2, -168(%rbp)
	jle	.L56
	movl	%r12d, %ecx
	leal	-2(%r12), %eax
	imull	%ebx, %ecx
	movl	%ecx, -172(%rbp)
	cmpl	$4, %ebx
	jle	.L56
.L31:
	cmpl	$2, %eax
	jle	.L15
	movl	-172(%rbp), %edi
	movslq	%r12d, %r14
	movq	-224(%rbp), %r15
	movl	$0, -152(%rbp)
	movl	$2, -144(%rbp)
	leal	(%rdi,%rdi), %eax
	movl	%edi, -160(%rbp)
	movl	%eax, -164(%rbp)
	leal	(%rdi,%rdi,2), %eax
	movl	%eax, -156(%rbp)
	leal	0(,%rdi,4), %eax
	movl	%eax, -148(%rbp)
	leal	(%r12,%r12), %eax
	movslq	%eax, %rsi
	leal	(%r12,%r12,2), %eax
	cltq
	movq	%rsi, -200(%rbp)
	movq	%rax, -192(%rbp)
	leal	0(,%r12,4), %eax
	cltq
	movq	%rax, -184(%rbp)
	leaq	0(,%r14,8), %rax
	movq	%rax, -120(%rbp)
	leal	-5(%r12), %eax
	imulq	$-8, %rax, %rcx
	leaq	0(,%rax,8), %rdx
	addq	%rsi, %rax
	subq	%rdx, %r15
	movq	%rax, -216(%rbp)
	movq	%r15, %rdx
	movq	-232(%rbp), %r15
	subq	$8, %rcx
	leaq	8(%r15), %rax
	subq	%r15, %rdx
	movq	%rcx, -128(%rbp)
	movq	%rax, -208(%rbp)
	leaq	8(%rdx), %rcx
	leal	-2(%rbx), %eax
	movq	%rcx, -136(%rbp)
	movl	%eax, -140(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movslq	-164(%rbp), %rax
	movq	-216(%rbp), %rbx
	movq	%r14, -112(%rbp)
	addl	$1, -144(%rbp)
	movq	-208(%rbp), %rcx
	leaq	(%rbx,%rax), %rdx
	movq	-192(%rbp), %rbx
	movslq	-160(%rbp), %r12
	movq	$0, -96(%rbp)
	movslq	-152(%rbp), %r11
	movslq	-148(%rbp), %r10
	movl	$2, -88(%rbp)
	leaq	(%rcx,%rdx,8), %rcx
	movq	%rbx, -104(%rbp)
	movslq	-156(%rbp), %rbx
	subq	%rax, %r12
	movq	-184(%rbp), %r15
	movq	-200(%rbp), %r13
	subq	%rax, %r11
	subq	%rax, %r10
	subq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-136(%rbp), %rdi
	addl	$1, -88(%rbp)
	movq	%r15, %rsi
	movq	-128(%rbp), %rax
	movq	-112(%rbp), %r9
	subq	%r13, %rsi
	leaq	(%rdi,%rcx), %rdx
	movq	-104(%rbp), %r8
	movq	-96(%rbp), %rdi
	addq	%rcx, %rax
	subq	%r13, %r9
	subq	%r13, %r8
	subq	%r13, %rdi
	.p2align 4,,10
	.p2align 3
.L16:
	vmovsd	16(%rax,%r12,8), %xmm1
	vaddsd	16(%rax,%rbx,8), %xmm1, %xmm2
	addq	$8, %rdx
	vmovsd	8(%rax), %xmm1
	vaddsd	24(%rax), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rax,%r9,8), %xmm0
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	16(%rax), %xmm1
	vmulsd	-64(%rbp), %xmm0, %xmm0
	vmulsd	-72(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	16(%rax,%r11,8), %xmm2
	vaddsd	16(%rax,%r10,8), %xmm2, %xmm3
	vmovsd	(%rax), %xmm2
	vaddsd	32(%rax), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	16(%rax,%rdi,8), %xmm0
	vaddsd	16(%rax,%rsi,8), %xmm0, %xmm0
	addq	$8, %rax
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rdx)
	cmpq	%rax, %rcx
	jne	.L16
	addq	%r14, -112(%rbp)
	addq	%r14, %r13
	addq	%r14, %r15
	addq	-120(%rbp), %rcx
	addq	%r14, -104(%rbp)
	movl	-88(%rbp), %esi
	addq	%r14, -96(%rbp)
	cmpl	%esi, -140(%rbp)
	jne	.L19
	movl	-172(%rbp), %eax
	movl	-168(%rbp), %ebx
	addl	%eax, -164(%rbp)
	addl	%eax, -160(%rbp)
	addl	%eax, -156(%rbp)
	addl	%eax, -152(%rbp)
	addl	%eax, -148(%rbp)
	cmpl	%ebx, -144(%rbp)
	jl	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L56
	movq	-232(%rbp), %rdi
	call	dummy
	movq	-224(%rbp), %rdi
	call	dummy
	leaq	-72(%rbp), %rdi
	call	dummy
	leaq	-64(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
.L56:
	addq	$192, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L34:
	.cfi_restore_state
	movl	$1, %r8d
	jmp	.L5
.L61:
	movq	$0, -224(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %edi
	movq	-224(%rbp), %rcx
	vmovapd	.LC3(%rip), %ymm0
	movl	%edi, %esi
	leaq	(%rcx,%rdx,8), %rcx
	shrl	$2, %esi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L11:
	addl	$1, %edx
	vmovapd	%ymm0, (%rcx)
	addq	$32, %rcx
	cmpl	%esi, %edx
	jb	.L11
	movl	%edi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edi, %edx
	je	.L63
	vzeroupper
	jmp	.L22
.L60:
	movq	-56(%rbp), %rcx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%rcx, -224(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %ecx
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	testl	%r14d, %r14d
	cmovle	%eax, %r15d
	cmpl	%r15d, %ecx
	ja	.L22
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	movq	-224(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L36
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L37
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
	jmp	.L9
.L62:
	movq	-232(%rbp), %rdi
	call	dummy
	movq	-224(%rbp), %rdi
	call	dummy
	leaq	-72(%rbp), %rdi
	call	dummy
	leaq	-64(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
	cmpl	$2, -168(%rbp)
	jle	.L15
	movl	%r12d, %ecx
	leal	-2(%r12), %eax
	imull	%ebx, %ecx
	movl	%ecx, -172(%rbp)
	cmpl	$4, %ebx
	jg	.L31
	jmp	.L15
.L63:
	vzeroupper
	jmp	.L26
.L59:
	vzeroupper
	jmp	.L8
.L36:
	movl	$1, %eax
	jmp	.L9
.L3:
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -224(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)
	jmp	.L26
.L37:
	movl	$2, %eax
	jmp	.L9
.L35:
	movl	$2, %r8d
	jmp	.L5
.L32:
	xorl	%eax, %eax
	movq	%rdi, %rsi
	jmp	.L4
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	3961705502
	.long	1071636094
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC1:
	.long	3961705502
	.long	1071636094
	.long	3961705502
	.long	1071636094
	.long	3961705502
	.long	1071636094
	.long	3961705502
	.long	1071636094
	.section	.rodata.cst8
	.align 8
.LC2:
	.long	424680910
	.long	1071288493
	.section	.rodata.cst32
	.align 32
.LC3:
	.long	424680910
	.long	1071288493
	.long	424680910
	.long	1071288493
	.long	424680910
	.long	1071288493
	.long	424680910
	.long	1071288493
	.section	.rodata.cst8
	.align 8
.LC4:
	.long	3440069995
	.long	1072191488
	.align 8
.LC5:
	.long	765859228
	.long	1071838070
	.align 8
.LC6:
	.long	2226626236
	.long	1072102945
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
