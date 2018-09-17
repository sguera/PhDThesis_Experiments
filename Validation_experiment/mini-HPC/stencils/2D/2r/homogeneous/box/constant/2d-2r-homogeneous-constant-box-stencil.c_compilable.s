	.file	"2d-2r-homogeneous-constant-box-stencil.c_compilable.c"
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
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	movl	%eax, %r13d
	movq	%rax, -88(%rbp)
	imull	%ebx, %r13d
	movslq	%r13d, %r15
	salq	$3, %r15
	movq	%r15, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %r12
	testl	%r13d, %r13d
	jle	.L3
	movq	%r12, %rax
	movl	$5, %ecx
	leal	-1(%r13), %r14d
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
	vmovsd	%xmm0, (%r12)
	cmpl	$1, %eax
	je	.L41
	vmovsd	%xmm0, 8(%r12)
	cmpl	$3, %eax
	jne	.L42
	vmovsd	%xmm0, 16(%r12)
	movl	$3, %edi
.L5:
	movl	%r13d, %esi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r12,%rax,8), %rdx
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
	je	.L75
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r12,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r12,%rax,8)
.L8:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L76
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %r14d
	cmovg	%r13d, %edi
	cmpl	$4, %r14d
	ja	.L77
	movq	$0, -312(%rbp)
	xorl	%eax, %eax
