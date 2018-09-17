	.file	"2d-1r-isotropic-variable-star-stencil.c_compilable.c"
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movl	$10, %edx
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, %rbx
	subq	$224, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	movl	%r12d, %r13d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r13d
	movq	%rax, %rbx
	movslq	%r13d, %r14
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r15
	testl	%r13d, %r13d
	jle	.L3
	leal	-1(%r13), %r8d
	movq	%r15, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r8d
	jb	.L42
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L44
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L45
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %edi
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r15,%rax,8), %rdx
	movl	%r13d, %esi
	subl	%eax, %esi
	xorl	%eax, %eax
	movl	%esi, %ecx
	shrl	$2, %ecx
	.p2align 4,,10
	.p2align 3
.L7:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%eax, %ecx
	ja	.L7
	movl	%esi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rdi), %eax
	cmpl	%edx, %esi
	je	.L85
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r15,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
.L8:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	movl	%r8d, -68(%rbp)
	call	posix_memalign
	movl	-68(%rbp), %r8d
	testl	%eax, %eax
	je	.L86
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovg	%r8d, %eax
	cmovg	%r13d, %edi
	cmpl	$4, %eax
	ja	.L87
	movq	$0, -104(%rbp)
	xorl	%eax, %eax
.L34:
	movq	-104(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L38
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L38
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L38
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L38
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L38
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L38:
	leaq	-56(%rbp), %rdi
	addl	%r13d, %r13d
	movl	$32, %esi
	movslq	%r13d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r14
	movq	%r14, -112(%rbp)
	testl	%r13d, %r13d
	jle	.L14
	leal	-1(%r13), %ecx
	movq	%r14, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %ecx
	jb	.L48
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L16
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%r14)
	cmpl	$1, %eax
	je	.L50
	vmovsd	%xmm0, 8(%r14)
	cmpl	$3, %eax
	jne	.L51
	vmovsd	%xmm0, 16(%r14)
	movl	$3, %edi
.L16:
	movq	-112(%rbp), %rdx
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
	cmpl	%eax, %ecx
	ja	.L18
	movl	%esi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rdi), %eax
	cmpl	%edx, %esi
	je	.L14
