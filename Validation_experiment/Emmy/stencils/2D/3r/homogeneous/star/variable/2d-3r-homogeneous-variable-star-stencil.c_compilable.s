	.file	"2d-3r-homogeneous-variable-star-stencil.c_compilable.c"
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
	subq	$384, %rsp
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
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L97
.L41:
	movq	$0, -56(%rbp)
	movq	$0, -120(%rbp)
	testl	%r15d, %r15d
	jle	.L10
	movq	-120(%rbp), %r9
	leal	-1(%r15), %r12d
.L40:
	testl	%r15d, %r15d
	movl	$1, %esi
	movq	%r9, %rax
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
	vmovsd	%xmm0, (%r9)
	cmpl	$1, %eax
	je	.L56
	vmovsd	%xmm0, 8(%r9)
	cmpl	$3, %eax
	jne	.L57
	vmovsd	%xmm0, 16(%r9)
	movl	$3, %ecx
.L12:
	movq	-120(%rbp), %rdx
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
	je	.L98
	vzeroupper
.L11:
	movq	-120(%rbp), %rdi
	movslq	%ecx, %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	1(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	2(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	3(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	4(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	5(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L15:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L99
	movq	-56(%rbp), %rcx
	testl	%r15d, %r15d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r15d, %edi
	movq	%rcx, -128(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
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
	movq	-128(%rbp), %rax
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
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L17:
	movl	-72(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$3, %eax
	movl	%eax, -324(%rbp)
	testl	%edx, %edx
	jne	.L100
	cmpl	$3, -324(%rbp)
	jle	.L101
.L23:
	leal	-3(%rbx), %eax
	movl	%eax, -404(%rbp)
	cmpl	$3, %eax
	jle	.L92
	leal	(%rbx,%rbx), %edx
	movq	-120(%rbp), %rsi
	movslq	%ebx, %rdi
	movl	%ebx, -348(%rbp)
	leal	(%rdx,%rbx), %ecx
	movq	-128(%rbp), %r8
	movq	%rdi, -336(%rbp)
	movslq	%ecx, %r10
	movl	%ebx, -236(%rbp)
	leaq	0(,%rdi,8), %rax
	movq	%r10, -152(%rbp)
	movq	%rax, -344(%rbp)
	leaq	24(,%r10,8), %rax
	leaq	(%rsi,%rax), %r9
	subq	$24, %rax
	movl	%ecx, -300(%rbp)
	movq	%r9, -264(%rbp)
	leaq	(%rsi,%rax), %r9
	addq	%r8, %rax
	leaq	56(%rsi,%r10,8), %rsi
	salq	$3, %r10
	movq	%rax, -296(%rbp)
	movslq	%edx, %rax
	movq	%rsi, -272(%rbp)
	leaq	0(,%rax,8), %rsi
	movq	%r9, -288(%rbp)
	leaq	0(%r13,%rsi), %r9
	movq	%rax, -144(%rbp)
	leal	0(,%rbx,4), %eax
	addq	%r9, %rsi
	movslq	%eax, %r15
	movq	%rsi, -208(%rbp)
	movq	%r15, -160(%rbp)
	movq	%rsi, %r15
	leaq	0(,%rdi,4), %rsi
	movq	%r9, -200(%rbp)
	movq	%rdi, %r9
	subq	%rsi, %rdi
	movl	%eax, -136(%rbp)
	leaq	(%r15,%rdi,8), %r15
	movq	%r10, -112(%rbp)
	leal	(%rax,%rbx), %edi
	movq	%r15, -216(%rbp)
	movslq	%edi, %rsi
	movl	%edx, -276(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%r9, %rsi
	salq	$5, %rsi
	movl	%edi, -240(%rbp)
	addq	%r15, %rsi
	movq	%r9, -168(%rbp)
	movq	%rsi, -224(%rbp)
	leal	(%rcx,%rcx), %esi
	movslq	%esi, %r15
	movl	%esi, -244(%rbp)
	leaq	0(,%r15,8), %rax
	movq	%r15, -192(%rbp)
	movq	%rax, -256(%rbp)
	leal	-7(%rbx), %eax
	subl	$6, %ebx
	movq	%r13, -232(%rbp)
	movl	$4, -308(%rbp)
	movl	$3, -304(%rbp)
	movl	$5, -328(%rbp)
	movq	$0, -184(%rbp)
	movl	$3, -248(%rbp)
	movl	%ebx, -280(%rbp)
	leaq	80(%r13), %rbx
	movq	%rbx, -376(%rbp)
	leaq	56(%r8), %rbx
	movq	%rbx, -368(%rbp)
	leaq	24(%r8), %rbx
	movq	%rbx, -360(%rbp)
	leaq	56(%r13), %rbx
	movq	%rbx, -384(%rbp)
	leaq	24(%r13), %rbx
	movl	%eax, -352(%rbp)
	addq	$4, %rax
	movq	%rbx, -392(%rbp)
	leaq	16(%r13), %rbx
	movq	%rbx, -400(%rbp)
	movq	%rax, -416(%rbp)
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-208(%rbp), %rcx
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rbx
	movq	-200(%rbp), %r8
	leaq	56(%rcx), %rdx
	movq	-112(%rbp), %r14
	addl	$1, -248(%rbp)
	cmpq	%rdx, %rdi
	setnb	%sil
	leaq	24(%rcx), %rdx
	leaq	0(%r13,%r14), %rax
	cmpq	%rdx, %rbx
	setbe	%dl
	orl	%edx, %esi
	leaq	56(%r8), %rdx
	cmpq	%rdx, %rdi
	leaq	24(%r8), %rdx
	setnb	%cl
	cmpq	%rdx, %rbx
	setbe	%dl
	orl	%ecx, %edx
	andl	%esi, %edx
	cmpl	$5, -280(%rbp)
	movq	-216(%rbp), %rsi
	seta	%cl
	andl	%ecx, %edx
	leaq	56(%rsi), %rcx
	cmpq	%rcx, %rdi
	setnb	%cl
	addq	$24, %rsi
	cmpq	%rsi, %rbx
	setbe	%sil
	orl	%esi, %ecx
	movq	-224(%rbp), %rsi
	andl	%ecx, %edx
	leaq	56(%rsi), %rcx
	cmpq	%rcx, %rdi
	setnb	%cl
	addq	$24, %rsi
	cmpq	%rsi, %rbx
	setbe	%sil
	orl	%esi, %ecx
	movq	-232(%rbp), %rsi
	andl	%ecx, %edx
	leaq	56(%rsi), %rcx
	cmpq	%rcx, %rdi
	setnb	%cl
	addq	$24, %rsi
	cmpq	%rsi, %rbx
	setbe	%sil
	orl	%esi, %ecx
	andl	%ecx, %edx
	movq	-376(%rbp), %rcx
	addq	%r14, %rcx
	cmpq	%rcx, %rdi
	setnb	%cl
	cmpq	%rax, %rbx
	setbe	%sil
	orl	%esi, %ecx
	movq	-360(%rbp), %rsi
	andl	%ecx, %edx
	movq	-368(%rbp), %rcx
	addq	%r14, %rcx
	cmpq	%rcx, %rdi
	setnb	%cl
	addq	%r14, %rsi
	cmpq	%rsi, %rbx
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L37
	movq	-256(%rbp), %rsi
	movq	-384(%rbp), %rdx
	addq	%rsi, %rdx
	cmpq	%rdx, %rdi
	movq	-392(%rbp), %rdx
	setnb	%cl
	addq	%rsi, %rdx
	cmpq	%rdx, %rbx
	setbe	%dl
	orb	%dl, %cl
	je	.L37
	movq	-400(%rbp), %rdx
	addq	%r14, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	%eax, -352(%rbp)
	jb	.L60
	movl	$3, -132(%rbp)
	testl	%edx, %edx
	je	.L26
	movl	-300(%rbp), %r15d
	movl	$4, -132(%rbp)
	movl	-276(%rbp), %r11d
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
	movl	-136(%rbp), %r11d
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
	movl	-236(%rbp), %r11d
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	addl	$3, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-240(%rbp), %r11d
	addl	$3, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movslq	-304(%rbp), %r11
	vaddsd	0(%r13,%r14), %xmm0, %xmm0
	movl	-244(%rbp), %r14d
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	leal	3(%r14), %r11d
	movq	-128(%rbp), %r14
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	vmulsd	(%r14,%rax,8), %xmm0, %xmm0
	movq	-120(%rbp), %r14
	vmovsd	%xmm0, (%r14,%rax,8)
	cmpl	$1, %edx
	je	.L26
	movl	-276(%rbp), %r14d
	leal	7(%r15), %eax
	movl	$5, -132(%rbp)
	vmovsd	(%r9), %xmm0
	cltq
	vaddsd	(%rbx), %xmm0, %xmm0
	leaq	0(%r13,%rax,8), %rax
	vaddsd	(%r8), %xmm0, %xmm0
	leal	4(%r14), %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-136(%rbp), %r11d
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-236(%rbp), %r11d
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-240(%rbp), %r11d
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	movslq	-308(%rbp), %r10
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	0(%r13,%r10,8), %xmm0, %xmm0
	movl	-244(%rbp), %r10d
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	0(%r13,%r10,8), %xmm0, %xmm0
	movq	-128(%rbp), %r10
	vmulsd	(%r10,%rcx,8), %xmm0, %xmm0
	movq	-120(%rbp), %r10
	vmovsd	%xmm0, (%r10,%rcx,8)
	cmpl	$3, %edx
	jne	.L26
	movl	-136(%rbp), %r11d
	leal	5(%r14), %ecx
	movl	$6, -132(%rbp)
	movslq	%ecx, %rcx
	vmovsd	(%r9), %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	leal	5(%r11), %ecx
	movl	-236(%rbp), %r11d
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	leal	5(%r11), %eax
	movl	-240(%rbp), %r11d
	cltq
	movl	-244(%rbp), %r10d
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	5(%r11), %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	8(%r15), %eax
	cltq
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	movslq	-328(%rbp), %rax
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	5(%r10), %eax
	movq	-128(%rbp), %r10
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vmulsd	(%r10,%r12,8), %xmm0, %xmm0
	movq	-120(%rbp), %r10
	vmovsd	%xmm0, (%r10,%r12,8)
.L26:
	movq	-152(%rbp), %rdi
	movl	%edx, %eax
	movq	%r13, -320(%rbp)
	movl	-280(%rbp), %ecx
	movq	-128(%rbp), %r15
	subl	%edx, %ecx
	leaq	2(%rax,%rdi), %rdx
	movl	%ecx, -312(%rbp)
	shrl	$2, %ecx
	leaq	0(%r13,%rdx,8), %rsi
	movl	%ecx, -72(%rbp)
	movq	%rsi, -88(%rbp)
	movq	-144(%rbp), %rsi
	leaq	4(%rax,%rdi), %rdx
	leaq	0(%r13,%rdx,8), %r14
	leaq	3(%rax,%rdi), %rcx
	salq	$3, %rcx
	leaq	3(%rax,%rsi), %rdx
	movq	-160(%rbp), %rsi
	movq	%rcx, -104(%rbp)
	addq	%rcx, %r15
	leaq	0(%r13,%rcx), %rbx
	leaq	0(%r13,%rdx,8), %rcx
	movq	%rbx, -80(%rbp)
	leaq	3(%rax,%rsi), %rdx
	movq	-168(%rbp), %rsi
	leaq	0(%r13,%rdx,8), %r12
	leaq	1(%rax,%rdi), %rdx
	leaq	0(%r13,%rdx,8), %rbx
	leaq	5(%rax,%rdi), %rdx
	leaq	0(%r13,%rdx,8), %r11
	leaq	3(%rax,%rsi), %rdx
	movq	-176(%rbp), %rsi
	leaq	0(%r13,%rdx,8), %r10
	leaq	3(%rax,%rsi), %rdx
	movq	-112(%rbp), %rsi
	leaq	0(%r13,%rdx,8), %r9
	leaq	6(%rax,%rdi), %rdx
	leaq	0(%r13,%rdx,8), %rdi
	movq	%rdi, -96(%rbp)
	movq	-184(%rbp), %rdi
	leaq	(%rsi,%rax,8), %rsi
	addq	%r13, %rsi
	leaq	3(%rax,%rdi), %rdx
	movq	-192(%rbp), %rdi
	leaq	0(%r13,%rdx,8), %r8
	xorl	%edx, %edx
	leaq	3(%rax,%rdi), %rax
	leaq	0(%r13,%rax,8), %rdi
	movq	-104(%rbp), %rax
	movl	%edx, %r13d
	addq	-120(%rbp), %rax
	movq	%rax, -104(%rbp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L28:
	movq	-80(%rbp), %rdx
	addl	$1, %r13d
	vmovupd	(%r14,%rax), %xmm0
	vinsertf128	$0x1, 16(%r14,%rax), %ymm0, %ymm0
	vmovupd	(%r8,%rax), %xmm2
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	movq	-88(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-96(%rbp), %rdx
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
	vaddpd	%ymm0, %ymm1, %ymm1
	vinsertf128	$0x1, 16(%r8,%rax), %ymm2, %ymm0
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-104(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%rdi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%r15,%rax), %xmm0
	vinsertf128	$0x1, 16(%r15,%rax), %ymm0, %ymm0
	vmulpd	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpl	%r13d, -72(%rbp)
	ja	.L28
	movl	-312(%rbp), %edi
	movl	-132(%rbp), %edx
	movq	-320(%rbp), %r13
	movl	%edi, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %edi
	je	.L32
.L25:
	movq	-152(%rbp), %rbx
	movslq	%edx, %rdx
	movq	-144(%rbp), %r10
	movq	-160(%rbp), %r9
	movq	-168(%rbp), %r8
	movq	-176(%rbp), %rdi
	leaq	(%rdx,%rbx), %rax
	movq	-184(%rbp), %rsi
	leaq	0(%r13,%rax,8), %rax
	subq	%rbx, %r10
	movq	-192(%rbp), %rcx
	subq	%rbx, %r9
	subq	%rbx, %r8
	movl	-404(%rbp), %r11d
	subq	%rbx, %rdi
	movq	-296(%rbp), %r12
	subq	%rbx, %rsi
	subq	%rbx, %rcx
	movq	-288(%rbp), %rbx
	.p2align 4,,10
	.p2align 3
.L30:
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
	vmulsd	(%r12,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %r11d
	jg	.L30
.L32:
	movq	-344(%rbp), %rax
	movq	-336(%rbp), %rsi
	addq	%rax, -264(%rbp)
	addq	%rax, -288(%rbp)
	addq	%rax, -272(%rbp)
	addq	%rax, -296(%rbp)
	addq	%rax, -200(%rbp)
	addq	%rax, -208(%rbp)
	addq	%rax, -216(%rbp)
	addq	%rax, -224(%rbp)
	addq	%rax, -232(%rbp)
	addq	%rsi, -144(%rbp)
	addq	%rsi, -152(%rbp)
	addq	%rsi, -160(%rbp)
	addq	%rsi, -168(%rbp)
	addq	%rsi, -176(%rbp)
	addq	%rsi, -184(%rbp)
	addq	%rsi, -192(%rbp)
	movl	-348(%rbp), %ebx
	addq	%rax, -112(%rbp)
	addl	%ebx, -300(%rbp)
	addl	%ebx, -276(%rbp)
	addl	%ebx, -136(%rbp)
	addl	%ebx, -236(%rbp)
	addl	%ebx, -240(%rbp)
	addl	%ebx, -328(%rbp)
	addl	%ebx, -244(%rbp)
	addl	%ebx, -304(%rbp)
	addl	%ebx, -308(%rbp)
	addq	%rax, -256(%rbp)
	movl	-248(%rbp), %edi
	cmpl	%edi, -324(%rbp)
	jg	.L33
.L92:
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L93
	movq	%r13, %rdi
	call	dummy
	movq	-120(%rbp), %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
.L93:
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
.L97:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	%rax, %r9
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L37:
	movq	-256(%rbp), %rbx
	movl	$3, %edx
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rdi
	movq	-208(%rbp), %r9
	leaq	0(%r13,%rbx), %rcx
	movq	-216(%rbp), %r10
	movq	-224(%rbp), %r11
	movq	-232(%rbp), %rbx
	movq	-416(%rbp), %r12
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	16(%rax), %xmm0
	addq	$8, %rax
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	(%r8,%rdx,8), %xmm0, %xmm0
	vaddsd	(%r9,%rdx,8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	(%r10,%rdx,8), %xmm0, %xmm0
	vaddsd	(%r11,%rdx,8), %xmm0, %xmm0
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vaddsd	(%rcx,%rdx,8), %xmm0, %xmm0
	vmulsd	(%rdi,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
	addq	$1, %rdx
	cmpq	%r12, %rdx
	jne	.L31
	jmp	.L32
.L60:
	movl	$3, %edx
	jmp	.L25
.L99:
	testl	%r15d, %r15d
	jle	.L102
	movl	%r15d, %edi
	cmpl	$4, %r12d
	jbe	.L64
	xorl	%edx, %edx
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
	jmp	.L18
.L100:
	movq	%r13, %rdi
	vzeroupper
	call	dummy
	movq	-120(%rbp), %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	cmpl	$3, -324(%rbp)
	jg	.L23
	jmp	.L24
.L52:
	movl	$1, %edi
	jmp	.L5
.L64:
	movq	$0, -128(%rbp)
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
	movq	%rax, -120(%rbp)
.L10:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -128(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
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
.L59:
	movl	$2, %eax
	jmp	.L18
.L57:
	movl	$2, %ecx
	jmp	.L12
.L53:
	movl	$2, %edi
	jmp	.L5
.L101:
	vzeroupper
	jmp	.L93
.L50:
	xorl	%eax, %eax
	jmp	.L4
.L102:
	movq	$0, -128(%rbp)
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
