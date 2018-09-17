	.file	"2d-3r-isotropic-variable-box-stencil.c_compilable.c"
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
	subq	$112, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	call	strtol
	movl	%r13d, %r12d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r12d
	movq	%rax, %rbx
	movslq	%r12d, %r14
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	testl	%r12d, %r12d
	jle	.L3
	movq	%rsi, %rax
	movl	$5, %ecx
	leal	-1(%r12), %r15d
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
	movl	%r12d, %esi
	movq	-152(%rbp), %rdx
	vmovapd	.LC1(%rip), %ymm0
	subl	%eax, %esi
	movl	%esi, %ecx
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
	shrl	$2, %ecx
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
	vmovsd	.LC0(%rip), %xmm0
	movq	-152(%rbp), %rdi
	movslq	%eax, %rdx
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
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
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
	movq	$0, -144(%rbp)
	xorl	%eax, %eax
.L28:
	vmovsd	.LC2(%rip), %xmm0
	movq	-144(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L32
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r12d
	jle	.L32
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L32:
	leal	0(,%r12,8), %eax
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	subl	%r12d, %eax
	movslq	%eax, %rdx
	movq	%rdx, %r12
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %rsi
	movq	%rsi, -160(%rbp)
	testl	%r12d, %r12d
	jle	.L14
	movq	%rsi, %rax
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
	vmovsd	%xmm0, (%rsi)
	cmpl	$1, %eax
	je	.L44
	vmovsd	%xmm0, 8(%rsi)
	cmpl	$3, %eax
	jne	.L45
	vmovsd	%xmm0, 16(%rsi)
	movl	$3, %edi
.L16:
	movl	%r12d, %esi
	movq	-160(%rbp), %rdx
	vmovapd	.LC5(%rip), %ymm0
	subl	%eax, %esi
	movl	%esi, %ecx
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
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
	movq	-160(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%r12d, %edx
	jge	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r12d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-3(%rbx), %eax
	movl	%eax, -68(%rbp)
	testl	%edx, %edx
	jne	.L77
	cmpl	$3, -68(%rbp)
	jle	.L70
.L21:
	leal	0(,%r13,8), %edi
	subl	%r13d, %edi
	cmpl	$6, %r13d
	jle	.L22
	movslq	%r13d, %rdx
	leal	(%r13,%r13), %ecx
	movslq	%edi, %rsi
	movq	-152(%rbp), %rax
	leaq	0(,%rdx,8), %r15
	movq	-144(%rbp), %rbx
	leal	(%rdi,%rdi,2), %edi
	leaq	(%rax,%r15), %r12
	leal	(%rcx,%r13), %eax
	movslq	%edi, %rdi
	movslq	%ecx, %rcx
	movslq	%eax, %r8
	subq	%rdx, %rcx
	addl	%eax, %eax
	leaq	(%rbx,%r8,8), %r14
	leaq	0(,%rsi,8), %rbx
	subq	%rdx, %r8
	cltq
	leal	-7(%r13), %esi
	movq	%rbx, -120(%rbp)
	movq	-160(%rbp), %rbx
	subq	%rdx, %rax
	leaq	0(,%rsi,8), %r9
	salq	$3, %rax
	movq	%r9, %r10
	movq	%rax, -80(%rbp)
	subq	%rsi, %r10
	subq	%r9, %rsi
	addq	%r10, %rdi
	leaq	-56(,%rsi,8), %rax
	leaq	56(%rbx,%rdi,8), %rbx
	leaq	0(,%r8,8), %rdi
	movq	%rax, -136(%rbp)
	movq	%rdi, -112(%rbp)
	leaq	0(,%rcx,8), %rdi
	leal	0(,%r13,4), %ecx
	movq	%rdi, -104(%rbp)
	movslq	%ecx, %rdi
	addl	%r13d, %ecx
	movl	$3, %r13d
	movslq	%ecx, %rcx
	subq	%rdx, %rdi
	subq	%rdx, %rcx
	salq	$3, %rdi
	salq	$3, %rcx
	movq	%rdi, -96(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%rdx, %rcx
	negq	%rcx
	leaq	0(,%rcx,8), %rdi
	movq	%rdi, -128(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-112(%rbp), %rsi
	movq	-96(%rbp), %rdi
	addl	$1, %r13d
	movq	%r14, %r11
	movq	-88(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%r12, %rdx
	leaq	(%rsi,%r12), %r10
	movq	-104(%rbp), %rsi
	leaq	(%rdi,%r12), %r8
	leaq	(%rcx,%r12), %rdi
	movq	-80(%rbp), %rcx
	addq	%rbx, %rax
	leaq	(%rsi,%r12), %r9
	movq	-128(%rbp), %rsi
	addq	%r12, %rcx
	addq	%r12, %rsi
	.p2align 4,,10
	.p2align 3
.L23:
	addq	$56, %rax
	addq	$8, %r10
	addq	$8, %r9
	addq	$8, %r8
	addq	$8, %rdx
	addq	$8, %rdi
	addq	$8, %rsi
	addq	$8, %rcx
	vmovsd	(%r10), %xmm0
	vmovsd	112(%rax), %xmm1
	addq	$8, %r11
	vaddsd	8(%r9), %xmm0, %xmm2
	vmulsd	16(%r10), %xmm1, %xmm4
	vmovsd	8(%r10), %xmm0
	vaddsd	16(%r9), %xmm0, %xmm0
	vaddsd	16(%r8), %xmm0, %xmm0
	vaddsd	24(%r10), %xmm0, %xmm0
	vmulsd	120(%rax), %xmm0, %xmm0
	vaddsd	8(%r8), %xmm2, %xmm2
	vaddsd	16(%rdx), %xmm2, %xmm2
	vaddsd	16(%rdi), %xmm2, %xmm2
	vaddsd	24(%r9), %xmm2, %xmm2
	vaddsd	24(%r8), %xmm2, %xmm2
	vaddsd	32(%r10), %xmm2, %xmm2
	vmulsd	128(%rax), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm0, %xmm1
	vaddsd	%xmm1, %xmm2, %xmm0
	vmovsd	-8(%r10), %xmm1
	vaddsd	(%r9), %xmm1, %xmm3
	vaddsd	(%r8), %xmm3, %xmm3
	vaddsd	8(%rdx), %xmm3, %xmm3
	vaddsd	8(%rdi), %xmm3, %xmm3
	vaddsd	16(%rsi), %xmm3, %xmm3
	vaddsd	16(%rcx), %xmm3, %xmm3
	vaddsd	24(%rdx), %xmm3, %xmm3
	vaddsd	24(%rdi), %xmm3, %xmm3
	vaddsd	32(%r9), %xmm3, %xmm3
	vaddsd	32(%r8), %xmm3, %xmm3
	vaddsd	40(%r10), %xmm3, %xmm3
	vmulsd	136(%rax), %xmm3, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	-8(%r9), %xmm0
	vaddsd	-8(%r8), %xmm0, %xmm2
	vaddsd	(%rdx), %xmm2, %xmm2
	vaddsd	(%rdi), %xmm2, %xmm2
	vaddsd	8(%rsi), %xmm2, %xmm2
	vaddsd	8(%rcx), %xmm2, %xmm2
	vaddsd	24(%rsi), %xmm2, %xmm2
	vaddsd	24(%rcx), %xmm2, %xmm2
	vaddsd	32(%rdx), %xmm2, %xmm2
	vaddsd	32(%rdi), %xmm2, %xmm2
	vaddsd	40(%r9), %xmm2, %xmm2
	vaddsd	40(%r8), %xmm2, %xmm2
	vmulsd	144(%rax), %xmm2, %xmm2
	vmovsd	-8(%rdx), %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm1
	vaddsd	(%rsi), %xmm1, %xmm1
	vaddsd	(%rcx), %xmm1, %xmm1
	vaddsd	32(%rsi), %xmm1, %xmm1
	vaddsd	32(%rcx), %xmm1, %xmm1
	vaddsd	40(%rdx), %xmm1, %xmm1
	vaddsd	40(%rdi), %xmm1, %xmm1
	vmulsd	152(%rax), %xmm1, %xmm1
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	-8(%rsi), %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	40(%rsi), %xmm0, %xmm0
	vaddsd	40(%rcx), %xmm0, %xmm0
	vmulsd	160(%rax), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 16(%r11)
	cmpq	%rax, %rbx
	jne	.L23
	addq	%r15, %r12
	addq	%r15, %r14
	addq	-120(%rbp), %rbx
	cmpl	%r13d, -68(%rbp)
	jg	.L24
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L70
	movq	-152(%rbp), %rdi
	call	dummy
	movq	-144(%rbp), %rdi
	call	dummy
	movq	-160(%rbp), %rdi
	call	dummy
.L70:
	addq	$112, %rsp
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
	movq	%rcx, -144(%rbp)
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
	vmovsd	.LC2(%rip), %xmm0
	movq	-144(%rbp), %rax
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
	movq	-144(%rbp), %rcx
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
	movq	-152(%rbp), %rdi
	call	dummy
	movq	-144(%rbp), %rdi
	call	dummy
	movq	-160(%rbp), %rdi
	call	dummy
	cmpl	$3, -68(%rbp)
	jg	.L21
	jmp	.L22
.L38:
	movl	$1, %edi
	jmp	.L5
.L75:
	movq	$0, -144(%rbp)
	xorl	%edx, %edx
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
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -144(%rbp)
	testl	%eax, %eax
	jne	.L32
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
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