.L15:
	movq	-112(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-1(%r12), %eax
	movl	%eax, -144(%rbp)
	testl	%edx, %edx
	jne	.L88
	cmpl	$1, -144(%rbp)
	jle	.L89
.L21:
	leal	-1(%rbx), %eax
	movl	%ebx, -160(%rbp)
	leal	(%rbx,%rbx), %r14d
	movl	%eax, -156(%rbp)
	movl	%r14d, -124(%rbp)
	cmpl	$1, %eax
	jle	.L81
	movq	-104(%rbp), %rsi
	leal	-3(%rbx), %r8d
	movslq	%ebx, %rax
	movl	%ebx, -72(%rbp)
	leaq	0(,%rax,8), %r9
	movq	-112(%rbp), %r13
	movslq	%r14d, %rax
	movl	%r14d, -92(%rbp)
	leaq	0(,%rax,8), %r10
	movq	%r9, -88(%rbp)
	movq	%r15, %r14
	movq	%r9, %r12
	leaq	(%r15,%r9), %rax
	movq	%r10, -168(%rbp)
	leaq	8(%rsi,%r9), %rdx
	movl	%r8d, -212(%rbp)
	leaq	40(%rsi,%r9), %rsi
	addq	%r10, %r13
	movl	$1, -128(%rbp)
	movq	%rsi, -136(%rbp)
	leal	-2(%rbx), %esi
	movl	%esi, -140(%rbp)
	leaq	(%rax,%r9), %r11
	movq	%rsi, %rdi
	movq	%rsi, %rcx
	salq	$3, %rsi
	salq	$4, %rcx
	movq	%rsi, -176(%rbp)
	leaq	16(%rcx), %rbx
	movl	%edi, %esi
	andl	$-4, %edi
	shrl	$2, %esi
	movq	%rbx, -192(%rbp)
	movl	%esi, -68(%rbp)
	leal	1(%rdi), %esi
	leaq	48(%r15), %rbx
	movl	%esi, -244(%rbp)
	movl	%r8d, %esi
	leaq	8(,%rsi,8), %rsi
	movq	%rbx, -184(%rbp)
	leaq	8(%r15), %rbx
	movq	%rsi, -256(%rbp)
	movq	%rbx, -224(%rbp)
	leaq	8(%r10), %rsi
	leaq	16(%r15), %rbx
	movl	%edi, -216(%rbp)
	movq	%rbx, -232(%rbp)
	movq	%r11, %rbx
	movq	%rsi, -200(%rbp)
	movq	%rsi, -240(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movl	-72(%rbp), %edi
	leaq	8(%r14), %r8
	movl	-124(%rbp), %esi
	addl	$1, -128(%rbp)
	movq	-136(%rbp), %r10
	movl	%edi, -80(%rbp)
	subl	-160(%rbp), %edi
	addl	%edi, %esi
	movl	%edi, -96(%rbp)
	movq	-192(%rbp), %rdi
	movl	%esi, -72(%rbp)
	leaq	16(%r13), %rsi
	leaq	(%rdi,%r13), %rcx
	movq	-176(%rbp), %rdi
	cmpq	%rcx, %rdx
	setnb	%r9b
	leaq	(%rdx,%rdi), %rcx
	cmpq	%rcx, %rsi
	setnb	%cl
	orl	%ecx, %r9d
	leaq	40(%r14), %rcx
	cmpq	%rcx, %rdx
	setnb	%cl
	cmpq	%r8, %r10
	setbe	%dil
	orl	%ecx, %edi
	cmpl	$3, -140(%rbp)
	seta	%cl
	andl	%edi, %ecx
	movq	-184(%rbp), %rdi
	addq	-88(%rbp), %rdi
	andl	%r9d, %ecx
	cmpq	%rdi, %rdx
	setnb	%dil
	cmpq	%r10, %rax
	setnb	%r9b
	orl	%r9d, %edi
	testb	%dil, %cl
	je	.L54
	movq	-200(%rbp), %rdi
	leaq	(%rdi,%r14), %rcx
	cmpq	%rcx, %r10
	leaq	40(%rbx), %rcx
	setbe	%dil
	cmpq	%rcx, %rdx
	setnb	%cl
	orb	%cl, %dil
	je	.L54
	cmpl	$2, -212(%rbp)
	jbe	.L52
	movq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-224(%rbp), %r11
	movq	-232(%rbp), %r10
	addq	%rdi, %r11
	addq	%rdi, %r10
	movq	-240(%rbp), %rdi
	leaq	(%rdi,%r14), %r9
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L24:
	vmovupd	(%r10,%rcx), %xmm2
	vinsertf128	$0x1, 16(%r10,%rcx), %ymm2, %ymm0
	addl	$1, %edi
	vmovupd	(%rax,%rcx), %xmm4
	vinsertf128	$0x1, 16(%rax,%rcx), %ymm4, %ymm4
	vaddpd	%ymm0, %ymm4, %ymm2
	vmovupd	(%r8,%rcx), %xmm4
	vinsertf128	$0x1, 16(%r8,%rcx), %ymm4, %ymm4
	vmovupd	(%r9,%rcx), %xmm0
	vinsertf128	$0x1, 16(%r9,%rcx), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm4, %ymm0
	vmovupd	(%rsi,%rcx,2), %xmm1
	vinsertf128	$0x1, 16(%rsi,%rcx,2), %ymm1, %ymm3
	vmovupd	32(%rsi,%rcx,2), %xmm1
	vinsertf128	$0x1, 48(%rsi,%rcx,2), %ymm1, %ymm1
	vaddpd	%ymm0, %ymm2, %ymm4
	vinsertf128	$1, %xmm1, %ymm3, %ymm2
	vperm2f128	$49, %ymm1, %ymm3, %ymm1
	vunpckhpd	%ymm1, %ymm2, %ymm0
	vunpcklpd	%ymm1, %ymm2, %ymm1
	vmulpd	%ymm0, %ymm4, %ymm3
	vmovupd	(%r11,%rcx), %xmm4
	vinsertf128	$0x1, 16(%r11,%rcx), %ymm4, %ymm4
	vmulpd	%ymm4, %ymm1, %ymm1
	vaddpd	%ymm1, %ymm3, %ymm0
	vmovups	%xmm0, (%rdx,%rcx)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rcx)
	addq	$32, %rcx
	cmpl	%edi, -68(%rbp)
	ja	.L24
	movl	-216(%rbp), %edi
	cmpl	%edi, -140(%rbp)
	je	.L27
	movl	-244(%rbp), %esi
.L23:
	movl	-80(%rbp), %r8d
	leal	(%rsi,%rsi), %edi
	leal	(%r8,%rsi), %r9d
	movslq	%r9d, %rcx
	movl	%r8d, %r9d
	movq	%rcx, -120(%rbp)
	leal	1(%rsi), %ecx
	leal	(%rcx,%r8), %r10d
	movslq	%r10d, %r10
	leaq	(%r15,%r10,8), %r8
	movq	%r8, -80(%rbp)
	movl	-96(%rbp), %r8d
	movl	%r9d, -80(%rbp)
	leal	(%rsi,%r8), %r11d
	movl	-72(%rbp), %r8d
	movslq	%r11d, %r11
	vmovsd	(%r15,%r11,8), %xmm2
	leaq	(%r15,%r10,8), %r11
	addl	%esi, %r8d
	movslq	%r8d, %r8
	vaddsd	(%r15,%r8,8), %xmm2, %xmm2
	leal	-1(%r9,%rsi), %r8d
	movslq	%r8d, %r8
	movq	-112(%rbp), %r9
	vmovsd	(%r15,%r8,8), %xmm0
	vaddsd	(%r11), %xmm0, %xmm0
	movl	-92(%rbp), %r11d
	vaddsd	%xmm0, %xmm2, %xmm0
	leal	1(%rdi,%r11), %r8d
	addl	%r11d, %edi
	movslq	%r8d, %r8
	movslq	%edi, %rdi
	vmulsd	(%r9,%r8,8), %xmm0, %xmm1
	movq	-120(%rbp), %r8
	vmovsd	(%r9,%rdi,8), %xmm0
	movq	-104(%rbp), %rdi
	vmulsd	(%r15,%r8,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi,%r8,8)
	cmpl	-156(%rbp), %ecx
	jge	.L27
	movl	-80(%rbp), %r9d
	leal	2(%rsi), %edi
	leal	(%rcx,%rcx), %r8d
	leal	(%r9,%rdi), %r11d
	movslq	%r11d, %r11
	leaq	(%r15,%r11,8), %r9
	movq	%r11, -208(%rbp)
	movl	-96(%rbp), %r11d
	movq	%r9, -152(%rbp)
	addl	%ecx, %r11d
	addl	-72(%rbp), %ecx
	movslq	%r11d, %r11
	vmovsd	(%r15,%r11,8), %xmm2
	movl	-92(%rbp), %r11d
	movslq	%ecx, %rcx
	vaddsd	(%r15,%rcx,8), %xmm2, %xmm2
	movq	-120(%rbp), %rcx
	vmovsd	(%r15,%rcx,8), %xmm0
	leal	1(%r8,%r11), %ecx
	addl	%r11d, %r8d
	vaddsd	(%r9), %xmm0, %xmm0
	movslq	%ecx, %rcx
	movslq	%r8d, %r8
	movq	-112(%rbp), %r9
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%r9,%rcx,8), %xmm0, %xmm1
	leaq	(%r15,%r10,8), %rcx
	vmovsd	(%r9,%r8,8), %xmm0
	vmulsd	(%rcx), %xmm0, %xmm0
	movq	-104(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rcx,%r10,8)
	cmpl	-156(%rbp), %edi
	jge	.L27
	movl	-80(%rbp), %r8d
	leal	(%rdi,%rdi), %ecx
	leal	3(%r8,%rsi), %esi
	movslq	%esi, %rsi
	vmovsd	(%r15,%rsi,8), %xmm2
	movl	-72(%rbp), %esi
	vaddsd	(%r15,%r10,8), %xmm2, %xmm2
	addl	%edi, %esi
	addl	-96(%rbp), %edi
	movslq	%esi, %rsi
	vmovsd	(%r15,%rsi,8), %xmm0
	leal	1(%rcx,%r11), %esi
	addl	%r11d, %ecx
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	movq	-208(%rbp), %r11
	movslq	%edi, %rdi
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	movq	-104(%rbp), %rdi
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%r9,%rsi,8), %xmm0, %xmm1
	vmovsd	(%r9,%rcx,8), %xmm0
	movq	-152(%rbp), %r9
	vmulsd	(%r9), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi,%r11,8)
