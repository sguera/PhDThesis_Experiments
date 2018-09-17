	.file	"3d-1r-point-symmetric-variable-star-stencil.c_compilable.c"
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
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rsi, %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	subq	$384, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
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
	movq	%rcx, -72(%rbp)
	call	posix_memalign
	movq	-72(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r15
	testl	%r14d, %r14d
	jle	.L3
	leal	-1(%r14), %r9d
	movq	%r15, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %r9d
	jb	.L46
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L48
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L49
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %r8d
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r15,%rax,8), %rdx
	movl	%r14d, %edi
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
	cmpl	%edx, %edi
	je	.L89
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r15,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
.L8:
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	movl	%r9d, -72(%rbp)
	call	posix_memalign
	movl	-72(%rbp), %r9d
	testl	%eax, %eax
	je	.L90
	testl	%r14d, %r14d
	movl	$1, %eax
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovg	%r9d, %eax
	cmpl	$4, %eax
	ja	.L91
	movq	$0, -176(%rbp)
	xorl	%eax, %eax
.L36:
	movq	-176(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L40
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L40
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L40
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L40
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L40
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L40:
	leal	0(,%r14,4), %r8d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movslq	%r8d, %rdx
	movl	%r8d, -72(%rbp)
	salq	$3, %rdx
	call	posix_memalign
	movl	-72(%rbp), %r8d
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r14
	testl	%r8d, %r8d
	jle	.L14
	leal	-1(%r8), %ecx
	movq	%r14, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %ecx
	jb	.L52
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L16
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%r14)
	cmpl	$1, %eax
	je	.L54
	vmovsd	%xmm0, 8(%r14)
	cmpl	$3, %eax
	jne	.L55
	vmovsd	%xmm0, 16(%r14)
	movl	$3, %edi
.L16:
	vmovapd	.LC5(%rip), %ymm0
	leaq	(%r14,%rax,8), %rdx
	movl	%r8d, %esi
	subl	%eax, %esi
	xorl	%eax, %eax
	movl	%esi, %ecx
	shrl	$2, %ecx
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
	vmovsd	.LC4(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r14,%rdx,8)
	cmpl	%eax, %r8d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%r14,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-1(%r12), %eax
	movl	%eax, -328(%rbp)
	testl	%edx, %edx
	jne	.L92
	cmpl	$1, -328(%rbp)
	jle	.L87
	leal	-1(%rbx), %eax
	movl	%ebx, -244(%rbp)
	movl	%eax, -204(%rbp)
	leal	0(,%rbx,4), %eax
	movl	%eax, -208(%rbp)
	imull	%r13d, %eax
	movl	%eax, -340(%rbp)
	movl	%r13d, %eax
	imull	%ebx, %eax
	movl	%eax, -344(%rbp)
	cmpl	$2, %r13d
	jle	.L87
.L45:
	cmpl	$1, -204(%rbp)
	jle	.L84
	movl	-344(%rbp), %r9d
	leal	-2(%rbx), %ecx
	movslq	%ebx, %r8
	movq	%r14, -80(%rbp)
	movslq	-208(%rbp), %rdx
	leal	-3(%rbx), %esi
	addl	%ebx, %ebx
	movq	%r8, -216(%rbp)
	movslq	%ebx, %rdi
	movl	%ecx, -168(%rbp)
	movq	%rdi, -352(%rbp)
	movl	%ecx, %edi
	leal	(%r9,%r9), %eax
	shrl	$2, %edi
	movl	%esi, -292(%rbp)
	movl	%eax, -164(%rbp)
	leaq	0(,%r8,8), %rax
	movq	%rax, -256(%rbp)
	leaq	0(,%rdx,8), %rax
	movq	%rax, -264(%rbp)
	movq	%rcx, %rax
	andl	$-4, %eax
	movl	%edi, -300(%rbp)
	movl	%eax, -296(%rbp)
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	movl	-244(%rbp), %eax
	movl	%r9d, -100(%rbp)
	movl	$0, -144(%rbp)
	movl	$1, -324(%rbp)
	addl	%eax, %eax
	cltq
	movq	%rax, -336(%rbp)
	movl	-340(%rbp), %eax
	movl	%eax, -124(%rbp)
	leaq	8(%r15), %rax
	movq	%rax, -272(%rbp)
	leaq	40(%r15), %rax
	movq	%rax, -280(%rbp)
	leaq	1(%r8), %rax
	movq	%rax, -368(%rbp)
	leaq	4(%rdx), %rax
	movq	%rax, -384(%rbp)
	leaq	5(%r8), %rax
	movq	%rax, -376(%rbp)
	leaq	(%rdx,%rsi,4), %rax
	movq	%rax, -400(%rbp)
	leaq	64(%r14), %rax
	movq	%r15, %r14
	movq	%rax, -408(%rbp)
	leal	-1(%r13), %eax
	movl	%eax, -248(%rbp)
	leaq	(%r8,%rcx), %rax
	movq	%rax, -392(%rbp)
	leaq	4(%rdx,%rcx,4), %rax
	movq	%rax, -360(%rbp)
	.p2align 4,,10
	.p2align 3
