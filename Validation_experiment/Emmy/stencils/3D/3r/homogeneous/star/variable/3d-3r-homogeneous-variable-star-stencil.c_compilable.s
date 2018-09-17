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
	subq	$240, %rsp
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r14
	movq	%rax, -72(%rbp)
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movl	%r14d, %ecx
	movl	$32, %esi
	imull	%eax, %ecx
	leaq	-56(%rbp), %rdi
	movq	%rax, %r15
	imull	%ebx, %ecx
	movslq	%ecx, %r14
	movq	%r14, %r13
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -280(%rbp)
	testl	%r13d, %r13d
	jle	.L3
	leal	-1(%r13), %r12d
	movq	%rdi, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%r12d, %edx
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
	movq	-280(%rbp), %rcx
	movl	%r13d, %edi
	subl	%eax, %edi
	vmovapd	.LC1(%rip), %ymm0
	movl	%edi, %esi
	shrl	$2, %esi
	leaq	(%rcx,%rax,8), %rdx
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
	je	.L78
	vzeroupper
	movq	-280(%rbp), %rdi
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L8:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L79
.L32:
	movq	$0, -56(%rbp)
	movq	$0, -96(%rbp)
	testl	%r13d, %r13d
	jle	.L10
	movq	-96(%rbp), %rcx
	leal	-1(%r13), %r12d