.L27:
	movl	-124(%rbp), %edi
	addq	%r12, %rdx
	addq	%r12, %rax
	addq	%r12, %r14
	addl	%edi, -92(%rbp)
	addq	%r12, %rbx
	addq	-168(%rbp), %r13
	addq	%r12, -136(%rbp)
	addq	%r12, -88(%rbp)
	movl	-128(%rbp), %edi
	cmpl	%edi, -144(%rbp)
	jg	.L28
.L81:
	vzeroupper
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L82
	movq	%r15, %rdi
	call	dummy
	movq	-104(%rbp), %rdi
	call	dummy
	movq	-112(%rbp), %rdi
	call	dummy
.L82:
	addq	$224, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	.cfi_restore_state
	movq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	addq	%rdi, %rsi
	movq	-256(%rbp), %rdi
	.p2align 4,,10
	.p2align 3
.L26:
	vmovsd	8(%rbx,%rcx), %xmm1
	vmovsd	16(%rax,%rcx), %xmm0
	vaddsd	8(%r14,%rcx), %xmm1, %xmm1
	vaddsd	(%rax,%rcx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovsd	8(%rax,%rcx), %xmm0
	vmulsd	24(%r13,%rcx,2), %xmm1, %xmm1
	vmulsd	16(%r13,%rcx,2), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rsi,%rcx)
	addq	$8, %rcx
	cmpq	%rdi, %rcx
	jne	.L26
	jmp	.L27
