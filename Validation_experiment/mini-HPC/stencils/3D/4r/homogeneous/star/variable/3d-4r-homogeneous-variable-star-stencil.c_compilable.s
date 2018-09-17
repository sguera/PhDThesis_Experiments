	.file	"3d-4r-homogeneous-variable-star-stencil.c_compilable.c"
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
	movq	%rax, %rbx
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r14
	movq	%rax, -72(%rbp)
	call	strtol
	movl	%r14d, %ecx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%ebx, %ecx
	movq	%rax, %r15
	imull	%eax, %ecx
	movslq	%ecx, %r12
	movq	%r12, %r14
	salq	$3, %r12
	movq	%r12, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	testl	%r14d, %r14d
	jle	.L3
	movq	%rcx, %rax
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
	vmovsd	%xmm0, (%rcx)
	cmpl	$1, %eax
	je	.L45
	vmovsd	%xmm0, 8(%rcx)
	cmpl	$3, %eax
	jne	.L46
	vmovsd	%xmm0, 16(%rcx)
	movl	$3, %r8d
.L5:
	movl	%r14d, %edi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%rcx,%rax,8), %rdx
	subl	%eax, %edi
	xorl	%eax, %eax
	movl	%edi, %esi
	shrl	$2, %esi
	.p2align 4,,10
	.p2align 3