.L32:
	movslq	-100(%rbp), %rdx
	movq	$0, -88(%rbp)
	movq	-368(%rbp), %rax
	movl	$0, -104(%rbp)
	movq	-176(%rbp), %r10
	movq	$0, -184(%rbp)
	movq	-216(%rbp), %rbx
	movl	$1, -140(%rbp)
	movslq	-124(%rbp), %rcx
	addq	%rdx, %rax
	movq	-80(%rbp), %rdi
	leaq	(%r10,%rax,8), %r13
	movq	-360(%rbp), %rax
	leaq	(%rbx,%rdx), %rsi
	movq	%rbx, -192(%rbp)
	movl	-208(%rbp), %r15d
	addl	$1, -324(%rbp)
	leaq	(%r14,%rsi,8), %r8
	movq	-376(%rbp), %rsi
	addq	%rcx, %rax
	leaq	(%rdi,%rax,8), %rax
	movq	%rax, -152(%rbp)
	movq	-384(%rbp), %rax
	addq	%rdx, %rsi
	leaq	(%r10,%rsi,8), %rsi
	movq	%rsi, -160(%rbp)
	movq	-408(%rbp), %rsi
	addq	%rcx, %rax
	addq	-400(%rbp), %rcx
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rsi,%rcx,8), %rsi
	movq	%rsi, -200(%rbp)
	movq	-352(%rbp), %rsi
	leaq	(%rdx,%rsi), %rcx
	leaq	0(,%rcx,8), %rsi
	movslq	-144(%rbp), %rcx
	movq	%rsi, -112(%rbp)
	leaq	(%rbx,%rcx), %rsi
	subq	%rdx, %rcx
	salq	$3, %rsi
	movq	%rsi, -120(%rbp)
	movslq	-164(%rbp), %rsi
	leaq	(%rbx,%rsi), %rdi
	subq	%rdx, %rsi
	salq	$3, %rdi
	movq	%rdi, -136(%rbp)
	movq	-392(%rbp), %rdi
	leaq	(%rdi,%rdx), %r9
	leaq	(%r14,%rdx,8), %rdi
	leaq	8(%rdi), %rbx
	addq	$40, %rdi
	movq	%rbx, -232(%rbp)
	leaq	8(%r10,%r9,8), %rbx
	movq	%rbx, -224(%rbp)
	movq	%rdi, -240(%rbp)
	movq	%rsi, -312(%rbp)
	movq	%rcx, -320(%rbp)
	movq	%rax, -96(%rbp)
	.p2align 4,,10
	.p2align 3