.L31:
	testl	%r13d, %r13d
	movl	$1, %edi
	movq	%rcx, %rax
	cmovg	%r13d, %edi
	shrq	$3, %rax
	movl	$5, %esi
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	testl	%r13d, %r13d
	movl	$0, %esi
	cmovg	%r12d, %esi
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
	vmovapd	.LC3(%rip), %ymm0
	leaq	(%rcx,%rax,8), %rdx
	subl	%eax, %edi
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
	movq	-96(%rbp), %rdi
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L15
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L15:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L81
	movq	-56(%rbp), %rdi
	testl	%r13d, %r13d
	movl	$1, %r8d
	cmovg	%r13d, %r8d
	movq	%rdi, -104(%rbp)
	shrq	$3, %rdi
	movq	%rdi, %rdx
	movl	$5, %edi
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %esi
	cmpl	$5, %esi
	cmovb	%edi, %esi
	testl	%r13d, %r13d
	cmovle	%eax, %r12d
	cmpl	%r12d, %esi
	ja	.L36
	testl	%edx, %edx
	je	.L18
	movq	-104(%rbp), %rax
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L51
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L52
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L18:
	movq	-104(%rbp), %rcx
	subl	%edx, %r8d
	movl	%r8d, %edi
	vmovapd	.LC5(%rip), %ymm0
	shrl	$2, %edi
	leaq	(%rcx,%rdx,8), %rsi
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
	movq	-104(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L17:
	movl	-72(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$3, %eax
	movl	%eax, -212(%rbp)
	testl	%edx, %edx
	jne	.L83
	cmpl	$3, -212(%rbp)
	jle	.L75
	leal	-3(%rbx), %eax
	movl	%ebx, %edi
	imull	%r15d, %edi
	movl	%edi, -216(%rbp)
	cmpl	$6, %r15d
	jle	.L75
.L42:
	cmpl	$3, %eax
	jle	.L24
	movl	$0, -188(%rbp)
	movl	-216(%rbp), %edi
	movl	$3, -180(%rbp)
	leal	(%rdi,%rdi,2), %eax
	movl	%edi, -196(%rbp)
	movl	%eax, -208(%rbp)
	leal	(%rdi,%rdi), %eax
	movl	%eax, -204(%rbp)
	leal	0(,%rdi,4), %eax
	movl	%eax, -200(%rbp)
	leal	(%rdi,%rdi,4), %eax
	movl	%eax, -192(%rbp)
	imull	$6, %edi, %eax
	movl	%eax, -184(%rbp)
	leal	(%rbx,%rbx), %eax
	cltq
	movq	%rax, -256(%rbp)
	leal	(%rbx,%rbx,2), %eax
	movslq	%eax, %rsi
	leal	0(,%rbx,4), %eax
	movq	%rsi, -248(%rbp)
	cltq
	movq	%rax, -240(%rbp)
	leal	(%rbx,%rbx,4), %eax
	cltq
	movq	%rax, -232(%rbp)
	imull	$6, %ebx, %eax
	cltq
	movq	%rax, -224(%rbp)
	movslq	%ebx, %rax
	movq	%rax, -152(%rbp)
	salq	$3, %rax
	movq	%rax, -160(%rbp)
	leal	-7(%rbx), %eax
	movq	-280(%rbp), %rbx
	imulq	$-8, %rax, %rcx
	addq	%rsi, %rax
	movq	%rax, -272(%rbp)
	leaq	8(%rbx), %rax
	movq	%rax, -264(%rbp)
	leal	-3(%r15), %eax
	leaq	-8(%rcx), %rdi
	movq	%rcx, %rdx
	movl	%eax, -112(%rbp)
	subq	%rbx, %rdx
	movq	%rdi, -168(%rbp)
	leaq	16(%rdx), %rdi
	movq	%rdi, -176(%rbp)
	.p2align 4,,10
	.p2align 3
.L27:
	movslq	-208(%rbp), %rax
	movq	$0, -80(%rbp)
	movq	-272(%rbp), %rbx
	movl	$3, -108(%rbp)
	movslq	-184(%rbp), %r11
	movq	-264(%rbp), %rdi
	movslq	-204(%rbp), %r15
	leaq	(%rbx,%rax), %rdx
	movq	-224(%rbp), %rbx
	movslq	-200(%rbp), %r14
	subq	%rax, %r11
	movslq	-196(%rbp), %r13
	leaq	(%rdi,%rdx,8), %rdi
	movq	%r11, -88(%rbp)
	movslq	-192(%rbp), %r12
	subq	%rax, %r15
	movq	%rbx, -72(%rbp)
	movq	-232(%rbp), %rbx
	addl	$1, -180(%rbp)
	subq	%rax, %r14
	movq	-248(%rbp), %rcx
	subq	%rax, %r13
	subq	%rax, %r12
	movq	%rbx, -120(%rbp)
	movq	-152(%rbp), %rbx
	movq	%rbx, -128(%rbp)
	movq	-240(%rbp), %rbx
	movq	%rbx, -136(%rbp)
	movq	-256(%rbp), %rbx
	movq	%rbx, -144(%rbp)
	movslq	-188(%rbp), %rbx
	subq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L28:
	movq	-168(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	-144(%rbp), %r11
	movq	-136(%rbp), %r10
	movq	-128(%rbp), %r9
	addq	%rdi, %rax
	movq	-120(%rbp), %r8
	addq	%rdi, %rdx
	addl	$1, -108(%rbp)
	subq	%rcx, %r11
	subq	%rcx, %r10
	subq	%rcx, %r9
	subq	%rcx, %r8
	.p2align 4,,10
	.p2align 3
.L25:
	movq	-88(%rbp), %rsi
	vmovsd	24(%rax), %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r14,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	24(%rax,%r13,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	48(%rax), %xmm0, %xmm0
	vaddsd	24(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	24(%rax,%rsi,8), %xmm0, %xmm0
	movq	-80(%rbp), %rsi
	subq	%rcx, %rsi
	vaddsd	24(%rax,%rsi,8), %xmm0, %xmm0
	movq	-72(%rbp), %rsi
	subq	%rcx, %rsi
	vaddsd	24(%rax,%rsi,8), %xmm0, %xmm0
	addq	$8, %rax
	movq	-104(%rbp), %rsi
	vmulsd	(%rsi,%rdx), %xmm0, %xmm0
	movq	-96(%rbp), %rsi
	vmovsd	%xmm0, (%rsi,%rdx)
	addq	$8, %rdx
	cmpq	%rax, %rdi
	jne	.L25
	movq	-152(%rbp), %rax
	addq	-160(%rbp), %rdi
	addq	%rax, -144(%rbp)
	addq	%rax, -136(%rbp)
	addq	%rax, %rcx
	movl	-108(%rbp), %edx
	addq	%rax, -128(%rbp)
	addq	%rax, -120(%rbp)
	addq	%rax, -80(%rbp)
	addq	%rax, -72(%rbp)
	cmpl	%edx, -112(%rbp)
	jne	.L28
	movl	-216(%rbp), %eax
	movl	-212(%rbp), %edi
	addl	%eax, -208(%rbp)
	addl	%eax, -204(%rbp)
	addl	%eax, -200(%rbp)
	addl	%eax, -196(%rbp)
	addl	%eax, -192(%rbp)
	addl	%eax, -188(%rbp)
	addl	%eax, -184(%rbp)
	cmpl	%edi, -180(%rbp)
	jl	.L27
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L75
	movq	-280(%rbp), %rdi
	call	dummy
	movq	-96(%rbp), %rdi
	call	dummy
	movq	-104(%rbp), %rdi
	call	dummy
.L75:
	addq	$240, %rsp
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
	movq	%rax, -96(%rbp)
	movq	%rax, %rcx
	jmp	.L31
.L45:
	movl	$1, %r8d
	jmp	.L5
.L81:
	testl	%r13d, %r13d
	jle	.L84
	movl	%r13d, %r8d
	cmpl	$4, %r12d
	jbe	.L53
	xorl	%edx, %edx
	movq	$0, -104(%rbp)
	xorl	%eax, %eax
	jmp	.L18
.L83:
	movq	-280(%rbp), %rdi
	call	dummy
	movq	-96(%rbp), %rdi
	call	dummy
	movq	-104(%rbp), %rdi
	call	dummy
	cmpl	$3, -212(%rbp)
	jle	.L24
	leal	-3(%rbx), %eax
	movl	%ebx, %edi
	imull	%r15d, %edi
	movl	%edi, -216(%rbp)
	cmpl	$6, %r15d
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
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L32
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
.L10:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -104(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.L17
.L53:
	movq	$0, -104(%rbp)
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
	movq	$0, -104(%rbp)
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
