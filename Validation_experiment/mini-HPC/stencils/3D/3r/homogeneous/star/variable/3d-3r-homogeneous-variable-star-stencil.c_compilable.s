	.file	"3d-3r-homogeneous-variable-star-stencil.c_compilable.c"
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
	subq	$256, %rsp
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r15
	movq	%rax, -72(%rbp)
	call	strtol
	movl	%r15d, %ecx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %ecx
	movq	%rax, %r12
	imull	%ebx, %ecx
	movslq	%ecx, %r15
	movq	%r15, %r14
	salq	$3, %r15
	movq	%r15, %rdx
	call	posix_memalign
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
	leal	-1(%r14), %r13d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%r13d, %edx
	ja	.L43
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rdi)
	cmpl	$1, %eax
	je	.L45
	vmovsd	%xmm0, 8(%rdi)
	cmpl	$3, %eax
	jne	.L46
	vmovsd	%xmm0, 16(%rdi)
	movl	$3, %r8d
.L5:
	movl	%r14d, %edi
	movq	-232(%rbp), %rcx
	vmovapd	.LC1(%rip), %ymm0
	subl	%eax, %edi
	movl	%edi, %esi
	leaq	(%rcx,%rax,8), %rdx
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
	je	.L78
	vzeroupper
	movq	-232(%rbp), %rdi
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L8:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L79
.L32:
	movq	$0, -56(%rbp)
	movq	$0, -224(%rbp)
	testl	%r14d, %r14d
	jle	.L10
	movq	-224(%rbp), %rcx
	leal	-1(%r14), %r13d
.L31:
	testl	%r14d, %r14d
	movl	$1, %edi
	movq	%rcx, %rax
	movl	$5, %esi
	cmovg	%r14d, %edi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	testl	%r14d, %r14d
	movl	$0, %esi
	cmovg	%r13d, %esi
	cmpl	%esi, %edx
	ja	.L47
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.L12
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx)
	cmpl	$1, %eax
	je	.L49
	vmovsd	%xmm0, 8(%rcx)
	cmpl	$3, %eax
	jne	.L50
	vmovsd	%xmm0, 16(%rcx)
	movl	$3, %esi
.L12:
	subl	%eax, %edi
	vmovapd	.LC3(%rip), %ymm0
	leaq	(%rcx,%rax,8), %rdx
	xorl	%eax, %eax
	movl	%edi, %r8d
	shrl	$2, %r8d
	.p2align 4,,10
	.p2align 3
