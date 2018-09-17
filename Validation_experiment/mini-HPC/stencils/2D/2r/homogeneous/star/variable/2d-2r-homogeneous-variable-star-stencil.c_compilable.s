	.file	"2d-2r-homogeneous-variable-star-stencil.c_compilable.c"
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
	subq	$288, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r14
	movq	%rax, -72(%rbp)
	call	strtol
	movl	%r14d, %r15d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r15d
	movq	%rax, %rbx
	movslq	%r15d, %r13
	leaq	0(,%r13,8), %r12
	movq	%r12, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r13
	testl	%r15d, %r15d
	jle	.L3
	movq	%r13, %rax
	movl	$5, %ecx
	leal	-1(%r15), %r14d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r14d
	jb	.L50
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, 0(%r13)
	cmpl	$1, %eax
	je	.L52
	vmovsd	%xmm0, 8(%r13)
	cmpl	$3, %eax
	jne	.L53
	vmovsd	%xmm0, 16(%r13)
	movl	$3, %edi
.L5:
	movl	%r15d, %esi
	vmovapd	.LC1(%rip), %ymm0
	leaq	0(%r13,%rax,8), %rdx
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
	je	.L96
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L8
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
.L8:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L97
.L41:
	movq	$0, -56(%rbp)
	movq	$0, -88(%rbp)
	testl	%r15d, %r15d
	jle	.L10
	movq	-88(%rbp), %r9
	leal	-1(%r15), %r14d
.L40:
	testl	%r15d, %r15d
	movl	$1, %esi
	movq	%r9, %rax
	movl	$0, %ecx
	cmovg	%r15d, %esi
	shrq	$3, %rax
	movl	$5, %edi
	negq	%rax
	andl	$3, %eax
	testl	%r15d, %r15d
	leal	3(%rax), %edx
	cmovg	%r14d, %ecx
	cmpl	$5, %edx
	cmovb	%edi, %edx
	cmpl	%edx, %ecx
	movl	$0, %ecx
	jb	.L11
	testl	%eax, %eax
	je	.L12
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%r9)
	cmpl	$1, %eax
	je	.L56
	vmovsd	%xmm0, 8(%r9)
	cmpl	$3, %eax
	jne	.L57
	vmovsd	%xmm0, 16(%r9)
	movl	$3, %ecx
.L12:
	movq	-88(%rbp), %rdx
	subl	%eax, %esi
	vmovapd	.LC3(%rip), %ymm0
	movl	%esi, %edi
	shrl	$2, %esi
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L14:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%eax, %esi
	ja	.L14
	movl	%edi, %eax
	andl	$-4, %eax
	addl	%eax, %ecx
	cmpl	%eax, %edi
	je	.L98
	vzeroupper
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movq	-88(%rbp), %rdx
	movslq	%ecx, %rax
	vmovsd	%xmm0, (%rdx,%rax,8)
	leal	1(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdx,%rax,8)
	leal	2(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdx,%rax,8)
	leal	3(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdx,%rax,8)
	leal	4(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdx,%rax,8)
	leal	5(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdx,%rax,8)
