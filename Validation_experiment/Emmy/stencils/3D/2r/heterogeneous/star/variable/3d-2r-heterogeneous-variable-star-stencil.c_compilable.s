	.file	"3d-2r-heterogeneous-variable-star-stencil.c_compilable.c"
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
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	movq	%rsi, %r13
	pushq	%r12
	pushq	%r10
	pushq	%rbx
	subq	$224, %rsp
	.cfi_offset 12, -48
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	movl	%r12d, %r14d
	call	strtol
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %r13
	imull	%ebx, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -72(%rbp)
	call	posix_memalign
	movq	-72(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -192(%rbp)
	testl	%r14d, %r14d
	jle	.L3
	leal	-1(%r14), %r15d
	movq	%rdi, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%r15d, %edx
	ja	.L39
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rdi)
	cmpl	$1, %eax
	je	.L41
	vmovsd	%xmm0, 8(%rdi)
	cmpl	$3, %eax
	jne	.L42
	vmovsd	%xmm0, 16(%rdi)
	movl	$3, %r8d
.L5:
	movq	-192(%rbp), %rdx
	movl	%r14d, %edi
	subl	%eax, %edi
	vmovapd	.LC1(%rip), %ymm0
	movl	%edi, %esi
	shrl	$2, %esi
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
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
	je	.L76
	vzeroupper
	movq	-192(%rbp), %rsi
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
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L77
	testl	%r14d, %r14d
	movl	$1, %eax
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	cmpl	$4, %r15d
	ja	.L78
	movq	$0, -184(%rbp)
	xorl	%eax, %eax
.L29:
	movq	-184(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L33
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L33:
	leal	(%r14,%r14,2), %eax
	movl	$32, %esi
	leal	(%r14,%rax,4), %r14d
	leaq	-56(%rbp), %rdi
	movslq	%r14d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %rsi
	movq	%rsi, -264(%rbp)
	testl	%r14d, %r14d
	jle	.L14
	movq	%rsi, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	leal	-1(%r14), %ecx
	cmpl	%ecx, %edx
	ja	.L45
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L16
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rsi)
	cmpl	$1, %eax
	je	.L47
	vmovsd	%xmm0, 8(%rsi)
	cmpl	$3, %eax
	jne	.L48
	vmovsd	%xmm0, 16(%rsi)
	movl	$3, %edi
.L16:
	movq	-264(%rbp), %rdx
	movl	%r14d, %esi
	subl	%eax, %esi
	vmovapd	.LC5(%rip), %ymm0
	movl	%esi, %ecx
	shrl	$2, %ecx
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L18:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%ecx, %eax
	jb	.L18
	movl	%esi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rdi), %eax
	cmpl	%esi, %edx
	je	.L79
	vzeroupper
	movq	-264(%rbp), %rsi
