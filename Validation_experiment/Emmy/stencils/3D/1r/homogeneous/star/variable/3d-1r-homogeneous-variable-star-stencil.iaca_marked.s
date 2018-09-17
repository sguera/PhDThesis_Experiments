	.file	"3d-1r-homogeneous-variable-star-stencil.c_compilable.c"
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
	subq	$416, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r14
	movq	%rax, -88(%rbp)
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movl	%r14d, %ecx
	movl	$32, %esi
	imull	%eax, %ecx
	leaq	-56(%rbp), %rdi
	movq	%rax, %r15
	imull	%ebx, %ecx
	movslq	%ecx, %r12
	leaq	0(,%r12,8), %rax
	movq	%r12, %r14
	movq	%rax, %rdx
	movq	%rax, -72(%rbp)
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r12
	testl	%r14d, %r14d
	jle	.L3
	leal	-1(%r14), %r13d
	movq	%r12, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %r13d
	jb	.L52
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r12)
	cmpl	$1, %eax
	je	.L54
	vmovsd	%xmm0, 8(%r12)
	cmpl	$3, %eax
	jne	.L55
	vmovsd	%xmm0, 16(%r12)
	movl	$3, %r8d
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r12,%rax,8), %rdx
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
	je	.L98
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r12,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r12,%rax,8)
.L8:
	movq	-72(%rbp), %rdx
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L99
.L41:
	movq	$0, -56(%rbp)
	movq	$0, -80(%rbp)
	testl	%r14d, %r14d
	jle	.L10
	movq	-80(%rbp), %rcx
	leal	-1(%r14), %r13d
.L40:
	testl	%r14d, %r14d
	movl	$1, %edi
	movq	%rcx, %rax
	cmovg	%r14d, %edi
	shrq	$3, %rax
	movl	$0, %esi
	negq	%rax
	movl	$5, %r8d
	andl	$3, %eax
	testl	%r14d, %r14d
	leal	3(%rax), %edx
	cmovg	%r13d, %esi
	cmpl	$5, %edx
	cmovb	%r8d, %edx
	cmpl	%edx, %esi
	jb	.L56
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.L12
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx)
	cmpl	$1, %eax
	je	.L58
	vmovsd	%xmm0, 8(%rcx)
	cmpl	$3, %eax
	jne	.L59
	vmovsd	%xmm0, 16(%rcx)
	movl	$3, %esi
