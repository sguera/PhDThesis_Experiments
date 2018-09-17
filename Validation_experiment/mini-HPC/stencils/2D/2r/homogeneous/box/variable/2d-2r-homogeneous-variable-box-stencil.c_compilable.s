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
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rsi, %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	subq	$448, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r15
	movq	%rax, -72(%rbp)
	call	strtol
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r15d
	movq	%rax, %rbx
	movslq	%r15d, %r14
	leaq	0(,%r14,8), %r13
	movq	%r13, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r14
	testl	%r15d, %r15d
	jle	.L3
	movq	%r14, %rax
	movl	$5, %ecx
	leal	-1(%r15), %r12d
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
	vmovsd	%xmm0, (%r14)
	cmpl	$1, %eax
	je	.L52
	vmovsd	%xmm0, 8(%r14)
	cmpl	$3, %eax
	jne	.L53
	vmovsd	%xmm0, 16(%r14)
	movl	$3, %edi
.L5:
	movl	%r15d, %esi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r14,%rax,8), %rdx
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
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r14,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r14,%rax,8)
.L8:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L95
.L41:
	movq	$0, -56(%rbp)
	movq	$0, -232(%rbp)
	testl	%r15d, %r15d
	jle	.L10
	movq	-232(%rbp), %r11
	leal	-1(%r15), %r12d
.L40:
	testl	%r15d, %r15d
	movl	$1, %esi
	movq	%r11, %rax
	movl	$0, %ecx
	cmovg	%r15d, %esi
	shrq	$3, %rax
	movl	$5, %edi
	negq	%rax
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
	movq	-232(%rbp), %rdx
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
	je	.L96
	vzeroupper
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movq	-232(%rbp), %rsi
	movslq	%ecx, %rax
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
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L97
	movq	-56(%rbp), %rsi
	testl	%r15d, %r15d
	movl	$1, %edi
	cmovg	%r15d, %edi
	movq	%rsi, -240(%rbp)
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
	vmovsd	.LC4(%rip), %xmm0
	movq	-240(%rbp), %rax
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
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	movslq	%eax, %rdx
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
	movl	var_false(%rip), %edx
	leal	-2(%rbx), %eax
	movl	%eax, -348(%rbp)
	testl	%edx, %edx
	jne	.L98
	cmpl	$2, -348(%rbp)
	jle	.L99