.L15:
	vmovsd	.LC4(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%r14d, %edx
	jge	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-2(%r13), %eax
	movl	%eax, -196(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$2, -196(%rbp)
	jle	.L73
	imull	$13, %ebx, %eax
	leal	-2(%rbx), %edx
	movl	%eax, %esi
	imull	%r12d, %esi
	movl	%esi, -200(%rbp)
	movl	%r12d, %esi
	imull	%ebx, %esi
	movl	%esi, -204(%rbp)
	cmpl	$4, %r12d
	jle	.L73
.L38:
	cmpl	$2, %edx
	jle	.L22
	movl	-204(%rbp), %esi
	leal	(%rbx,%rbx), %edx
	movslq	%ebx, %r15
	movl	$0, -160(%rbp)
	movl	$2, -144(%rbp)
	movslq	%edx, %rdi
	leal	(%rbx,%rbx,2), %edx
	movq	%rdi, -232(%rbp)
	leal	(%rsi,%rsi), %ecx
	movl	%esi, -168(%rbp)
	movl	%ecx, -176(%rbp)
	movl	-200(%rbp), %ecx
	addl	%ecx, %ecx
	movl	%ecx, -172(%rbp)
	leal	(%rsi,%rsi,2), %ecx
	movl	%ecx, -164(%rbp)
	leal	0(,%rsi,4), %ecx
	movl	%ecx, -156(%rbp)
	leaq	0(,%r15,8), %rcx
	movq	%rcx, -136(%rbp)
	movslq	%edx, %rcx
	leal	0(,%rbx,4), %edx
	movq	%rcx, -224(%rbp)
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	addl	%eax, %eax
	movq	%rcx, -216(%rbp)
	leaq	0(,%rdx,8), %rcx
	cltq
	leal	-5(%rbx), %edx
	movq	%rcx, -128(%rbp)
	imulq	$13, %rdx, %rcx
	imulq	$-104, %rdx, %rdx
	addq	%rcx, %rax
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	leaq	-104(%rdx), %rbx
	movq	%rbx, -152(%rbp)
	leaq	2(%rdi), %rbx
	movq	%rbx, -240(%rbp)
	addq	$312, %rax
	movq	%rax, -248(%rbp)
	leal	-2(%r12), %eax
	movl	%eax, -140(%rbp)
	.p2align 4,,10
	.p2align 3
.L25:
	movslq	-176(%rbp), %rax
	movq	%r15, -104(%rbp)
	movq	-232(%rbp), %r14
	movq	$0, -88(%rbp)
	movq	-192(%rbp), %rbx
	movl	$2, -72(%rbp)
	movslq	-168(%rbp), %r13
	movslq	-164(%rbp), %r12
	leaq	(%r14,%rax), %rdx
	movslq	-156(%rbp), %r11
	addl	$1, -144(%rbp)
	leaq	(%rbx,%rdx,8), %rsi
	movq	-240(%rbp), %rbx
	movq	%rsi, -120(%rbp)
	subq	%rax, %r13
	movq	-184(%rbp), %rsi
	subq	%rax, %r12
	subq	%rax, %r11
	leaq	(%rbx,%rax), %rdx
	leaq	(%rsi,%rdx,8), %rbx
	movslq	-172(%rbp), %rdx
	movq	%rbx, -112(%rbp)
	movq	-216(%rbp), %rbx
	addq	-256(%rbp), %rdx
	movq	-248(%rbp), %rsi
	movq	%rbx, -80(%rbp)
	movq	-224(%rbp), %rbx
	leaq	(%rsi,%rdx,8), %rsi
	movq	%rbx, -96(%rbp)
	movslq	-160(%rbp), %rbx
	subq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L26:
	movq	-152(%rbp), %rax
	movq	-104(%rbp), %r10
	movq	-96(%rbp), %r9
	movq	-88(%rbp), %r8
	movq	-80(%rbp), %rdi
	addq	%rsi, %rax
	addl	$1, -72(%rbp)
	subq	%r14, %r10
	movq	-112(%rbp), %rcx
	subq	%r14, %r9
	movq	-120(%rbp), %rdx
	subq	%r14, %r8
	subq	%r14, %rdi
	.p2align 4,,10
	.p2align 3
.L23:
	vmovsd	8(%rax), %xmm1
	addq	$104, %rax
	addq	$8, %rcx
	vmulsd	8(%rdx), %xmm1, %xmm0
	vmovsd	-104(%rax), %xmm2
	vmulsd	16(%rdx), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-88(%rax), %xmm2
	vmulsd	24(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	16(%rdx,%r13,8), %xmm1
	vmulsd	-80(%rax), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rdx,%r12,8), %xmm2
	vmulsd	-72(%rax), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	16(%rdx,%r10,8), %xmm1
	vmulsd	-64(%rax), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rdx,%r9,8), %xmm2
	vmulsd	-56(%rax), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-48(%rax), %xmm1
	vmulsd	(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-40(%rax), %xmm2
	vmulsd	32(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	16(%rdx,%rbx,8), %xmm1
	vmulsd	-32(%rax), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rdx,%r11,8), %xmm2
	vmulsd	-24(%rax), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	16(%rdx,%r8,8), %xmm1
	vmulsd	-16(%rax), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rdx,%rdi,8), %xmm0
	addq	$8, %rdx
	vmulsd	-8(%rax), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rcx)
	cmpq	%rax, %rsi
	jne	.L23
	movq	-136(%rbp), %rdi
	addq	%r15, %r14
	addq	%rdi, -120(%rbp)
	addq	%rdi, -112(%rbp)
	addq	%r15, -104(%rbp)
	addq	%r15, -96(%rbp)
	addq	%r15, -88(%rbp)
	addq	%r15, -80(%rbp)
	addq	-128(%rbp), %rsi
	movl	-72(%rbp), %ecx
	cmpl	%ecx, -140(%rbp)
	jne	.L26
	movl	-204(%rbp), %eax
	movl	-200(%rbp), %esi
	addl	%eax, -176(%rbp)
	addl	%esi, -172(%rbp)
	addl	%eax, -168(%rbp)
	addl	%eax, -164(%rbp)
	addl	%eax, -160(%rbp)
	addl	%eax, -156(%rbp)
	movl	-196(%rbp), %ebx
	cmpl	%ebx, -144(%rbp)
	jl	.L25
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L73
	movq	-192(%rbp), %rdi
	call	dummy
	movq	-184(%rbp), %rdi
	call	dummy
	movq	-264(%rbp), %rdi
	call	dummy
