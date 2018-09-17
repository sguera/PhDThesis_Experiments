	.file	"2d-2r-homogeneous-variable-box-stencil.c_compilable.c"
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
	subq	$416, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r15
	movq	%rax, -72(%rbp)
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r15d
	movq	%rax, %rbx
	movslq	%r15d, %r14
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r13
	testl	%r15d, %r15d
	jle	.L3
	leal	-1(%r15), %r12d
	movq	%r13, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r12d
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
	vmovapd	.LC1(%rip), %ymm0
	leaq	0(%r13,%rax,8), %rdx
	movl	%r15d, %esi
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
	je	.L94
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
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L95
.L41:
	movq	$0, -56(%rbp)
	movq	$0, -264(%rbp)
	testl	%r15d, %r15d
	jle	.L10
	movq	-264(%rbp), %r11
	leal	-1(%r15), %r12d
.L40:
	testl	%r15d, %r15d
	movl	$1, %esi
	movq	%r11, %rax
	cmovg	%r15d, %esi
	shrq	$3, %rax
	movl	$0, %ecx
	negq	%rax
	movl	$5, %edi
	andl	$3, %eax
	testl	%r15d, %r15d
	leal	3(%rax), %edx
	cmovg	%r12d, %ecx
	cmpl	$5, %edx
	cmovb	%edi, %edx
	cmpl	%edx, %ecx
	movl	$0, %ecx
	jb	.L11
	testl	%eax, %eax
	je	.L12
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%r11)
	cmpl	$1, %eax
	je	.L56
	vmovsd	%xmm0, 8(%r11)
	cmpl	$3, %eax
	jne	.L57
	vmovsd	%xmm0, 16(%r11)
	movl	$3, %ecx
.L12:
	movq	-264(%rbp), %rdx
	movl	%esi, %edi
	subl	%eax, %edi
	vmovapd	.LC3(%rip), %ymm0
	movl	%edi, %esi
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
	je	.L96
	vzeroupper
