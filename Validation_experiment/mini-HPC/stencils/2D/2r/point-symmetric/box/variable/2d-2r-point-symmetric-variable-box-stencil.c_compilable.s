	.file	"2d-2r-point-symmetric-variable-box-stencil.c_compilable.c"
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
	subq	$80, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
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
	movq	%rax, %r12
	movslq	%r14d, %r15
	salq	$3, %r15
	movq	%r15, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rbx
	testl	%r14d, %r14d
	jle	.L3
	movq	%rbx, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	leal	-1(%r14), %ecx
	cmpl	%ecx, %edx
	ja	.L36
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rbx)
	cmpl	$1, %eax
	je	.L38
	vmovsd	%xmm0, 8(%rbx)
	cmpl	$3, %eax
	jne	.L39
	vmovsd	%xmm0, 16(%rbx)
	movl	$3, %r8d
.L5:
	movl	%r14d, %edi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%rbx,%rax,8), %rdx
	subl	%eax, %edi
	xorl	%eax, %eax
	movl	%edi, %esi
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
	je	.L73
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rbx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rbx,%rax,8)
.L8:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movl	%ecx, -68(%rbp)
	call	posix_memalign
	movl	-68(%rbp), %ecx
	testl	%eax, %eax
	je	.L74
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %ecx
	cmovg	%r14d, %edi
	cmpl	$4, %ecx
	ja	.L75
	movq	$0, -112(%rbp)
	xorl	%eax, %eax
.L28:
	vmovsd	.LC2(%rip), %xmm0
	movq	-112(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L32
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L32
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L32:
	leal	(%r14,%r14,2), %eax
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	leal	(%r14,%rax,4), %r15d
	movslq	%r15d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r14
	testl	%r15d, %r15d
	jle	.L14
	movq	%r14, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	leal	-1(%r15), %ecx
	cmpl	%ecx, %edx
	ja	.L42
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L16
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%r14)
	cmpl	$1, %eax
	je	.L44
	vmovsd	%xmm0, 8(%r14)
	cmpl	$3, %eax
	jne	.L45
	vmovsd	%xmm0, 16(%r14)
	movl	$3, %edi
.L16:
	movl	%r15d, %esi
	vmovapd	.LC5(%rip), %ymm0
	leaq	(%r14,%rax,8), %rdx
	subl	%eax, %esi
	xorl	%eax, %eax
	movl	%esi, %ecx
	shrl	$2, %ecx
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
	je	.L76
	vzeroupper