.L33:
	movl	-244(%rbp), %eax
	leaq	48(%r8), %rdx
	movl	-104(%rbp), %edi
	movq	-272(%rbp), %rbx
	movq	-120(%rbp), %r9
	movq	-88(%rbp), %rcx
	addl	%eax, %edi
	movq	-232(%rbp), %rsi
	addl	$1, -140(%rbp)
	addl	%edi, %eax
	movl	%edi, -72(%rbp)
	movq	-112(%rbp), %rdi
	movl	%eax, -128(%rbp)
	addq	%rbx, %r9
	movq	-160(%rbp), %rax
	addq	%rcx, %rsi
	addq	%rbx, %rdi
	addq	-136(%rbp), %rbx
	cmpq	%rdx, %r13
	setnb	%r12b
	cmpq	%rax, %r8
	movq	-240(%rbp), %rdx
	movq	%rbx, %r10
	setnb	%bl
	orl	%r12d, %ebx
	cmpl	$3, -168(%rbp)
	seta	%r12b
	andl	%ebx, %r12d
	movq	-224(%rbp), %rbx
	addq	%rcx, %rbx
	cmpq	%rbx, -96(%rbp)
	movl	%r12d, %ebx
	movq	%rax, %r12
	setnb	%cl
	cmpq	-152(%rbp), %r13
	setnb	%r11b
	addq	-88(%rbp), %rdx
	orl	%ecx, %r11d
	andl	%r11d, %ebx
	cmpq	%rdx, %r13
	setnb	%cl
	cmpq	%rsi, %rax
	movq	-280(%rbp), %rax
	setbe	%dl
	orl	%ecx, %edx
	andl	%edx, %ebx
	movq	-112(%rbp), %rdx
	movl	%ebx, %r11d
	addq	%rax, %rdx
	cmpq	%rdx, %r13
	setnb	%cl
	cmpq	%rdi, %r12
	setbe	%dl
	orl	%ecx, %edx
	movq	-120(%rbp), %rcx
	andl	%r11d, %edx
	addq	%rax, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	cmpq	%r9, %r12
	setbe	%r11b
	orl	%r11d, %ecx
	testb	%cl, %dl
	je	.L31
	addq	-136(%rbp), %rax
	cmpq	%rax, %r13
	setnb	%cl
	cmpq	%r10, %r12
	setbe	%dl
	orb	%dl, %cl
	je	.L31
	cmpl	$2, -292(%rbp)
	jbe	.L56
	movl	-300(%rbp), %r12d
	leaq	8(%r8), %rbx
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rax
	leaq	16(%r8), %r11
	.p2align 4,,10
	.p2align 3
.L24:
	vmovupd	(%rax,%rdx,4), %xmm1
	vinsertf128	$0x1, 16(%rax,%rdx,4), %ymm1, %ymm4
	addl	$1, %ecx
	vmovupd	32(%rax,%rdx,4), %xmm1
	vinsertf128	$0x1, 48(%rax,%rdx,4), %ymm1, %ymm1
	vinsertf128	$1, %xmm1, %ymm4, %ymm3
	vperm2f128	$49, %ymm1, %ymm4, %ymm1
	vmovupd	64(%rax,%rdx,4), %xmm0
	vunpcklpd	%ymm1, %ymm3, %ymm5
	vinsertf128	$0x1, 80(%rax,%rdx,4), %ymm0, %ymm0
	vunpckhpd	%ymm1, %ymm3, %ymm1
	vmovupd	96(%rax,%rdx,4), %xmm2
	vinsertf128	$0x1, 112(%rax,%rdx,4), %ymm2, %ymm2
	vinsertf128	$1, %xmm2, %ymm0, %ymm4
	vperm2f128	$49, %ymm2, %ymm0, %ymm2
	vmovupd	(%r8,%rdx), %xmm6
	vunpckhpd	%ymm2, %ymm4, %ymm0
	vinsertf128	$0x1, 16(%r8,%rdx), %ymm6, %ymm6
	vunpcklpd	%ymm2, %ymm4, %ymm3
	vmovupd	(%r11,%rdx), %xmm2
	vinsertf128	$0x1, 16(%r11,%rdx), %ymm2, %ymm2
	vaddpd	%ymm2, %ymm6, %ymm6
	vinsertf128	$1, %xmm3, %ymm5, %ymm4
	vinsertf128	$1, %xmm0, %ymm1, %ymm2
	vperm2f128	$49, %ymm3, %ymm5, %ymm3
	vunpcklpd	%ymm3, %ymm4, %ymm5
	vperm2f128	$49, %ymm0, %ymm1, %ymm1
	vunpcklpd	%ymm1, %ymm2, %ymm0
	vunpckhpd	%ymm3, %ymm4, %ymm3
	vunpckhpd	%ymm1, %ymm2, %ymm1
	vmulpd	%ymm0, %ymm6, %ymm6
	vmovupd	(%rbx,%rdx), %xmm0
	vinsertf128	$0x1, 16(%rbx,%rdx), %ymm0, %ymm0
	vmulpd	%ymm0, %ymm5, %ymm0
	vmovupd	(%r9,%rdx), %xmm5
	vaddpd	%ymm0, %ymm6, %ymm0
	vinsertf128	$0x1, 16(%r9,%rdx), %ymm5, %ymm6
	vmovupd	(%r10,%rdx), %xmm5
	vinsertf128	$0x1, 16(%r10,%rdx), %ymm5, %ymm5
	vaddpd	%ymm5, %ymm6, %ymm5
	vmulpd	%ymm3, %ymm5, %ymm3
	vaddpd	%ymm3, %ymm0, %ymm3
	vmovupd	(%rsi,%rdx), %xmm0
	vinsertf128	$0x1, 16(%rsi,%rdx), %ymm0, %ymm4
	vmovupd	(%rdi,%rdx), %xmm0
	vinsertf128	$0x1, 16(%rdi,%rdx), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm4, %ymm0
	vmulpd	%ymm1, %ymm0, %ymm1
	vaddpd	%ymm1, %ymm3, %ymm0
	vmovups	%xmm0, 0(%r13,%rdx)
	vextractf128	$0x1, %ymm0, 16(%r13,%rdx)
	addq	$32, %rdx
	cmpl	%ecx, %r12d
	ja	.L24
	movq	%rax, -96(%rbp)
	movl	-168(%rbp), %edi
	cmpl	%edi, -296(%rbp)
	je	.L27
	movl	-304(%rbp), %esi
