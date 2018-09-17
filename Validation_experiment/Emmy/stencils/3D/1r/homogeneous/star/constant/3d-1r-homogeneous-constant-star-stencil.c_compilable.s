	.file	"3d-1r-homogeneous-constant-star-stencil.c_compilable.c"
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
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	movq	%rsi, %r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$416, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	movl	%r12d, %r14d
	call	strtol
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %r13
	imull	%ebx, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -88(%rbp)
	call	posix_memalign
	movq	-88(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %r15
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
	xorl	%esi, %esi
	cmpl	%edx, %r9d
	jb	.L4
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L43
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L44
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %esi
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r15,%rax,8), %rdx
	movl	%r14d, %r8d
	subl	%eax, %r8d
	xorl	%eax, %eax
	movl	%r8d, %edi
	shrl	$2, %edi
	.p2align 4,,10
	.p2align 3
.L7:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%eax, %edi
	ja	.L7
	movl	%r8d, %eax
	andl	$-4, %eax
	addl	%eax, %esi
	cmpl	%eax, %r8d
	je	.L79
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%esi, %rax
	vmovsd	%xmm0, (%r15,%rax,8)
	leal	1(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
	leal	2(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
	leal	3(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
	leal	4(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	addl	$5, %esi
	vmovsd	%xmm0, (%r15,%rax,8)
	cmpl	%esi, %r14d
	jle	.L8
	movslq	%esi, %rsi
	vmovsd	%xmm0, (%r15,%rsi,8)
.L8:
	leaq	-80(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	movl	%r9d, -88(%rbp)
	call	posix_memalign
	movl	-88(%rbp), %r9d
	testl	%eax, %eax
	je	.L80
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %esi
	cmovg	%r9d, %eax
	cmovg	%r14d, %esi
	cmpl	$4, %eax
	ja	.L81
	movq	$0, -88(%rbp)
	xorl	%eax, %eax
.L31:
	movq	-88(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L35
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L35
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L35:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -80(%rbp)
	leal	-1(%r13), %eax
	movl	%eax, -408(%rbp)
	testl	%edx, %edx
	jne	.L82
	cmpl	$1, -408(%rbp)
	jle	.L77
	leal	-1(%rbx), %eax
	movl	%ebx, -180(%rbp)
	movl	%eax, -116(%rbp)
	movl	%ebx, %eax
	imull	%r12d, %eax
	movl	%eax, -412(%rbp)
	cmpl	$2, %r12d
	jle	.L77
.L40:
	cmpl	$1, -116(%rbp)
	jle	.L74
	movl	-412(%rbp), %ecx
	movslq	%ebx, %rsi
	movq	%r15, %r13
	movl	$0, -104(%rbp)
	leaq	0(,%rsi,8), %rdx
	movq	%rsi, -248(%rbp)
	movq	%rdx, -288(%rbp)
	movl	$1, -368(%rbp)
	leal	(%rcx,%rcx), %eax
	leal	(%rcx,%rbx), %edi
	movl	%eax, -108(%rbp)
	movl	%ebx, %eax
	addl	%ebx, %ebx
	movl	%ebx, -416(%rbp)
	movslq	%ebx, %rbx
	movq	%rbx, -376(%rbp)
	movl	%ecx, %ebx
	leaq	8(%r15), %rcx
	movl	%edi, -420(%rbp)
	movl	%ebx, %r14d
	movq	%rcx, -200(%rbp)
	leaq	40(%r15), %rcx
	movq	%rcx, -304(%rbp)
	leaq	48(%r15), %rcx
	movq	%rcx, -312(%rbp)
	leaq	1(%rsi), %rcx
	movq	%rcx, -448(%rbp)
	leaq	5(%rsi), %rcx
	movq	%rcx, -456(%rbp)
	leal	-1(%r12), %ecx
	movl	%edi, -404(%rbp)
	leal	-3(%rax), %edi
	movl	%ecx, -232(%rbp)
	leal	-2(%rax), %ecx
	subl	%ebx, %eax
	movl	%eax, -424(%rbp)
	movl	%ecx, %eax
	addq	%rsi, %rax
	movl	%ecx, -184(%rbp)
	movq	%rax, -432(%rbp)
	movl	%edi, %eax
	addq	%rsi, %rax
	movl	%edi, -340(%rbp)
	movq	%rax, -440(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -296(%rbp)
	.p2align 4,,10
	.p2align 3
.L27:
	movq	-248(%rbp), %rbx
	movslq	%r14d, %rdi
	xorl	%r15d, %r15d
	movl	%r14d, %r12d
	movq	-448(%rbp), %rax
	movq	%rdi, -280(%rbp)
	movq	-88(%rbp), %rsi
	movq	-432(%rbp), %rdx
	addl	$1, -368(%rbp)
	movq	%rbx, %rcx
	addq	%rdi, %rcx
	addq	%rdi, %rax
	leaq	(%rsi,%rax,8), %rax
	movq	%rcx, -192(%rbp)
	salq	$3, %rcx
	movq	%rcx, -96(%rbp)
	movl	-424(%rbp), %ecx
	movq	%rax, -128(%rbp)
	movq	-456(%rbp), %rax
	addl	%r14d, %ecx
	movl	%ecx, -208(%rbp)
	movl	-420(%rbp), %ecx
	addq	%rdi, %rax
	leaq	(%rsi,%rax,8), %rax
	movq	%rax, -144(%rbp)
	movq	%rdi, %rax
	addl	%r14d, %ecx
	movl	%ecx, -212(%rbp)
	movl	-416(%rbp), %ecx
	addl	%r14d, %ecx
	movl	%ecx, -216(%rbp)
	movq	-376(%rbp), %rcx
	addq	%rdi, %rcx
	movslq	-104(%rbp), %rdi
	movq	%rcx, -336(%rbp)
	salq	$3, %rcx
	movq	%rcx, -152(%rbp)
	movq	%rbx, %rcx
	addq	%rdi, %rcx
	movq	%rdi, -384(%rbp)
	movslq	-108(%rbp), %rdi
	movq	%rcx, -320(%rbp)
	salq	$3, %rcx
	movq	%rcx, -160(%rbp)
	movq	%rbx, %rcx
	addq	%rdi, %rcx
	movq	%rdi, -392(%rbp)
	movq	%rax, %rdi
	movq	%rcx, -328(%rbp)
	salq	$3, %rcx
	addq	%rdi, %rdx
	movq	%rcx, -176(%rbp)
	movq	-440(%rbp), %rcx
	leaq	0(%r13,%rax,8), %rax
	addq	%rdi, %rcx
	leaq	0(%r13,%rcx,8), %rdi
	movq	%rdi, -400(%rbp)
	movl	-404(%rbp), %edi
	movl	%edi, -204(%rbp)
	movq	%rbx, -240(%rbp)
	leaq	8(%rsi,%rdx,8), %rbx
	movq	%rbx, -264(%rbp)
	leaq	40(%rax), %rbx
	addq	$8, %rax
	movq	%rax, -256(%rbp)
	leal	1(%rdi), %eax
	movl	%eax, -344(%rbp)
	leal	2(%rdi), %eax
	movl	%eax, -348(%rbp)
	leal	1(%r14), %eax
	movl	%eax, -352(%rbp)
	leal	3(%rdi), %eax
	movl	%eax, -356(%rbp)
	leal	2(%r14), %eax
	movl	%eax, -360(%rbp)
	leal	3(%r14), %eax
	movq	$0, -136(%rbp)
	movq	$0, -168(%rbp)
	movl	$1, -120(%rbp)
	movq	%rbx, -272(%rbp)
	movl	%eax, -364(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movq	-136(%rbp), %rdi
	leaq	-80(%rbp), %rbx
	movl	-180(%rbp), %eax
	movq	-264(%rbp), %rdx
	addl	$1, -120(%rbp)
	movq	-96(%rbp), %rsi
	leal	(%rax,%r15), %r14d
	movq	-144(%rbp), %r9
	addq	%rdi, %rdx
	addl	%r14d, %eax
	movq	-152(%rbp), %r10
	cmpq	%rdx, %rbx
	movq	-128(%rbp), %rbx
	movl	%eax, -100(%rbp)
	movq	-296(%rbp), %rdx
	leaq	0(%r13,%rsi), %rax
	setnb	%cl
	movq	-200(%rbp), %r11
	cmpq	%rdx, %rbx
	setnb	%dl
	orl	%ecx, %edx
	cmpl	$5, -184(%rbp)
	seta	%cl
	andl	%ecx, %edx
	movq	-312(%rbp), %rcx
	addq	%rsi, %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	cmpq	%rax, %r9
	setbe	%sil
	orl	%esi, %ecx
	movq	-256(%rbp), %rsi
	andl	%ecx, %edx
	movq	-272(%rbp), %rcx
	addq	%rdi, %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	addq	%rdi, %rsi
	movq	-304(%rbp), %rdi
	cmpq	%rsi, %r9
	setbe	%sil
	orl	%esi, %ecx
	movq	%r11, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	addq	%r10, %rsi
	movq	-160(%rbp), %r10
	cmpq	%rsi, %r9
	setbe	%sil
	orl	%esi, %ecx
	movq	%r11, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	addq	%r10, %rsi
	cmpq	%rsi, %r9
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L26
	movq	-176(%rbp), %rsi
	addq	%rsi, %rdi
	cmpq	%rdi, %rbx
	setnb	%cl
	addq	%rsi, %r11
	cmpq	%r11, %r9
	setbe	%dl
	orb	%dl, %cl
	je	.L26
	movq	-200(%rbp), %rdx
	addq	-96(%rbp), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-340(%rbp), %eax
	ja	.L47
	movl	$1, -112(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	-348(%rbp), %ebx
	movl	$2, -112(%rbp)
	movl	-344(%rbp), %eax
	movslq	-204(%rbp), %r8
	movl	-208(%rbp), %r11d
	movl	-212(%rbp), %r10d
	leal	(%rbx,%r15), %ecx
	addl	%r15d, %eax
	movslq	%ecx, %rcx
	movl	-216(%rbp), %r9d
	vmovsd	0(%r13,%r8,8), %xmm0
	leaq	0(%r13,%rcx,8), %rdi
	cltq
	movq	%r8, %rbx
	leal	1(%r11), %r8d
	leaq	0(%r13,%rax,8), %rsi
	movslq	%r8d, %r8
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	0(%r13,%r8,8), %xmm0, %xmm0
	leal	1(%r10), %r8d
	movslq	%r8d, %r8
	vaddsd	0(%r13,%r8,8), %xmm0, %xmm0
	movl	-352(%rbp), %r8d
	addl	%r15d, %r8d
	movslq	%r8d, %r8
	vaddsd	0(%r13,%r8,8), %xmm0, %xmm0
	leal	1(%r9), %r8d
	movslq	%r8d, %r8
	vaddsd	0(%r13,%r8,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-88(%rbp), %r8
	vmovsd	%xmm0, (%r8,%rax,8)
	cmpl	$1, %edx
	je	.L17
	movl	-356(%rbp), %eax
	movl	$3, -112(%rbp)
	vmovsd	(%rdi), %xmm0
	movl	%r11d, %edi
	vaddsd	(%rsi), %xmm0, %xmm0
	addl	%r15d, %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	2(%r11), %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	2(%r10), %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	movl	-360(%rbp), %eax
	addl	%r15d, %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	2(%r9), %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r8,%rcx,8)
	cmpl	$3, %edx
	jne	.L17
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
	leal	3(%r10), %ecx
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	movl	-364(%rbp), %ecx
	addl	%r15d, %ecx
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	leal	3(%r9), %ecx
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r8,%rax,8)
.L17:
	movl	-184(%rbp), %ebx
	movl	%edx, %eax
	movl	%r12d, -228(%rbp)
	movq	-192(%rbp), %rdi
	vbroadcastsd	-80(%rbp), %ymm2
	subl	%edx, %ebx
	movq	-96(%rbp), %rdx
	leaq	1(%rax,%rdi), %rcx
	movl	%ebx, -220(%rbp)
	shrl	$2, %ebx
	salq	$3, %rcx
	movl	%ebx, -224(%rbp)
	movl	-224(%rbp), %r12d
	leaq	0(%r13,%rcx), %rbx
	addq	-88(%rbp), %rcx
	leaq	(%rdx,%rax,8), %rsi
	leaq	2(%rax,%rdi), %rdx
	movq	-168(%rbp), %rdi
	addq	%r13, %rsi
	leaq	0(%r13,%rdx,8), %r11
	movq	-320(%rbp), %rdx
	leaq	1(%rdi,%rdx), %rdx
	addq	%rax, %rdx
	leaq	0(%r13,%rdx,8), %r10
	movq	-328(%rbp), %rdx
	leaq	1(%rdi,%rdx), %rdx
	addq	%rax, %rdx
	leaq	0(%r13,%rdx,8), %r9
	movq	-280(%rbp), %rdx
	leaq	1(%rdx,%rdi), %rdx
	addq	%rax, %rdx
	leaq	0(%r13,%rdx,8), %r8
	movq	-336(%rbp), %rdx
	leaq	1(%rdi,%rdx), %rdx
	addq	%rdx, %rax
	xorl	%edx, %edx
	leaq	0(%r13,%rax,8), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L19:
	vmovupd	(%rsi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	addl	$1, %edx
	vaddpd	(%rbx,%rax), %ymm0, %ymm1
	vmovupd	(%r11,%rax), %xmm0
	vinsertf128	$0x1, 16(%r11,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
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
	vmulpd	%ymm2, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %r12d
	ja	.L19
	movl	-220(%rbp), %edi
	movl	-112(%rbp), %ebx
	movl	-228(%rbp), %r12d
	movl	%edi, %eax
	andl	$-4, %eax
	addl	%eax, %ebx
	cmpl	%eax, %edi
	je	.L22
.L16:
	leal	-1(%rbx,%r14), %esi
	movq	-88(%rbp), %r8
	leal	(%rbx,%r14), %edx
	addl	%r12d, %esi
	leal	(%r12,%rdx), %r10d
	movslq	%esi, %rsi
	vmovsd	0(%r13,%rsi,8), %xmm0
	leal	1(%rbx), %eax
	movslq	%r10d, %r10
	movl	-104(%rbp), %esi
	leal	(%rax,%r14), %ecx
	leal	(%r12,%rcx), %edi
	vaddsd	0(%r13,%r10,8), %xmm0, %xmm0
	movslq	%edi, %rdi
	leaq	0(%r13,%rdi,8), %r11
	addl	%edx, %esi
	addl	-108(%rbp), %edx
	vaddsd	(%r11), %xmm0, %xmm0
	movslq	%esi, %rsi
	vaddsd	0(%r13,%rsi,8), %xmm0, %xmm0
	movslq	%edx, %rdx
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	leal	(%r15,%rbx), %edx
	addl	%r12d, %edx
	movslq	%edx, %rdx
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	movl	-100(%rbp), %edx
	addl	%ebx, %edx
	addl	%r12d, %edx
	movslq	%edx, %rdx
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r8,%r10,8)
	cmpl	-116(%rbp), %eax
	jge	.L22
	vmovsd	0(%r13,%r10,8), %xmm0
	movl	-104(%rbp), %r10d
	leal	2(%rbx), %edx
	leal	(%rdx,%r14), %esi
	vaddsd	(%r11), %xmm0, %xmm0
	leal	(%r12,%rsi), %r8d
	movslq	%r8d, %r8
	leaq	0(%r13,%r8,8), %r9
	addl	%ecx, %r10d
	addl	-108(%rbp), %ecx
	vaddsd	(%r9), %xmm0, %xmm0
	movslq	%r10d, %r10
	vaddsd	0(%r13,%r10,8), %xmm0, %xmm0
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	leal	(%rax,%r15), %ecx
	addl	-100(%rbp), %eax
	addl	%r12d, %ecx
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	addl	%r12d, %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-88(%rbp), %rax
	vmovsd	%xmm0, (%rax,%rdi,8)
	cmpl	-116(%rbp), %edx
	jge	.L22
	vmovsd	0(%r13,%rdi,8), %xmm0
	movl	-104(%rbp), %edi
	leal	3(%rbx), %eax
	leal	(%rax,%r14), %ecx
	vaddsd	(%r9), %xmm0, %xmm0
	leal	(%r12,%rcx), %r10d
	movslq	%r10d, %r10
	leaq	0(%r13,%r10,8), %r11
	addl	%esi, %edi
	addl	-108(%rbp), %esi
	vaddsd	(%r11), %xmm0, %xmm0
	movslq	%edi, %rdi
	vaddsd	0(%r13,%rdi,8), %xmm0, %xmm0
	movslq	%esi, %rsi
	vaddsd	0(%r13,%rsi,8), %xmm0, %xmm0
	leal	(%r15,%rdx), %esi
	addl	-100(%rbp), %edx
	addl	%r12d, %esi
	movslq	%esi, %rsi
	vaddsd	0(%r13,%rsi,8), %xmm0, %xmm0
	addl	%r12d, %edx
	movslq	%edx, %rdx
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-88(%rbp), %rdx
	vmovsd	%xmm0, (%rdx,%r8,8)
	cmpl	-116(%rbp), %eax
	jge	.L22
	vmovsd	0(%r13,%r8,8), %xmm0
	vaddsd	(%r11), %xmm0, %xmm0
	leal	4(%rbx), %edx
	movl	-104(%rbp), %r11d
	leal	(%rdx,%r14), %esi
	leal	(%r12,%rsi), %edi
	movslq	%edi, %rdi
	leaq	0(%r13,%rdi,8), %r9
	leal	(%r11,%rcx), %r8d
	addl	-108(%rbp), %ecx
	vaddsd	(%r9), %xmm0, %xmm0
	movslq	%r8d, %r8
	vaddsd	0(%r13,%r8,8), %xmm0, %xmm0
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	leal	(%r15,%rax), %ecx
	addl	-100(%rbp), %eax
	addl	%r12d, %ecx
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	addl	%r12d, %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-88(%rbp), %rax
	vmovsd	%xmm0, (%rax,%r10,8)
	cmpl	-116(%rbp), %edx
	jge	.L22
	vmovsd	0(%r13,%r10,8), %xmm0
	movl	-104(%rbp), %r10d
	leal	5(%rbx), %eax
	leal	(%rax,%r14), %ecx
	vaddsd	(%r9), %xmm0, %xmm0
	leal	(%r12,%rcx), %r8d
	movslq	%r8d, %r8
	leal	(%r10,%rsi), %r9d
	leaq	0(%r13,%r8,8), %r11
	movslq	%r9d, %r9
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	0(%r13,%r9,8), %xmm0, %xmm0
	movl	-108(%rbp), %r9d
	addl	%r9d, %esi
	movslq	%esi, %rsi
	vaddsd	0(%r13,%rsi,8), %xmm0, %xmm0
	leal	(%r15,%rdx), %esi
	addl	%r12d, %esi
	movslq	%esi, %rsi
	vaddsd	0(%r13,%rsi,8), %xmm0, %xmm0
	movl	-100(%rbp), %esi
	addl	%esi, %edx
	addl	%r12d, %edx
	movslq	%edx, %rdx
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-88(%rbp), %rdx
	vmovsd	%xmm0, (%rdx,%rdi,8)
	cmpl	-116(%rbp), %eax
	jge	.L22
	vmovsd	0(%r13,%rdi,8), %xmm0
	leal	6(%rbx,%r14), %edx
	vaddsd	(%r11), %xmm0, %xmm0
	addl	%r12d, %edx
	movslq	%edx, %rdx
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	leal	(%r10,%rcx), %edx
	addl	%r9d, %ecx
	movslq	%edx, %rdx
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	leal	(%r15,%rax), %edx
	addl	%esi, %eax
	addl	%r12d, %edx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	addl	%r12d, %eax
	movslq	%edx, %rdx
	cltq
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-88(%rbp), %rdx
	vmovsd	%xmm0, (%rdx,%r8,8)
.L22:
	movq	-288(%rbp), %rax
	movl	%r14d, %r15d
	movq	-248(%rbp), %rbx
	movl	-180(%rbp), %edi
	addq	%rbx, -168(%rbp)
	addq	%rbx, -240(%rbp)
	addq	%rbx, -192(%rbp)
	addq	%rax, -128(%rbp)
	addq	%rax, -144(%rbp)
	addq	%rax, -96(%rbp)
	addl	%edi, -204(%rbp)
	addl	%edi, -208(%rbp)
	addl	%edi, -212(%rbp)
	addl	%edi, -216(%rbp)
	addq	%rax, -136(%rbp)
	addq	%rax, -152(%rbp)
	addq	%rax, -160(%rbp)
	addq	%rax, -176(%rbp)
	movl	-232(%rbp), %ebx
	cmpl	%ebx, -120(%rbp)
	jne	.L28
	movl	-412(%rbp), %eax
	movl	%r12d, %r14d
	addl	%eax, -104(%rbp)
	addl	%eax, -108(%rbp)
	addl	%eax, -404(%rbp)
	addl	%eax, %r14d
	movl	-368(%rbp), %ebx
	cmpl	%ebx, -408(%rbp)
	jg	.L27
	movq	%r13, %r15
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L75
	movq	%r15, %rdi
	call	dummy
	movq	-88(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L75:
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
.L43:
	.cfi_restore_state
	movl	$1, %esi
	jmp	.L5
.L81:
	xorl	%edx, %edx
	movq	$0, -88(%rbp)
	xorl	%eax, %eax
.L9:
	movq	-88(%rbp), %rcx
	subl	%edx, %esi
	movl	%esi, %edi
	vmovapd	.LC3(%rip), %ymm0
	shrl	$2, %edi
	leaq	(%rcx,%rdx,8), %rcx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L11:
	addl	$1, %edx
	vmovapd	%ymm0, (%rcx)
	addq	$32, %rcx
	cmpl	%edx, %edi
	ja	.L11
	movl	%esi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %esi
	jne	.L31
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L26:
	movq	-136(%rbp), %rbx
	movq	-400(%rbp), %rcx
	movq	-240(%rbp), %rsi
	movq	-280(%rbp), %r15
	movq	-384(%rbp), %r8
	leaq	8(%rbx,%rcx), %r9
	movq	-168(%rbp), %rbx
	movq	-376(%rbp), %rcx
	movq	-392(%rbp), %rdi
	movq	-128(%rbp), %rdx
	subq	%r15, %r8
	addq	%rbx, %rcx
	subq	%rsi, %rbx
	subq	%rsi, %rcx
	subq	%r15, %rdi
	movq	%rbx, %rsi
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rax), %xmm0
	addq	$8, %rdx
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	8(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rdx)
	cmpq	%r9, %rax
	jne	.L21
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L47:
	movl	$1, %ebx
	jmp	.L16
.L80:
	movq	-80(%rbp), %rcx
	testl	%r14d, %r14d
	movl	$1, %esi
	movl	%r9d, %r8d
	cmovg	%r14d, %esi
	movl	$5, %edi
	movq	%rcx, -88(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r8d
	cmpl	$5, %ecx
	cmovb	%edi, %ecx
	cmpl	%ecx, %r8d
	jb	.L31
	testl	%edx, %edx
	je	.L9
	movq	-88(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L45
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L46
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
	jmp	.L9
.L82:
	movq	%r15, %rdi
	vzeroupper
	call	dummy
	movq	-88(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$1, -408(%rbp)
	jle	.L15
	leal	-1(%rbx), %eax
	movl	%ebx, -180(%rbp)
	movl	%eax, -116(%rbp)
	movl	%ebx, %eax
	imull	%r12d, %eax
	movl	%eax, -412(%rbp)
	cmpl	$2, %r12d
	jg	.L40
	jmp	.L15
.L79:
	vzeroupper
	jmp	.L8
.L77:
	vzeroupper
	jmp	.L75
.L45:
	movl	$1, %eax
	jmp	.L9
.L3:
	leaq	-80(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -88(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L35
.L46:
	movl	$2, %eax
	jmp	.L9
.L44:
	movl	$2, %esi
	jmp	.L5
.L74:
	vzeroupper
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