.L11:
	movq	-264(%rbp), %rsi
	movslq	%ecx, %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rsi,%rax,8)
	leal	1(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
	leal	2(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
	leal	3(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
	leal	4(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
	leal	5(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L15:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L97
	movq	-56(%rbp), %rsi
	testl	%r15d, %r15d
	movl	$1, %edi
	cmovg	%r15d, %edi
	movq	%rsi, -272(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
	negq	%rdx
	andl	$3, %edx
	testl	%r15d, %r15d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r12d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r12d
	jb	.L45
	testl	%edx, %edx
	je	.L18
	movq	-272(%rbp), %rax
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L58
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L59
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L18:
	movq	-272(%rbp), %rcx
	subl	%edx, %edi
	movl	%edi, %esi
	vmovapd	.LC5(%rip), %ymm0
	shrl	$2, %esi
	leaq	(%rcx,%rdx,8), %rcx
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
	movq	-272(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L17:
	movl	-72(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$2, %eax
	movl	%eax, -320(%rbp)
	testl	%edx, %edx
	jne	.L98
	cmpl	$2, -320(%rbp)
	jle	.L99
.L23:
	leal	-2(%rbx), %eax
	movl	%eax, -448(%rbp)
	cmpl	$2, %eax
	jle	.L90
	movq	-264(%rbp), %r11
	leal	(%rbx,%rbx), %eax
	movslq	%ebx, %rsi
	movq	%r13, %r12
	movslq	%eax, %rdi
	addl	%ebx, %eax
	movq	%rsi, -352(%rbp)
	leaq	16(,%rdi,8), %rcx
	cltq
	movq	%rdi, -248(%rbp)
	movq	%rax, -208(%rbp)
	leaq	0(,%rsi,8), %r15
	leaq	(%r11,%rcx), %rdx
	movq	%r15, -360(%rbp)
	movq	%rdx, -280(%rbp)
	leaq	-16(%rcx), %rdx
	leaq	32(%r11,%rcx), %rcx
	movq	%rdx, -224(%rbp)
	movq	%rcx, -288(%rbp)
	leaq	(%r11,%rdx), %r10
	movq	-272(%rbp), %rcx
	movq	%r10, -304(%rbp)
	movq	%rdx, %r10
	movq	%rsi, -256(%rbp)
	movq	$0, -232(%rbp)
	movq	%rcx, %r11
	movl	$2, -80(%rbp)
	addq	%rdx, %r11
	movq	%r11, -312(%rbp)
	leaq	0(,%rax,8), %r11
	leal	0(,%rbx,4), %eax
	movq	%r11, -240(%rbp)
	movslq	%eax, %rdx
	movq	%r13, %rax
	subq	%r10, %rax
	movq	%rdx, -216(%rbp)
	movq	%rax, %r10
	movq	%rax, -368(%rbp)
	movq	%rsi, %rax
	subq	%rdi, %rax
	salq	$3, %rax
	movq	%rax, -376(%rbp)
	leaq	(%r15,%r13), %rax
	subq	%r11, %rax
	movq	%rax, %r15
	movq	%rax, -336(%rbp)
	movq	%rdx, %rax
	subq	%rdi, %rax
	salq	$3, %rax
	movq	%rax, -384(%rbp)
	leaq	0(%r13,%rdx,8), %rax
	subq	%r11, %rax
	movq	%rax, %rdx
	movq	%rax, -344(%rbp)
	leaq	0(,%rdi,8), %rax
	movq	%r13, %rdi
	subq	%rax, %rdi
	leal	-5(%rbx), %eax
	subl	$4, %ebx
	movq	%rdi, -392(%rbp)
	movl	%ebx, -296(%rbp)
	leaq	64(%r13), %rbx
	movq	%rbx, -424(%rbp)
	leaq	48(%rcx), %rbx
	movq	%rbx, -432(%rbp)
	leaq	16(%rcx), %rbx
	movq	%rbx, -416(%rbp)
	leaq	64(%r10), %rbx
	movq	%rbx, -400(%rbp)
	leaq	64(%r15), %rbx
	movl	%eax, -444(%rbp)
	addq	$3, %rax
	movq	%rbx, -408(%rbp)
	leaq	64(%rdx), %rbx
	movq	%rbx, -440(%rbp)
	movq	%rax, -456(%rbp)
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-224(%rbp), %r14
	movq	-432(%rbp), %rcx
	movq	-280(%rbp), %r9
	movq	-376(%rbp), %r11
	movq	-384(%rbp), %r10
	leaq	(%r12,%r14), %rdx
	addq	%r14, %rcx
	movq	-288(%rbp), %r8
	addl	$1, -80(%rbp)
	addq	%r14, %r11
	movq	-424(%rbp), %r13
	addq	%r14, %r10
	cmpq	%rcx, %r9
	movq	-416(%rbp), %rcx
	setnb	%dil
	movq	-240(%rbp), %r15
	movq	-232(%rbp), %rax
	addq	%r14, %rcx
	cmpq	%rcx, %r8
	leaq	0(,%rax,8), %rbx
	setbe	%cl
	leaq	(%r12,%r15), %rax
	orl	%ecx, %edi
	movq	%r13, %rcx
	addq	%r14, %rcx
	cmpq	%rcx, %r9
	setnb	%cl
	cmpq	%rdx, %r8
	setbe	%sil
	orl	%ecx, %esi
	andl	%edi, %esi
	cmpl	$4, -296(%rbp)
	seta	%cl
	andl	%ecx, %esi
	movq	-400(%rbp), %rcx
	addq	%r14, %rcx
	cmpq	%rcx, %r9
	setnb	%cl
	addq	-368(%rbp), %r14
	cmpq	%r14, %r8
	movq	%r8, %r14
	setbe	%dil
	orl	%edi, %ecx
	andl	%ecx, %esi
	movq	-408(%rbp), %rcx
	addq	%r15, %rcx
	cmpq	%rcx, %r9
	movq	-336(%rbp), %rcx
	setnb	%dil
	addq	%r15, %rcx
	cmpq	%rcx, %r8
	setbe	%r8b
	orl	%r8d, %edi
	andl	%edi, %esi
	movq	%r13, %rdi
	addq	%r15, %rdi
	cmpq	%rdi, %r9
	setnb	%dil
	cmpq	%rax, %r14
	setbe	%r8b
	orl	%r8d, %edi
	testb	%dil, %sil
	je	.L37
	movq	-440(%rbp), %rsi
	addq	%r15, %rsi
	cmpq	%rsi, %r9
	setnb	%r8b
	addq	-344(%rbp), %r15
	cmpq	%r15, %r14
	movq	%r15, %rsi
	setbe	%dil
	orb	%dil, %r8b
	je	.L37
	movq	-224(%rbp), %r15
	movq	-392(%rbp), %rdi
	addq	%r15, %rdi
	movq	%rdi, %r8
	shrq	$3, %r8
	negq	%r8
	andl	$3, %r8d
	leal	3(%r8), %edx
	cmpl	%edx, -444(%rbp)
	jb	.L60
	movl	$2, %r13d
	movl	%r13d, -292(%rbp)
	testl	%r8d, %r8d
	je	.L26
	movq	-264(%rbp), %r14
	leal	2(%r8), %r9d
	movq	%r15, %rdx
	movq	-272(%rbp), %r15
.L27:
	vmovsd	(%rdi), %xmm0
	addl	$1, %r13d
	addq	$8, %rdi
	addq	$8, %rcx
	vaddsd	16(%r12,%rdx), %xmm0, %xmm0
	addq	$8, %rax
	addq	$8, %rsi
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	(%r12,%rdx), %xmm0, %xmm0
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	8(%r12,%rdx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm0
	vaddsd	24(%r12,%rdx), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	16(%rsi), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vaddsd	32(%r12,%rdx), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	vmulsd	16(%r15,%rdx), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%r14,%rdx)
	addq	$8, %rdx
	cmpl	%r9d, %r13d
	jne	.L27
	movl	%r13d, -292(%rbp)
.L26:
	movl	-296(%rbp), %esi
	movl	%r8d, %eax
	movq	-272(%rbp), %rcx
	movq	-208(%rbp), %r9
	subl	%r8d, %esi
	movq	-216(%rbp), %r8
	movl	%esi, -316(%rbp)
	shrl	$2, %esi
	movl	%esi, -76(%rbp)
	movq	-248(%rbp), %rsi
	leaq	2(%rax,%rsi), %rdx
	leaq	0(,%rdx,8), %rdi
	leaq	0(,%rax,8), %rdx
	addq	%rdi, %rcx
	movq	%rdi, -72(%rbp)
	movq	%rcx, -88(%rbp)
	leaq	(%r12,%rdi), %rcx
	movq	-256(%rbp), %rdi
	movq	%rcx, -96(%rbp)
	leaq	(%rdx,%rbx), %rcx
	leaq	(%r12,%rcx), %rbx
	leaq	(%rdx,%r11), %rcx
	movq	%rbx, -104(%rbp)
	leaq	(%r12,%rcx), %rbx
	movq	%rbx, -112(%rbp)
	movq	-224(%rbp), %rbx
	leaq	(%rdx,%rbx), %rcx
	leaq	(%r12,%rcx), %rbx
	movq	%rbx, -120(%rbp)
	movq	-240(%rbp), %rbx
	leaq	(%rdx,%rbx), %rcx
	addq	%r10, %rdx
	leaq	(%r12,%rcx), %rbx
	movq	%rbx, -128(%rbp)
	leaq	(%r12,%rdx), %rbx
	movq	%rbx, -136(%rbp)
	movq	-232(%rbp), %rbx
	leaq	1(%rax,%rbx), %rdx
	leaq	(%r12,%rdx,8), %rcx
	leaq	1(%rax,%rdi), %rdx
	movq	%rcx, -144(%rbp)
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -152(%rbp)
	leaq	1(%rax,%rsi), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -160(%rbp)
	leaq	1(%rax,%r9), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -168(%rbp)
	leaq	1(%rax,%r8), %rdx
	leaq	(%r12,%rdx,8), %r15
	leaq	2(%rax,%rbx), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -176(%rbp)
	leaq	2(%rax,%rdi), %rdx
	leaq	(%r12,%rdx,8), %r14
	leaq	2(%rax,%r9), %rdx
	leaq	(%r12,%rdx,8), %r13
	leaq	2(%rax,%r8), %rdx
	leaq	(%r12,%rdx,8), %rcx
	leaq	3(%rax,%rbx), %rdx
	movq	%rcx, -200(%rbp)
	movq	%rbx, %rcx
	leaq	(%r12,%rdx,8), %rbx
	leaq	3(%rax,%rdi), %rdx
	leaq	(%r12,%rdx,8), %r11
	leaq	3(%rax,%rsi), %rdx
	leaq	(%r12,%rdx,8), %r10
	leaq	3(%rax,%r9), %rdx
	leaq	(%r12,%rdx,8), %r9
	leaq	3(%rax,%r8), %rdx
	leaq	(%r12,%rdx,8), %r8
	leaq	4(%rax,%rcx), %rdx
	movq	-208(%rbp), %rcx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -184(%rbp)
	leaq	4(%rax,%rdi), %rdx
	leaq	(%r12,%rdx,8), %rdi
	leaq	4(%rax,%rsi), %rdx
	leaq	(%r12,%rdx,8), %rsi
	leaq	4(%rax,%rcx), %rdx
	leaq	(%r12,%rdx,8), %rcx
	movq	-216(%rbp), %rdx
	leaq	4(%rax,%rdx), %rax
	leaq	(%r12,%rax,8), %rdx
	movq	-72(%rbp), %rax
	movl	$0, -72(%rbp)
	addq	-264(%rbp), %rax
	movq	%rax, -192(%rbp)
	xorl	%eax, %eax
	movq	%r12, -328(%rbp)
	movq	-200(%rbp), %r12
	movq	%rdx, -200(%rbp)
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L28:
	movq	-96(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	movq	-104(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-112(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-120(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-128(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-136(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-144(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-152(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-160(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-168(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-176(%rbp), %rdx
	vmovupd	(%r15,%rax), %xmm0
	vinsertf128	$0x1, 16(%r15,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r14,%rax), %xmm0
	vinsertf128	$0x1, 16(%r14,%rax), %ymm0, %ymm0
	movq	-184(%rbp), %rdx
	vmovupd	(%rdi,%rax), %xmm2
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	0(%r13,%rax), %xmm0
	vinsertf128	$0x1, 16(%r13,%rax), %ymm0, %ymm0
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
	vmovupd	(%r8,%rax), %xmm0
	vinsertf128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm2, %ymm0
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-200(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%rsi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm1, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%rcx,%rax), %xmm2
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	movq	-88(%rbp), %rdx
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	movq	-192(%rbp), %rdx
	vmulpd	%ymm0, %ymm1, %ymm0
	addl	$1, -72(%rbp)
	vmovups	%xmm0, (%rdx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rax)
	movl	-72(%rbp), %edx
	addq	$32, %rax
	cmpl	%edx, -76(%rbp)
	ja	.L28
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-316(%rbp), %ebx
	movl	-292(%rbp), %eax
	movq	-328(%rbp), %r12
	movl	%ebx, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %ebx
	je	.L32
.L25:
	movq	-248(%rbp), %rbx
	cltq
	movl	-448(%rbp), %r9d
	movq	-304(%rbp), %r10
	movq	-312(%rbp), %r11
	leaq	(%rax,%rbx), %rdx
	movq	-256(%rbp), %rbx
	leaq	(%r12,%rdx,8), %r8
	leaq	(%rax,%rbx), %rdx
	movq	-208(%rbp), %rbx
	leaq	(%r12,%rdx,8), %rdi
	leaq	(%rax,%rbx), %rdx
	movq	-216(%rbp), %rbx
	leaq	(%r12,%rdx,8), %rsi
	leaq	(%rax,%rbx), %rdx
	movq	-232(%rbp), %rbx
	leaq	(%r12,%rdx,8), %rcx
	leaq	(%rax,%rbx), %rdx
	leaq	-16(%r12,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L30:
	vmovsd	(%rdx), %xmm0
	addq	$8, %r8
	addq	$8, %rdi
	addq	$8, %rsi
	vaddsd	-8(%r8), %xmm0, %xmm0
	addq	$8, %rcx
	addq	$8, %rdx
	vaddsd	-24(%rdi), %xmm0, %xmm0
	vaddsd	-24(%r8), %xmm0, %xmm0
	vaddsd	-24(%rsi), %xmm0, %xmm0
	vaddsd	-24(%rcx), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	-16(%rdi), %xmm0, %xmm0
	vaddsd	-16(%r8), %xmm0, %xmm0
	vaddsd	-16(%rsi), %xmm0, %xmm0
	vaddsd	-16(%rcx), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%r8), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vmulsd	(%r11,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%rax,8)
	addq	$1, %rax
	cmpl	%eax, %r9d
	jg	.L30
.L32:
	movq	-360(%rbp), %rax
	movq	-352(%rbp), %rbx
	addq	%rax, -280(%rbp)
	addq	%rbx, -248(%rbp)
	addq	%rbx, -232(%rbp)
	addq	%rbx, -256(%rbp)
	addq	%rbx, -208(%rbp)
	addq	%rbx, -216(%rbp)
	addq	%rax, -304(%rbp)
	addq	%rax, -288(%rbp)
	addq	%rax, -312(%rbp)
	addq	%rax, -224(%rbp)
	addq	%rax, -240(%rbp)
	movl	-80(%rbp), %ebx
	cmpl	%ebx, -320(%rbp)
	jg	.L33
	movq	%r12, %r13
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L91
	movq	%r13, %rdi
	call	dummy
	movq	-264(%rbp), %rdi
	call	dummy
	movq	-272(%rbp), %rdi
	call	dummy
.L91:
	addq	$416, %rsp
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
.L95:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	%rax, %r11
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L37:
	movq	-240(%rbp), %rbx
	movl	$2, %r8d
	movq	-336(%rbp), %rsi
	movq	-224(%rbp), %rdi
	movq	-304(%rbp), %r9
	addq	-392(%rbp), %rdi
	addq	%rbx, %rsi
	addq	-344(%rbp), %rbx
	movq	-312(%rbp), %r10
	movq	-456(%rbp), %r11
	movq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	(%rdi), %xmm0
	addq	$8, %rdx
	addq	$8, %rdi
	addq	$8, %rsi
	vaddsd	8(%rdx), %xmm0, %xmm0
	addq	$8, %rax
	addq	$8, %rcx
	vaddsd	-8(%rsi), %xmm0, %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	vaddsd	16(%rsi), %xmm0, %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vmulsd	(%r10,%r8,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r9,%r8,8)
	addq	$1, %r8
	cmpq	%r11, %r8
	jne	.L31
	jmp	.L32
.L60:
	movl	$2, %eax
	jmp	.L25
.L97:
	testl	%r15d, %r15d
	jle	.L100
	movl	%r15d, %edi
	cmpl	$4, %r12d
	jbe	.L62
	movq	$0, -272(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L98:
	movq	%r13, %rdi
	vzeroupper
	call	dummy
	movq	-264(%rbp), %rdi
	call	dummy
	movq	-272(%rbp), %rdi
	call	dummy
	cmpl	$2, -320(%rbp)
	jg	.L23
	jmp	.L24
.L52:
	movl	$1, %edi
	jmp	.L5
.L62:
	movq	$0, -272(%rbp)
	xorl	%eax, %eax
	jmp	.L45
.L3:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L41
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)
.L10:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -272(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)
	jmp	.L17
.L94:
	vzeroupper
	jmp	.L8
.L58:
	movl	$1, %eax
	jmp	.L18
.L96:
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
.L90:
	vzeroupper
	jmp	.L24
.L59:
	movl	$2, %eax
	jmp	.L18
.L99:
	vzeroupper
	jmp	.L91
.L50:
	xorl	%eax, %eax
	jmp	.L4
.L100:
	movq	$0, -272(%rbp)
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
