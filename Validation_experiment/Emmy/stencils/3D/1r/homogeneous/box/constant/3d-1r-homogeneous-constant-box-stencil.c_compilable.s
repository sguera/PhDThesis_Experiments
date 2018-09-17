	.file	"3d-1r-homogeneous-constant-box-stencil.c_compilable.c"
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
	subq	$176, %rsp
	.cfi_offset 12, -48
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	movl	%ebx, %r14d
	call	strtol
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %r13
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
	movq	%rdi, -216(%rbp)
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
	movq	-216(%rbp), %rdx
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
	movq	-216(%rbp), %rsi
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
	je	.L60
	testl	%r14d, %r14d
	movl	$1, %eax
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	cmpl	$4, %r15d
	ja	.L61
	movq	$0, -208(%rbp)
	xorl	%eax, %eax
.L22:
	movq	-208(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
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
	movq	%rax, -56(%rbp)
	leal	-1(%r13), %eax
	movl	%eax, -168(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$1, -168(%rbp)
	jle	.L56
	leal	-1(%r12), %eax
	movl	%r12d, %ecx
	imull	%ebx, %ecx
	movl	%ecx, -172(%rbp)
	cmpl	$2, %ebx
	jle	.L56
.L31:
	cmpl	$1, %eax
	jle	.L15
	movl	-172(%rbp), %edi
	movslq	%r12d, %r15
	movl	$0, -164(%rbp)
	movq	-208(%rbp), %rsi
	movl	$1, -152(%rbp)
	leal	(%rdi,%rdi), %eax
	movl	%edi, -156(%rbp)
	movl	%eax, -160(%rbp)
	leal	(%r12,%r12), %eax
	cltq
	movq	%rax, -184(%rbp)
	leaq	0(,%r15,8), %rax
	movq	%rax, -136(%rbp)
	leal	-3(%r12), %eax
	leaq	0(,%rax,8), %rcx
	imulq	$-8, %rax, %rdx
	subq	%rcx, %rsi
	addq	%r15, %rax
	movq	%rsi, %rcx
	movq	-216(%rbp), %rsi
	movq	%rax, -200(%rbp)
	leaq	8(%rsi), %rax
	subq	%rsi, %rcx
	movq	%rcx, -128(%rbp)
	leaq	-8(%rdx), %rcx
	movq	%rax, -192(%rbp)
	leal	-1(%rbx), %eax
	movq	%rcx, -144(%rbp)
	movl	%eax, -148(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movq	-184(%rbp), %rbx
	movq	%r15, %r13
	movq	$0, -112(%rbp)
	movslq	-164(%rbp), %rax
	movl	$1, -72(%rbp)
	movslq	-160(%rbp), %rdx
	movslq	-156(%rbp), %r14
	movq	-192(%rbp), %rsi
	movq	%rbx, -88(%rbp)
	addl	$1, -152(%rbp)
	leaq	(%rbx,%rax), %rcx
	movq	%rax, -120(%rbp)
	movq	%rcx, -96(%rbp)
	leaq	(%rbx,%rdx), %rcx
	movq	%rax, %rbx
	movq	%rcx, -80(%rbp)
	movq	-200(%rbp), %rcx
	subq	%r14, %rbx
	movq	%rdx, -104(%rbp)
	subq	%r14, %rdx
	movq	%rdx, %r11
	addq	%r14, %rcx
	leaq	(%rsi,%rcx,8), %r12
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-128(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	leaq	(%rdi,%r12), %r10
	movq	-120(%rbp), %rdi
	movq	-144(%rbp), %rax
	subq	%r13, %rsi
	movq	-112(%rbp), %r9
	subq	%r13, %rcx
	subq	%r14, %rsi
	movq	-88(%rbp), %r8
	subq	%r13, %rdx
	subq	%r14, %rcx
	addl	$1, -72(%rbp)
	subq	%r13, %rdi
	subq	%r14, %rdx
	addq	%r12, %rax
	subq	%r14, %rdi
	subq	%r13, %r9
	subq	%r13, %r8
	.p2align 4,,10
	.p2align 3
.L16:
	vmovsd	8(%rax), %xmm0
	addq	$8, %r10
	vaddsd	(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	16(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rdx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -8(%r10)
	cmpq	%rax, %r12
	jne	.L16
	addq	%r15, -120(%rbp)
	addq	%r15, %r13
	addq	%r15, -112(%rbp)
	addq	%r15, -104(%rbp)
	addq	%r15, -96(%rbp)
	addq	%r15, -88(%rbp)
	addq	%r15, -80(%rbp)
	addq	-136(%rbp), %r12
	movl	-72(%rbp), %esi
	cmpl	%esi, -148(%rbp)
	jne	.L19
	movl	-172(%rbp), %eax
	movl	-168(%rbp), %ebx
	addl	%eax, -164(%rbp)
	addl	%eax, -160(%rbp)
	addl	%eax, -156(%rbp)
	cmpl	%ebx, -152(%rbp)
	jl	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L56
	movq	-216(%rbp), %rdi
	call	dummy
	movq	-208(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
.L56:
	addq	$176, %rsp
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
	movq	$0, -208(%rbp)
	xorl	%edx, %edx
.L9:
	movq	-208(%rbp), %rcx
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
	je	.L63
	vzeroupper
	jmp	.L22
.L60:
	movq	-56(%rbp), %rcx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%rcx, -208(%rbp)
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
	movq	-208(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
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
	movq	-216(%rbp), %rdi
	call	dummy
	movq	-208(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
	cmpl	$1, -168(%rbp)
	jle	.L15
	leal	-1(%r12), %eax
	movl	%r12d, %ecx
	imull	%ebx, %ecx
	movl	%ecx, -172(%rbp)
	cmpl	$2, %ebx
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
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -208(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
