	.file	"2d-3r-homogeneous-constant-star-stencil.c_compilable.c"
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
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	movl	%ebx, %r13d
	call	strtol
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r13d
	movq	%rax, %r12
	movslq	%r13d, %r15
	leaq	0(,%r15,8), %r8
	movq	%r8, %rdx
	movq	%r8, -88(%rbp)
	call	posix_memalign
	movq	-88(%rbp), %r8
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %r15
	testl	%r13d, %r13d
	jle	.L3
	leal	-1(%r13), %r14d
	movq	%r15, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r14d
	jb	.L39
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L41
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L42
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
	je	.L77
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
	leaq	-80(%rbp), %rdi
	movq	%r8, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L78
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %r14d
	cmovg	%r13d, %edi
	cmpl	$4, %r14d
	ja	.L79
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
.L31:
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L35
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L35:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -80(%rbp)
	leal	-3(%r12), %eax
	movl	%eax, -308(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$3, -308(%rbp)
	jle	.L81
.L14:
	leal	-3(%rbx), %eax
	movl	%eax, -404(%rbp)
	cmpl	$3, %eax
	jle	.L73
	leal	(%rbx,%rbx), %edx
	movq	-128(%rbp), %r8
	movslq	%ebx, %r11
	movl	%ebx, -332(%rbp)
	leal	(%rdx,%rbx), %ecx
	movslq	%edx, %r14
	movl	%ebx, -204(%rbp)
	leal	(%rcx,%rcx), %esi
	movslq	%ecx, %r10
	movl	%ecx, -284(%rbp)
	leaq	24(,%r10,8), %rax
	movl	%edx, -268(%rbp)
	leaq	(%r8,%rax), %rdi
	movq	%r11, -320(%rbp)
	movq	%rdi, -224(%rbp)
	leaq	-24(%rax), %rdi
	movq	%r8, %rax
	movq	%rdi, -120(%rbp)
	leal	-7(%rbx), %ecx
	addq	%rdi, %rax
	movq	%rax, -280(%rbp)
	leaq	56(%r8,%r10,8), %rax
	movslq	%esi, %r8
	movq	%rax, -232(%rbp)
	leal	0(,%rbx,4), %eax
	leal	(%rax,%rbx), %edi
	movslq	%eax, %r12
	movl	%eax, -192(%rbp)
	leaq	0(,%r14,8), %rax
	movslq	%edi, %r13
	movq	%r8, -184(%rbp)
	movq	%rax, -240(%rbp)
	leaq	0(,%r12,8), %rax
	movq	%rax, -248(%rbp)
	leaq	0(,%r13,8), %rax
	movq	%rax, -256(%rbp)
	leaq	0(,%r8,8), %rax
	leaq	0(,%r11,8), %r9
	movq	%rax, -264(%rbp)
	leal	-6(%rbx), %eax
	movq	%r13, -168(%rbp)
	movq	%r15, %r13
	leaq	24(%r15), %rbx
	movl	%eax, -272(%rbp)
	addq	%r10, %rax
	movl	%ecx, -336(%rbp)
	leaq	(%r9,%r15), %rdx
	addq	%r10, %rcx
	movq	%r9, -328(%rbp)
	movq	%r10, -144(%rbp)
	movq	%r14, -136(%rbp)
	movq	%r12, -152(%rbp)
	movl	%edi, -208(%rbp)
	movl	%esi, -212(%rbp)
	movq	%r11, -160(%rbp)
	movq	$0, -200(%rbp)
	movl	$4, -292(%rbp)
	movl	$3, -288(%rbp)
	movl	$5, -312(%rbp)
	movq	$0, -176(%rbp)
	movl	$3, -216(%rbp)
	movq	%rbx, -392(%rbp)
	movq	-128(%rbp), %r8
	leaq	56(%r15), %rbx
	movq	%rbx, -352(%rbp)
	leaq	24(%r8,%rax,8), %rax
	movq	%rax, -376(%rbp)
	leaq	80(%r15), %rax
	movq	%rax, -360(%rbp)
	leaq	56(%rdx), %rax
	movq	%rax, -384(%rbp)
	leaq	24(%rdx), %rax
	movq	%rax, -368(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -344(%rbp)
	leaq	16(%r15), %rax
	movq	%rax, -400(%rbp)
	leaq	8(%r15,%rcx,8), %rax
	movq	%rax, -416(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-200(%rbp), %r9
	leaq	-80(%rbp), %rbx
	movq	-376(%rbp), %rdx
	movq	-224(%rbp), %r14
	movq	-344(%rbp), %rdi
	addl	$1, -216(%rbp)
	addq	%r9, %rdx
	movq	-120(%rbp), %rsi
	cmpq	%rdx, %rbx
	movq	-232(%rbp), %r15
	setnb	%cl
	cmpq	%rdi, %r14
	movq	-352(%rbp), %rbx
	setnb	%dl
	movq	-240(%rbp), %r8
	leaq	0(%r13,%rsi), %rax
	orl	%ecx, %edx
	cmpl	$5, -272(%rbp)
	movq	-392(%rbp), %rdi
	movq	-248(%rbp), %r10
	seta	%cl
	andl	%ecx, %edx
	movq	-360(%rbp), %rcx
	addq	%rsi, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	cmpq	%rax, %r15
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	movq	-256(%rbp), %r8
	cmpq	%rsi, %r15
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r10, %rsi
	cmpq	%rsi, %r15
	setbe	%sil
	orl	%esi, %ecx
	movq	-368(%rbp), %rsi
	andl	%ecx, %edx
	movq	-384(%rbp), %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r9, %rsi
	cmpq	%rsi, %r15
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %r15
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r9, %rsi
	cmpq	%rsi, %r15
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L28
	movq	-264(%rbp), %rsi
	addq	%rsi, %rbx
	cmpq	%rbx, %r14
	setnb	%cl
	addq	%rsi, %rdi
	cmpq	%rdi, %r15
	setbe	%dl
	orb	%dl, %cl
	je	.L28
	movq	-400(%rbp), %rdx
	movq	-120(%rbp), %r14
	addq	%r14, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-336(%rbp), %eax
	ja	.L45
	movl	$3, -188(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	-284(%rbp), %r15d
	movl	$4, -188(%rbp)
	movl	-268(%rbp), %r11d
	leal	2(%r15), %ecx
	leal	3(%r15), %eax
	movslq	%ecx, %rcx
	addl	$3, %r11d
	leaq	0(%r13,%rcx,8), %rsi
	cltq
	movslq	%r11d, %r11
	leal	4(%r15), %ecx
	vmovsd	(%rsi), %xmm0
	leaq	0(%r13,%rax,8), %rbx
	movslq	%ecx, %rcx
	leaq	0(%r13,%rcx,8), %r9
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	leal	1(%r15), %edi
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movslq	%edi, %rdi
	movl	-192(%rbp), %r11d
	leaq	0(%r13,%rdi,8), %r10
	leal	5(%r15), %edi
	movslq	%edi, %r12
	leaq	0(%r13,%r12,8), %r8
	leal	6(%r15), %edi
	addl	$3, %r11d
	movslq	%r11d, %r11
	movslq	%edi, %rdi
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	leaq	0(%r13,%rdi,8), %rdi
	movl	-204(%rbp), %r11d
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	addl	$3, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-208(%rbp), %r11d
	addl	$3, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movslq	-288(%rbp), %r11
	vaddsd	0(%r13,%r14), %xmm0, %xmm0
	movl	-212(%rbp), %r14d
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	leal	3(%r14), %r11d
	movq	-128(%rbp), %r14
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r14,%rax,8)
	cmpl	$1, %edx
	je	.L17
	movl	-268(%rbp), %r14d
	leal	7(%r15), %eax
	movl	$5, -188(%rbp)
	vmovsd	(%r9), %xmm0
	cltq
	vaddsd	(%rbx), %xmm0, %xmm0
	leaq	0(%r13,%rax,8), %rax
	vaddsd	(%r8), %xmm0, %xmm0
	leal	4(%r14), %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-192(%rbp), %r11d
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-204(%rbp), %r11d
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-208(%rbp), %r11d
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	movslq	-292(%rbp), %r10
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	0(%r13,%r10,8), %xmm0, %xmm0
	movl	-212(%rbp), %r10d
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	0(%r13,%r10,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-128(%rbp), %r10
	vmovsd	%xmm0, (%r10,%rcx,8)
	cmpl	$3, %edx
	jne	.L17
	movl	-192(%rbp), %r11d
	leal	5(%r14), %ecx
	movl	$6, -188(%rbp)
	movslq	%ecx, %rcx
	vmovsd	(%r9), %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	leal	5(%r11), %ecx
	movl	-204(%rbp), %r11d
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	leal	5(%r11), %eax
	movl	-208(%rbp), %r11d
	cltq
	movl	-212(%rbp), %r10d
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	5(%r11), %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	8(%r15), %eax
	cltq
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	movslq	-312(%rbp), %rax
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	5(%r10), %eax
	cltq
	movq	-128(%rbp), %r10
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%r12,8)
.L17:
	movq	-144(%rbp), %rdi
	movl	%edx, %eax
	movq	%r13, -304(%rbp)
	movl	-272(%rbp), %esi
	vbroadcastsd	-80(%rbp), %ymm2
	leaq	3(%rax,%rdi), %rcx
	leaq	0(,%rcx,8), %rbx
	subl	%edx, %esi
	leaq	2(%rax,%rdi), %rdx
	movq	%rbx, -112(%rbp)
	leaq	0(%r13,%rdx,8), %rcx
	movl	%esi, -296(%rbp)
	shrl	$2, %esi
	leaq	4(%rax,%rdi), %rdx
	movq	%rcx, -96(%rbp)
	leaq	0(%r13,%rdx,8), %r14
	movq	-136(%rbp), %rdx
	movl	%esi, -88(%rbp)
	leaq	0(%r13,%rbx), %r15
	leaq	3(%rax,%rdx), %rdx
	leaq	0(%r13,%rdx,8), %rcx
	movq	-152(%rbp), %rdx
	leaq	3(%rax,%rdx), %rdx
	leaq	0(%r13,%rdx,8), %r12
	leaq	1(%rax,%rdi), %rdx
	leaq	0(%r13,%rdx,8), %rbx
	leaq	5(%rax,%rdi), %rdx
	leaq	0(%r13,%rdx,8), %r11
	movq	-160(%rbp), %rdx
	leaq	3(%rax,%rdx), %rdx
	leaq	0(%r13,%rdx,8), %r10
	movq	-168(%rbp), %rdx
	leaq	3(%rax,%rdx), %rdx
	leaq	0(%r13,%rdx,8), %r9
	movq	-120(%rbp), %rdx
	leaq	(%rdx,%rax,8), %rsi
	leaq	6(%rax,%rdi), %rdx
	addq	%r13, %rsi
	leaq	0(%r13,%rdx,8), %rdi
	movq	%rdi, -104(%rbp)
	movq	-176(%rbp), %rdi
	leaq	3(%rax,%rdi), %rdx
	movq	-184(%rbp), %rdi
	leaq	0(%r13,%rdx,8), %r8
	xorl	%edx, %edx
	leaq	3(%rax,%rdi), %rax
	leaq	0(%r13,%rax,8), %rdi
	movq	-112(%rbp), %rax
	movl	%edx, %r13d
	addq	-128(%rbp), %rax
	movq	%rax, -112(%rbp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-96(%rbp), %rdx
	addl	$1, %r13d
	vmovupd	(%r15,%rax), %xmm1
	vinsertf128	$0x1, 16(%r15,%rax), %ymm1, %ymm1
	vmovupd	(%r14,%rax), %xmm0
	vinsertf128	$0x1, 16(%r14,%rax), %ymm0, %ymm0
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-104(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rcx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r12,%rax), %xmm0
	vinsertf128	$0x1, 16(%r12,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rbx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r11,%rax), %xmm0
	vinsertf128	$0x1, 16(%r11,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r10,%rax), %xmm0
	vinsertf128	$0x1, 16(%r10,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r9,%rax), %xmm0
	vinsertf128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rsi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vaddpd	(%rdx,%rax), %ymm0, %ymm1
	vmovupd	(%r8,%rax), %xmm0
	vinsertf128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	movq	-112(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	(%rdi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpl	%r13d, -88(%rbp)
	ja	.L19
	movl	-296(%rbp), %edi
	movl	-188(%rbp), %edx
	movq	-304(%rbp), %r13
	movl	%edi, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %edi
	je	.L23
.L16:
	movq	-144(%rbp), %rbx
	movslq	%edx, %rdx
	movq	-136(%rbp), %r10
	movq	-152(%rbp), %r9
	movq	-160(%rbp), %r8
	movq	-168(%rbp), %rdi
	leaq	(%rdx,%rbx), %rax
	movq	-176(%rbp), %rsi
	leaq	0(%r13,%rax,8), %rax
	subq	%rbx, %r10
	movq	-184(%rbp), %rcx
	subq	%rbx, %r9
	subq	%rbx, %r8
	movl	-404(%rbp), %r11d
	subq	%rbx, %rdi
	subq	%rbx, %rsi
	subq	%rbx, %rcx
	movq	-280(%rbp), %rbx
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rax), %xmm0
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	-24(%rax), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %r11d
	jg	.L21
.L23:
	movq	-328(%rbp), %rax
	movq	-320(%rbp), %rdi
	movl	-332(%rbp), %ebx
	addq	%rdi, -136(%rbp)
	addq	%rdi, -144(%rbp)
	addq	%rdi, -152(%rbp)
	addq	%rdi, -160(%rbp)
	addq	%rdi, -168(%rbp)
	addq	%rdi, -176(%rbp)
	addq	%rdi, -184(%rbp)
	addq	%rax, -224(%rbp)
	addq	%rax, -280(%rbp)
	addq	%rax, -232(%rbp)
	addq	%rax, -120(%rbp)
	addl	%ebx, -284(%rbp)
	addl	%ebx, -268(%rbp)
	addl	%ebx, -192(%rbp)
	addl	%ebx, -204(%rbp)
	addl	%ebx, -208(%rbp)
	addl	%ebx, -312(%rbp)
	addl	%ebx, -212(%rbp)
	addl	%ebx, -288(%rbp)
	addl	%ebx, -292(%rbp)
	addq	%rax, -200(%rbp)
	addq	%rax, -240(%rbp)
	addq	%rax, -248(%rbp)
	addq	%rax, -256(%rbp)
	addq	%rax, -264(%rbp)
	movl	-216(%rbp), %edi
	cmpl	%edi, -308(%rbp)
	jg	.L24
	movq	%r13, %r15
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L74
	movq	%r15, %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L74:
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
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	movq	-144(%rbp), %rbx
	movq	-136(%rbp), %r10
	movq	-152(%rbp), %r9
	movq	-160(%rbp), %r8
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	subq	%rbx, %r10
	movq	-184(%rbp), %rcx
	subq	%rbx, %r9
	movq	-128(%rbp), %rdx
	subq	%rbx, %r8
	movq	-416(%rbp), %r11
	subq	%rbx, %rdi
	addq	-120(%rbp), %rdx
	subq	%rbx, %rsi
	addq	-200(%rbp), %r11
	subq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	16(%rax), %xmm0
	addq	$8, %rdx
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	24(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	24(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	24(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	48(%rax), %xmm0, %xmm0
	vaddsd	24(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	24(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rdx)
	cmpq	%r11, %rax
	jne	.L22
	jmp	.L23
.L45:
	movl	$3, %edx
	jmp	.L16
.L78:
	movq	-80(%rbp), %rcx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rcx, -128(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r13d, %r13d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r14d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r14d
	jb	.L31
	testl	%edx, %edx
	je	.L9
	movq	-128(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L43
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L44
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	movq	-128(%rbp), %rcx
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
	jne	.L31
	jmp	.L35
.L80:
	movq	%r15, %rdi
	vzeroupper
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$3, -308(%rbp)
	jg	.L14
	jmp	.L15
.L41:
	movl	$1, %edi
	jmp	.L5
.L79:
	xorl	%edx, %edx
	movq	$0, -128(%rbp)
	jmp	.L9
.L43:
	movl	$1, %eax
	jmp	.L9
.L77:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-80(%rbp), %rdi
	movq	%r8, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -128(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.L35
.L73:
	vzeroupper
	jmp	.L15
.L44:
	movl	$2, %eax
	jmp	.L9
.L42:
	movl	$2, %edi
	jmp	.L5
.L81:
	vzeroupper
	jmp	.L74
.L39:
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