.L12:
	movq	-80(%rbp), %rdx
	subl	%eax, %edi
	movl	%edi, %r8d
	vmovapd	.LC3(%rip), %ymm0
	shrl	$2, %r8d
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
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
	cmpl	%edx, %edi
	je	.L100
	vzeroupper
	movq	-80(%rbp), %rcx
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L15:
	movq	-72(%rbp), %rdx
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L101
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %r8d
	movl	$5, %edi
	cmovg	%r14d, %r8d
	movq	%rsi, -72(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	leal	3(%rdx), %esi
	cmovle	%eax, %r13d
	cmpl	$5, %esi
	cmovb	%edi, %esi
	cmpl	%esi, %r13d
	jb	.L45
	testl	%edx, %edx
	je	.L18
	movq	-72(%rbp), %rax
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L60
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L61
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L18:
	movq	-72(%rbp), %rsi
	subl	%edx, %r8d
	movl	%r8d, %edi
	vmovapd	.LC5(%rip), %ymm0
	shrl	$2, %edi
	leaq	(%rsi,%rdx,8), %rsi
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
	cmpl	%edx, %r8d
	je	.L17
.L45:
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
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
	movl	-88(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$1, %eax
	movl	%eax, -396(%rbp)
	testl	%edx, %edx
	jne	.L102
	cmpl	$1, -396(%rbp)
	jle	.L96
	leal	-1(%rbx), %eax
	movl	%ebx, -180(%rbp)
	movl	%eax, -116(%rbp)
	movl	%ebx, %eax
	imull	%r15d, %eax
	movl	%eax, -400(%rbp)
	cmpl	$2, %r15d
	jle	.L96
.L51:
	cmpl	$1, -116(%rbp)
	jle	.L93
	movl	-400(%rbp), %esi
	movl	%ebx, %edx
	movq	%r12, %r13
	movl	$0, -108(%rbp)
	movl	$1, -388(%rbp)
	leal	(%rsi,%rsi), %eax
	leal	(%rsi,%rbx), %ecx
	movl	%eax, -100(%rbp)
	movslq	%ebx, %rax
	addl	%ebx, %ebx
	movl	%ebx, -404(%rbp)
	movslq	%ebx, %rbx
	movq	%rbx, -368(%rbp)
	movl	%esi, %ebx
	movq	-72(%rbp), %rsi
	movl	%ecx, -408(%rbp)
	leaq	0(,%rax,8), %rdi
	movl	%ecx, -392(%rbp)
	leal	-2(%rdx), %ecx
	movl	%ecx, -184(%rbp)
	leaq	8(%rsi), %rcx
	addq	$40, %rsi
	movq	%rax, -248(%rbp)
	movq	%rsi, -312(%rbp)
	leaq	48(%r12), %rsi
	movq	%rsi, -304(%rbp)
	leaq	1(%rax), %rsi
	movq	%rcx, -288(%rbp)
	leaq	40(%r12), %rcx
	movq	%rsi, -432(%rbp)
	movq	%rax, %rsi
	leaq	5(%rax), %rax
	movq	%rcx, -296(%rbp)
	movq	%rax, -440(%rbp)
	leaq	8(%r12), %rcx
	leal	-3(%rdx), %eax
	movq	%rcx, -256(%rbp)
	subl	%ebx, %edx
	leal	-1(%r15), %ecx
	movl	%eax, -280(%rbp)
	addq	%rsi, %rax
	movl	%ebx, %r15d
	movq	%rdi, -272(%rbp)
	movl	%ecx, -276(%rbp)
	movq	%rax, -416(%rbp)
	movl	%edx, -420(%rbp)
	.p2align 4,,10
	.p2align 3
.L36:
	movq	-432(%rbp), %rax
	movslq	%r15d, %rdi
	xorl	%r14d, %r14d
	movq	-80(%rbp), %rsi
	movq	%rdi, -264(%rbp)
	movq	-248(%rbp), %rcx
	movslq	-108(%rbp), %rbx
	addl	$1, -388(%rbp)
	addq	%rdi, %rax
	leaq	(%rsi,%rax,8), %rax
	movq	%rax, -128(%rbp)
	movq	-440(%rbp), %rax
	movq	%rbx, -376(%rbp)
	addq	%rdi, %rax
	leaq	(%rsi,%rax,8), %rax
	movq	-256(%rbp), %rsi
	movq	%rax, -136(%rbp)
	movq	%rcx, %rax
	addq	%rdi, %rax
	movq	%rax, -192(%rbp)
	leaq	0(,%rax,8), %r12
	movq	-416(%rbp), %rax
	addq	%rdi, %rax
	leaq	(%rsi,%rax,8), %rax
	movslq	-100(%rbp), %rsi
	movq	%rax, -240(%rbp)
	movl	-420(%rbp), %eax
	movq	%rsi, -384(%rbp)
	addl	%r15d, %eax
	movl	%eax, -200(%rbp)
	movl	-408(%rbp), %eax
	addl	%r15d, %eax
	movl	%eax, -204(%rbp)
	movl	-404(%rbp), %eax
	addl	%r15d, %eax
	movl	%eax, -208(%rbp)
	leaq	0(,%rdi,8), %rax
	addq	-368(%rbp), %rdi
	movq	%rax, -144(%rbp)
	leaq	0(,%rdi,8), %rax
	movq	%rdi, -336(%rbp)
	movq	%rax, -152(%rbp)
	movq	%rcx, %rax
	addq	%rbx, %rax
	movq	%rax, -320(%rbp)
	salq	$3, %rax
	movq	%rax, -160(%rbp)
	movq	%rcx, %rax
	addq	%rsi, %rax
	movq	%rax, -328(%rbp)
	salq	$3, %rax
	movq	%rax, -176(%rbp)
	movl	-392(%rbp), %eax
	movl	%eax, -196(%rbp)
	movq	%rcx, -232(%rbp)
	leal	1(%rax), %ecx
	movl	%ecx, -340(%rbp)
	leal	2(%rax), %ecx
	addl	$3, %eax
	movl	%eax, -352(%rbp)
	leal	2(%r15), %eax
	movl	%eax, -356(%rbp)
	leal	3(%r15), %eax
	movl	%ecx, -344(%rbp)
	leal	1(%r15), %ecx
	movl	%eax, -360(%rbp)
	movl	%r15d, %eax
	movl	%r14d, %r15d
	movq	$0, -168(%rbp)
	movl	%eax, %r14d
	movl	$1, -120(%rbp)
	movl	%ecx, -348(%rbp)
	movq	%r12, -96(%rbp)
	.p2align 4,,10
	.p2align 3
.L37:
	movl	-180(%rbp), %eax
	movq	-312(%rbp), %rcx
	movq	-128(%rbp), %r11
	movq	-288(%rbp), %rdx
	leal	(%rax,%r15), %ebx
	movq	-136(%rbp), %r9
	addl	%ebx, %eax
	movl	%ebx, -104(%rbp)
	movq	-96(%rbp), %rbx
	addl	$1, -120(%rbp)
	movl	%eax, -88(%rbp)
	movq	-144(%rbp), %r8
	movq	-256(%rbp), %r10
	leaq	0(%r13,%rbx), %rax
	addq	%rbx, %rcx
	addq	%rbx, %rdx
	cmpq	%rcx, %r11
	setnb	%dil
	cmpq	%rdx, %r9
	setbe	%cl
	orl	%ecx, %edi
	movq	-304(%rbp), %rcx
	addq	%rbx, %rcx
	movq	-296(%rbp), %rbx
	cmpq	%rcx, %r11
	setnb	%sil
	cmpq	%rax, %r9
	setbe	%cl
	orl	%esi, %ecx
	andl	%edi, %ecx
	cmpl	$5, -184(%rbp)
	movq	%r10, %rdi
	seta	%sil
	andl	%esi, %ecx
	movq	%rbx, %rsi
	addq	%r8, %rsi
	cmpq	%rsi, %r11
	setnb	%sil
	addq	%r8, %rdi
	movq	-152(%rbp), %r8
	cmpq	%rdi, %r9
	setbe	%dil
	orl	%edi, %esi
	movq	%r10, %rdi
	andl	%esi, %ecx
	movq	%rbx, %rsi
	addq	%r8, %rsi
	cmpq	%rsi, %r11
	setnb	%sil
	addq	%r8, %rdi
	movq	-160(%rbp), %r8
	cmpq	%rdi, %r9
	setbe	%dil
	orl	%edi, %esi
	movq	%r10, %rdi
	andl	%esi, %ecx
	movq	%rbx, %rsi
	addq	%r8, %rsi
	cmpq	%rsi, %r11
	setnb	%sil
	addq	%r8, %rdi
	cmpq	%rdi, %r9
	setbe	%dil
	orl	%edi, %esi
	testb	%sil, %cl
	je	.L35
	movq	-176(%rbp), %rdi
	addq	%rdi, %rbx
	cmpq	%rbx, %r11
	setnb	%sil
	addq	%rdi, %r10
	cmpq	%r10, %r9
	setbe	%cl
	orb	%cl, %sil
	je	.L35
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-280(%rbp), %eax
	ja	.L62
	movl	$1, -112(%rbp)
	testl	%edx, %edx
	je	.L26
	movl	-340(%rbp), %eax
	movl	$2, -112(%rbp)
	movl	-344(%rbp), %ecx
	movslq	-196(%rbp), %r8
	movl	-200(%rbp), %r10d
	movl	-204(%rbp), %r11d
	addl	%r15d, %eax
	addl	%r15d, %ecx
	cltq
	movl	-348(%rbp), %r9d
	leaq	0(%r13,%rax,8), %rsi
	movslq	%ecx, %rcx
	movq	%r8, %rbx
	movq	-80(%rbp), %r12
	vmovsd	0(%r13,%r8,8), %xmm0
	leal	1(%r10), %r8d
	leaq	0(%r13,%rcx,8), %rdi
	vaddsd	(%rsi), %xmm0, %xmm0
	movslq	%r8d, %r8
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	0(%r13,%r8,8), %xmm0, %xmm0
	leal	1(%r11), %r8d
	movslq	%r8d, %r8
	vaddsd	0(%r13,%r8,8), %xmm0, %xmm0
	leal	(%r9,%r15), %r8d
	movl	-208(%rbp), %r9d
	movslq	%r8d, %r8
	vaddsd	0(%r13,%r8,8), %xmm0, %xmm0
	leal	1(%r9), %r8d
	movslq	%r8d, %r8
	vaddsd	0(%r13,%r8,8), %xmm0, %xmm0
	movq	-72(%rbp), %r8
	vmulsd	(%r8,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r12,%rax,8)
	cmpl	$1, %edx
	je	.L26
	movl	-352(%rbp), %eax
	movl	$3, -112(%rbp)
	vmovsd	(%rdi), %xmm0
	movl	%r10d, %edi
	vaddsd	(%rsi), %xmm0, %xmm0
	movl	%r11d, %esi
	addl	%r15d, %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	2(%r10), %eax
	movl	%r9d, %r10d
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	2(%r11), %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	movl	-356(%rbp), %eax
	addl	%r15d, %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	2(%r9), %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vmulsd	(%r8,%rcx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r12,%rcx,8)
	cmpl	$3, %edx
	jne	.L26
	leal	2(%rbx), %ecx
	movl	$4, -112(%rbp)
	leal	3(%rbx), %eax
	movslq	%ecx, %rcx
	vmovsd	0(%r13,%rcx,8), %xmm0
	leal	4(%rbx), %ecx
	cltq
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	leal	3(%rdi), %ecx
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	leal	3(%rsi), %ecx
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	movl	-360(%rbp), %ecx
	addl	%r15d, %ecx
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	leal	3(%r10), %ecx
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	vmulsd	(%r8,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r12,%rax,8)
.L26:
	movl	-184(%rbp), %esi
	movl	%edx, %eax
	movq	%r13, -224(%rbp)
	movq	-96(%rbp), %rdi
	movq	-72(%rbp), %rbx
	subl	%edx, %esi
	movq	-192(%rbp), %rdx
	movl	%esi, -212(%rbp)
	shrl	$2, %esi
	movl	%esi, -216(%rbp)
	leaq	(%rdi,%rax,8), %rsi
	movq	-168(%rbp), %rdi
	addq	%r13, %rsi
	leaq	1(%rax,%rdx), %rcx
	leaq	2(%rax,%rdx), %rdx
	salq	$3, %rcx
	leaq	0(%r13,%rdx,8), %r11
	movq	-320(%rbp), %rdx
	leaq	(%rbx,%rcx), %r12
	leaq	0(%r13,%rcx), %rbx
	addq	-80(%rbp), %rcx
	leaq	1(%rdi,%rdx), %rdx
	addq	%rax, %rdx
	leaq	0(%r13,%rdx,8), %r10
	movq	-328(%rbp), %rdx
	leaq	1(%rdi,%rdx), %rdx
	addq	%rax, %rdx
	leaq	0(%r13,%rdx,8), %r9
	movq	-264(%rbp), %rdx
	leaq	1(%rdx,%rdi), %rdx
	addq	%rax, %rdx
	leaq	0(%r13,%rdx,8), %r8
	movq	-336(%rbp), %rdx
	leaq	1(%rdi,%rdx), %rdx
	addq	%rdx, %rax
	xorl	%edx, %edx
	leaq	0(%r13,%rax,8), %rdi
	movl	-216(%rbp), %r13d
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L28:
	vmovupd	(%rbx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm0, %ymm1
	addl	$1, %edx
	vmovupd	(%rsi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	(%r11,%rax), %xmm1
	vinsertf128	$0x1, 16(%r11,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r10,%rax), %xmm1
	vinsertf128	$0x1, 16(%r10,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r9,%rax), %xmm1
	vinsertf128	$0x1, 16(%r9,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r8,%rax), %xmm1
	vinsertf128	$0x1, 16(%r8,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rdi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmulpd	(%r12,%rax), %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %r13d
	ja	.L28
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-212(%rbp), %esi
	movl	-112(%rbp), %r12d
	movq	-224(%rbp), %r13
	movl	%esi, %eax
	andl	$-4, %eax
	addl	%eax, %r12d
	cmpl	%eax, %esi
	je	.L31
.L25:
	movl	-104(%rbp), %ebx
	leal	1(%r12), %eax
	movl	-108(%rbp), %r10d
	movq	-72(%rbp), %r9
	leal	-1(%r12,%rbx), %r8d
	leal	(%r12,%rbx), %edx
	addl	%r14d, %r8d
	leal	(%r14,%rdx), %esi
	movslq	%r8d, %r8
	vmovsd	0(%r13,%r8,8), %xmm0
	leal	(%r10,%rdx), %r8d
	movslq	%esi, %rsi
	addl	-100(%rbp), %edx
	leal	(%rax,%rbx), %ecx
	movslq	%r8d, %r8
	vaddsd	0(%r13,%rsi,8), %xmm0, %xmm0
	leal	(%r14,%rcx), %edi
	movslq	%edi, %rdi
	leaq	0(%r13,%rdi,8), %r11
	movslq	%edx, %rdx
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	0(%r13,%r8,8), %xmm0, %xmm0
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	leal	(%r15,%r12), %edx
	addl	%r14d, %edx
	movslq	%edx, %rdx
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	movl	-88(%rbp), %edx
	addl	%r12d, %edx
	addl	%r14d, %edx
	movslq	%edx, %rdx
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	vmulsd	(%r9,%rsi,8), %xmm0, %xmm0
	movq	-80(%rbp), %rdx
	vmovsd	%xmm0, (%rdx,%rsi,8)
	cmpl	-116(%rbp), %eax
	jge	.L31
	vmovsd	0(%r13,%rsi,8), %xmm0
	movl	-108(%rbp), %esi
	leal	2(%r12), %edx
	leal	(%rdx,%rbx), %r8d
	vaddsd	(%r11), %xmm0, %xmm0
	leal	(%r14,%r8), %r9d
	movslq	%r9d, %r9
	leaq	0(%r13,%r9,8), %r10
	addl	%ecx, %esi
	addl	-100(%rbp), %ecx
	vaddsd	(%r10), %xmm0, %xmm0
	movslq	%esi, %rsi
	vaddsd	0(%r13,%rsi,8), %xmm0, %xmm0
	movq	-80(%rbp), %rsi
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	leal	(%rax,%r15), %ecx
	addl	-88(%rbp), %eax
	addl	%r14d, %ecx
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	addl	%r14d, %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	movq	-72(%rbp), %rax
	vmulsd	(%rax,%rdi,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%rdi,8)
	cmpl	-116(%rbp), %edx
	jge	.L31
	vmovsd	0(%r13,%rdi,8), %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	leal	3(%r12), %eax
	movl	-108(%rbp), %r10d
	leal	(%rax,%rbx), %ecx
	leal	(%r14,%rcx), %esi
	movslq	%esi, %rsi
	leaq	0(%r13,%rsi,8), %r11
	leal	(%r10,%r8), %edi
	vaddsd	(%r11), %xmm0, %xmm0
	movslq	%edi, %rdi
	addl	-100(%rbp), %r8d
	vaddsd	0(%r13,%rdi,8), %xmm0, %xmm0
	leal	(%r15,%rdx), %edi
	addl	-88(%rbp), %edx
	addl	%r14d, %edi
	movslq	%edi, %rdi
	movslq	%r8d, %r8
	vaddsd	0(%r13,%r8,8), %xmm0, %xmm0
	addl	%r14d, %edx
	vaddsd	0(%r13,%rdi,8), %xmm0, %xmm0
	movslq	%edx, %rdx
	movq	-80(%rbp), %rdi
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	movq	-72(%rbp), %rdx
	vmulsd	(%rdx,%r9,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdi,%r9,8)
	cmpl	-116(%rbp), %eax
	jge	.L31
	vmovsd	0(%r13,%r9,8), %xmm0
	vaddsd	(%r11), %xmm0, %xmm0
	leal	4(%r12), %edx
	movl	-108(%rbp), %r11d
	leal	(%rdx,%rbx), %edi
	leal	(%r14,%rdi), %r8d
	movslq	%r8d, %r8
	leaq	0(%r13,%r8,8), %r10
	leal	(%r11,%rcx), %r9d
	addl	-100(%rbp), %ecx
	vaddsd	(%r10), %xmm0, %xmm0
	movslq	%r9d, %r9
	vaddsd	0(%r13,%r9,8), %xmm0, %xmm0
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	leal	(%r15,%rax), %ecx
	addl	-88(%rbp), %eax
	addl	%r14d, %ecx
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	movq	-80(%rbp), %rcx
	addl	%r14d, %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	movq	-72(%rbp), %rax
	vmulsd	(%rax,%rsi,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rsi,8)
	cmpl	-116(%rbp), %edx
	jge	.L31
	vmovsd	0(%r13,%rsi,8), %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	leal	5(%r12), %eax
	movl	-108(%rbp), %r10d
	leal	(%rax,%rbx), %ecx
	leal	(%r14,%rcx), %r9d
	movslq	%r9d, %r9
	leaq	0(%r13,%r9,8), %r11
	leal	(%r10,%rdi), %esi
	addl	-100(%rbp), %edi
	vaddsd	(%r11), %xmm0, %xmm0
	movslq	%esi, %rsi
	vaddsd	0(%r13,%rsi,8), %xmm0, %xmm0
	leal	(%r15,%rdx), %esi
	addl	%r14d, %esi
	movslq	%edi, %rdi
	movslq	%esi, %rsi
	vaddsd	0(%r13,%rdi,8), %xmm0, %xmm0
	movl	-88(%rbp), %edi
	vaddsd	0(%r13,%rsi,8), %xmm0, %xmm0
	movq	-80(%rbp), %rsi
	addl	%edi, %edx
	addl	%r14d, %edx
	movslq	%edx, %rdx
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	movq	-72(%rbp), %rdx
	vmulsd	(%rdx,%r8,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%r8,8)
	cmpl	-116(%rbp), %eax
	jge	.L31
	vmovsd	0(%r13,%r8,8), %xmm0
	leal	6(%r12,%rbx), %edx
	vaddsd	(%r11), %xmm0, %xmm0
	addl	%r14d, %edx
	movslq	%edx, %rdx
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	leal	(%r10,%rcx), %edx
	addl	-100(%rbp), %ecx
	movslq	%edx, %rdx
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	leal	(%r15,%rax), %edx
	addl	%edi, %eax
	addl	%r14d, %edx
	addl	%r14d, %eax
	movslq	%edx, %rdx
	movslq	%ecx, %rcx
	cltq
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	movq	-72(%rbp), %rdx
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vmulsd	(%rdx,%r9,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%r9,8)
.L31:
	movq	-272(%rbp), %rax
	movl	-180(%rbp), %ebx
	movq	-248(%rbp), %rdi
	addq	%rax, -128(%rbp)
	addq	%rax, -136(%rbp)
	addq	%rax, -96(%rbp)
	addq	%rdi, -168(%rbp)
	addq	%rdi, -232(%rbp)
	addq	%rax, -240(%rbp)
	addq	%rdi, -192(%rbp)
	addl	%ebx, -196(%rbp)
	addl	%ebx, -200(%rbp)
	addl	%ebx, -204(%rbp)
	addl	%ebx, -208(%rbp)
	addq	%rax, -144(%rbp)
	addq	%rax, -152(%rbp)
	addq	%rax, -160(%rbp)
	addq	%rax, -176(%rbp)
	movl	-104(%rbp), %r15d
	movl	-276(%rbp), %esi
	cmpl	%esi, -120(%rbp)
	jne	.L37
	movl	-400(%rbp), %eax
	movl	%r14d, %r15d
	addl	%eax, -108(%rbp)
	addl	%eax, -100(%rbp)
	addl	%eax, -392(%rbp)
	addl	%eax, %r15d
	movl	-388(%rbp), %ecx
	cmpl	%ecx, -396(%rbp)
	jg	.L36
	movq	%r13, %r12
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L94
	movq	%r12, %rdi
	call	dummy
	movq	-80(%rbp), %rdi
	call	dummy
	movq	-72(%rbp), %rdi
	call	dummy
.L94:
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
.L99:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	%rax, %rcx
	jmp	.L40
.L54:
	movl	$1, %r8d
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L35:
	movq	-96(%rbp), %rcx
	movq	-168(%rbp), %rsi
	movq	-232(%rbp), %rbx
	movq	-264(%rbp), %r15
	leaq	8(%rcx), %rdx
	movq	-368(%rbp), %rcx
	movq	-376(%rbp), %r8
	movq	-384(%rbp), %rdi
	movq	-80(%rbp), %r9
	movq	-72(%rbp), %r10
	addq	%rsi, %rcx
	subq	%rbx, %rsi
	movq	-240(%rbp), %r11
	subq	%rbx, %rcx
	subq	%r15, %r8
	subq	%r15, %rdi
	.p2align 4,,10
	.p2align 3
.L30:
	vmovsd	(%rax), %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	8(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	(%r10,%rdx), %xmm0, %xmm0
	vmovsd	%xmm0, (%r9,%rdx)
	addq	$8, %rdx
	cmpq	%r11, %rax
	jne	.L30
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L62:
	movl	$1, %r12d
	jmp	.L25
.L101:
	testl	%r14d, %r14d
	jle	.L103
	movl	%r14d, %r8d
	cmpl	$4, %r13d
	jbe	.L66
	xorl	%edx, %edx
	movq	$0, -72(%rbp)
	xorl	%eax, %eax
	jmp	.L18
.L102:
	movq	%r12, %rdi
	vzeroupper
	call	dummy
	movq	-80(%rbp), %rdi
	call	dummy
	movq	-72(%rbp), %rdi
	call	dummy
	cmpl	$1, -396(%rbp)
	jle	.L24
	leal	-1(%rbx), %eax
	movl	%ebx, -180(%rbp)
	movl	%eax, -116(%rbp)
	movl	%ebx, %eax
	imull	%r15d, %eax
	movl	%eax, -400(%rbp)
	cmpl	$2, %r15d
	jg	.L51
	jmp	.L24
.L58:
	movl	$1, %esi
	jmp	.L12
.L100:
	vzeroupper
	jmp	.L15
.L60:
	movl	$1, %eax
	jmp	.L18
.L96:
	vzeroupper
	jmp	.L94
.L98:
	vzeroupper
	jmp	.L8
.L3:
	movq	-72(%rbp), %rdx
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L41
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
.L10:
	movq	-72(%rbp), %rdx
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -72(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L17
.L66:
	movq	$0, -72(%rbp)
	xorl	%eax, %eax
	jmp	.L45
.L55:
	movl	$2, %r8d
	jmp	.L5
.L61:
	movl	$2, %eax
	jmp	.L18
.L59:
	movl	$2, %esi
	jmp	.L12
.L93:
	vzeroupper
	jmp	.L24
.L56:
	xorl	%eax, %eax
	jmp	.L11
.L52:
	xorl	%eax, %eax
	jmp	.L4
.L103:
	movq	$0, -72(%rbp)
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
