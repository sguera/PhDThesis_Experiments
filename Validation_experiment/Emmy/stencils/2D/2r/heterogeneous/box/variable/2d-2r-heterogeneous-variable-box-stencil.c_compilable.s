	.file	"2d-2r-heterogeneous-variable-box-stencil.c_compilable.c"
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
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movq	%rsi, %r12
	pushq	%r10
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	movl	%ebx, %r12d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r12d
	movq	%rax, %r14
	movslq	%r12d, %r13
	salq	$3, %r13
	movq	%r13, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	testl	%r12d, %r12d
	jle	.L3
	leal	-1(%r12), %r15d
	movq	%rsi, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%r15d, %edx
	ja	.L36
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rsi)
	cmpl	$1, %eax
	je	.L38
	vmovsd	%xmm0, 8(%rsi)
	cmpl	$3, %eax
	jne	.L39
	vmovsd	%xmm0, 16(%rsi)
	movl	$3, %edi
.L5:
	movq	-104(%rbp), %rdx
	movl	%r12d, %esi
	subl	%eax, %esi
	vmovapd	.LC1(%rip), %ymm0
	movl	%esi, %ecx
	shrl	$2, %ecx
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L7:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%ecx, %eax
	jb	.L7
	movl	%esi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rdi), %eax
	cmpl	%esi, %edx
	je	.L73
	vzeroupper
