	.file	"2d-4r-point-symmetric-variable-star-stencil.c_compilable.c"
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
	subq	$80, %rsp
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
	movq	%rsi, -120(%rbp)
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
	movq	-120(%rbp), %rdx
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
	movq	-120(%rbp), %rdi
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
	movq	$0, -112(%rbp)
	xorl	%eax, %eax
.L28:
	movq	-112(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
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
	leal	(%r12,%r12,8), %r12d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movslq	%r12d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %rsi
	movq	%rsi, -128(%rbp)
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
	movq	-128(%rbp), %rdx
	movl	%r12d, %esi
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
	je	.L76
	vzeroupper
.L15:
	movq	-128(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%r12d, %edx
	jge	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r12d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-4(%rbx), %eax
	movl	%eax, -72(%rbp)
	testl	%edx, %edx
	jne	.L77
	cmpl	$4, -72(%rbp)
	jle	.L70
.L21:
	leal	0(,%r14,8), %edx
	leal	(%rdx,%r14), %eax
	cmpl	$8, %r14d
	jle	.L22
	movslq	%eax, %rcx
	sall	$2, %eax
	movq	-120(%rbp), %r13
	movl	$4, -68(%rbp)
	leaq	0(,%rcx,8), %rbx
	cltq
	movq	%rbx, -104(%rbp)
	movq	-128(%rbp), %rbx
	leal	(%r14,%r14,2), %ecx
	movslq	%ecx, %rcx
	leaq	0(%r13,%rcx,8), %r11
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -80(%rbp)
	movslq	%r14d, %rax
	movq	%rax, %r9
	movq	%rax, %rbx
	movq	%rax, %r8
	leaq	0(,%rax,4), %rcx
	salq	$4, %r9
	subq	%rcx, %rbx
	addq	%r11, %r9
	movq	%rax, %rcx
	leaq	(%r9,%rbx,8), %r10
	movslq	%edx, %rbx
	negq	%rcx
	movq	%rbx, -96(%rbp)
	movq	-112(%rbp), %rbx
	salq	$5, %r8
	salq	$2, %rcx
	leal	0(,%r14,4), %edx
	subq	%rax, %rcx
	addq	%r10, %r8
	leaq	(%rax,%rax,2), %rdi
	movslq	%edx, %rdx
	subl	$9, %r14d
	leaq	(%r8,%rcx,8), %rsi
	salq	$4, %rdi
	addq	$5, %r14
	leaq	(%rbx,%rdx,8), %rbx
	subq	%rax, %rdx
	addq	%rsi, %rdi
	leaq	0(,%rax,8), %r15
	leaq	0(,%rdx,8), %rax
	leaq	(%rdi,%r15), %r12
	movq	%rax, -88(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-88(%rbp), %rax
	addl	$1, -68(%rbp)
	movq	-80(%rbp), %rdx
	leaq	(%rax,%rsi), %rcx
	movl	$4, %eax
	.p2align 4,,10
	.p2align 3
.L23:
	vmovsd	288(%rdx), %xmm2
	addq	$8, %rcx
	addq	$72, %rdx
	vmulsd	24(%rcx), %xmm2, %xmm0
	vmovsd	16(%rcx), %xmm1
	vaddsd	32(%rcx), %xmm1, %xmm1
	vmulsd	224(%rdx), %xmm1, %xmm1
	vmovsd	8(%rcx), %xmm4
	vaddsd	40(%rcx), %xmm4, %xmm4
	vmulsd	240(%rdx), %xmm4, %xmm4
	vmovsd	(%rcx), %xmm3
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r11,%rax,8), %xmm1
	vaddsd	(%r9,%rax,8), %xmm1, %xmm1
	vmulsd	232(%rdx), %xmm1, %xmm1
	vmovsd	(%r10,%rax,8), %xmm0
	vaddsd	(%r8,%rax,8), %xmm0, %xmm0
	vmulsd	248(%rdx), %xmm0, %xmm0
	vaddsd	48(%rcx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	256(%rdx), %xmm3, %xmm3
	vmovsd	(%rsi,%rax,8), %xmm2
	vaddsd	(%rdi,%rax,8), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	264(%rdx), %xmm2, %xmm2
	vmovsd	-8(%rcx), %xmm1
	vaddsd	56(%rcx), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	272(%rdx), %xmm1, %xmm1
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	0(%r13,%rax,8), %xmm0
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	vmulsd	280(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %r14
	jne	.L23
	movq	-104(%rbp), %rcx
	addq	%r15, %r11
	addq	%r15, %r9
	addq	%r15, %r10
	addq	%rcx, -80(%rbp)
	addq	%r15, %r8
	addq	%r15, %rsi
	addq	%r15, %rdi
	addq	%r15, %r13
	addq	%r15, %r12
	addq	-96(%rbp), %rbx
	movl	-68(%rbp), %ecx
	cmpl	%ecx, -72(%rbp)
	jg	.L24
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L70
	movq	-120(%rbp), %rdi
	call	dummy
	movq	-112(%rbp), %rdi
	call	dummy
	movq	-128(%rbp), %rdi
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
	testl	%r12d, %r12d
	movl	$1, %edi
	cmovg	%r12d, %edi
	movq	%rsi, -112(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
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
	movq	-112(%rbp), %rax
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
	movq	-112(%rbp), %rcx
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
	movq	-120(%rbp), %rdi
	call	dummy
	movq	-112(%rbp), %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	cmpl	$4, -72(%rbp)
	jg	.L21
	jmp	.L22
.L38:
	movl	$1, %edi
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
	leaq	-56(%rbp), %rdi
	movq	%r13, %rdx
	movl	$32, %esi
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