.L23:
	movq	-72(%rbp), %rsi
	movl	%esi, %eax
	subl	$2, %eax
	movl	%eax, -460(%rbp)
	cmpl	$2, %eax
	jle	.L90
	movl	%esi, %eax
	movq	-232(%rbp), %rbx
	movslq	%esi, %rdi
	movq	%r14, %r10
	addl	%eax, %eax
	leaq	0(,%rdi,8), %r15
	movq	%rdi, -376(%rbp)
	movslq	%eax, %r11
	addl	%esi, %eax
	movq	%r15, -384(%rbp)
	leaq	16(,%r11,8), %rcx
	cltq
	movq	%rdi, -256(%rbp)
	leaq	(%rbx,%rcx), %rdx
	leaq	0(,%rax,8), %r12
	movq	%rax, -216(%rbp)
	movl	%esi, %eax
	movq	%rdx, -272(%rbp)
	leaq	-16(%rcx), %rdx
	sall	$2, %eax
	leaq	(%rbx,%rdx), %r13
	leaq	32(%rbx,%rcx), %rbx
	movq	-240(%rbp), %rcx
	movq	%r11, -248(%rbp)
	movq	%rbx, -280(%rbp)
	movq	%rdx, %rbx
	leaq	(%rcx,%rdx), %r9
	movslq	%eax, %rdx
	movq	%rdi, %rax
	subq	%rbx, %r10
	subq	%r11, %rax
	leal	-4(%rsi), %edi
	movq	%rdx, -208(%rbp)
	salq	$3, %rax
	movl	%edi, -292(%rbp)
	leaq	64(%r14), %rdi
	movq	%rax, -400(%rbp)
	leaq	(%r15,%r14), %rax
	subq	%r12, %rax
	movq	%rdi, -288(%rbp)
	leaq	48(%rcx), %rdi
	movq	%rax, %r15
	movq	%rax, -360(%rbp)
	movq	%rdx, %rax
	subq	%r11, %rax
	movq	%rdi, -448(%rbp)
	leaq	64(%r10), %rdi
	salq	$3, %rax
	movq	%rdi, -424(%rbp)
	movq	%rax, -408(%rbp)
	leaq	(%r14,%rdx,8), %rax
	subq	%r12, %rax
	movq	%r10, -392(%rbp)
	movq	%rbx, %r10
	movq	%rax, %rdx
	movq	%rax, -368(%rbp)
	leaq	0(,%r11,8), %rax
	movq	%r14, %r11
	subq	%rax, %r11
	leal	-5(%rsi), %eax
	leaq	16(%rcx), %rsi
	movq	$0, -224(%rbp)
	movl	%eax, -352(%rbp)
	leaq	64(%rdx), %rdi
	addq	$3, %rax
	movq	%rsi, -432(%rbp)
	leaq	64(%r15), %rsi
	movl	$2, -260(%rbp)
	movq	%rsi, -440(%rbp)
	movq	%rdi, -456(%rbp)
	movq	%rax, -472(%rbp)
	movq	%r11, -416(%rbp)
	movq	%r12, %r11
	movq	%r9, %r12
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-408(%rbp), %rdi
	movq	-224(%rbp), %rax
	leaq	(%r14,%r10), %rdx
	movq	-272(%rbp), %r9
	movq	-280(%rbp), %r15
	leaq	(%r10,%rdi), %rsi
	leaq	0(,%rax,8), %rbx
	movq	-400(%rbp), %rax
	addl	$1, -260(%rbp)
	movq	%rsi, -120(%rbp)
	movq	-448(%rbp), %rsi
	addq	%r10, %rax
	movq	-392(%rbp), %r8
	leaq	(%rsi,%r10), %rcx
	movq	-432(%rbp), %rsi
	movq	%rax, -96(%rbp)
	leaq	(%r14,%r11), %rax
	cmpq	%rcx, %r9
	leaq	(%rsi,%r10), %rcx
	setnb	%dil
	movq	-288(%rbp), %rsi
	cmpq	%rcx, %r15
	setbe	%cl
	orl	%ecx, %edi
	leaq	(%rsi,%r10), %rcx
	cmpq	%rcx, %r9
	setnb	%cl
	cmpq	%rdx, %r15
	setbe	%sil
	orl	%ecx, %esi
	andl	%edi, %esi
	cmpl	$4, -292(%rbp)
	leaq	(%r10,%r8), %rdi
	seta	%cl
	andl	%ecx, %esi
	movq	-424(%rbp), %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r9
	setnb	%cl
	cmpq	%rdi, %r15
	setbe	%dil
	orl	%edi, %ecx
	andl	%ecx, %esi
	movq	-440(%rbp), %rcx
	addq	%r11, %rcx
	cmpq	%rcx, %r9
	movq	-360(%rbp), %rcx
	setnb	%dil
	addq	%r11, %rcx
	cmpq	%rcx, %r15
	setbe	%r8b
	orl	%r8d, %edi
	andl	%edi, %esi
	movq	-288(%rbp), %rdi
	addq	%r11, %rdi
	cmpq	%rdi, %r9
	setnb	%dil
	cmpq	%rax, %r15
	setbe	%r8b
	orl	%r8d, %edi
	testb	%dil, %sil
	je	.L37
	movq	-456(%rbp), %rdi
	leaq	(%rdi,%r11), %rsi
	movq	-368(%rbp), %rdi
	cmpq	%rsi, %r9
	leaq	(%r11,%rdi), %rsi
	setnb	%r8b
	cmpq	%rsi, %r15
	setbe	%dil
	orb	%dil, %r8b
	je	.L37
	movq	-416(%rbp), %rdi
	addq	%r10, %rdi
	movq	%rdi, %r8
	shrq	$3, %r8
	negq	%r8
	andl	$3, %r8d
	leal	3(%r8), %edx
	cmpl	%edx, -352(%rbp)
	jb	.L60
	movl	$2, %r15d
	movl	%r15d, -264(%rbp)
	testl	%r8d, %r8d
	je	.L26
	movl	%r8d, -72(%rbp)
	leal	2(%r8), %r9d
	movq	%r10, %rdx