.L23:
	movl	-72(%rbp), %r12d
	leal	1(%rsi), %edx
	movl	-100(%rbp), %eax
	leal	0(,%rsi,4), %r9d
	leal	(%rdx,%r12), %edi
	leal	(%rax,%rdi), %r11d
	leal	(%rsi,%r12), %ecx
	movslq	%r11d, %rbx
	leaq	(%r14,%rbx,8), %r11
	movq	%r11, -72(%rbp)
	leal	-1(%rsi,%r12), %r11d
	movl	%r12d, -72(%rbp)
	movl	-124(%rbp), %r12d
	leal	(%rax,%rcx), %r10d
	addl	%eax, %r11d
	movslq	%r11d, %r11
	movq	-80(%rbp), %rax
	movslq	%r10d, %r10
	vmovsd	(%r14,%r11,8), %xmm3
	leaq	(%r14,%rbx,8), %r11
	vaddsd	(%r11), %xmm3, %xmm3
	leal	1(%r9,%r15), %r11d
	addl	%r12d, %r11d
	movslq	%r11d, %r11
	vmulsd	(%rax,%r11,8), %xmm3, %xmm3
	leal	(%r15,%r9), %r11d
	addl	%r12d, %r11d
	movslq	%r11d, %r11
	vmovsd	(%rax,%r11,8), %xmm0
	movl	-144(%rbp), %r11d
	vmulsd	(%r14,%r10,8), %xmm0, %xmm0
	addl	%ecx, %r11d
	addl	-164(%rbp), %ecx
	movslq	%r11d, %r11
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r14,%r11,8), %xmm0
	movslq	%ecx, %rcx
	vaddsd	(%r14,%rcx,8), %xmm0, %xmm0
	leal	2(%r9,%r15), %ecx
	addl	%r12d, %ecx
	movslq	%ecx, %rcx
	vmulsd	(%rax,%rcx,8), %xmm0, %xmm0
	movl	-104(%rbp), %ecx
	movl	-100(%rbp), %eax
	leal	(%rcx,%rsi), %r11d
	movl	-128(%rbp), %ecx
	vaddsd	%xmm0, %xmm2, %xmm1
	addl	%eax, %r11d
	movslq	%r11d, %r11
	vmovsd	(%r14,%r11,8), %xmm0
	addl	%esi, %ecx
	addl	%eax, %ecx
	movq	-80(%rbp), %rax
	movslq	%ecx, %rcx
	vaddsd	(%r14,%rcx,8), %xmm0, %xmm0
	leal	3(%r9,%r15), %ecx
	addl	%r12d, %ecx
	movq	-176(%rbp), %r9
	movslq	%ecx, %rcx
	vmulsd	(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r9,%r10,8)
	cmpl	-204(%rbp), %edx
	jge	.L27
	movl	-72(%rbp), %r9d
	movl	-100(%rbp), %eax
	leal	2(%rsi), %ecx
	leal	0(,%rdx,4), %r11d
	vmovsd	(%r14,%r10,8), %xmm3
	leal	1(%r11,%r15), %r10d
	addl	-124(%rbp), %r10d
	addl	%ecx, %r9d
	leal	(%rax,%r9), %r12d
	movslq	%r12d, %r12
	leaq	(%r14,%r12,8), %rax
	movslq	%r10d, %r10
	vaddsd	(%rax), %xmm3, %xmm3
	movq	%rax, -288(%rbp)
	movq	-80(%rbp), %rax
	vmulsd	(%rax,%r10,8), %xmm3, %xmm3
	leal	(%r15,%r11), %r10d
	addl	-124(%rbp), %r10d
	movslq	%r10d, %r10
	vmovsd	(%rax,%r10,8), %xmm0
	leaq	(%r14,%rbx,8), %r10
	vmulsd	(%r10), %xmm0, %xmm0
	movl	-144(%rbp), %r10d
	addl	%edi, %r10d
	addl	-164(%rbp), %edi
	vaddsd	%xmm0, %xmm3, %xmm2
	movslq	%r10d, %r10
	vmovsd	(%r14,%r10,8), %xmm0
	movl	-124(%rbp), %r10d
	movslq	%edi, %rdi
	vaddsd	(%r14,%rdi,8), %xmm0, %xmm0
	leal	2(%r11,%r15), %edi
	addl	%r10d, %edi
	movslq	%edi, %rdi
	vmulsd	(%rax,%rdi,8), %xmm0, %xmm0
	movl	-104(%rbp), %edi
	movl	-100(%rbp), %eax
	addl	%edx, %edi
	addl	-128(%rbp), %edx
	vaddsd	%xmm0, %xmm2, %xmm1
	addl	%eax, %edi
	movslq	%edi, %rdi
	vmovsd	(%r14,%rdi,8), %xmm0
	addl	%eax, %edx
	movslq	%edx, %rdx
	vaddsd	(%r14,%rdx,8), %xmm0, %xmm0
	leal	3(%r11,%r15), %edx
	movq	-80(%rbp), %r11
	addl	%r10d, %edx
	movslq	%edx, %rdx
	vmulsd	(%r11,%rdx,8), %xmm0, %xmm0
	movq	-176(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%rbx,8)
	cmpl	%ecx, -204(%rbp)
	jle	.L27
	movl	-72(%rbp), %edi
	leal	0(,%rcx,4), %edx
	leal	3(%rsi,%rdi), %esi
	addl	%eax, %esi
	movslq	%esi, %rsi
	vmovsd	(%r14,%rsi,8), %xmm3
	leal	1(%rdx,%r15), %esi
	addl	%r10d, %esi
	vaddsd	(%r14,%rbx,8), %xmm3, %xmm3
	movq	%r11, %rbx
	movslq	%esi, %rsi
	vmulsd	(%r11,%rsi,8), %xmm3, %xmm3
	leal	(%r15,%rdx), %esi
	addl	%r10d, %esi
	movslq	%esi, %rsi
	vmovsd	(%r11,%rsi,8), %xmm0
	movq	-288(%rbp), %rsi
	movl	-164(%rbp), %r11d
	vmulsd	(%rsi), %xmm0, %xmm0
	leal	(%r11,%r9), %esi
	addl	-144(%rbp), %r9d
	movslq	%esi, %rsi
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r14,%rsi,8), %xmm0
	leal	2(%rdx,%r15), %esi
	movslq	%r9d, %r9
	vaddsd	(%r14,%r9,8), %xmm0, %xmm0
	leal	3(%rdx,%r15), %edx
	addl	%r10d, %esi
	movslq	%esi, %rsi
	addl	%r10d, %edx
	vmulsd	(%rbx,%rsi,8), %xmm0, %xmm0
	movslq	%edx, %rdx
	movl	-128(%rbp), %esi
	addl	%ecx, %esi
	addl	-104(%rbp), %ecx
	vaddsd	%xmm0, %xmm2, %xmm1
	addl	%eax, %esi
	movslq	%esi, %rsi
	vmovsd	(%r14,%rsi,8), %xmm0
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	vaddsd	(%r14,%rcx,8), %xmm0, %xmm0
	vmulsd	(%rbx,%rdx,8), %xmm0, %xmm0
	movq	-176(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r12,8)