.L7:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%eax, %esi
	ja	.L7
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%r8), %eax
	cmpl	%edi, %edx
	je	.L78
	vzeroupper
	movq	-248(%rbp), %rsi
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
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L79
.L32:
	movq	$0, -56(%rbp)
	movq	$0, -240(%rbp)
	testl	%r14d, %r14d
	jle	.L10
	movq	-240(%rbp), %rcx
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
	cmpl	%eax, %r8d
	ja	.L14
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rsi), %eax
	cmpl	%edi, %edx
	je	.L80
	vzeroupper
	movq	-240(%rbp), %rsi
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L15:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L81
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %r8d
	movl	$5, %edi
	cmovg	%r14d, %r8d
	movq	%rsi, -232(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
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
	movq	-232(%rbp), %rax
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
	movq	-232(%rbp), %rsi
	vmovapd	.LC5(%rip), %ymm0
	movl	%r8d, %edi
	leaq	(%rsi,%rdx,8), %rsi
	shrl	$2, %edi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L20:
	addl	$1, %edx
	vmovapd	%ymm0, (%rsi)
	addq	$32, %rsi
	cmpl	%edx, %edi
	ja	.L20
	movl	%r8d, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%r8d, %edx
	je	.L82
	vzeroupper
.L36:
	vmovsd	.LC4(%rip), %xmm0
	movq	-232(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L17:
	movl	-72(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$4, %eax
	movl	%eax, -224(%rbp)
	testl	%edx, %edx
	jne	.L83
	cmpl	$4, -224(%rbp)
	jle	.L75
	movl	%r15d, %esi
	movl	%r15d, -252(%rbp)
	leal	-4(%r15), %eax
	imull	%ebx, %esi
	movl	%esi, -256(%rbp)
	cmpl	$8, %ebx
	jle	.L75
.L42:
	cmpl	$4, %eax
	jle	.L24
	movl	-252(%rbp), %eax
	movl	-256(%rbp), %esi
	movl	$0, -188(%rbp)
	movl	$4, -180(%rbp)
	sall	$2, %eax
	movl	%esi, -196(%rbp)
	movl	%eax, -220(%rbp)
	leal	(%rsi,%rsi,2), %eax
	movl	%eax, -216(%rbp)
	leal	(%rsi,%rsi,4), %eax
	movl	%eax, -212(%rbp)
	leal	0(,%rsi,4), %eax
	movl	%eax, -208(%rbp)
	leal	(%rsi,%rsi), %eax
	movl	%eax, -204(%rbp)
	imull	$6, %esi, %eax
	movl	%eax, -200(%rbp)
	imull	$7, %esi, %eax
	movl	%eax, -192(%rbp)
	leal	0(,%rsi,8), %eax
	movl	%eax, -184(%rbp)
	movslq	%r15d, %rax
	movq	%rax, -304(%rbp)
	leaq	0(,%rax,8), %rdi
	leal	0(,%r15,4), %eax
	cltq
	movq	%rax, -176(%rbp)
	leal	(%r15,%r15,2), %eax
	cltq
	movq	%rax, -296(%rbp)
	leal	(%r15,%r15,4), %eax
	cltq
	movq	%rax, -288(%rbp)
	leal	(%r15,%r15), %eax
	cltq
	movq	%rax, -280(%rbp)
	imull	$6, %r15d, %eax
	cltq
	movq	%rax, -272(%rbp)
	imull	$7, %r15d, %eax
	cltq
	movq	%rax, -264(%rbp)
	leal	0(,%r15,8), %eax
	cltq
	movq	%rax, -152(%rbp)
	movq	-232(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -320(%rbp)
	leal	-9(%rbx), %eax
	movq	%rax, -312(%rbp)
	leal	-9(%r15), %eax
	addq	$5, %rax
	movq	%rax, -128(%rbp)
	.p2align 4,,10
	.p2align 3
.L27:
	movslq	-220(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	-176(%rbp), %r8
	movq	-248(%rbp), %r9
	leaq	32(%rcx,%rax,8), %rsi
	movslq	-216(%rbp), %rcx
	movq	%rax, -160(%rbp)
	movq	-296(%rbp), %r11
	addl	$1, -180(%rbp)
	movq	%rcx, %rbx
	movq	%rcx, -144(%rbp)
	addq	%r8, %rbx
	movq	%rbx, %rax
	leaq	(%r9,%rax,8), %rcx
	movslq	-212(%rbp), %rax
	addq	%r8, %rax
	leaq	(%r9,%rax,8), %rdx
	movq	%rdx, -136(%rbp)
	movslq	-208(%rbp), %rdx
	leaq	(%rdx,%r11), %rax
	leaq	(%r9,%rax,8), %r11
	movq	%r11, -112(%rbp)
	movq	-288(%rbp), %r11
	leaq	(%r11,%rdx), %rax
	leaq	(%r9,%rax,8), %r14
	movslq	-204(%rbp), %rax
	movq	%r14, -104(%rbp)
	addq	%r8, %rax
	leaq	(%r9,%rax,8), %r14
	movslq	-200(%rbp), %rax
	movq	%r14, -96(%rbp)
	movq	-280(%rbp), %r14
	addq	%r8, %rax
	leaq	(%r9,%rax,8), %r15
	leaq	(%r14,%rdx), %rax
	movq	-272(%rbp), %r14
	leaq	(%r9,%rax,8), %r11
	leaq	(%r14,%rdx), %rax
	movq	%r11, -88(%rbp)
	movq	-304(%rbp), %r11
	leaq	(%r9,%rax,8), %r14
	movslq	-196(%rbp), %rax
	addq	%r8, %rax
	leaq	(%r9,%rax,8), %r13
	movslq	-192(%rbp), %rax
	addq	%r8, %rax
	leaq	(%r9,%rax,8), %r12
	leaq	(%rdx,%r11), %rax
	movq	-264(%rbp), %r11
	leaq	(%r9,%rax,8), %rbx
	leaq	(%r11,%rdx), %rax
	leaq	(%r9,%rax,8), %r11
	movslq	-188(%rbp), %rax
	addq	%r8, %rax
	leaq	(%r9,%rax,8), %r10
	movslq	-184(%rbp), %rax
	addq	%r8, %rax
	movq	%r9, %r8
	leaq	(%r9,%rax,8), %r9
	leaq	(%r8,%rdx,8), %rax
	movq	%rax, -120(%rbp)
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	leaq	(%r8,%rax,8), %rax
	movq	-176(%rbp), %r8
	movq	%rax, -80(%rbp)
	leaq	(%rdx,%r8), %rax
	movq	-240(%rbp), %r8
	leaq	(%r8,%rax,8), %r8
	movq	-160(%rbp), %rax
	addq	-312(%rbp), %rax
	movq	%r8, -72(%rbp)
	movq	-320(%rbp), %r8
	leaq	(%r8,%rax,8), %rax
	movq	-120(%rbp), %r8
	movq	%rax, -168(%rbp)
	movq	%rdx, %rax
	subq	-144(%rbp), %rax
	salq	$3, %rax
	movq	%rax, -160(%rbp)
	movq	%rsi, %rax
	movq	%r15, %rsi
	movq	%rax, %r15
	.p2align 4,,10
	.p2align 3
.L28:
	movq	%rdi, -144(%rbp)
	movq	-136(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rdi, -120(%rbp)
	leaq	(%rax,%rcx), %rdx
	movl	$4, %eax
	.p2align 4,,10
	.p2align 3
.L25:
	movq	-120(%rbp), %rdi
	vmovsd	32(%rdx), %xmm0
	addq	$8, %rdx
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	(%rcx,%rax,8), %xmm0, %xmm0
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	movq	-112(%rbp), %rdi
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	movq	-104(%rbp), %rdi
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	movq	-96(%rbp), %rdi
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	movq	-88(%rbp), %rdi
	vaddsd	(%rsi,%rax,8), %xmm0, %xmm0
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	movq	-80(%rbp), %rdi
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	48(%rdx), %xmm0, %xmm0
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	vaddsd	(%r11,%rax,8), %xmm0, %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	56(%rdx), %xmm0, %xmm0
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	vaddsd	(%r9,%rax,8), %xmm0, %xmm0
	vaddsd	(%r8,%rax,8), %xmm0, %xmm0
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	vmulsd	(%r15,%rax,8), %xmm0, %xmm0
	movq	-72(%rbp), %rdi
	vmovsd	%xmm0, (%rdi,%rax,8)
	addq	$1, %rax
	cmpq	%rax, -128(%rbp)
	jne	.L25
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rdx
	addq	$8, %r15
	addq	%rdi, -136(%rbp)
	addq	%rdi, %rcx
	addq	%rdi, -112(%rbp)
	addq	%rdi, %rsi
	addq	%rdi, %r14
	addq	%rdi, -104(%rbp)
	addq	%rdi, %r13
	addq	%rdi, %r12
	addq	%rdi, %rbx
	addq	%rdi, -96(%rbp)
	addq	%rdi, %r11
	addq	%rdi, %r10
	addq	%rdi, %r9
	addq	%rdi, -88(%rbp)
	addq	%rdi, %r8
	addq	%rdi, -80(%rbp)
	addq	%rdx, -72(%rbp)
	cmpq	%r15, -168(%rbp)
	jne	.L28
	movl	-256(%rbp), %eax
	movl	-252(%rbp), %ecx
	addl	%eax, -216(%rbp)
	movl	-224(%rbp), %esi
	addl	%ecx, -220(%rbp)
	addl	%eax, -212(%rbp)
	addl	%eax, -208(%rbp)
	addl	%eax, -204(%rbp)
	addl	%eax, -200(%rbp)
	addl	%eax, -196(%rbp)
	addl	%eax, -192(%rbp)
	addl	%eax, -188(%rbp)
	addl	%eax, -184(%rbp)
	cmpl	%esi, -180(%rbp)
	jl	.L27
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L75
	movq	-248(%rbp), %rdi
	call	dummy
	movq	-240(%rbp), %rdi
	call	dummy
	movq	-232(%rbp), %rdi
	call	dummy
.L75:
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
.L79:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	%rax, %rcx
	jmp	.L31
.L45:
	movl	$1, %r8d
	jmp	.L5
.L81:
	testl	%r14d, %r14d
	jle	.L84
	movq	$0, -232(%rbp)
	movl	%r14d, %r8d
	cmpl	$4, %r13d
	jbe	.L53
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L83:
	movq	-248(%rbp), %rdi
	call	dummy
	movq	-240(%rbp), %rdi
	call	dummy
	movq	-232(%rbp), %rdi
	call	dummy
	cmpl	$4, -224(%rbp)
	jle	.L24
	movl	%r15d, %esi
	movl	%r15d, -252(%rbp)
	leal	-4(%r15), %eax
	imull	%ebx, %esi
	movl	%esi, -256(%rbp)
	cmpl	$8, %ebx
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
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L32
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)
.L10:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -232(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)
	jmp	.L17
.L53:
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
	movq	%rcx, %rsi
	jmp	.L11
.L43:
	xorl	%eax, %eax
	movq	%rcx, %rsi
	jmp	.L4
.L84:
	movq	$0, -232(%rbp)
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