.L27:
	vmovsd	(%rdi), %xmm0
	addl	$1, %r15d
	addq	$8, %rdi
	addq	$8, %rcx
	movq	-240(%rbp), %r8
	vaddsd	16(%r14,%rdx), %xmm0, %xmm0
	addq	$8, %rax
	addq	$8, %rsi
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	(%r14,%rdx), %xmm0, %xmm0
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	8(%r14,%rdx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm0
	vaddsd	24(%r14,%rdx), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	16(%rsi), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vaddsd	32(%r14,%rdx), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	vmulsd	16(%r8,%rdx), %xmm0, %xmm0
	movq	-232(%rbp), %r8
	vmovsd	%xmm0, 16(%r8,%rdx)
	addq	$8, %rdx
	cmpl	%r9d, %r15d
	jne	.L27
	movl	%r15d, -264(%rbp)
	movl	-72(%rbp), %r8d
.L26:
	movl	-292(%rbp), %edi
	movl	%r8d, %eax
	movq	-240(%rbp), %rsi
	leaq	0(,%rax,8), %rdx
	movq	-256(%rbp), %r9
	subl	%r8d, %edi
	movq	-216(%rbp), %r8
	movl	%edi, -296(%rbp)
	shrl	$2, %edi
	movl	%edi, -72(%rbp)
	movq	-248(%rbp), %rdi
	leaq	2(%rax,%rdi), %rcx
	salq	$3, %rcx
	addq	%rcx, %rsi
	leaq	(%r14,%rcx), %r15
	movq	%rsi, -80(%rbp)
	leaq	(%rdx,%rbx), %rsi
	leaq	(%r14,%rsi), %rbx
	movq	-96(%rbp), %rsi
	movq	%rbx, -88(%rbp)
	addq	%rdx, %rsi
	leaq	(%r14,%rsi), %rbx
	leaq	(%rdx,%r10), %rsi
	movq	%rbx, -96(%rbp)
	leaq	(%r14,%rsi), %rbx
	leaq	(%rdx,%r11), %rsi
	addq	-120(%rbp), %rdx
	movq	%rbx, -104(%rbp)
	leaq	(%r14,%rsi), %rbx
	movq	-224(%rbp), %rsi
	movq	%rbx, -112(%rbp)
	leaq	(%r14,%rdx), %rbx
	leaq	1(%rax,%rsi), %rdx
	movq	%rbx, -120(%rbp)
	leaq	(%r14,%rdx,8), %rbx
	leaq	1(%rax,%r9), %rdx
	movq	%rbx, -128(%rbp)
	leaq	(%r14,%rdx,8), %rbx
	leaq	1(%rax,%rdi), %rdx
	movq	%rbx, -136(%rbp)
	movq	%rdi, %rbx
	leaq	(%r14,%rdx,8), %rdi
	leaq	1(%rax,%r8), %rdx
	movq	%rdi, -144(%rbp)
	leaq	(%r14,%rdx,8), %rdi
	movq	%rdi, -152(%rbp)
	movq	-208(%rbp), %rdi
	leaq	1(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -160(%rbp)
	leaq	2(%rax,%rsi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -168(%rbp)
	leaq	2(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -176(%rbp)
	leaq	2(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -184(%rbp)
	leaq	2(%rax,%rdi), %rdx
	movq	%rsi, %rdi
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -192(%rbp)
	leaq	3(%rax,%rsi), %rdx
	leaq	(%r14,%rdx,8), %rsi
	leaq	3(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rsi, -304(%rbp)
	movq	%rbx, %rsi
	movq	%rdx, -312(%rbp)
	leaq	3(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rbx
	leaq	3(%rax,%r8), %rdx
	movq	%rbx, -320(%rbp)
	leaq	(%r14,%rdx,8), %rbx
	movq	-208(%rbp), %rdx
	leaq	3(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %r8
	leaq	4(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %rdi
	leaq	4(%rax,%r9), %rdx
	movq	%r8, -328(%rbp)
	movq	%rdi, -200(%rbp)
	leaq	(%r14,%rdx,8), %r9
	leaq	4(%rax,%rsi), %rdx
	movq	-216(%rbp), %rsi
	leaq	(%r14,%rdx,8), %r8
	addq	-232(%rbp), %rcx
	movq	%r14, -336(%rbp)
	leaq	4(%rax,%rsi), %rdx
	movq	%r13, -344(%rbp)
	movq	-328(%rbp), %r13
	leaq	(%r14,%rdx,8), %rdi
	movq	-208(%rbp), %rdx
	movq	%r12, -328(%rbp)
	movq	-320(%rbp), %r12
	movq	%r10, -320(%rbp)
	leaq	4(%rax,%rdx), %rax
	movq	-304(%rbp), %r10
	xorl	%edx, %edx
	movq	%r11, -304(%rbp)
	leaq	(%r14,%rax,8), %rsi
	movq	-200(%rbp), %r14
	movq	%rcx, -200(%rbp)
	xorl	%eax, %eax
	movq	-312(%rbp), %r11
	.p2align 4,,10
	.p2align 3
.L28:
	movq	-88(%rbp), %rcx
	vmovupd	(%r15,%rax), %ymm0
	addl	$1, %edx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-96(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-104(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-112(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-120(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-128(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-136(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-144(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-152(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-160(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-168(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-176(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-184(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-192(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%r12,%rax), %ymm0, %ymm0
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	movq	-80(%rbp), %rcx
	vaddpd	0(%r13,%rax), %ymm0, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	vaddpd	(%rsi,%rax), %ymm0, %ymm0
	vmulpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-200(%rbp), %rcx
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, -72(%rbp)
	ja	.L28
	movl	-296(%rbp), %ebx
	movl	-264(%rbp), %eax
	movq	-336(%rbp), %r14
	movq	-344(%rbp), %r13
	movl	%ebx, %edx
	movq	-328(%rbp), %r12
	movq	-320(%rbp), %r10
	andl	$-4, %edx
	movq	-304(%rbp), %r11
	addl	%edx, %eax
	cmpl	%edx, %ebx
	je	.L32
.L25:
	movq	-248(%rbp), %rbx
	cltq
	movl	-460(%rbp), %r9d
	leaq	(%rax,%rbx), %rdx
	movq	-256(%rbp), %rbx
	leaq	(%r14,%rdx,8), %r8
	leaq	(%rax,%rbx), %rdx
	movq	-216(%rbp), %rbx
	leaq	(%r14,%rdx,8), %rdi
	leaq	(%rax,%rbx), %rdx
	movq	-208(%rbp), %rbx
	leaq	(%r14,%rdx,8), %rsi
	leaq	(%rax,%rbx), %rdx
	movq	-224(%rbp), %rbx
	leaq	(%r14,%rdx,8), %rcx
	leaq	(%rax,%rbx), %rdx
	leaq	-16(%r14,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L30:
	vmovsd	(%rdx), %xmm0
	addq	$8, %r8
	addq	$8, %rdi
	addq	$8, %rsi
	vaddsd	-8(%r8), %xmm0, %xmm0
	vaddsd	-24(%rdi), %xmm0, %xmm0
	addq	$8, %rcx
	addq	$8, %rdx
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
	vmulsd	(%r12,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%rax,8)
	addq	$1, %rax
	cmpl	%eax, %r9d
	jg	.L30
.L32:
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rbx
	addq	%rax, -272(%rbp)
	addq	%rbx, -248(%rbp)
	addq	%rax, %r13
	addq	%rax, %r12
	addq	%rax, %r10
	addq	%rbx, -224(%rbp)
	addq	%rax, %r11
	addq	%rbx, -256(%rbp)
	addq	%rbx, -216(%rbp)
	addq	%rbx, -208(%rbp)
	movl	-260(%rbp), %ebx
	addq	%rax, -280(%rbp)
	cmpl	%ebx, -348(%rbp)
	jg	.L33
.L90:
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L91
	movq	%r14, %rdi
	call	dummy
	movq	-232(%rbp), %rdi
	call	dummy
	movq	-240(%rbp), %rdi
	call	dummy
.L91:
	addq	$448, %rsp
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
	movq	%rax, -232(%rbp)
	movq	%rax, %r11
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L37:
	movq	-416(%rbp), %rbx
	movq	-472(%rbp), %r9
	movl	$2, %r8d
	leaq	(%r10,%rbx), %rdi
	movq	-360(%rbp), %rbx
	leaq	(%r11,%rbx), %rsi
	movq	-368(%rbp), %rbx
	leaq	(%r11,%rbx), %rcx
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	(%rdi), %xmm0
	addq	$8, %rdx
	addq	$8, %rdi
	addq	$8, %rsi
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm0
	addq	$8, %rax
	addq	$8, %rcx
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
	vmulsd	(%r12,%r8,8), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%r8,8)
	addq	$1, %r8
	cmpq	%r9, %r8
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
	movq	$0, -240(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L98:
	movq	%r14, %rdi
	vzeroupper
	call	dummy
	movq	-232(%rbp), %rdi
	call	dummy
	movq	-240(%rbp), %rdi
	call	dummy
	cmpl	$2, -348(%rbp)
	jg	.L23
	jmp	.L24
.L52:
	movl	$1, %edi
	jmp	.L5
.L62:
	movq	$0, -240(%rbp)
	xorl	%eax, %eax
	jmp	.L45
.L3:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L41
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)
.L10:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -240(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)
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
.L59:
	movl	$2, %eax
	jmp	.L18
.L57:
	movl	$2, %ecx
	jmp	.L12
.L53:
	movl	$2, %edi
	jmp	.L5
.L99:
	vzeroupper
	jmp	.L91
.L50:
	xorl	%eax, %eax
	jmp	.L4
.L100:
	movq	$0, -240(%rbp)
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
