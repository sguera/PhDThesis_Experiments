	.file	"3d-3r-heterogeneous-constant-star-stencil.c_compilable.c"
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
	subq	$368, %rsp
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
	movq	%rcx, -216(%rbp)
	call	posix_memalign
	movq	-216(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -416(%rbp)
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
	movq	-416(%rbp), %rdx
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
	movq	-416(%rbp), %rdi
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
	movq	$0, -408(%rbp)
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
	movq	%rcx, -408(%rbp)
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
	movq	-408(%rbp), %rax
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
	movq	-408(%rbp), %rcx
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
	movq	-408(%rbp), %rcx
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
	movq	%rax, -200(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -184(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	.LC9(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	.LC10(%rip), %rax
	movq	%rax, -152(%rbp)
	movq	.LC11(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	.LC12(%rip), %rax
	movq	%rax, -136(%rbp)
	movq	.LC13(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	.LC14(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	.LC15(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC16(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	.LC17(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.LC18(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	.LC19(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC20(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -72(%rbp)
	movq	.LC21(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC22(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-3(%r13), %eax
	movl	%eax, -340(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$3, -340(%rbp)
	jle	.L56
	leal	-3(%r12), %eax
	movl	%r12d, %ecx
	imull	%ebx, %ecx
	movl	%ecx, -344(%rbp)
	cmpl	$6, %ebx
	jle	.L56
.L31:
	cmpl	$3, %eax
	jle	.L15
	movl	$0, -316(%rbp)
	movl	-344(%rbp), %edi
	movq	-408(%rbp), %r11
	movl	$3, -308(%rbp)
	leal	(%rdi,%rdi,2), %eax
	movl	%edi, -324(%rbp)
	movl	%eax, -336(%rbp)
	leal	(%rdi,%rdi), %eax
	movl	%eax, -332(%rbp)
	leal	0(,%rdi,4), %eax
	movl	%eax, -328(%rbp)
	leal	(%rdi,%rdi,4), %eax
	movl	%eax, -320(%rbp)
	imull	$6, %edi, %eax
	movl	%eax, -312(%rbp)
	leal	(%r12,%r12), %eax
	cltq
	movq	%rax, -384(%rbp)
	leal	(%r12,%r12,2), %eax
	movslq	%eax, %rsi
	leal	0(,%r12,4), %eax
	movq	%rsi, -376(%rbp)
	cltq
	movq	%rax, -368(%rbp)
	leal	(%r12,%r12,4), %eax
	cltq
	movq	%rax, -360(%rbp)
	imull	$6, %r12d, %eax
	cltq
	movq	%rax, -352(%rbp)
	movslq	%r12d, %rax
	movq	%rax, -280(%rbp)
	salq	$3, %rax
	movq	%rax, -288(%rbp)
	leal	-7(%r12), %eax
	leaq	0(,%rax,8), %rdx
	imulq	$-8, %rax, %rcx
	subq	%rdx, %r11
	addq	%rsi, %rax
	movq	%r11, %rdx
	movq	-416(%rbp), %r11
	movq	%rax, -400(%rbp)
	leaq	8(%r11), %rax
	subq	$8, %rcx
	subq	%r11, %rdx
	movq	%rcx, -296(%rbp)
	leaq	16(%rdx), %rcx
	movq	%rax, -392(%rbp)
	leal	-3(%rbx), %eax
	movq	%rcx, -304(%rbp)
	movl	%eax, -240(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movslq	-336(%rbp), %rax
	movq	$0, -232(%rbp)
	movq	-400(%rbp), %rbx
	movl	$3, -236(%rbp)
	movslq	-332(%rbp), %r15
	movslq	-328(%rbp), %r14
	movslq	-324(%rbp), %r13
	leaq	(%rbx,%rax), %rdx
	movq	-392(%rbp), %rbx
	movslq	-320(%rbp), %r12
	subq	%rax, %r15
	movslq	-312(%rbp), %r11
	subq	%rax, %r14
	addl	$1, -308(%rbp)
	subq	%rax, %r13
	movq	-376(%rbp), %rcx
	leaq	(%rbx,%rdx,8), %rbx
	subq	%rax, %r12
	movq	%rbx, -216(%rbp)
	movq	-352(%rbp), %rbx
	subq	%rax, %r11
	movq	%rbx, -224(%rbp)
	movq	-360(%rbp), %rbx
	movq	%rbx, -248(%rbp)
	movq	-280(%rbp), %rbx
	movq	%rbx, -256(%rbp)
	movq	-368(%rbp), %rbx
	movq	%rbx, -264(%rbp)
	movq	-384(%rbp), %rbx
	movq	%rbx, -272(%rbp)
	movslq	-316(%rbp), %rbx
	subq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-216(%rbp), %rdi
	movq	-296(%rbp), %rax
	movq	-304(%rbp), %rdx
	movq	-272(%rbp), %r10
	movq	-264(%rbp), %r9
	addq	%rdi, %rax
	movq	-256(%rbp), %r8
	addl	$1, -236(%rbp)
	addq	%rdi, %rdx
	movq	-248(%rbp), %rdi
	subq	%rcx, %r10
	subq	%rcx, %r9
	subq	%rcx, %r8
	subq	%rcx, %rdi
	.p2align 4,,10
	.p2align 3
.L16:
	vmovsd	16(%rax), %xmm1
	addq	$8, %rdx
	vmovsd	24(%rax), %xmm2
	vmulsd	-192(%rbp), %xmm1, %xmm0
	vmulsd	-200(%rbp), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	32(%rax), %xmm2
	vmulsd	-184(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rax,%r15,8), %xmm1
	vmulsd	-176(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rax,%r14,8), %xmm2
	vmulsd	-168(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rax,%r10,8), %xmm1
	vmulsd	-160(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rax,%r9,8), %xmm2
	vmulsd	-152(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rax), %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	40(%rax), %xmm2
	vmulsd	-136(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rax,%r13,8), %xmm1
	vmulsd	-128(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rax,%r12,8), %xmm2
	vmulsd	-120(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rax,%r8,8), %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rax,%rdi,8), %xmm2
	vmulsd	-104(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rax), %xmm1
	vmulsd	-96(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	48(%rax), %xmm2
	vmulsd	-88(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rax,%rbx,8), %xmm1
	vmulsd	-80(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rax,%r11,8), %xmm2
	movq	-232(%rbp), %rsi
	vmulsd	-72(%rbp), %xmm2, %xmm0
	subq	%rcx, %rsi
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rax,%rsi,8), %xmm1
	movq	-224(%rbp), %rsi
	vmulsd	-64(%rbp), %xmm1, %xmm1
	subq	%rcx, %rsi
	vmovsd	24(%rax,%rsi,8), %xmm0
	addq	$8, %rax
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rdx)
	cmpq	%rax, -216(%rbp)
	jne	.L16
	movq	-280(%rbp), %rax
	movq	-288(%rbp), %rdx
	addq	%rax, -272(%rbp)
	addq	%rdx, -216(%rbp)
	addq	%rax, %rcx
	movl	-236(%rbp), %edx
	addq	%rax, -264(%rbp)
	addq	%rax, -256(%rbp)
	addq	%rax, -248(%rbp)
	addq	%rax, -232(%rbp)
	addq	%rax, -224(%rbp)
	cmpl	%edx, -240(%rbp)
	jne	.L19
	movl	-344(%rbp), %eax
	movl	-340(%rbp), %ebx
	addl	%eax, -336(%rbp)
	addl	%eax, -332(%rbp)
	addl	%eax, -328(%rbp)
	addl	%eax, -324(%rbp)
	addl	%eax, -320(%rbp)
	addl	%eax, -316(%rbp)
	addl	%eax, -312(%rbp)
	cmpl	%ebx, -308(%rbp)
	jl	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	jne	.L63
.L56:
	addq	$368, %rsp
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
	movq	-416(%rbp), %rdi
	call	dummy
	movq	-408(%rbp), %rdi
	call	dummy
	leaq	-200(%rbp), %rdi
	call	dummy
	leaq	-192(%rbp), %rdi
	call	dummy
	leaq	-184(%rbp), %rdi
	call	dummy
	leaq	-176(%rbp), %rdi
	call	dummy
	leaq	-168(%rbp), %rdi
	call	dummy
	leaq	-160(%rbp), %rdi
	call	dummy
	leaq	-152(%rbp), %rdi
	call	dummy
	leaq	-144(%rbp), %rdi
	call	dummy
	leaq	-136(%rbp), %rdi
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
	movq	-416(%rbp), %rdi
	call	dummy
	movq	-408(%rbp), %rdi
	call	dummy
	leaq	-200(%rbp), %rdi
	call	dummy
	leaq	-192(%rbp), %rdi
	call	dummy
	leaq	-184(%rbp), %rdi
	call	dummy
	leaq	-176(%rbp), %rdi
	call	dummy
	leaq	-168(%rbp), %rdi
	call	dummy
	leaq	-160(%rbp), %rdi
	call	dummy
	leaq	-152(%rbp), %rdi
	call	dummy
	leaq	-144(%rbp), %rdi
	call	dummy
	leaq	-136(%rbp), %rdi
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
	cmpl	$3, -340(%rbp)
	jle	.L15
	leal	-3(%r12), %eax
	movl	%r12d, %ecx
	imull	%ebx, %ecx
	movl	%ecx, -344(%rbp)
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
	movq	$0, -408(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)
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
	.align 8
.LC14:
	.long	2540146316
	.long	1071125291
	.align 8
.LC15:
	.long	1266472451
	.long	1071805505
	.align 8
.LC16:
	.long	885434441
	.long	1072556374
	.align 8
.LC17:
	.long	1628210007
	.long	1071884139
	.align 8
.LC18:
	.long	794595032
	.long	1069894271
	.align 8
.LC19:
	.long	1103930896
	.long	1071473412
	.align 8
.LC20:
	.long	983526584
	.long	1070457107
	.align 8
.LC21:
	.long	2537267904
	.long	1071858432
	.align 8
.LC22:
	.long	3351634399
	.long	1072608211
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
