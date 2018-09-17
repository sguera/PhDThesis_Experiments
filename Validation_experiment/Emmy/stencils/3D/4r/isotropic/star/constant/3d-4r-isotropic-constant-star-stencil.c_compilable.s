	.file	"3d-4r-isotropic-constant-star-stencil.c_compilable.c"
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
	subq	$272, %rsp
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
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %r12
	imull	%ebx, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -104(%rbp)
	call	posix_memalign
	movq	-104(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -256(%rbp)
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
	movq	-256(%rbp), %rdx
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
	movq	-256(%rbp), %rdi
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
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	cmpl	$4, %r15d
	ja	.L61
	movq	$0, -248(%rbp)
	xorl	%eax, %eax
.L22:
	movq	-248(%rbp), %rcx
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
	movq	%rax, -88(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-4(%r13), %eax
	movl	%eax, -260(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$4, -260(%rbp)
	jle	.L56
	leal	-4(%rbx), %eax
	movl	%ebx, %ecx
	imull	%r12d, %ecx
	movl	%ecx, -264(%rbp)
	cmpl	$8, %r12d
	jle	.L56
.L31:
	cmpl	$4, %eax
	jle	.L15
	movl	$0, -212(%rbp)
	movl	-264(%rbp), %ecx
	movl	$4, -204(%rbp)
	leal	(%rcx,%rcx,2), %eax
	movl	%ecx, -220(%rbp)
	movl	%eax, -240(%rbp)
	leal	(%rcx,%rcx,4), %eax
	movl	%eax, -236(%rbp)
	leal	0(,%rcx,4), %eax
	movl	%eax, -232(%rbp)
	leal	(%rcx,%rcx), %eax
	movl	%eax, -228(%rbp)
	imull	$6, %ecx, %eax
	movl	%eax, -224(%rbp)
	imull	$7, %ecx, %eax
	movl	%eax, -216(%rbp)
	leal	0(,%rcx,8), %eax
	movl	%eax, -208(%rbp)
	movslq	%ebx, %rax
	movq	%rax, -312(%rbp)
	leaq	0(,%rax,8), %r10
	leal	0(,%rbx,4), %eax
	cltq
	movq	%rax, -200(%rbp)
	leal	(%rbx,%rbx,2), %eax
	cltq
	movq	%rax, -304(%rbp)
	leal	(%rbx,%rbx,4), %eax
	cltq
	movq	%rax, -296(%rbp)
	leal	(%rbx,%rbx), %eax
	cltq
	movq	%rax, -288(%rbp)
	imull	$6, %ebx, %eax
	cltq
	movq	%rax, -280(%rbp)
	imull	$7, %ebx, %eax
	cltq
	movq	%rax, -272(%rbp)
	leal	0(,%rbx,8), %eax
	cltq
	movq	%rax, -184(%rbp)
	leal	-4(%r12), %eax
	movl	%eax, -160(%rbp)
	leal	-9(%rbx), %eax
	addq	$5, %rax
	movq	%rax, -152(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movq	-200(%rbp), %rbx
	movl	$4, -156(%rbp)
	movslq	-240(%rbp), %rax
	movq	-256(%rbp), %rsi
	movslq	-232(%rbp), %rdx
	movq	-272(%rbp), %r9
	addl	$1, -204(%rbp)
	movq	%rax, -144(%rbp)
	addq	%rbx, %rax
	leaq	(%rsi,%rax,8), %rcx
	movslq	-236(%rbp), %rax
	leaq	(%rsi,%rdx,8), %r8
	addq	%rbx, %rax
	leaq	(%rsi,%rax,8), %rdi
	movq	%rdi, -168(%rbp)
	movq	-304(%rbp), %rdi
	leaq	(%rdx,%rdi), %rax
	movq	-296(%rbp), %rdi
	leaq	(%rsi,%rax,8), %r15
	leaq	(%rdi,%rdx), %rax
	leaq	(%rsi,%rax,8), %rdi
	movslq	-228(%rbp), %rax
	movq	%rdi, -136(%rbp)
	addq	%rbx, %rax
	leaq	(%rsi,%rax,8), %r14
	movslq	-224(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%rsi,%rax,8), %rdi
	movq	%rdi, -128(%rbp)
	movq	-288(%rbp), %rdi
	leaq	(%rdi,%rdx), %rax
	movq	-280(%rbp), %rdi
	leaq	(%rsi,%rax,8), %r13
	leaq	(%rdi,%rdx), %rax
	leaq	(%rsi,%rax,8), %rdi
	movslq	-220(%rbp), %rax
	movq	%rdi, -120(%rbp)
	movq	%rbx, %rdi
	addq	%rbx, %rax
	leaq	(%rsi,%rax,8), %r12
	movslq	-216(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%rsi,%rax,8), %rbx
	movq	%rbx, -112(%rbp)
	movq	-312(%rbp), %rbx
	leaq	(%rdx,%rbx), %rax
	leaq	(%rsi,%rax,8), %rbx
	leaq	(%r9,%rdx), %rax
	leaq	(%rsi,%rax,8), %r11
	movslq	-212(%rbp), %rax
	movq	%r11, -104(%rbp)
	addq	%rdi, %rax
	leaq	(%rsi,%rax,8), %r11
	movslq	-208(%rbp), %rax
	addq	%rdi, %rax
	movq	-184(%rbp), %rdi
	leaq	(%rsi,%rax,8), %r9
	leaq	(%rdi,%rdx), %rax
	leaq	(%rsi,%rax,8), %rdi
	movq	-200(%rbp), %rax
	movq	-248(%rbp), %rsi
	addq	%rdx, %rax
	subq	-144(%rbp), %rdx
	leaq	(%rsi,%rax,8), %rsi
	movq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, -192(%rbp)
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-192(%rbp), %rax
	movq	%r10, -176(%rbp)
	movq	-168(%rbp), %r10
	addl	$1, -156(%rbp)
	leaq	(%rax,%rcx), %rdx
	movl	$4, %eax
	movq	%r10, -144(%rbp)
	.p2align 4,,10
	.p2align 3
.L16:
	movq	-144(%rbp), %r10
	addq	$8, %rdx
	vmovsd	16(%rdx), %xmm3
	vaddsd	32(%rdx), %xmm3, %xmm2
	vmovsd	(%rcx,%rax,8), %xmm3
	vaddsd	(%r10,%rax,8), %xmm3, %xmm0
	movq	-136(%rbp), %r10
	vmovsd	(%rdx), %xmm1
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	(%r15,%rax,8), %xmm0
	vaddsd	48(%rdx), %xmm1, %xmm1
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	movq	-128(%rbp), %r10
	vaddsd	%xmm0, %xmm3, %xmm3
	vmulsd	-80(%rbp), %xmm3, %xmm2
	vmovsd	24(%rdx), %xmm3
	vmulsd	-88(%rbp), %xmm3, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	(%r14,%rax,8), %xmm0
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	movq	-120(%rbp), %r10
	vmovsd	8(%rdx), %xmm2
	vaddsd	40(%rdx), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm2
	vmovsd	0(%r13,%rax,8), %xmm0
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	movq	-112(%rbp), %r10
	vaddsd	%xmm0, %xmm2, %xmm2
	vmovsd	(%r12,%rax,8), %xmm0
	vmulsd	-72(%rbp), %xmm2, %xmm2
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	movq	-104(%rbp), %r10
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovsd	(%rbx,%rax,8), %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	-64(%rbp), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	-8(%rdx), %xmm2
	vaddsd	56(%rdx), %xmm2, %xmm3
	vmovsd	(%r11,%rax,8), %xmm2
	vaddsd	(%r9,%rax,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r8,%rax,8), %xmm0
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%rax,8)
	addq	$1, %rax
	cmpq	%rax, -152(%rbp)
	jne	.L16
	movq	-176(%rbp), %r10
	addq	-184(%rbp), %rsi
	addq	%r10, -168(%rbp)
	addq	%r10, -136(%rbp)
	addq	%r10, %rcx
	addq	%r10, %r15
	movl	-156(%rbp), %edx
	addq	%r10, -128(%rbp)
	addq	%r10, %r14
	addq	%r10, %r13
	addq	%r10, %r12
	addq	%r10, -120(%rbp)
	addq	%r10, %rbx
	addq	%r10, %r11
	addq	%r10, -112(%rbp)
	addq	%r10, %r9
	addq	%r10, %r8
	addq	%r10, -104(%rbp)
	addq	%r10, %rdi
	cmpl	%edx, -160(%rbp)
	jne	.L19
	movl	-264(%rbp), %eax
	movl	-260(%rbp), %edi
	addl	%eax, -240(%rbp)
	addl	%eax, -236(%rbp)
	addl	%eax, -232(%rbp)
	addl	%eax, -228(%rbp)
	addl	%eax, -224(%rbp)
	addl	%eax, -220(%rbp)
	addl	%eax, -216(%rbp)
	addl	%eax, -212(%rbp)
	addl	%eax, -208(%rbp)
	cmpl	%edi, -204(%rbp)
	jl	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L56
	movq	-256(%rbp), %rdi
	call	dummy
	movq	-248(%rbp), %rdi
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
.L56:
	addq	$272, %rsp
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
	movq	$0, -248(%rbp)
	xorl	%edx, %edx
.L9:
	movq	-248(%rbp), %rcx
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
	movq	%rcx, -248(%rbp)
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
	movq	-248(%rbp), %rax
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
	movq	-256(%rbp), %rdi
	call	dummy
	movq	-248(%rbp), %rdi
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
	cmpl	$4, -260(%rbp)
	jle	.L15
	leal	-4(%rbx), %eax
	movl	%ebx, %ecx
	imull	%r12d, %ecx
	movl	%ecx, -264(%rbp)
	cmpl	$8, %r12d
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
	movq	$0, -248(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