.L73:
	addq	$224, %rsp
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
.L41:
	.cfi_restore_state
	movl	$1, %r8d
	jmp	.L5
.L78:
	movq	$0, -184(%rbp)
	xorl	%edx, %edx
.L9:
	movq	-184(%rbp), %rcx
	subl	%edx, %edi
	movl	%edi, %esi
	vmovapd	.LC3(%rip), %ymm0
	shrl	$2, %esi
	leaq	(%rcx,%rdx,8), %rcx
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
	je	.L81
	vzeroupper
	jmp	.L29
.L77:
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %edi
	cmovg	%r14d, %edi
	movq	%rsi, -184(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %ecx
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	testl	%r14d, %r14d
	cmovle	%eax, %r15d
	cmpl	%r15d, %ecx
	ja	.L29
	testl	%edx, %edx
	je	.L9
	movq	-184(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L43
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L44
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
	jmp	.L9
.L80:
	movq	-192(%rbp), %rdi
	call	dummy
	movq	-184(%rbp), %rdi
	call	dummy
	movq	-264(%rbp), %rdi
	call	dummy
	cmpl	$2, -196(%rbp)
	jle	.L22
	imull	$13, %ebx, %eax
	leal	-2(%rbx), %edx
	movl	%eax, %esi
	imull	%r12d, %esi
	movl	%esi, -200(%rbp)
	movl	%ebx, %esi
	imull	%r12d, %esi
	movl	%esi, -204(%rbp)
	cmpl	$4, %r12d
	jg	.L38
	jmp	.L22
.L81:
	vzeroupper
	jmp	.L33
.L79:
	vzeroupper
	jmp	.L14
.L47:
	movl	$1, %edi
	jmp	.L16
.L76:
	vzeroupper
	jmp	.L8
.L43:
	movl	$1, %eax
	jmp	.L9
.L3:
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -184(%rbp)
	testl	%eax, %eax
	jne	.L33
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	.L33
.L44:
	movl	$2, %eax
	jmp	.L9
.L48:
	movl	$2, %edi
	jmp	.L16
.L42:
	movl	$2, %r8d
	jmp	.L5
.L45:
	xorl	%eax, %eax
	jmp	.L15
.L39:
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
	.section	.rodata.cst32
	.align 32
.LC5:
	.long	3440069995
	.long	1072191488
	.long	3440069995
	.long	1072191488
	.long	3440069995
	.long	1072191488
	.long	3440069995
	.long	1072191488
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