.L27:
	movq	-256(%rbp), %rbx
	movq	-264(%rbp), %rax
	addq	%rax, -152(%rbp)
	addq	%rax, -96(%rbp)
	addq	%rax, -200(%rbp)
	addq	%rbx, %r13
	addq	%rbx, %r8
	movl	-72(%rbp), %eax
	movq	-216(%rbp), %rdi
	addq	%rbx, -160(%rbp)
	addq	%rdi, -184(%rbp)
	addq	%rdi, -192(%rbp)
	addl	-208(%rbp), %r15d
	addq	%rbx, -88(%rbp)
	addq	%rbx, -112(%rbp)
	movl	%eax, -104(%rbp)
	addq	%rbx, -120(%rbp)
	addq	%rbx, -136(%rbp)
	movl	-248(%rbp), %edi
	cmpl	%edi, -140(%rbp)
	jne	.L33
	movl	-344(%rbp), %eax
	movl	-340(%rbp), %edi
	addl	%eax, -100(%rbp)
	addl	%edi, -124(%rbp)
	addl	%eax, -144(%rbp)
	addl	%eax, -164(%rbp)
	movl	-324(%rbp), %esi
	cmpl	%esi, -328(%rbp)
	jg	.L32
	movq	%r14, %r15
	movq	-80(%rbp), %r14
	vzeroupper
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L85
	movq	%r15, %rdi
	call	dummy
	movq	-176(%rbp), %rdi
	call	dummy
	movq	%r14, %rdi
	call	dummy