.L15:
	vmovsd	.LC4(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%r15d, %edx
	jge	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r14,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%r14,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-2(%r12), %eax
	movl	%eax, -68(%rbp)
	testl	%edx, %edx
	jne	.L77
	cmpl	$2, -68(%rbp)
	jle	.L70
.L21:
	leal	(%r13,%r13), %edi
	leal	(%rdi,%r13), %esi
	leal	0(%r13,%rsi,4), %ecx
	cmpl	$4, %r13d
	jle	.L22
	movq	-112(%rbp), %rax
	movslq	%edi, %rdi
	movslq	%r13d, %rdx
	movslq	%esi, %rsi
	subq	%rdx, %rsi
	leaq	0(,%rdx,8), %r15
	movq	%rbx, -120(%rbp)
	leaq	(%rax,%rdi,8), %r12
	movslq	%ecx, %rax
	addl	%ecx, %ecx
	subq	%rdx, %rdi
	salq	$3, %rax
	movslq	%ecx, %rcx
	salq	$3, %rdi
	leaq	(%rbx,%r15), %r11
	movq	%rax, -104(%rbp)
	leal	-5(%r13), %eax
	sall	$2, %r13d
	leaq	(%rax,%rax,2), %r8
	movslq	%r13d, %r13
	movq	%rdi, -96(%rbp)
	leaq	(%rax,%r8,4), %r8
	subq	%rdx, %r13
	movq	%r14, -128(%rbp)
	addq	%r8, %rcx
	imulq	$-104, %rax, %rax
	leaq	104(%r14,%rcx,8), %r10
	leaq	0(,%rsi,8), %rcx
	movq	%rcx, -88(%rbp)
	movq	%rdx, %rcx
	negq	%rcx
	subq	$104, %rax
	leaq	0(,%rcx,8), %rdi
	leaq	0(,%r13,8), %rcx
	movq	%rax, %r14
	movl	$2, %r13d
	movq	%rcx, -80(%rbp)
	movq	%rdi, %rbx
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdi
	addl	$1, %r13d
	leaq	(%r14,%r10), %rax
	movq	-80(%rbp), %rcx
	movq	%r12, %r9
	movq	%r11, %rdx
	leaq	(%rsi,%r11), %r8
	addq	%r11, %rdi
	leaq	(%rbx,%r11), %rsi
	addq	%r11, %rcx
	.p2align 4,,10
	.p2align 3
.L23:
	vmovsd	208(%rax), %xmm1
	vmovsd	8(%r8), %xmm4
	addq	$104, %rax
	addq	$8, %r8
	vmulsd	8(%r8), %xmm1, %xmm2
	vaddsd	16(%r8), %xmm4, %xmm4
	addq	$8, %rdx
	addq	$8, %rdi
	vmovsd	(%rdx), %xmm3
	addq	$8, %rsi
	addq	$8, %rcx
	addq	$8, %r9
	vmulsd	112(%rax), %xmm4, %xmm4
	vmovsd	-8(%r8), %xmm0
	vaddsd	24(%r8), %xmm0, %xmm0
	vmulsd	128(%rax), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm3, %xmm3
	vmulsd	136(%rax), %xmm3, %xmm3
	vaddsd	%xmm2, %xmm4, %xmm1
	vmovsd	8(%rdx), %xmm4
	vaddsd	8(%rdi), %xmm4, %xmm4
	vmulsd	120(%rax), %xmm4, %xmm4
	vmovsd	(%rdi), %xmm2
	vaddsd	16(%rdx), %xmm2, %xmm2
	vmulsd	144(%rax), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	8(%rsi), %xmm1
	vaddsd	8(%rcx), %xmm1, %xmm1
	vmulsd	152(%rax), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	-8(%rdx), %xmm4
	vaddsd	24(%rdi), %xmm4, %xmm4
	vmulsd	160(%rax), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	-8(%rdi), %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vmulsd	168(%rax), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	(%rsi), %xmm3
	vaddsd	16(%rcx), %xmm3, %xmm3
	vmulsd	176(%rax), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	(%rcx), %xmm2
	vaddsd	16(%rsi), %xmm2, %xmm2
	vmulsd	184(%rax), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	-8(%rsi), %xmm1
	vaddsd	24(%rcx), %xmm1, %xmm1
	vmulsd	192(%rax), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	-8(%rcx), %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	vmulsd	200(%rax), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%r9)
	cmpq	%rax, %r10
	jne	.L23
	addq	%r15, %r11
	addq	%r15, %r12
	addq	-104(%rbp), %r10
	cmpl	%r13d, -68(%rbp)
	jg	.L24
	movq	-120(%rbp), %rbx
	movq	-128(%rbp), %r14
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L70
	movq	%rbx, %rdi
	call	dummy
	movq	-112(%rbp), %rdi
	call	dummy
	movq	%r14, %rdi
	call	dummy
.L70:
	addq	$80, %rsp
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
.L74:
	.cfi_restore_state
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %r8d
	cmovg	%r14d, %edi
	movq	%rsi, -112(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %esi
	cmpl	$5, %esi
	cmovb	%r8d, %esi
	testl	%r14d, %r14d
	cmovle	%eax, %ecx
	cmpl	%ecx, %esi
	ja	.L28
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	movq	-112(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L40
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L41
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	movq	-112(%rbp), %rcx
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
	je	.L78
	vzeroupper
	jmp	.L28
.L77:
	movq	%rbx, %rdi
	call	dummy
	movq	-112(%rbp), %rdi
	call	dummy
	movq	%r14, %rdi
	call	dummy
	cmpl	$2, -68(%rbp)
	jg	.L21
	jmp	.L22
.L38:
	movl	$1, %r8d
	jmp	.L5
.L75:
	xorl	%edx, %edx
	movq	$0, -112(%rbp)
	jmp	.L9
.L40:
	movl	$1, %eax
	jmp	.L9
.L78:
	vzeroupper
	jmp	.L32
.L76:
	vzeroupper
	jmp	.L14
.L44:
	movl	$1, %edi
	jmp	.L16
.L73:
	vzeroupper
	jmp	.L8
.L3:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -112(%rbp)
	testl	%eax, %eax
	jne	.L32
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.L32
.L41:
	movl	$2, %eax
	jmp	.L9
.L45:
	movl	$2, %edi
	jmp	.L16
.L39:
	movl	$2, %r8d
	jmp	.L5
.L42:
	xorl	%eax, %eax
	jmp	.L15
.L36:
	xorl	%eax, %eax
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
