	.file	"2d-2r-isotropic-variable-star-stencil.c_compilable.c"
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
	subq	$288, %rsp
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
	jb	.L43
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L45
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L46
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
	movq	$0, -120(%rbp)
	xorl	%eax, %eax
.L35:
	movq	-120(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L39
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L39
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L39
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L39
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L39
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L39:
	leal	0(%r13,%r13,2), %r13d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movslq	%r13d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r14
	movq	%r14, -80(%rbp)
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
	jb	.L49
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L16
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%r14)
	cmpl	$1, %eax
	je	.L51
	vmovsd	%xmm0, 8(%r14)
	cmpl	$3, %eax
	jne	.L52
	vmovsd	%xmm0, 16(%r14)
	movl	$3, %edi
.L16:
	movq	-80(%rbp), %rdx
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
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
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
	leal	-2(%r12), %eax
	movl	%eax, -192(%rbp)
	testl	%edx, %edx
	jne	.L88
	cmpl	$2, -192(%rbp)
	jle	.L89
.L21:
	leal	(%rbx,%rbx), %edi
	movl	%ebx, -208(%rbp)
	leal	-2(%rbx), %eax
	movl	%edi, -212(%rbp)
	leal	(%rdi,%rbx), %ecx
	movl	%eax, -204(%rbp)
	movl	%ecx, -216(%rbp)
	cmpl	$2, %eax
	jle	.L81
	leal	-4(%rbx), %esi
	movslq	%ebx, %rax
	movq	-80(%rbp), %r12
	movslq	%edi, %rdi
	leaq	0(,%rax,8), %r11
	movslq	%ecx, %rax
	addl	%ecx, %ecx
	movq	-120(%rbp), %r10
	leaq	0(,%rax,8), %r13
	movslq	%ecx, %rax
	movq	%rsi, %r9
	movl	%ecx, -88(%rbp)
	leaq	6(%rsi,%rsi,2), %r8
	movl	%esi, -188(%rbp)
	leaq	2(%rdi,%rsi), %rsi
	addq	%rax, %r8
	salq	$3, %rax
	movl	$0, -72(%rbp)
	movq	%rax, -160(%rbp)
	leaq	(%r12,%r8,8), %r8
	movl	%r9d, %eax
	andl	$-4, %r9d
	shrl	$2, %eax
	movq	%r11, -224(%rbp)
	movl	%eax, -68(%rbp)
	leal	2(%r9), %eax
	movl	%eax, -292(%rbp)
	leaq	48(%r12), %rax
	movq	%rax, -248(%rbp)
	leaq	16(%r15), %rax
	movq	%rax, -200(%rbp)
	leaq	48(%r15), %rax
	movq	%rax, -240(%rbp)
	leaq	64(%r15), %rax
	movq	%rax, -256(%rbp)
	leaq	8(%r15), %rax
	leaq	16(,%rdi,8), %rdx
	movq	%rax, -272(%rbp)
	leaq	(%r10,%rsi,8), %rdi
	movq	%r13, -232(%rbp)
	leaq	24(%r15), %rax
	movq	%rdi, -176(%rbp)
	leaq	-16(%rdx), %rcx
	movq	%rax, -280(%rbp)
	leaq	32(%r10,%rdx), %rdi
	movq	%rcx, -104(%rbp)
	leaq	32(%r15), %rax
	movq	%rdi, -184(%rbp)
	leaq	(%r10,%rdx), %r14
	movq	%rax, -288(%rbp)
	leal	0(,%rbx,4), %edx
	subl	$5, %ebx
	movq	%r8, -168(%rbp)
	leaq	(%r15,%r11), %rdi
	movl	%ebx, %eax
	movslq	%edx, %rdx
	movq	%r13, -152(%rbp)
	addq	$3, %rax
	movq	%rdi, -136(%rbp)
	movq	%rax, -312(%rbp)
	movl	-72(%rbp), %eax
	leaq	0(,%rdx,8), %rcx
	movq	%rcx, -96(%rbp)
	movl	%ebx, -260(%rbp)
	movl	%r9d, -264(%rbp)
	movq	%r15, -144(%rbp)
	movl	$2, -128(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movl	-212(%rbp), %edi
	movl	-208(%rbp), %ecx
	movq	-144(%rbp), %rbx
	movq	-152(%rbp), %r12
	addl	%edi, %eax
	movq	-136(%rbp), %rsi
	movl	%eax, -108(%rbp)
	subl	%ecx, %eax
	movq	-248(%rbp), %rdx
	movl	%eax, -84(%rbp)
	leaq	16(%rbx), %r9
	addl	%eax, %edi
	movq	-200(%rbp), %rax
	addl	%edi, %ecx
	addq	-160(%rbp), %rdx
	movl	%edi, -112(%rbp)
	addl	$1, -128(%rbp)
	movl	%ecx, -124(%rbp)
	movq	-104(%rbp), %r13
	leaq	16(%rsi), %rdi
	movq	%rax, %r8
	addq	-96(%rbp), %rax
	addq	%r12, %r8
	leaq	(%r15,%r13), %rcx
	movq	%rax, %r10
	leaq	48(%rbx), %rax
	movq	-184(%rbp), %rbx
	cmpq	%rax, %r14
	setnb	%r11b
	cmpq	%r9, %rbx
	setbe	%al
	orl	%eax, %r11d
	leaq	48(%rsi), %rax
	cmpq	%rax, %r14
	setnb	%sil
	cmpq	%rdi, %rbx
	setbe	%al
	orl	%esi, %eax
	andl	%r11d, %eax
	cmpl	$3, -188(%rbp)
	seta	%sil
	andl	%esi, %eax
	cmpq	%rdx, -176(%rbp)
	setbe	%sil
	cmpq	-168(%rbp), %r14
	setnb	%r11b
	orl	%r11d, %esi
	andl	%esi, %eax
	movq	-256(%rbp), %rsi
	addq	%r13, %rsi
	movq	-240(%rbp), %r13
	cmpq	%rsi, %r14
	setnb	%sil
	cmpq	%rcx, %rbx
	setbe	%r11b
	orl	%r11d, %esi
	andl	%esi, %eax
	movq	%r13, %rsi
	addq	%r12, %rsi
	cmpq	%rsi, %r14
	setnb	%sil
	cmpq	%r8, %rbx
	setbe	%r11b
	orl	%r11d, %esi
	testb	%sil, %al
	je	.L32
	movq	-96(%rbp), %rax
	addq	%r13, %rax
	cmpq	%rax, %r14
	setnb	%sil
	cmpq	%r10, %rbx
	setbe	%al
	orb	%al, %sil
	je	.L32
	cmpl	$2, -260(%rbp)
	jbe	.L53
	movq	-104(%rbp), %rax
	xorl	%esi, %esi
	movq	-200(%rbp), %r13
	movq	-272(%rbp), %r12
	movq	-280(%rbp), %rbx
	movq	-288(%rbp), %r11
	addq	%rax, %r13
	addq	%rax, %r12
	addq	%rax, %rbx
	addq	%rax, %r11
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L24:
	vmovupd	(%r12,%rax), %xmm5
	vinsertf128	$0x1, 16(%r12,%rax), %ymm5, %ymm4
	addl	$1, %esi
	addq	$96, %rdx
	vmovupd	(%rbx,%rax), %xmm3
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm3, %ymm3
	vaddpd	%ymm3, %ymm4, %ymm5
	vmovupd	(%rdi,%rax), %xmm3
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm3, %ymm4
	vmovupd	(%r8,%rax), %xmm3
	vinsertf128	$0x1, 16(%r8,%rax), %ymm3, %ymm3
	vaddpd	%ymm3, %ymm4, %ymm3
	vmovupd	-96(%rdx), %xmm1
	vinsertf128	$0x1, -80(%rdx), %ymm1, %ymm1
	vmovupd	-64(%rdx), %xmm2
	vinsertf128	$0x1, -48(%rdx), %ymm2, %ymm2
	vperm2f128	$48, %ymm2, %ymm1, %ymm6
	vperm2f128	$2, %ymm2, %ymm1, %ymm2
	vaddpd	%ymm3, %ymm5, %ymm3
	vmovupd	-32(%rdx), %xmm0
	vshufpd	$5, %ymm2, %ymm6, %ymm4
	vinsertf128	$0x1, -16(%rdx), %ymm0, %ymm0
	vpermilpd	$2, %ymm0, %ymm5
	vblendpd	$8, %ymm5, %ymm4, %ymm4
	vperm2f128	$33, %ymm1, %ymm1, %ymm1
	vmulpd	%ymm4, %ymm3, %ymm4
	vshufpd	$2, %ymm1, %ymm6, %ymm3
	vperm2f128	$33, %ymm0, %ymm3, %ymm5
	vblendpd	$8, %ymm5, %ymm3, %ymm3
	vmovupd	0(%r13,%rax), %xmm5
	vinsertf128	$0x1, 16(%r13,%rax), %ymm5, %ymm5
	vmulpd	%ymm5, %ymm3, %ymm3
	vaddpd	%ymm3, %ymm4, %ymm3
	vmovupd	(%rcx,%rax), %xmm5
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm5, %ymm6
	vshufpd	$2, %ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm0, %ymm1, %ymm1
	vmovupd	(%r11,%rax), %xmm4
	vinsertf128	$0x1, 16(%r11,%rax), %ymm4, %ymm4
	vaddpd	%ymm4, %ymm6, %ymm5
	vblendpd	$7, %ymm1, %ymm0, %ymm0
	vmovupd	(%r9,%rax), %xmm4
	vinsertf128	$0x1, 16(%r9,%rax), %ymm4, %ymm6
	vmovupd	(%r10,%rax), %xmm4
	vinsertf128	$0x1, 16(%r10,%rax), %ymm4, %ymm4
	vaddpd	%ymm4, %ymm6, %ymm4
	vaddpd	%ymm4, %ymm5, %ymm4
	vmulpd	%ymm0, %ymm4, %ymm0
	vaddpd	%ymm0, %ymm3, %ymm0
	vmovups	%xmm0, (%r14,%rax)
	vextractf128	$0x1, %ymm0, 16(%r14,%rax)
	addq	$32, %rax
	cmpl	%esi, -68(%rbp)
	ja	.L24
	movl	-188(%rbp), %edi
	cmpl	%edi, -264(%rbp)
	je	.L27
	movl	-292(%rbp), %eax
.L23:
	movl	-84(%rbp), %ecx
	leal	1(%rax), %edx
	movl	-108(%rbp), %r11d
	leal	(%rax,%rax,2), %r9d
	movl	-88(%rbp), %r12d
	movq	-80(%rbp), %r10
	leal	(%rax,%rcx), %r8d
	movl	-112(%rbp), %ecx
	leal	(%rdx,%r11), %edi
	movslq	%r8d, %r8
	vmovsd	(%r15,%r8,8), %xmm1
	leal	-1(%rax,%r11), %r8d
	movslq	%edi, %rdi
	leaq	(%r15,%rdi,8), %rbx
	movslq	%r8d, %r8
	vmovsd	(%r15,%r8,8), %xmm0
	leal	(%rax,%r11), %esi
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	vaddsd	(%rbx), %xmm0, %xmm0
	movslq	%esi, %rsi
	vaddsd	(%r15,%rcx,8), %xmm1, %xmm1
	leal	1(%r12,%r9), %ecx
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	(%r10,%rcx,8), %xmm1, %xmm2
	leal	(%r12,%r9), %ecx
	leal	2(%r12,%r9), %r9d
	movslq	%ecx, %rcx
	vmovsd	(%r10,%rcx,8), %xmm0
	leal	-2(%rax,%r11), %r10d
	movslq	%r9d, %r9
	vmulsd	(%r15,%rsi,8), %xmm0, %xmm0
	movslq	%r10d, %r10
	leal	2(%rax), %ecx
	leal	(%rcx,%r11), %r13d
	movl	-72(%rbp), %r11d
	movslq	%r13d, %r13
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%r10,8), %xmm2
	movl	-124(%rbp), %r10d
	addl	%eax, %r11d
	movslq	%r11d, %r11
	vaddsd	(%r15,%r13,8), %xmm2, %xmm2
	vmovsd	(%r15,%r11,8), %xmm0
	addl	%eax, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movq	-80(%rbp), %r10
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%r10,%r9,8), %xmm0, %xmm0
	movq	-120(%rbp), %r9
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r9,%rsi,8)
	cmpl	-204(%rbp), %edx
	jge	.L27
	movl	-84(%rbp), %r12d
	leaq	(%r15,%r13,8), %r10
	vmovsd	(%r15,%rsi,8), %xmm0
	movq	%r10, -304(%rbp)
	movl	-112(%rbp), %r10d
	leal	(%rdx,%rdx,2), %r9d
	leal	(%rdx,%r12), %r11d
	movq	-80(%rbp), %r12
	movslq	%r11d, %r11
	vmovsd	(%r15,%r11,8), %xmm1
	addl	%edx, %r10d
	movl	-88(%rbp), %r11d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm1, %xmm1
	leaq	(%r15,%r13,8), %r10
	vaddsd	(%r10), %xmm0, %xmm0
	leal	1(%r11,%r9), %r10d
	movslq	%r10d, %r10
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	(%r12,%r10,8), %xmm1, %xmm2
	leal	(%r11,%r9), %r10d
	movslq	%r10d, %r10
	vmovsd	(%r12,%r10,8), %xmm0
	vmulsd	(%rbx), %xmm0, %xmm0
	movl	-72(%rbp), %ebx
	movl	-108(%rbp), %r12d
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%r8,8), %xmm2
	leal	(%rdx,%rbx), %r8d
	addl	-124(%rbp), %edx
	leal	3(%rax,%r12), %r10d
	movslq	%r8d, %r8
	vmovsd	(%r15,%r8,8), %xmm0
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm2, %xmm2
	movslq	%edx, %rdx
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	leal	2(%r11,%r9), %edx
	movq	-80(%rbp), %r9
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%r9,%rdx,8), %xmm0, %xmm0
	movq	-120(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%rdi,8)
	cmpl	-204(%rbp), %ecx
	jge	.L27
	vmovsd	(%r15,%r10,8), %xmm3
	movl	-112(%rbp), %r8d
	leal	(%rcx,%rcx,2), %edx
	vaddsd	(%r15,%rdi,8), %xmm3, %xmm3
	leal	4(%rax,%r12), %eax
	movl	-84(%rbp), %edi
	cltq
	addl	%ecx, %r8d
	movslq	%r8d, %r8
	addl	%ecx, %edi
	vmovsd	(%r15,%r8,8), %xmm0
	leaq	(%r15,%r13,8), %r8
	movslq	%edi, %rdi
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	leal	1(%r11,%rdx), %edi
	movslq	%edi, %rdi
	vaddsd	%xmm0, %xmm3, %xmm0
	vmulsd	(%r9,%rdi,8), %xmm0, %xmm2
	leal	(%r11,%rdx), %edi
	movslq	%edi, %rdi
	vmovsd	(%r9,%rdi,8), %xmm0
	vmulsd	(%r8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%rax,8), %xmm2
	movl	-124(%rbp), %eax
	vaddsd	(%r15,%rsi,8), %xmm2, %xmm2
	addl	%ecx, %eax
	addl	-72(%rbp), %ecx
	cltq
	vmovsd	(%r15,%rax,8), %xmm0
	leal	2(%r11,%rdx), %eax
	cltq
	movq	-120(%rbp), %rdx
	movslq	%ecx, %rcx
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%r9,%rax,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r13,8)
.L27:
	movq	-224(%rbp), %rax
	addq	%rax, -176(%rbp)
	addq	%rax, -184(%rbp)
	addq	%rax, -136(%rbp)
	addq	%rax, %r14
	movq	-232(%rbp), %rbx
	addq	%rax, -144(%rbp)
	addq	%rax, -104(%rbp)
	addq	%rax, -152(%rbp)
	addq	%rax, -96(%rbp)
	movl	-84(%rbp), %eax
	movl	-216(%rbp), %edi
	addq	%rbx, -168(%rbp)
	addl	%edi, -88(%rbp)
	addq	%rbx, -160(%rbp)
	movl	-128(%rbp), %ecx
	movl	%eax, -72(%rbp)
	cmpl	%ecx, -192(%rbp)
	jg	.L28
