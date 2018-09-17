	.file	"2d-4r-point-symmetric-variable-box-stencil.c_compilable.c"
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
	subq	$144, %rsp
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	movl	%ebx, %r13d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r13d
	movq	%rax, %r12
	movslq	%r13d, %r14
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rsi
	movq	%rsi, -176(%rbp)
	testl	%r13d, %r13d
	jle	.L3
	leal	-1(%r13), %r15d
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
	movq	-176(%rbp), %rdx
	movl	%r13d, %esi
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
	movq	-176(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC0(%rip), %xmm0
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
	je	.L74
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %r15d
	cmovg	%r13d, %edi
	cmpl	$4, %r15d
	ja	.L75
	movq	$0, -168(%rbp)
	xorl	%eax, %eax
.L28:
	movq	-168(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L32
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L32
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L32:
	leal	0(%r13,%r13,4), %eax
	movl	$32, %esi
	leal	0(%r13,%rax,8), %r13d
	leaq	-56(%rbp), %rdi
	movslq	%r13d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %rsi
	movq	%rsi, -184(%rbp)
	testl	%r13d, %r13d
	jle	.L14
	movq	%rsi, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	leal	-1(%r13), %ecx
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
	movq	-184(%rbp), %rdx
	movl	%r13d, %esi
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
	movq	-184(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%r13d, %edx
	jge	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-4(%r12), %eax
	movl	%eax, -72(%rbp)
	testl	%edx, %edx
	jne	.L77
	cmpl	$4, -72(%rbp)
	jle	.L70
.L21:
	leal	0(,%rbx,4), %edi
	leal	(%rdi,%rbx), %ecx
	leal	(%rbx,%rcx,8), %edx
	cmpl	$8, %ebx
	jle	.L22
	movq	-176(%rbp), %r13
	movslq	%ebx, %rax
	movslq	%edi, %rdi
	movslq	%ecx, %rcx
	leaq	0(,%rax,8), %rsi
	movq	-184(%rbp), %r14
	subq	%rax, %rcx
	movl	$4, -68(%rbp)
	movq	%rsi, -144(%rbp)
	salq	$3, %rcx
	movq	%rcx, -112(%rbp)
	addq	%rsi, %r13
	movq	-168(%rbp), %rsi
	leaq	32(%rsi,%rdi,8), %r15
	movslq	%edx, %rsi
	subq	%rax, %rdi
	salq	$3, %rsi
	sall	$2, %edx
	movq	%rsi, -136(%rbp)
	leal	-9(%rbx), %esi
	salq	$3, %rdi
	movslq	%edx, %rdx
	leaq	(%rsi,%rsi,4), %r8
	movq	%rdi, -128(%rbp)
	leaq	(%rsi,%r8,8), %r8
	leal	(%rbx,%rbx), %edi
	addq	%r8, %rdx
	leaq	328(%r14,%rdx,8), %r14
	leal	(%rdi,%rbx), %edx
	movslq	%edi, %rdi
	imulq	$-328, %rsi, %rsi
	movslq	%edx, %r8
	addl	%edx, %edx
	subq	%rax, %rdi
	movslq	%edx, %rdx
	subq	%rax, %r8
	leaq	0(,%r8,8), %r9
	subq	%rax, %rdx
	salq	$3, %rdi
	movq	%rdi, -104(%rbp)
	leaq	0(,%rdx,8), %rdi
	leal	0(,%rbx,8), %edx
	movq	%r9, -120(%rbp)
	movl	%edx, %ecx
	movslq	%edx, %rdx
	movq	%rdi, -96(%rbp)
	subl	%ebx, %ecx
	subq	%rax, %rdx
	movslq	%ecx, %rcx
	subq	%rax, %rcx
	leaq	0(,%rcx,8), %rbx
	movq	%rax, %rcx
	leaq	0(,%rdx,8), %rax
	negq	%rcx
	movq	%rbx, -88(%rbp)
	movq	%rax, -80(%rbp)
	leaq	0(,%rcx,8), %rbx
	leaq	-328(%rsi), %rax
	movq	%rbx, -152(%rbp)
	movq	%rax, -160(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-120(%rbp), %rsi
	movq	%r15, %r12
	movq	%r13, %rdx
	movq	-96(%rbp), %rcx
	movq	-104(%rbp), %rdi
	movq	-160(%rbp), %rax
	leaq	(%rsi,%r13), %r11
	movq	-112(%rbp), %rsi
	leaq	(%rcx,%r13), %r8
	movq	-152(%rbp), %rcx
	movq	-128(%rbp), %rbx
	leaq	(%rdi,%r13), %r9
	addl	$1, -68(%rbp)
	addq	%r14, %rax
	leaq	(%rsi,%r13), %r10
	movq	-88(%rbp), %rsi
	addq	%r13, %rbx
	leaq	(%rsi,%r13), %rdi
	leaq	(%rcx,%r13), %rsi
	movq	-80(%rbp), %rcx
	addq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L23:
	vmovsd	1312(%rax), %xmm0
	addq	$328, %rax
	addq	$8, %rbx
	addq	$8, %r11
	vmulsd	24(%rbx), %xmm0, %xmm1
	addq	$8, %r10
	addq	$8, %r9
	vmovsd	16(%rbx), %xmm3
	addq	$8, %r8
	addq	$8, %rdx
	addq	$8, %rdi
	vaddsd	32(%rbx), %xmm3, %xmm3
	addq	$8, %rsi
	addq	$8, %rcx
	vmulsd	992(%rax), %xmm3, %xmm3
	addq	$8, %r12
	vmovsd	8(%rbx), %xmm2
	vaddsd	40(%rbx), %xmm2, %xmm2
	vmulsd	1008(%rax), %xmm2, %xmm2
	vmovsd	16(%r10), %xmm4
	vaddsd	%xmm1, %xmm3, %xmm0
	vmovsd	24(%r11), %xmm3
	vaddsd	24(%r10), %xmm3, %xmm3
	vmulsd	1000(%rax), %xmm3, %xmm3
	vmovsd	16(%r11), %xmm1
	vaddsd	32(%r10), %xmm1, %xmm1
	vmulsd	1016(%rax), %xmm1, %xmm1
	vaddsd	32(%r11), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	1024(%rax), %xmm4, %xmm4
	vmovsd	24(%r9), %xmm0
	vaddsd	24(%r8), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	1032(%rax), %xmm0, %xmm0
	vmovsd	(%rbx), %xmm3
	vaddsd	48(%rbx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	1040(%rax), %xmm3, %xmm3
	vmovsd	8(%r11), %xmm2
	vaddsd	40(%r10), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	1048(%rax), %xmm2, %xmm2
	vmovsd	8(%r10), %xmm1
	vaddsd	40(%r11), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	1056(%rax), %xmm1, %xmm1
	vmovsd	16(%r9), %xmm4
	vaddsd	32(%r8), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	1064(%rax), %xmm4, %xmm4
	vmovsd	16(%r8), %xmm0
	vaddsd	32(%r9), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	1072(%rax), %xmm0, %xmm0
	vmovsd	24(%rdx), %xmm3
	vaddsd	24(%rdi), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	1080(%rax), %xmm3, %xmm3
	vmovsd	-8(%rbx), %xmm2
	vaddsd	56(%rbx), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	1088(%rax), %xmm2, %xmm2
	vmovsd	(%r11), %xmm1
	vaddsd	48(%r10), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	1096(%rax), %xmm1, %xmm1
	vmovsd	(%r10), %xmm4
	vaddsd	48(%r11), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	1104(%rax), %xmm4, %xmm4
	vmovsd	8(%r9), %xmm0
	vaddsd	40(%r8), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	1112(%rax), %xmm0, %xmm0
	vmovsd	8(%r8), %xmm3
	vaddsd	40(%r9), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	1120(%rax), %xmm3, %xmm3
	vmovsd	16(%rdx), %xmm2
	vaddsd	32(%rdi), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	1128(%rax), %xmm2, %xmm2
	vmovsd	16(%rdi), %xmm1
	vaddsd	32(%rdx), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	1136(%rax), %xmm1, %xmm1
	vmovsd	24(%rsi), %xmm4
	vaddsd	24(%rcx), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	1144(%rax), %xmm4, %xmm4
	vmovsd	-8(%r11), %xmm0
	vaddsd	56(%r10), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	1152(%rax), %xmm0, %xmm0
	vmovsd	-8(%r10), %xmm3
	vaddsd	56(%r11), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	1160(%rax), %xmm3, %xmm3
	vmovsd	(%r9), %xmm2
	vaddsd	48(%r8), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	1168(%rax), %xmm2, %xmm2
	vmovsd	(%r8), %xmm1
	vaddsd	48(%r9), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	1176(%rax), %xmm1, %xmm1
	vmovsd	8(%rdx), %xmm4
	vaddsd	40(%rdi), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	1184(%rax), %xmm4, %xmm4
	vmovsd	8(%rdi), %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	1192(%rax), %xmm0, %xmm0
	vmovsd	16(%rsi), %xmm3
	vaddsd	32(%rcx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	1200(%rax), %xmm3, %xmm3
	vmovsd	16(%rcx), %xmm2
	vaddsd	32(%rsi), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	1208(%rax), %xmm2, %xmm2
	vmovsd	-8(%r9), %xmm1
	vaddsd	56(%r8), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	1216(%rax), %xmm1, %xmm1
	vmovsd	-8(%r8), %xmm4
	vaddsd	56(%r9), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	1224(%rax), %xmm4, %xmm4
	vmovsd	(%rdx), %xmm0
	vaddsd	48(%rdi), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	1232(%rax), %xmm0, %xmm0
	vmovsd	(%rdi), %xmm3
	vaddsd	48(%rdx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	1240(%rax), %xmm3, %xmm3
	vmovsd	8(%rsi), %xmm2
	vaddsd	40(%rcx), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	1248(%rax), %xmm2, %xmm2
	vmovsd	8(%rcx), %xmm1
	vaddsd	40(%rsi), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	1256(%rax), %xmm1, %xmm1
	vmovsd	-8(%rdx), %xmm4
	vaddsd	56(%rdi), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	1264(%rax), %xmm4, %xmm4
	vmovsd	-8(%rdi), %xmm0
	vaddsd	56(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	1272(%rax), %xmm0, %xmm0
	vmovsd	(%rsi), %xmm3
	vaddsd	48(%rcx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	1280(%rax), %xmm3, %xmm3
	vmovsd	(%rcx), %xmm2
	vaddsd	48(%rsi), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	1288(%rax), %xmm2, %xmm2
	vmovsd	-8(%rsi), %xmm1
	vaddsd	56(%rcx), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	1296(%rax), %xmm1, %xmm1
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	-8(%rcx), %xmm0
	vaddsd	56(%rsi), %xmm0, %xmm0
	vmulsd	1304(%rax), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%r12)
	cmpq	%rax, %r14
	jne	.L23
	movq	-144(%rbp), %rax
	addq	-136(%rbp), %r14
	movl	-68(%rbp), %ebx
	addq	%rax, %r13
	addq	%rax, %r15
	cmpl	%ebx, -72(%rbp)
	jg	.L24
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L70
	movq	-176(%rbp), %rdi
	call	dummy
	movq	-168(%rbp), %rdi
	call	dummy
	movq	-184(%rbp), %rdi
	call	dummy
.L70:
	addq	$144, %rsp
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
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rcx, -168(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %ecx
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	testl	%r13d, %r13d
	cmovle	%eax, %r15d
	cmpl	%r15d, %ecx
	ja	.L28
	testl	%edx, %edx
	je	.L9
	movq	-168(%rbp), %rax
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
	movq	-168(%rbp), %rcx
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
	movq	-176(%rbp), %rdi
	call	dummy
	movq	-168(%rbp), %rdi
	call	dummy
	movq	-184(%rbp), %rdi
	call	dummy
	cmpl	$4, -72(%rbp)
	jg	.L21
	jmp	.L22
.L38:
	movl	$1, %edi
	jmp	.L5
.L75:
	movq	$0, -168(%rbp)
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
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -168(%rbp)
	testl	%eax, %eax
	jne	.L32
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
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