.L15:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L99
	movq	-56(%rbp), %rsi
	testl	%r15d, %r15d
	movl	$1, %edi
	cmovg	%r15d, %edi
	movq	%rsi, -184(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
	negq	%rdx
	andl	$3, %edx
	testl	%r15d, %r15d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r14d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r14d
	jb	.L45
	testl	%edx, %edx
	je	.L18
	vmovsd	.LC4(%rip), %xmm0
	movq	-184(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L58
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L59
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L18:
	subl	%edx, %edi
	movq	-184(%rbp), %rcx
	vmovapd	.LC5(%rip), %ymm0
	movl	%edi, %esi
	leaq	(%rcx,%rdx,8), %rcx
	shrl	$2, %esi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L20:
	addl	$1, %edx
	vmovapd	%ymm0, (%rcx)
	addq	$32, %rcx
	cmpl	%edx, %esi
	ja	.L20
	movl	%edi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %edi
	je	.L17
.L45:
	vmovsd	.LC4(%rip), %xmm0
	movq	-184(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L17:
	movl	var_false(%rip), %edx
	leal	-2(%rbx), %eax
	movl	%eax, -260(%rbp)
	testl	%edx, %edx
	jne	.L100
	cmpl	$2, -260(%rbp)
	jle	.L101
.L23:
	movq	-72(%rbp), %rdi
	movl	%edi, %eax
	subl	$2, %eax
	movl	%eax, -324(%rbp)
	cmpl	$2, %eax
	jle	.L92
	movl	%edi, %eax
	movq	-88(%rbp), %rcx
	movslq	%edi, %r9
	movq	-184(%rbp), %r10
	addl	%eax, %eax
	leaq	0(,%r9,8), %r14
	movq	%r9, -272(%rbp)
	movslq	%eax, %rbx
	movq	%r14, -280(%rbp)
	addq	%r13, %r14
	leaq	16(,%rbx,8), %rdx
	movl	%eax, -208(%rbp)
	leaq	(%rcx,%rdx), %rsi
	movl	%edi, -284(%rbp)
	movq	%rsi, -192(%rbp)
	leaq	-16(%rdx), %rsi
	leaq	(%rcx,%rsi), %r15
	leaq	32(%rcx,%rdx), %rcx
	movq	%rsi, -80(%rbp)
	movq	%rcx, -200(%rbp)
	leal	(%rax,%rdi), %ecx
	leaq	48(%r13), %rsi
	movslq	%ecx, %rdx
	movl	%ecx, -172(%rbp)
	leal	-4(%rdi), %ecx
	movq	%rdx, -120(%rbp)
	movq	%r9, %rdx
	salq	$4, %rdx
	movl	%ecx, -204(%rbp)
	leaq	64(%r13), %rcx
	addq	%r14, %rdx
	movq	%rcx, -304(%rbp)
	leaq	16(%r13), %rcx
	movq	%rdx, -152(%rbp)
	leaq	32(%r10), %rdx
	movq	%rdx, -96(%rbp)
	movl	%edi, %edx
	sall	$2, %edx
	movq	%rsi, -296(%rbp)
	leaq	48(%r10), %rsi
	movslq	%edx, %r11
	movl	%edx, -176(%rbp)
	leaq	0(,%r11,8), %rax
	movq	%r11, -136(%rbp)
	movq	%rax, -168(%rbp)
	leal	-5(%rdi), %eax
	movl	%eax, -288(%rbp)
	addq	$3, %rax
	movl	%edi, -104(%rbp)
	movq	%r9, -112(%rbp)
	movl	$3, -216(%rbp)
	movl	$2, -212(%rbp)
	movl	$4, -264(%rbp)
	movq	$0, -128(%rbp)
	movq	$2, -72(%rbp)
	movq	%rcx, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%r14, -144(%rbp)
	leaq	16(%r10), %r14
	movq	%rax, -336(%rbp)
	movq	%rbx, %rax
	movq	%r14, %rbx
	movq	%r15, %r14
	movq	%r13, -160(%rbp)
	movq	%r13, %r15
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-152(%rbp), %rcx
	movq	-192(%rbp), %r11
	movq	-200(%rbp), %r8
	movq	-80(%rbp), %r10
	leaq	48(%rcx), %rax
	cmpq	%rax, %r11
	leaq	16(%rcx), %rax
	movq	-144(%rbp), %rcx
	leaq	(%r15,%r10), %rdx
	setnb	%dil
	cmpq	%rax, %r8
	setbe	%al
	orl	%eax, %edi
	leaq	48(%rcx), %rax
	cmpq	%rax, %r11
	leaq	16(%rcx), %rax
	setnb	%sil
	cmpq	%rax, %r8
	setbe	%cl
	orl	%esi, %ecx
	andl	%edi, %ecx
	cmpl	$5, -204(%rbp)
	movq	-160(%rbp), %rdi
	seta	%al
	andl	%eax, %ecx
	leaq	48(%rdi), %rax
	leaq	16(%rdi), %rsi
	movq	-168(%rbp), %rdi
	cmpq	%rax, %r11
	setnb	%al
	cmpq	%rsi, %r8
	setbe	%sil
	orl	%esi, %eax
	andl	%eax, %ecx
	movq	-304(%rbp), %rax
	addq	%r10, %rax
	cmpq	%rax, %r11
	setnb	%al
	cmpq	%rdx, %r8
	setbe	%sil
	orl	%esi, %eax
	movq	-312(%rbp), %rsi
	andl	%ecx, %eax
	movq	-296(%rbp), %rcx
	addq	%rdi, %rcx
	cmpq	%rcx, %r11
	setnb	%cl
	addq	%rdi, %rsi
	cmpq	%rsi, %r8
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L37
	movq	-72(%rbp), %rcx
	movq	-320(%rbp), %rax
	leaq	(%rax,%rcx,8), %rax
	cmpq	%rax, %r11
	setnb	%cl
	cmpq	%r8, -96(%rbp)
	setnb	%al
	orb	%al, %cl
	je	.L37
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	%eax, -288(%rbp)
	jb	.L60
	movl	$2, -100(%rbp)
	testl	%edx, %edx
	je	.L26
	movl	-208(%rbp), %r12d
	movl	-104(%rbp), %r10d
	movl	$3, -100(%rbp)
	leal	1(%r12), %ecx
	leal	2(%r12), %eax
	addl	$2, %r10d
	movslq	%ecx, %rcx
	cltq
	leal	4(%r12), %edi
	movslq	%r10d, %r10
	leaq	(%r15,%rcx,8), %r9
	leal	3(%r12), %ecx
	movslq	%edi, %r11
	movslq	%ecx, %rcx
	leaq	(%r15,%rax,8), %rsi
	leaq	(%r15,%r11,8), %rdi
	leaq	(%r15,%rcx,8), %r8
	vmovsd	(%rsi), %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-172(%rbp), %r10d
	addl	$2, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movq	-80(%rbp), %r10
	vaddsd	(%r15,%r10), %xmm0, %xmm0
	movslq	-212(%rbp), %r10
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-176(%rbp), %r10d
	addl	$2, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movq	-96(%rbp), %r10
	vmulsd	(%r10), %xmm0, %xmm0
	movq	-88(%rbp), %r10
	vmovsd	%xmm0, (%r10,%rax,8)
	cmpl	$1, %edx
	je	.L26
	movl	-104(%rbp), %r10d
	vmovsd	(%r8), %xmm0
	leal	5(%r12), %eax
	movl	$4, -100(%rbp)
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	cltq
	addl	$3, %r10d
	leaq	(%r15,%rax,8), %rax
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-172(%rbp), %r10d
	addl	$3, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	movslq	-216(%rbp), %r9
	vaddsd	(%rax), %xmm0, %xmm0
	movq	-184(%rbp), %r10
	vaddsd	(%r15,%r9,8), %xmm0, %xmm0
	movl	-176(%rbp), %r9d
	addl	$3, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r15,%r9,8), %xmm0, %xmm0
	movq	-72(%rbp), %r9
	addl	$3, %r9d
	vmulsd	(%r10,%r9,8), %xmm0, %xmm0
	movq	-88(%rbp), %r9
	vmovsd	%xmm0, (%r9,%rcx,8)
	cmpl	$3, %edx
	jne	.L26
	movq	%r10, %rcx
	movl	-104(%rbp), %r10d
	vmovsd	(%r8), %xmm0
	movl	$5, -100(%rbp)
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	leal	4(%r10), %eax
	movl	-172(%rbp), %r10d
	movl	-176(%rbp), %r9d
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%r10), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	6(%r12), %eax
	cltq
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movslq	-264(%rbp), %rax
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%r9), %eax
	movq	-88(%rbp), %r9
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-72(%rbp), %eax
	addl	$4, %eax
	cltq
	vmulsd	(%rcx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r9,%r11,8)