.L14:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%r8d, %eax
	jb	.L14
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rsi), %eax
	cmpl	%edi, %edx
	je	.L80
	vzeroupper
	movq	-224(%rbp), %rdi
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L15:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L81
	movq	-56(%rbp), %rdi
	testl	%r14d, %r14d
	movl	$1, %r8d
	cmovg	%r14d, %r8d
	movq	%rdi, -216(%rbp)
	shrq	$3, %rdi
	movq	%rdi, %rdx
	movl	$5, %edi
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %esi
	cmpl	$5, %esi
	cmovb	%edi, %esi
	testl	%r14d, %r14d
	cmovle	%eax, %r13d
	cmpl	%r13d, %esi
	ja	.L36
	testl	%edx, %edx
	je	.L18
	vmovsd	.LC4(%rip), %xmm0
	movq	-216(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L51
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L52
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L18:
	subl	%edx, %r8d
	movq	-216(%rbp), %rcx
	vmovapd	.LC5(%rip), %ymm0
	movl	%r8d, %edi
	leaq	(%rcx,%rdx,8), %rsi
	shrl	$2, %edi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L20:
	addl	$1, %edx
	vmovapd	%ymm0, (%rsi)
	addq	$32, %rsi
	cmpl	%edi, %edx
	jb	.L20
	movl	%r8d, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%r8d, %edx
	je	.L82
	vzeroupper
.L36:
	vmovsd	.LC4(%rip), %xmm0
	movq	-216(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L17:
	movl	-72(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$3, %eax
	movl	%eax, -208(%rbp)
	testl	%edx, %edx
	jne	.L83
	cmpl	$3, -208(%rbp)
	jle	.L75
	movl	%ebx, %edi
	movl	%ebx, -240(%rbp)
	leal	-3(%rbx), %eax
	imull	%r12d, %edi
	movl	%edi, -236(%rbp)
	cmpl	$6, %r12d
	jle	.L75
.L42:
	cmpl	$3, %eax
	jle	.L24
	movl	$0, -180(%rbp)
	movl	-236(%rbp), %edi
	movl	$3, -172(%rbp)
	leal	(%rdi,%rdi,2), %eax
	movl	%edi, -188(%rbp)
	movl	%eax, -204(%rbp)
	imull	$3, -240(%rbp), %eax
	movl	%eax, -200(%rbp)
	leal	(%rdi,%rdi), %eax
	movl	%eax, -196(%rbp)
	leal	0(,%rdi,4), %eax
	movl	%eax, -192(%rbp)
	leal	(%rdi,%rdi,4), %eax
	movl	%eax, -184(%rbp)
	imull	$6, %edi, %eax
	movl	%eax, -176(%rbp)
	movslq	%ebx, %rax
	movq	%rax, -152(%rbp)
	salq	$3, %rax
	movq	%rax, -168(%rbp)
	leal	(%rbx,%rbx,2), %eax
	cltq
	movq	%rax, -280(%rbp)
	leal	(%rbx,%rbx), %eax
	cltq
	movq	%rax, -272(%rbp)
	leal	0(,%rbx,4), %eax
	cltq
	movq	%rax, -264(%rbp)
	leal	(%rbx,%rbx,4), %eax
	cltq
	movq	%rax, -256(%rbp)
	imull	$6, %ebx, %eax
	cltq
	movq	%rax, -248(%rbp)
	movq	-216(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -296(%rbp)
	leal	-7(%r12), %eax
	movq	%rax, -288(%rbp)
	leal	-7(%rbx), %eax
	addq	$4, %rax
	movq	%rax, -104(%rbp)
	.p2align 4,,10
	.p2align 3
.L27:
	movslq	-204(%rbp), %rax
	movq	-280(%rbp), %rbx
	movq	$0, -80(%rbp)
	movq	-232(%rbp), %rdi
	movslq	-200(%rbp), %rdx
	leaq	(%rbx,%rax), %rcx
	movslq	-176(%rbp), %r11
	addl	$1, -172(%rbp)
	salq	$3, %rcx
	movslq	-196(%rbp), %r15
	movslq	-192(%rbp), %r14
	addq	%rcx, %rdi
	subq	%rax, %r11
	movslq	-188(%rbp), %r13
	movslq	-184(%rbp), %r12
	movq	%rdi, -144(%rbp)
	movq	-216(%rbp), %rdi
	subq	%rax, %r15
	subq	%rax, %r14
	movq	%r11, -96(%rbp)
	subq	%rax, %r13
	subq	%rax, %r12
	leaq	24(%rdi,%rdx,8), %r8
	movq	-224(%rbp), %rdi
	addq	-288(%rbp), %rdx
	addq	%rcx, %rdi
	movq	-296(%rbp), %rcx
	leaq	(%rcx,%rdx,8), %rcx
	movq	%rcx, -160(%rbp)
	movq	-248(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-256(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-264(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	%rbx, %rcx
	movq	-272(%rbp), %rbx
	movq	%rbx, -136(%rbp)
	movslq	-180(%rbp), %rbx
	subq	%rax, %rbx
	movq	%rbx, -88(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movq	-136(%rbp), %rbx
	movq	-128(%rbp), %r11
	movl	$3, %edx
	movq	-120(%rbp), %r10
	movq	-112(%rbp), %r9
	movq	-144(%rbp), %rax
	subq	%rcx, %rbx
	subq	%rcx, %r11
	subq	%rcx, %r10
	subq	%rcx, %r9
	.p2align 4,,10
	.p2align 3
.L25:
	movq	-88(%rbp), %rsi
	vmovsd	24(%rax), %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r14,8), %xmm0, %xmm0
	vaddsd	24(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	24(%rax,%r13,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	48(%rax), %xmm0, %xmm0
	vaddsd	24(%rax,%rsi,8), %xmm0, %xmm0
	movq	-96(%rbp), %rsi
	vaddsd	24(%rax,%rsi,8), %xmm0, %xmm0
	movq	-80(%rbp), %rsi
	subq	%rcx, %rsi
	vaddsd	24(%rax,%rsi,8), %xmm0, %xmm0
	movq	-72(%rbp), %rsi
	subq	%rcx, %rsi
	vaddsd	24(%rax,%rsi,8), %xmm0, %xmm0
	vmulsd	(%r8,%rdx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, -104(%rbp)
	jne	.L25
	movq	-152(%rbp), %rax
	movq	-168(%rbp), %rbx
	addq	$8, %r8
	addq	%rbx, -144(%rbp)
	addq	%rax, -136(%rbp)
	addq	%rax, %rcx
	addq	%rbx, %rdi
	addq	%rax, -128(%rbp)
	addq	%rax, -120(%rbp)
	addq	%rax, -112(%rbp)
	addq	%rax, -80(%rbp)
	addq	%rax, -72(%rbp)
	cmpq	%r8, -160(%rbp)
	jne	.L28
	movl	-236(%rbp), %eax
	movl	-240(%rbp), %ebx
	addl	%eax, -204(%rbp)
	movl	-208(%rbp), %edi
	addl	%ebx, -200(%rbp)
	addl	%eax, -196(%rbp)
	addl	%eax, -192(%rbp)
	addl	%eax, -188(%rbp)
	addl	%eax, -184(%rbp)
	addl	%eax, -180(%rbp)
	addl	%eax, -176(%rbp)
	cmpl	%edi, -172(%rbp)
	jl	.L27
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L75
	movq	-232(%rbp), %rdi
	call	dummy
	movq	-224(%rbp), %rdi
	call	dummy
	movq	-216(%rbp), %rdi
	call	dummy
.L75:
	addq	$256, %rsp
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
.L79:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	%rax, %rcx
	jmp	.L31
.L45:
	movl	$1, %r8d
	jmp	.L5
.L81:
	testl	%r14d, %r14d
	jle	.L84
	movl	%r14d, %r8d
	cmpl	$4, %r13d
	jbe	.L53
	movq	$0, -216(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L83:
	movq	-232(%rbp), %rdi
	call	dummy
	movq	-224(%rbp), %rdi
	call	dummy
	movq	-216(%rbp), %rdi
	call	dummy
	cmpl	$3, -208(%rbp)
	jle	.L24
	movl	%ebx, %edi
	movl	%ebx, -240(%rbp)
	leal	-3(%rbx), %eax
	imull	%r12d, %edi
	movl	%edi, -236(%rbp)
	cmpl	$6, %r12d
	jg	.L42
	jmp	.L24
.L49:
	movl	$1, %esi
	jmp	.L12
.L78:
	vzeroupper
	jmp	.L8
.L82:
	vzeroupper
	jmp	.L17
.L80:
	vzeroupper
	jmp	.L15
.L51:
	movl	$1, %eax
	jmp	.L18
.L3:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L32
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)
.L10:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -216(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)
	jmp	.L17
.L53:
	movq	$0, -216(%rbp)
	xorl	%eax, %eax
	jmp	.L36
.L46:
	movl	$2, %r8d
	jmp	.L5
.L52:
	movl	$2, %eax
	jmp	.L18
.L50:
	movl	$2, %esi
	jmp	.L12
.L47:
	xorl	%eax, %eax
	movq	%rcx, %rdi
	jmp	.L11
.L43:
	xorl	%eax, %eax
	jmp	.L4
.L84:
	movq	$0, -216(%rbp)
	jmp	.L17
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
