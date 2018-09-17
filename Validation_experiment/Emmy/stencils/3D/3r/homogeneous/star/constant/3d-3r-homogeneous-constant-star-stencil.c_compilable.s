	.file	"3d-3r-homogeneous-constant-star-stencil.c_compilable.c"
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
	subq	$224, %rsp
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	movl	%r13d, %r14d
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %rbx
	imull	%r12d, %r14d
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
	movq	%rdi, -272(%rbp)
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
	movq	-272(%rbp), %rdx
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
	je	.L59
	vzeroupper
	movq	-272(%rbp), %rdi
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
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L60
	testl	%r14d, %r14d
	movl	$1, %eax
	movq	$0, -264(%rbp)
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	xorl	%edx, %edx
	cmpl	$4, %r15d
	ja	.L9
	xorl	%eax, %eax
	jmp	.L22
.L60:
	movq	-56(%rbp), %rcx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%rcx, -264(%rbp)
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
	movq	-264(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L36
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L37
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	movq	-264(%rbp), %rcx
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
	je	.L61
	vzeroupper
.L22:
	movq	-264(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L26
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L26:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -56(%rbp)
	leal	-3(%r13), %eax
	movl	%eax, -196(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$3, -196(%rbp)
	jle	.L56
	leal	-3(%r12), %eax
	movl	%r12d, %edi
	imull	%ebx, %edi
	movl	%edi, -200(%rbp)
	cmpl	$6, %ebx
	jle	.L56
.L31:
	cmpl	$3, %eax
	jle	.L15
	movl	$0, -172(%rbp)
	movl	-200(%rbp), %edi
	movq	-264(%rbp), %r15
	movl	$3, -164(%rbp)
	leal	(%rdi,%rdi,2), %eax
	movl	%edi, -180(%rbp)
	movl	%eax, -192(%rbp)
	leal	(%rdi,%rdi), %eax
	movl	%eax, -188(%rbp)
	leal	0(,%rdi,4), %eax
	movl	%eax, -184(%rbp)
	leal	(%rdi,%rdi,4), %eax
	movl	%eax, -176(%rbp)
	imull	$6, %edi, %eax
	movl	%eax, -168(%rbp)
	leal	(%r12,%r12), %eax
	cltq
	movq	%rax, -240(%rbp)
	leal	(%r12,%r12,2), %eax
	movslq	%eax, %rsi
	leal	0(,%r12,4), %eax
	movq	%rsi, -232(%rbp)
	cltq
	movq	%rax, -224(%rbp)
	leal	(%r12,%r12,4), %eax
	cltq
	movq	%rax, -216(%rbp)
	imull	$6, %r12d, %eax
	cltq
	movq	%rax, -208(%rbp)
	movslq	%r12d, %rax
	movq	%rax, -136(%rbp)
	salq	$3, %rax
	movq	%rax, -144(%rbp)
	leal	-7(%r12), %eax
	leaq	0(,%rax,8), %rdx
	imulq	$-8, %rax, %rcx
	subq	%rdx, %r15
	addq	%rsi, %rax
	movq	%r15, %rdx
	movq	-272(%rbp), %r15
	movq	%rax, -256(%rbp)
	leaq	-8(%rcx), %rdi
	subq	%r15, %rdx
	leaq	8(%r15), %rax
	movq	%rdi, -152(%rbp)
	movq	%rax, -248(%rbp)
	leaq	16(%rdx), %rdi
	leal	-3(%rbx), %eax
	movq	%rdi, -160(%rbp)
	movl	%eax, -96(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movslq	-192(%rbp), %rax
	movq	$0, -80(%rbp)
	movq	-256(%rbp), %rdi
	movl	$3, -92(%rbp)
	movq	-248(%rbp), %rbx
	movslq	-168(%rbp), %r11
	movslq	-188(%rbp), %r15
	leaq	(%rdi,%rax), %rdx
	movslq	-184(%rbp), %r14
	leaq	(%rbx,%rdx,8), %rdi
	movq	-208(%rbp), %rbx
	movslq	-180(%rbp), %r13
	subq	%rax, %r11
	movslq	-176(%rbp), %r12
	subq	%rax, %r15
	movq	%r11, -88(%rbp)
	addl	$1, -164(%rbp)
	subq	%rax, %r14
	movq	%rbx, -72(%rbp)
	movq	-216(%rbp), %rbx
	movq	-232(%rbp), %rcx
	subq	%rax, %r13
	subq	%rax, %r12
	movq	%rbx, -104(%rbp)
	movq	-136(%rbp), %rbx
	movq	%rbx, -112(%rbp)
	movq	-224(%rbp), %rbx
	movq	%rbx, -120(%rbp)
	movq	-240(%rbp), %rbx
	movq	%rbx, -128(%rbp)
	movslq	-172(%rbp), %rbx
	subq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-152(%rbp), %rax
	movq	-160(%rbp), %rdx
	movq	-128(%rbp), %r11
	movq	-120(%rbp), %r10
	movq	-112(%rbp), %r9
	addq	%rdi, %rax
	movq	-104(%rbp), %r8
	addq	%rdi, %rdx
	addl	$1, -92(%rbp)
	subq	%rcx, %r11
	subq	%rcx, %r10
	subq	%rcx, %r9
	subq	%rcx, %r8
	.p2align 4,,10
	.p2align 3
.L16:
	movq	-88(%rbp), %rsi
	addq	$8, %rdx
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
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rdx)
	cmpq	%rax, %rdi
	jne	.L16
	movq	-136(%rbp), %rax
	addq	-144(%rbp), %rdi
	addq	%rax, -128(%rbp)
	addq	%rax, -120(%rbp)
	addq	%rax, %rcx
	movl	-92(%rbp), %edx
	addq	%rax, -112(%rbp)
	addq	%rax, -104(%rbp)
	addq	%rax, -80(%rbp)
	addq	%rax, -72(%rbp)
	cmpl	%edx, -96(%rbp)
	jne	.L19
	movl	-200(%rbp), %eax
	movl	-196(%rbp), %edi
	addl	%eax, -192(%rbp)
	addl	%eax, -188(%rbp)
	addl	%eax, -184(%rbp)
	addl	%eax, -180(%rbp)
	addl	%eax, -176(%rbp)
	addl	%eax, -172(%rbp)
	addl	%eax, -168(%rbp)
	cmpl	%edi, -164(%rbp)
	jl	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	jne	.L63
.L56:
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
.L63:
	.cfi_restore_state
	movq	-272(%rbp), %rdi
	call	dummy
	movq	-264(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
	jmp	.L56
.L34:
	movl	$1, %r8d
	jmp	.L5
.L62:
	movq	-272(%rbp), %rdi
	call	dummy
	movq	-264(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
	cmpl	$3, -196(%rbp)
	jle	.L15
	leal	-3(%r12), %eax
	movl	%r12d, %edi
	imull	%ebx, %edi
	movl	%edi, -200(%rbp)
	cmpl	$6, %ebx
	jg	.L31
	jmp	.L15
.L36:
	movl	$1, %eax
	jmp	.L9
.L61:
	vzeroupper
	jmp	.L26
.L59:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -264(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)
	jmp	.L26
.L37:
	movl	$2, %eax
	jmp	.L9
.L35:
	movl	$2, %r8d
	jmp	.L5
.L32:
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
