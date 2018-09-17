	.file	"3d-3r-point-symmetric-constant-star-stencil.c_compilable.c"
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
	subq	$304, %rsp
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	movl	%r13d, %r14d
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	imull	%ebx, %r14d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %r12
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -136(%rbp)
	call	posix_memalign
	movq	-136(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -344(%rbp)
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
	movq	-344(%rbp), %rdx
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
	movq	-344(%rbp), %rsi
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
	movq	$0, -336(%rbp)
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
	movq	%rcx, -336(%rbp)
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
	movq	-336(%rbp), %rax
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
	movq	-336(%rbp), %rcx
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
	movq	-336(%rbp), %rcx
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
	movq	%rax, -128(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.LC9(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	.LC10(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC11(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC12(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC13(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-3(%r13), %eax
	movl	%eax, -268(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$3, -268(%rbp)
	jle	.L56
	leal	-3(%r12), %eax
	movl	%r12d, %ecx
	imull	%ebx, %ecx
	movl	%ecx, -272(%rbp)
	cmpl	$6, %ebx
	jle	.L56
.L31:
	cmpl	$3, %eax
	jle	.L15
	movl	$0, -244(%rbp)
	movl	-272(%rbp), %esi
	movq	-336(%rbp), %r15
	movl	$3, -236(%rbp)
	leal	(%rsi,%rsi,2), %eax
	movl	%esi, -252(%rbp)
	movl	%eax, -264(%rbp)
	leal	(%rsi,%rsi), %eax
	movl	%eax, -260(%rbp)
	leal	0(,%rsi,4), %eax
	movl	%eax, -256(%rbp)
	leal	(%rsi,%rsi,4), %eax
	movl	%eax, -248(%rbp)
	imull	$6, %esi, %eax
	movl	%eax, -240(%rbp)
	leal	(%r12,%r12), %eax
	cltq
	movq	%rax, -312(%rbp)
	leal	(%r12,%r12,2), %eax
	movslq	%eax, %rdi
	leal	0(,%r12,4), %eax
	movq	%rdi, -304(%rbp)
	cltq
	movq	%rax, -296(%rbp)
	leal	(%r12,%r12,4), %eax
	cltq
	movq	%rax, -288(%rbp)
	imull	$6, %r12d, %eax
	cltq
	movq	%rax, -280(%rbp)
	movslq	%r12d, %rax
	movq	%rax, -208(%rbp)
	salq	$3, %rax
	movq	%rax, -216(%rbp)
	leal	-7(%r12), %eax
	leaq	0(,%rax,8), %rdx
	imulq	$-8, %rax, %rcx
	subq	%rdx, %r15
	addq	%rdi, %rax
	movq	%r15, %rdx
	movq	-344(%rbp), %r15
	movq	%rax, -320(%rbp)
	leaq	8(%r15), %rax
	subq	$8, %rcx
	subq	%r15, %rdx
	movq	%rcx, -224(%rbp)
	leaq	16(%rdx), %rcx
	movq	%rax, -328(%rbp)
	leal	-3(%rbx), %eax
	movq	%rcx, -232(%rbp)
	movl	%eax, -168(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movslq	-264(%rbp), %rax
	movq	$0, -144(%rbp)
	movq	-320(%rbp), %rcx
	movl	$3, -164(%rbp)
	movq	-296(%rbp), %rbx
	movslq	-260(%rbp), %r15
	movslq	-252(%rbp), %r14
	leaq	(%rcx,%rax), %rdx
	movq	-328(%rbp), %rcx
	movq	%rbx, -192(%rbp)
	movslq	-240(%rbp), %rbx
	movslq	-248(%rbp), %r13
	subq	%rax, %r15
	movslq	-244(%rbp), %r12
	subq	%rax, %r14
	addl	$1, -236(%rbp)
	leaq	(%rcx,%rdx,8), %r8
	movq	-208(%rbp), %rdx
	subq	%rax, %rbx
	movq	-280(%rbp), %rcx
	subq	%rax, %r13
	subq	%rax, %r12
	movq	%rbx, -160(%rbp)
	movq	%rdx, -184(%rbp)
	movq	-312(%rbp), %rdx
	movq	%rcx, -136(%rbp)
	movq	-288(%rbp), %rcx
	movq	%rdx, -200(%rbp)
	movslq	-256(%rbp), %rdx
	movq	%rcx, -176(%rbp)
	movq	-304(%rbp), %rcx
	subq	%rax, %rdx
	movq	%rdx, -152(%rbp)
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-232(%rbp), %rbx
	movq	-224(%rbp), %rax
	movq	-192(%rbp), %r11
	movq	-184(%rbp), %r10
	leaq	(%rbx,%r8), %rdx
	movq	-176(%rbp), %r9
	movq	-200(%rbp), %rbx
	addq	%r8, %rax
	addl	$1, -164(%rbp)
	subq	%rcx, %r11
	subq	%rcx, %r10
	subq	%rcx, %r9
	subq	%rcx, %rbx
	.p2align 4,,10
	.p2align 3
.L16:
	vmovsd	24(%rax), %xmm3
	addq	$8, %rdx
	vmovsd	16(%rax), %xmm2
	vmulsd	-128(%rbp), %xmm3, %xmm0
	vaddsd	32(%rax), %xmm2, %xmm2
	vmulsd	-120(%rbp), %xmm2, %xmm2
	movq	-152(%rbp), %rsi
	vmovsd	24(%rax,%rbx,8), %xmm1
	vaddsd	24(%rax,%r11,8), %xmm1, %xmm1
	vmulsd	-104(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	24(%rax,%r15,8), %xmm2
	vaddsd	24(%rax,%rsi,8), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	vmovsd	8(%rax), %xmm4
	vaddsd	40(%rax), %xmm4, %xmm4
	vmulsd	-96(%rbp), %xmm4, %xmm4
	vmovsd	24(%rax,%r14,8), %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	movq	-160(%rbp), %rdi
	vaddsd	24(%rax,%r13,8), %xmm0, %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	24(%rax,%r10,8), %xmm3
	vaddsd	24(%rax,%r9,8), %xmm3, %xmm3
	vmulsd	-80(%rbp), %xmm3, %xmm3
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	(%rax), %xmm2
	vaddsd	48(%rax), %xmm2, %xmm2
	vmulsd	-72(%rbp), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	24(%rax,%r12,8), %xmm1
	movq	-136(%rbp), %rsi
	vaddsd	24(%rax,%rdi,8), %xmm1, %xmm1
	movq	-144(%rbp), %rdi
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	-64(%rbp), %xmm1, %xmm1
	subq	%rcx, %rsi
	vaddsd	%xmm2, %xmm3, %xmm2
	subq	%rcx, %rdi
	vmovsd	24(%rax,%rdi,8), %xmm0
	vaddsd	24(%rax,%rsi,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rdx)
	cmpq	%rax, %r8
	jne	.L16
	movq	-208(%rbp), %rax
	addq	-216(%rbp), %r8
	addq	%rax, -200(%rbp)
	addq	%rax, -192(%rbp)
	addq	%rax, %rcx
	movl	-164(%rbp), %edx
	addq	%rax, -184(%rbp)
	addq	%rax, -176(%rbp)
	addq	%rax, -144(%rbp)
	addq	%rax, -136(%rbp)
	cmpl	%edx, -168(%rbp)
	jne	.L19
	movl	-272(%rbp), %eax
	movl	-268(%rbp), %ecx
	addl	%eax, -264(%rbp)
	addl	%eax, -260(%rbp)
	addl	%eax, -256(%rbp)
	addl	%eax, -252(%rbp)
	addl	%eax, -248(%rbp)
	addl	%eax, -244(%rbp)
	addl	%eax, -240(%rbp)
	cmpl	%ecx, -236(%rbp)
	jl	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	jne	.L63
.L56:
	addq	$304, %rsp
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
	movq	-344(%rbp), %rdi
	call	dummy
	movq	-336(%rbp), %rdi
	call	dummy
	leaq	-128(%rbp), %rdi
	call	dummy
	leaq	-120(%rbp), %rdi
	call	dummy
	leaq	-112(%rbp), %rdi
	call	dummy
	leaq	-104(%rbp), %rdi
	call	dummy
	leaq	-96(%rbp), %rdi
	call	dummy
	leaq	-88(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	leaq	-72(%rbp), %rdi
	call	dummy
	leaq	-64(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
	jmp	.L56
.L34:
	movl	$1, %r8d
	jmp	.L5
.L62:
	movq	-344(%rbp), %rdi
	call	dummy
	movq	-336(%rbp), %rdi
	call	dummy
	leaq	-128(%rbp), %rdi
	call	dummy
	leaq	-120(%rbp), %rdi
	call	dummy
	leaq	-112(%rbp), %rdi
	call	dummy
	leaq	-104(%rbp), %rdi
	call	dummy
	leaq	-96(%rbp), %rdi
	call	dummy
	leaq	-88(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	leaq	-72(%rbp), %rdi
	call	dummy
	leaq	-64(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
	cmpl	$3, -268(%rbp)
	jle	.L15
	leal	-3(%r12), %eax
	movl	%r12d, %ecx
	imull	%ebx, %ecx
	movl	%ecx, -272(%rbp)
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
	movq	$0, -336(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -336(%rbp)
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
	.align 8
.LC7:
	.long	795717946
	.long	1072287406
	.align 8
.LC8:
	.long	3996871656
	.long	1071323785
	.align 8
.LC9:
	.long	573532618
	.long	1071548497
	.align 8
.LC10:
	.long	2427405650
	.long	1070976887
	.align 8
.LC11:
	.long	4134520466
	.long	1071236561
	.align 8
.LC12:
	.long	2138163696
	.long	1071629599
	.align 8
.LC13:
	.long	3331388984
	.long	1070071369
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