.L4:
	movq	-104(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r12d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L8:
	leaq	-56(%rbp), %rdi
	movq	%r13, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L74
	testl	%r12d, %r12d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %r15d
	cmovg	%r12d, %edi
	cmpl	$4, %r15d
	ja	.L75
	movq	$0, -96(%rbp)
	xorl	%eax, %eax
.L28:
	movq	-96(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L32
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r12d
	jle	.L32
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L32:
	leal	(%r12,%r12,4), %eax
	movl	$32, %esi
	leal	(%rax,%rax,4), %r12d
	leaq	-56(%rbp), %rdi
	movslq	%r12d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r13
	testl	%r12d, %r12d
	jle	.L14
	movq	%r13, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	leal	-1(%r12), %ecx
	cmpl	%ecx, %edx
	ja	.L42
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L16
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, 0(%r13)
	cmpl	$1, %eax
	je	.L44
	vmovsd	%xmm0, 8(%r13)
	cmpl	$3, %eax
	jne	.L45
	vmovsd	%xmm0, 16(%r13)
	movl	$3, %edi
.L16:
	vmovapd	.LC5(%rip), %ymm0
	leaq	0(%r13,%rax,8), %rdx
	movl	%r12d, %esi
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
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%r12d, %edx
	jge	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	cmpl	%eax, %r12d
	jle	.L14
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-2(%rbx), %eax
	movl	%eax, -68(%rbp)
	testl	%edx, %edx
	jne	.L77
	cmpl	$2, -68(%rbp)
	jle	.L70
.L21:
	leal	(%r14,%r14,4), %eax
	leal	(%rax,%rax,4), %ecx
	cmpl	$4, %r14d
	jle	.L22
	movslq	%ecx, %rsi
	movq	-96(%rbp), %rbx
	movslq	%r14d, %rax
	addl	%ecx, %ecx
	leal	(%r14,%r14), %r15d
	movq	-104(%rbp), %rdx
	movslq	%ecx, %rcx
	movq	%r13, -112(%rbp)
	leaq	0(,%rsi,8), %rdi
	movslq	%r15d, %r15
	movl	$2, %r11d
	leal	-5(%r14), %esi
	movq	%rdi, -80(%rbp)
	salq	$3, %r15
	leaq	(%rsi,%rsi,4), %rdi
	addq	%r15, %rbx
	imulq	$-200, %rsi, %rsi
	leaq	0(,%rax,8), %r12
	leaq	(%rdi,%rdi,4), %rdi
	leaq	(%rax,%rax,2), %rax
	addq	%rdi, %rcx
	leaq	200(%r13,%rcx,8), %r10
	salq	$3, %rax
	leaq	-200(%rsi), %r14
	movq	%rax, -88(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	leaq	(%r15,%rdx), %rdi
	addl	$1, %r11d
	movq	%rbx, %r9
	leaq	(%r14,%r10), %rax
	movq	%rdi, %rsi
	subq	%r12, %rsi
	leaq	(%rsi,%r15), %rcx
	leaq	(%rcx,%r12), %r13
	movq	%r13, %r8
	.p2align 4,,10
	.p2align 3
.L23:
	vmovsd	408(%rax), %xmm1
	addq	$8, %rdi
	addq	$8, %rdx
	addq	$8, %rsi
	vmulsd	-8(%rdx), %xmm1, %xmm0
	addq	$200, %rax
	addq	$8, %rcx
	vmovsd	200(%rax), %xmm2
	addq	$8, %r8
	addq	$8, %r9
	vmulsd	8(%rdi), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	216(%rax), %xmm2
	vmulsd	-8(%rsi), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	224(%rax), %xmm1
	vmulsd	-8(%rdi), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	232(%rax), %xmm2
	vmulsd	-8(%rcx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	240(%rax), %xmm1
	vmulsd	-8(%r8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	248(%rax), %xmm2
	vmulsd	(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	256(%rax), %xmm1
	vmulsd	(%rsi), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	264(%rax), %xmm2
	vmulsd	(%rdi), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	272(%rax), %xmm1
	vmulsd	(%rcx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	280(%rax), %xmm2
	vmulsd	(%r8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	288(%rax), %xmm1
	vmulsd	8(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	296(%rax), %xmm2
	vmulsd	8(%rsi), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	304(%rax), %xmm1
	vmulsd	8(%rcx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	312(%rax), %xmm2
	vmulsd	8(%r8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	320(%rax), %xmm1
	vmulsd	16(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	328(%rax), %xmm2
	vmulsd	16(%rsi), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	336(%rax), %xmm1
	vmulsd	16(%rdi), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	344(%rax), %xmm2
	vmulsd	16(%rcx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	352(%rax), %xmm1
	vmulsd	16(%r8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	360(%rax), %xmm2
	vmulsd	24(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	368(%rax), %xmm1
	vmulsd	24(%rsi), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	376(%rax), %xmm2
	vmulsd	24(%rdi), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	384(%rax), %xmm1
	vmulsd	24(%rcx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	392(%rax), %xmm0
	vmulsd	24(%r8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%r9)
	cmpq	%rax, %r10
	jne	.L23
	movq	%r13, %rdx
	addq	%r12, %rbx
	subq	-88(%rbp), %rdx
	addq	-80(%rbp), %r10
	cmpl	%r11d, -68(%rbp)
	jg	.L24
	movq	-112(%rbp), %r13
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L70
	movq	-104(%rbp), %rdi
	call	dummy
	movq	-96(%rbp), %rdi
	call	dummy
	movq	%r13, %rdi
	call	dummy
.L70:
	addq	$64, %rsp
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
	movq	-56(%rbp), %rcx
	testl	%r12d, %r12d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r12d, %edi
	movq	%rcx, -96(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %ecx
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	testl	%r12d, %r12d
	cmovle	%eax, %r15d
	cmpl	%r15d, %ecx
	ja	.L28
	testl	%edx, %edx
	je	.L9
	movq	-96(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L40
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L41
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	movq	-96(%rbp), %rcx
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
	je	.L78
	vzeroupper
	jmp	.L28
.L77:
	movq	-104(%rbp), %rdi
	call	dummy
	movq	-96(%rbp), %rdi
	call	dummy
	movq	%r13, %rdi
	call	dummy
	cmpl	$2, -68(%rbp)
	jg	.L21
	jmp	.L22
.L38:
	movl	$1, %edi
	jmp	.L5
.L75:
	xorl	%edx, %edx
	movq	$0, -96(%rbp)
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
	leaq	-56(%rbp), %rdi
	movq	%r13, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -96(%rbp)
	testl	%eax, %eax
	jne	.L32
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L32
.L41:
	movl	$2, %eax
	jmp	.L9
.L45:
	movl	$2, %edi
	jmp	.L16
.L39:
	movl	$2, %edi
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