.L85:
	addq	$384, %rsp
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
.L48:
	.cfi_restore_state
	movl	$1, %r8d
	jmp	.L5
.L91:
	movq	$0, -176(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
.L9:
	movq	-176(%rbp), %rcx
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
	je	.L93
	vzeroupper
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L31:
	movq	-192(%rbp), %rbx
	movq	%r13, %rsi
	movq	%r8, %rdx
	movq	-184(%rbp), %rax
	movq	-336(%rbp), %rdi
	movq	-96(%rbp), %r10
	movq	-312(%rbp), %r11
	addq	%rax, %rdi
	subq	%rbx, %rax
	subq	%rbx, %rdi
	movq	%r10, %rcx
	movq	%rax, %r9
	movq	-320(%rbp), %rbx
	movq	%r10, %rax
	movq	-200(%rbp), %r10
	.p2align 4,,10
	.p2align 3
.L26:
	vmovsd	8(%rdx), %xmm2
	addq	$32, %rcx
	addq	$8, %rsi
	vmulsd	-32(%rcx), %xmm2, %xmm0
	vmovsd	16(%rdx), %xmm1
	vaddsd	(%rdx), %xmm1, %xmm1
	vmulsd	-24(%rcx), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rdx,%r11,8), %xmm1
	vaddsd	8(%rdx,%rbx,8), %xmm1, %xmm1
	vmulsd	-16(%rcx), %xmm1, %xmm1
	vmovsd	8(%rdx,%r9,8), %xmm0
	vaddsd	8(%rdx,%rdi,8), %xmm0, %xmm0
	addq	$8, %rdx
	vmulsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rsi)
	cmpq	%r10, %rcx
	jne	.L26
	movq	%rax, -96(%rbp)
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L56:
	movl	$1, %esi
	jmp	.L23
.L90:
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	%r9d, %r8d
	cmovg	%r14d, %edi
	movq	%rsi, -176(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r8d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r8d
	jb	.L36
	testl	%edx, %edx
	je	.L9
	movq	-176(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L50
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L51
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
	jmp	.L9
.L92:
	movq	%r15, %rdi
	vzeroupper
	call	dummy
	movq	-176(%rbp), %rdi
	call	dummy
	movq	%r14, %rdi
	call	dummy
	cmpl	$1, -328(%rbp)
	jle	.L22
	leal	-1(%rbx), %eax
	movl	%ebx, -244(%rbp)
	movl	%eax, -204(%rbp)
	leal	0(,%rbx,4), %eax
	movl	%eax, -208(%rbp)
	imull	%r13d, %eax
	movl	%eax, -340(%rbp)
	movl	%ebx, %eax
	imull	%r13d, %eax
	movl	%eax, -344(%rbp)
	cmpl	$2, %r13d
	jg	.L45
	jmp	.L22
.L89:
	vzeroupper
	jmp	.L8
.L87:
	vzeroupper
	jmp	.L85
.L93:
	vzeroupper
	jmp	.L40
.L54:
	movl	$1, %edi
	jmp	.L16
.L50:
	movl	$1, %eax
	jmp	.L9
.L3:
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -176(%rbp)
	testl	%eax, %eax
	jne	.L40
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)
	jmp	.L40
.L51:
	movl	$2, %eax
	jmp	.L9
.L55:
	movl	$2, %edi
	jmp	.L16
.L49:
	movl	$2, %r8d
	jmp	.L5
.L84:
	vzeroupper
	jmp	.L22
.L46:
	xorl	%eax, %eax
	jmp	.L4
.L52:
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