.L26:
	movl	-204(%rbp), %ecx
	movl	%edx, %eax
	movq	-184(%rbp), %rsi
	movq	%r15, -256(%rbp)
	movq	-112(%rbp), %r9
	movq	-128(%rbp), %r8
	subl	%edx, %ecx
	movq	-72(%rbp), %rdx
	movl	%ecx, -220(%rbp)
	shrl	$2, %ecx
	leaq	2(%rax,%rdx), %rdx
	movl	%ecx, -224(%rbp)
	leaq	2(%rax,%r13), %rcx
	leaq	(%rsi,%rdx,8), %rdx
	salq	$3, %rcx
	movq	%rdx, -232(%rbp)
	leaq	1(%rax,%r13), %rdx
	leaq	(%r15,%rcx), %rsi
	addq	-88(%rbp), %rcx
	leaq	(%r15,%rdx,8), %r12
	leaq	3(%rax,%r13), %rdx
	movq	%rsi, -240(%rbp)
	leaq	(%r15,%rdx,8), %rdi
	leaq	2(%rax,%r9), %rdx
	movq	-120(%rbp), %r9
	leaq	(%r15,%rdx,8), %r11
	movq	%rdi, -248(%rbp)
	leaq	2(%rax,%r9), %rdx
	movq	-80(%rbp), %r9
	leaq	(%r15,%rdx,8), %r10
	leaq	4(%rax,%r13), %rdx
	leaq	(%r9,%rax,8), %rsi
	leaq	(%r15,%rdx,8), %r9
	leaq	2(%rax,%r8), %rdx
	addq	%r15, %rsi
	leaq	(%r15,%rdx,8), %r8
	movq	-136(%rbp), %rdx
	leaq	2(%rax,%rdx), %rax
	xorl	%edx, %edx
	leaq	(%r15,%rax,8), %rdi
	movq	-248(%rbp), %r15
	xorl	%eax, %eax
	movq	%r14, -248(%rbp)
	movq	-240(%rbp), %r14
	movq	%rbx, -240(%rbp)
	movq	-232(%rbp), %rbx
	movq	%r13, -232(%rbp)
	movl	-224(%rbp), %r13d
	.p2align 4,,10
	.p2align 3