.L52:
	movl	$1, %esi
	jmp	.L23
.L86:
	movq	-56(%rbp), %rdx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rdx, -104(%rbp)
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r13d, %r13d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r8d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r8d
	jb	.L34
	testl	%edx, %edx
	je	.L9
	movq	-104(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L46
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L47
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	movq	-104(%rbp), %rcx
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
	cmpl	%edx, %esi
	ja	.L11
	movl	%edi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %edi
	je	.L90
	vzeroupper
	jmp	.L34
.L88:
	movq	%r15, %rdi
	vzeroupper
	call	dummy
	movq	-104(%rbp), %rdi
	call	dummy
	movq	-112(%rbp), %rdi
	call	dummy
	cmpl	$1, -144(%rbp)
	jg	.L21
	jmp	.L22
.L44:
	movl	$1, %edi
	jmp	.L5
.L87:
	xorl	%edx, %edx
	movq	$0, -104(%rbp)
	xorl	%eax, %eax
	jmp	.L9
.L46:
	movl	$1, %eax
	jmp	.L9
.L90:
	vzeroupper
	jmp	.L38
.L50:
	movl	$1, %edi
	jmp	.L16
.L85:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -104(%rbp)
	testl	%eax, %eax
	jne	.L38
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.L38
.L45:
	movl	$2, %edi
	jmp	.L5
.L47:
	movl	$2, %eax
	jmp	.L9
.L51:
	movl	$2, %edi
	jmp	.L16
.L89:
	vzeroupper
	jmp	.L82
.L42:
	xorl	%eax, %eax
	jmp	.L4
.L48:
	xorl	%eax, %eax
	jmp	.L15
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