.L81:
	vzeroupper
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L82
	movq	%r15, %rdi
	call	dummy
	movq	-120(%rbp), %rdi
	call	dummy
	movq	-80(%rbp), %rdi
	call	dummy
.L82:
	addq	$288, %rsp
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
.L32:
	.cfi_restore_state
	movq	-120(%rbp), %rbx
	movl	$2, %eax
	movq	-104(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	-136(%rbp), %r9
	addq	-160(%rbp), %rdx
	movq	-144(%rbp), %r10
	leaq	(%rbx,%rdi), %r8
	movq	-152(%rbp), %rbx
	movq	-312(%rbp), %r11
	leaq	(%r15,%rbx), %rdi
	movq	-96(%rbp), %rbx
	leaq	(%r15,%rbx), %rsi
	.p2align 4,,10
	.p2align 3
.L26:
	vmovsd	(%rdi,%rax,8), %xmm1
	addq	$24, %rdx
	addq	$8, %rcx
	vaddsd	(%r9,%rax,8), %xmm1, %xmm1
	vmovsd	16(%rcx), %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	32(%rdx), %xmm1, %xmm2
	vmovsd	8(%rcx), %xmm1
	vmulsd	24(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rsi,%rax,8), %xmm2
	vmovsd	24(%rcx), %xmm0
	vaddsd	(%r10,%rax,8), %xmm2, %xmm2
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	40(%rdx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rax,8)
	addq	$1, %rax
	cmpq	%r11, %rax
	jne	.L26
	jmp	.L27
.L53:
	movl	$2, %eax
	jmp	.L23
.L86:
	movq	-56(%rbp), %rcx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rcx, -120(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r13d, %r13d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r8d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r8d
	jb	.L35
	testl	%edx, %edx
	je	.L9
	movq	-120(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L47
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L48
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	movq	-120(%rbp), %rcx
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
	jmp	.L35
.L88:
	movq	%r15, %rdi
	vzeroupper
	call	dummy
	movq	-120(%rbp), %rdi
	call	dummy
	movq	-80(%rbp), %rdi
	call	dummy
	cmpl	$2, -192(%rbp)
	jg	.L21
	jmp	.L22
.L45:
	movl	$1, %edi
	jmp	.L5
.L87:
	xorl	%edx, %edx
	movq	$0, -120(%rbp)
	xorl	%eax, %eax
	jmp	.L9
.L47:
	movl	$1, %eax
	jmp	.L9
.L90:
	vzeroupper
	jmp	.L39
.L51:
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
	movq	$0, -120(%rbp)
	testl	%eax, %eax
	jne	.L39
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.L39
.L46:
	movl	$2, %edi
	jmp	.L5
.L48:
	movl	$2, %eax
	jmp	.L9
.L52:
	movl	$2, %edi
	jmp	.L16
.L89:
	vzeroupper
	jmp	.L82
.L43:
	xorl	%eax, %eax
	jmp	.L4
.L49:
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