.L31:
	vmovsd	.LC2(%rip), %xmm0
	movq	-312(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L35
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L35:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -80(%rbp)
	movl	-88(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -356(%rbp)
	testl	%edx, %edx
	jne	.L78
	cmpl	$2, -356(%rbp)
	jle	.L79
.L14:
	leal	-2(%rbx), %eax
	movl	%eax, -436(%rbp)
	cmpl	$2, %eax
	jle	.L71
	leal	(%rbx,%rbx), %edx
	movslq	%ebx, %rsi
	movq	-312(%rbp), %r11
	movq	$0, -232(%rbp)
	movslq	%edx, %rdi
	addl	%ebx, %edx
	leaq	0(,%rsi,8), %r10
	movq	%rsi, -368(%rbp)
	leaq	16(,%rdi,8), %rcx
	movslq	%edx, %r15
	movq	%rsi, %rdx
	movq	%r10, -376(%rbp)
	leaq	-16(%rcx), %rax
	leaq	(%r11,%rcx), %r9
	salq	$4, %rdx
	movq	%rdi, -264(%rbp)
	movq	%rax, %r13
	leaq	(%r11,%rax), %r14
	leal	0(,%rbx,4), %eax
	movq	%r15, -216(%rbp)
	cltq
	leaq	32(%r11,%rcx), %rcx
	movq	%rsi, -272(%rbp)
	movq	%rax, -224(%rbp)
	salq	$3, %rax
	movq	%rax, -248(%rbp)
	movq	%r15, %rax
	subq	%rdi, %rax
	movq	%rcx, -288(%rbp)
	movq	%r10, %rcx
	leaq	(%r12,%r10), %r10
	salq	$3, %rax
	addq	%r10, %rdx
	movq	%r10, -256(%rbp)
	movq	%rax, -400(%rbp)
	leal	-4(%rbx), %eax
	movl	%eax, -300(%rbp)
	salq	$3, %rax
	movq	%rdx, -240(%rbp)
	movq	%r12, %rdx
	movq	%rax, -392(%rbp)
	subq	%r13, %rdx
	leaq	0(,%rdi,8), %rax
	movq	%r12, %rdi
	subq	%rax, %rdi
	leal	-5(%rbx), %eax
	leaq	64(%r12), %rbx
	movq	%rdx, -384(%rbp)
	movl	%eax, -360(%rbp)
	leaq	(%r12,%rax,8), %rax
	movq	%rbx, -432(%rbp)
	leaq	64(%rdx), %rbx
	subq	%r11, %rax
	movq	%r13, %r11
	movq	%rbx, -424(%rbp)
	leaq	-80(%rbp), %rbx
	subq	$8, %rax
	movq	%r9, %r13
	addq	$8, %rbx
	movq	%rdi, -408(%rbp)
	movq	%rcx, -296(%rbp)
	movl	$2, -276(%rbp)
	movq	%rbx, -416(%rbp)
	movq	%rax, -448(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-400(%rbp), %rsi
	movq	-232(%rbp), %rbx
	leaq	(%r12,%r11), %rax
	addl	$1, -276(%rbp)
	movq	-288(%rbp), %r15
	addq	%r11, %rsi
	salq	$3, %rbx
	movq	-240(%rbp), %r10
	movq	-248(%rbp), %r9
	movq	%rsi, -120(%rbp)
	movq	-392(%rbp), %rsi
	leaq	(%r12,%r9), %rdx
	leaq	0(%r13,%rsi), %rcx
	leaq	-80(%rbp), %rsi
	cmpq	%rcx, %rsi
	setnb	%r8b
	cmpq	-416(%rbp), %r13
	setnb	%dil
	orl	%r8d, %edi
	cmpl	$4, -300(%rbp)
	seta	%r8b
	andl	%edi, %r8d
	movq	-256(%rbp), %rdi
	leaq	64(%rdi), %rcx
	cmpq	%rcx, %r13
	setnb	%sil
	cmpq	%rdi, %r15
	movl	%r8d, %edi
	setbe	%cl
	orl	%esi, %ecx
	andl	%ecx, %edi
	leaq	64(%r10), %rcx
	cmpq	%rcx, %r13
	setnb	%sil
	cmpq	%r10, %r15
	movq	-432(%rbp), %r10
	setbe	%cl
	orl	%esi, %ecx
	leaq	(%r10,%r11), %rsi
	andl	%edi, %ecx
	cmpq	%rsi, %r13
	setnb	%sil
	cmpq	%rax, %r15
	setbe	%dil
	orl	%edi, %esi
	movq	-424(%rbp), %rdi
	andl	%esi, %ecx
	leaq	(%rdi,%r11), %rsi
	movq	-384(%rbp), %rdi
	cmpq	%rsi, %r13
	setnb	%sil
	addq	%r11, %rdi
	cmpq	%rdi, %r15
	setbe	%dil
	orl	%edi, %esi
	testb	%sil, %cl
	je	.L28
	movq	%r10, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r13
	setnb	%sil
	cmpq	%rdx, %r15
	setbe	%cl
	orb	%cl, %sil
	je	.L28
	movq	-408(%rbp), %rsi
	leaq	(%r11,%rsi), %rcx
	movq	%rcx, %r9
	shrq	$3, %r9
	negq	%r9
	andl	$3, %r9d
	leal	3(%r9), %esi
	cmpl	-360(%rbp), %esi
	ja	.L45
	movl	$2, -280(%rbp)
	testl	%r9d, %r9d
	je	.L17
	leal	-1(%r9), %r10d
	movq	-240(%rbp), %rdi
	movq	-256(%rbp), %rsi
	movl	$3, %r8d
	addq	$4, %r10
.L18:
	vmovsd	(%rcx), %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	movl	%r8d, %r15d
	addq	$8, %rax
	vaddsd	(%rsi), %xmm0, %xmm0
	addq	$8, %rcx
	addq	$8, %rsi
	addq	$8, %rdi
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
	addq	$8, %rdx
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm0
	vaddsd	16(%rsi), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -8(%r14,%r8,8)
	addq	$1, %r8
	cmpq	%r10, %r8
	jne	.L18
	movl	%r15d, -280(%rbp)
.L17:
	movl	%r9d, %eax
	movl	-300(%rbp), %edi
	movq	-216(%rbp), %r10
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %r8
	vbroadcastsd	-80(%rbp), %ymm1
	leaq	(%rdx,%rbx), %rsi
	subl	%r9d, %edi
	movq	-272(%rbp), %r9
	leaq	(%r12,%rsi), %rbx
	movl	%edi, -304(%rbp)
	shrl	$2, %edi
	movq	%rbx, -96(%rbp)
	movq	-296(%rbp), %rbx
	movl	%edi, -88(%rbp)
	movq	-264(%rbp), %rdi
	leaq	(%rdx,%rbx), %rsi
	leaq	(%r12,%rsi), %rbx
	leaq	(%rdx,%r11), %rsi
	movq	%rbx, -104(%rbp)
	leaq	(%r12,%rsi), %rbx
	movq	-120(%rbp), %rsi
	leaq	2(%rax,%rdi), %rcx
	movq	%rbx, -112(%rbp)
	salq	$3, %rcx
	addq	%rdx, %rsi
	addq	-248(%rbp), %rdx
	leaq	(%r12,%rcx), %r15
	leaq	(%r12,%rsi), %rbx
	movq	-232(%rbp), %rsi
	movq	%rbx, -120(%rbp)
	leaq	(%r12,%rdx), %rbx
	leaq	1(%rax,%rsi), %rdx
	movq	%rbx, -128(%rbp)
	leaq	(%r12,%rdx,8), %rbx
	leaq	1(%rax,%r9), %rdx
	movq	%rbx, -136(%rbp)
	leaq	(%r12,%rdx,8), %rbx
	leaq	1(%rax,%rdi), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rbx, -144(%rbp)
	movq	%rdi, %rbx
	movq	%rdx, -152(%rbp)
	leaq	1(%rax,%r10), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -160(%rbp)
	leaq	1(%rax,%r8), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -168(%rbp)
	leaq	2(%rax,%rsi), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -176(%rbp)
	leaq	2(%rax,%r9), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -184(%rbp)
	leaq	2(%rax,%r10), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -192(%rbp)
	leaq	2(%rax,%r8), %rdx
	leaq	(%r12,%rdx,8), %rdi
	leaq	3(%rax,%rsi), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdi, -200(%rbp)
	movq	%rdx, -320(%rbp)
	leaq	3(%rax,%r9), %rdx
	leaq	(%r12,%rdx,8), %rdi
	leaq	3(%rax,%rbx), %rdx
	movq	%rdi, -208(%rbp)
	movq	%rbx, %rdi
	leaq	(%r12,%rdx,8), %rbx
	leaq	3(%rax,%r10), %rdx
	movq	%rbx, -328(%rbp)
	leaq	(%r12,%rdx,8), %rbx
	leaq	3(%rax,%r8), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -336(%rbp)
	leaq	4(%rax,%rsi), %rdx
	movq	-224(%rbp), %rsi
	leaq	(%r12,%rdx,8), %r10
	leaq	4(%rax,%r9), %rdx
	leaq	(%r12,%rdx,8), %r9
	leaq	4(%rax,%rdi), %rdx
	movq	-216(%rbp), %rdi
	addq	-312(%rbp), %rcx
	leaq	(%r12,%rdx,8), %r8
	movq	%r12, -344(%rbp)
	leaq	4(%rax,%rdi), %rdx
	leaq	4(%rax,%rsi), %rax
	movq	%r13, -352(%rbp)
	movq	-328(%rbp), %r13
	leaq	(%r12,%rdx,8), %rdi
	leaq	(%r12,%rax,8), %rsi
	movq	-208(%rbp), %r12
	xorl	%eax, %eax
	movq	%rcx, -208(%rbp)
	xorl	%edx, %edx
	movq	%r14, -328(%rbp)
	movq	-336(%rbp), %r14
	movq	%r11, -336(%rbp)
	movq	-320(%rbp), %r11
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-96(%rbp), %rcx
	vmovupd	(%r15,%rax), %ymm0
	addl	$1, %edx
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
	movq	-200(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%r12,%rax), %ymm0, %ymm0
	vaddpd	0(%r13,%rax), %ymm0, %ymm0
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	vaddpd	(%rsi,%rax), %ymm0, %ymm0
	movq	-208(%rbp), %rcx
	vmulpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, -88(%rbp)
	ja	.L19
	movl	-304(%rbp), %ebx
	movl	-280(%rbp), %r8d
	movq	-344(%rbp), %r12
	movq	-352(%rbp), %r13
	movl	%ebx, %eax
	movq	-328(%rbp), %r14
	movq	-336(%rbp), %r11
	andl	$-4, %eax
	addl	%eax, %r8d
	cmpl	%eax, %ebx
	je	.L23
.L16:
	movq	-264(%rbp), %rax
	movslq	%r8d, %r8
	movl	-436(%rbp), %r9d
	addq	%r8, %rax
	leaq	(%r12,%rax,8), %rdi
	movq	-272(%rbp), %rax
	addq	%r8, %rax
	leaq	(%r12,%rax,8), %rsi
	movq	-216(%rbp), %rax
	addq	%r8, %rax
	leaq	(%r12,%rax,8), %rcx
	movq	-224(%rbp), %rax
	addq	%r8, %rax
	leaq	(%r12,%rax,8), %rdx
	movq	-232(%rbp), %rax
	addq	%r8, %rax
	leaq	-16(%r12,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rax), %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	addq	$8, %rsi
	addq	$8, %rdi
	vaddsd	-24(%rsi), %xmm0, %xmm0
	addq	$8, %rcx
	addq	$8, %rdx
	addq	$8, %rax
	vaddsd	-24(%rdi), %xmm0, %xmm0
	vaddsd	-24(%rcx), %xmm0, %xmm0
	vaddsd	-24(%rdx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	-16(%rsi), %xmm0, %xmm0
	vaddsd	-16(%rdi), %xmm0, %xmm0
	vaddsd	-16(%rcx), %xmm0, %xmm0
	vaddsd	-16(%rdx), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r14,%r8,8)
	addq	$1, %r8
	cmpl	%r8d, %r9d
	jg	.L21
.L23:
	movq	-376(%rbp), %rax
	movq	-368(%rbp), %rbx
	addq	%rax, -288(%rbp)
	addq	%rbx, -264(%rbp)
	addq	%rax, %r13
	addq	%rax, %r14
	addq	%rax, %r11
	addq	%rbx, -232(%rbp)
	addq	%rbx, -272(%rbp)
	addq	%rbx, -216(%rbp)
	addq	%rbx, -224(%rbp)
	movl	-276(%rbp), %ebx
	addq	%rax, -256(%rbp)
	addq	%rax, -240(%rbp)
	addq	%rax, -296(%rbp)
	addq	%rax, -248(%rbp)
	cmpl	%ebx, -356(%rbp)
	jg	.L24
.L71:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L72
	movq	%r12, %rdi
	call	dummy
	movq	-312(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L72:
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
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	movq	-408(%rbp), %rbx
	movq	-240(%rbp), %rcx
	leaq	(%r11,%rbx), %rdi
	movq	-296(%rbp), %rbx
	leaq	(%r12,%rbx), %rsi
	movq	-312(%rbp), %rbx
	leaq	(%rbx,%r11), %r8
	movq	-448(%rbp), %rbx
	leaq	(%rbx,%r13), %r9
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	(%rdi), %xmm0
	addq	$8, %rax
	addq	$8, %rdi
	addq	$8, %rsi
	vaddsd	8(%rax), %xmm0, %xmm0
	addq	$8, %rcx
	addq	$8, %rdx
	addq	$8, %r8
	vaddsd	-8(%rsi), %xmm0, %xmm0
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	vaddsd	16(%rsi), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, 8(%r8)
	cmpq	%r9, %rax
	jne	.L22
	jmp	.L23
.L45:
	movl	$2, %r8d
	jmp	.L16
.L76:
	movq	-80(%rbp), %rsi
	testl	%r13d, %r13d
	movl	$1, %edi
	cmovg	%r13d, %edi
	movq	%rsi, -312(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
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
	vmovsd	.LC2(%rip), %xmm0
	movq	-312(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L43
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L44
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	movq	-312(%rbp), %rcx
	vmovapd	.LC3(%rip), %ymm0
	movl	%edi, %esi
	leaq	(%rcx,%rdx,8), %rcx
	shrl	$2, %esi
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
.L78:
	movq	%r12, %rdi
	vzeroupper
	call	dummy
	movq	-312(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$2, -356(%rbp)
	jg	.L14
	jmp	.L15
.L41:
	movl	$1, %edi
	jmp	.L5
.L77:
	movq	$0, -312(%rbp)
	xorl	%edx, %edx
	jmp	.L9
.L43:
	movl	$1, %eax
	jmp	.L9
.L75:
	vzeroupper
	jmp	.L8
.L3:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	call	posix_memalign
	movq	$0, -312(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -312(%rbp)
	jmp	.L35
.L44:
	movl	$2, %eax
	jmp	.L9
.L42:
	movl	$2, %edi
	jmp	.L5
.L79:
	vzeroupper
	jmp	.L72
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