.L28:
	vmovupd	(%r12,%rax), %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	addl	$1, %edx
	vaddpd	(%r15,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%rsi,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	vmulpd	(%rbx,%rax), %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %r13d
	ja	.L28
	movl	-220(%rbp), %ecx
	movl	-100(%rbp), %edx
	movq	-256(%rbp), %r15
	movq	-248(%rbp), %r14
	movl	%ecx, %eax
	movq	-240(%rbp), %rbx
	movq	-232(%rbp), %r13
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %ecx
	je	.L32
.L25:
	movslq	%edx, %rdx
	movq	-112(%rbp), %r8
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rcx
	leaq	(%rdx,%r13), %rax
	movl	-324(%rbp), %r9d
	leaq	(%r15,%rax,8), %rax
	subq	%r13, %r8
	subq	%r13, %rdi
	subq	%r13, %rsi
	subq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L30:
	vmovsd	(%rax), %xmm0
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	(%rax,%rcx,8), %xmm0, %xmm0
	vmulsd	(%rbx,%rdx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, (%r14,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %r9d
	jg	.L30
.L32:
	movq	-280(%rbp), %rax
	movq	-272(%rbp), %rsi
	addq	$8, %rbx
	movl	-284(%rbp), %edi
	addq	$1, -72(%rbp)
	addq	%rax, -192(%rbp)
	movq	-72(%rbp), %rcx
	addq	%rax, %r14
	addq	%rsi, %r13
	addq	%rax, -200(%rbp)
	addq	%rax, -144(%rbp)
	addq	%rax, -152(%rbp)
	addq	%rax, -160(%rbp)
	addq	$8, -96(%rbp)
	addq	%rsi, -112(%rbp)
	addq	%rsi, -120(%rbp)
	addq	%rsi, -128(%rbp)
	addq	%rsi, -136(%rbp)
	addq	%rax, -80(%rbp)
	addl	%edi, -208(%rbp)
	addl	%edi, -104(%rbp)
	addl	%edi, -172(%rbp)
	addl	%edi, -264(%rbp)
	addl	%edi, -176(%rbp)
	addl	%edi, -212(%rbp)
	addl	%edi, -216(%rbp)
	addq	%rax, -168(%rbp)
	cmpl	%ecx, -260(%rbp)
	jg	.L33
	movq	%r15, %r13
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L93
	movq	%r13, %rdi
	call	dummy
	movq	-88(%rbp), %rdi
	call	dummy
	movq	-184(%rbp), %rdi
	call	dummy
.L93:
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
.L97:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	%rax, %r9
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L37:
	movq	-168(%rbp), %rsi
	movq	-152(%rbp), %rdi
	movl	$2, %eax
	movq	-160(%rbp), %r8
	movq	-336(%rbp), %r9
	leaq	(%r15,%rsi), %rcx
	movq	-144(%rbp), %rsi
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	8(%rdx), %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	addq	$8, %rdx
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	(%rsi,%rax,8), %xmm0, %xmm0
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	(%r8,%rax,8), %xmm0, %xmm0
	vaddsd	(%rcx,%rax,8), %xmm0, %xmm0
	vmulsd	(%rbx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r14,%rax,8)
	addq	$1, %rax
	cmpq	%r9, %rax
	jne	.L31
	jmp	.L32
.L60:
	movl	$2, %edx
	jmp	.L25
.L99:
	testl	%r15d, %r15d
	jle	.L102
	movl	%r15d, %edi
	cmpl	$4, %r14d
	jbe	.L64
	movq	$0, -184(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L100:
	movq	%r13, %rdi
	vzeroupper
	call	dummy
	movq	-88(%rbp), %rdi
	call	dummy
	movq	-184(%rbp), %rdi
	call	dummy
	cmpl	$2, -260(%rbp)
	jg	.L23
	jmp	.L24
.L52:
	movl	$1, %edi
	jmp	.L5
.L64:
	movq	$0, -184(%rbp)
	xorl	%eax, %eax
	jmp	.L45
.L3:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L41
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
.L10:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -184(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	.L17
.L96:
	vzeroupper
	jmp	.L8
.L58:
	movl	$1, %eax
	jmp	.L18
.L98:
	vzeroupper
	jmp	.L15
.L56:
	movl	$1, %ecx
	jmp	.L12
.L57:
	movl	$2, %ecx
	jmp	.L12
.L53:
	movl	$2, %edi
	jmp	.L5
.L92:
	vzeroupper
	jmp	.L24
.L59:
	movl	$2, %eax
	jmp	.L18
.L101:
	vzeroupper
	jmp	.L93
.L50:
	xorl	%eax, %eax
	jmp	.L4
.L102:
	movq	$0, -184(%rbp)
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
