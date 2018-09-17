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
	movq	%rax, %r14
	movq	%rax, -88(%rbp)
	movl	%r14d, %r13d
	call	strtol
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r13d
	movq	%rax, %rbx
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
	leal	-1(%r13), %r14d
	movq	%r12, %rax
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
	vmovsd	%xmm0, (%r12)
	cmpl	$1, %eax
	je	.L41
	vmovsd	%xmm0, 8(%r12)
	cmpl	$3, %eax
	jne	.L42
	vmovsd	%xmm0, 16(%r12)
	movl	$3, %edi
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r12,%rax,8), %rdx
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
	leaq	-80(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
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
	movq	$0, -328(%rbp)
	xorl	%eax, %eax
.L31:
	movq	-328(%rbp), %rcx
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
	movl	-88(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -336(%rbp)
	testl	%edx, %edx
	jne	.L78
	cmpl	$2, -336(%rbp)
	jle	.L79
.L14:
	leal	-2(%rbx), %eax
	movl	%eax, -424(%rbp)
	cmpl	$2, %eax
	jle	.L71
	movq	-328(%rbp), %r11
	leal	(%rbx,%rbx), %edx
	movslq	%ebx, %rsi
	movq	$0, -248(%rbp)
	movslq	%edx, %rdi
	addl	%ebx, %edx
	movq	%rsi, -352(%rbp)
	leaq	16(,%rdi,8), %rcx
	movq	%rdi, -280(%rbp)
	leaq	0(,%rsi,8), %r14
	movl	$2, -96(%rbp)
	leaq	(%r11,%rcx), %rax
	movq	%r14, -360(%rbp)
	movq	%rax, -288(%rbp)
	leaq	-16(%rcx), %rax
	leaq	(%r11,%rax), %r10
	movq	%rax, -240(%rbp)
	movq	%r10, -296(%rbp)
	leaq	(%r12,%r14), %r15
	movslq	%edx, %r10
	movq	%rsi, %rdx
	leaq	32(%r11,%rcx), %rcx
	salq	$4, %rdx
	movq	%r15, -272(%rbp)
	addq	%r15, %rdx
	movq	%rcx, -304(%rbp)
	movq	%rsi, %rcx
	movq	%rdx, -256(%rbp)
	movq	%rax, %rdx
	leal	0(,%rbx,4), %eax
	movq	%r10, -224(%rbp)
	movslq	%eax, %rsi
	movq	%rcx, -216(%rbp)
	leaq	0(,%rsi,8), %rax
	movq	%rsi, -232(%rbp)
	movq	%r12, %rsi
	movq	%rax, -264(%rbp)
	movq	%r10, %rax
	subq	%rdx, %rsi
	subq	%rdi, %rax
	movq	%rsi, -368(%rbp)
	salq	$3, %rax
	movq	%r14, -312(%rbp)
	movq	%rax, -384(%rbp)
	leal	-4(%rbx), %eax
	movl	%eax, -320(%rbp)
	salq	$3, %rax
	movq	%rax, -376(%rbp)
	leaq	0(,%rdi,8), %rax
	movq	%r12, %rdi
	subq	%rax, %rdi
	leal	-5(%rbx), %eax
	movq	%rdi, -392(%rbp)
	leaq	64(%r12), %rbx
	movl	%eax, -420(%rbp)
	movq	%rbx, -416(%rbp)
	leaq	(%r12,%rax,8), %rax
	leaq	64(%rsi), %rbx
	subq	%r11, %rax
	movq	%rbx, -408(%rbp)
	leaq	-80(%rbp), %rbx
	subq	$8, %rax
	addq	$8, %rbx
	movq	%rax, -432(%rbp)
	movq	%rbx, -400(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-288(%rbp), %r15
	leaq	-80(%rbp), %rsi
	movq	-376(%rbp), %rcx
	movq	-240(%rbp), %r14
	movq	-248(%rbp), %rbx
	movq	-384(%rbp), %r11
	movq	-400(%rbp), %rdi
	addq	%r15, %rcx
	addl	$1, -96(%rbp)
	leaq	(%r12,%r14), %rax
	salq	$3, %rbx
	movq	-304(%rbp), %r10
	addq	%r14, %r11
	cmpq	%rcx, %rsi
	movq	-256(%rbp), %r9
	setnb	%r8b
	cmpq	%rdi, %r15
	movq	-264(%rbp), %r13
	setnb	%dil
	orl	%r8d, %edi
	cmpl	$4, -320(%rbp)
	leaq	(%r12,%r13), %rdx
	seta	%r8b
	andl	%edi, %r8d
	movq	-272(%rbp), %rdi
	leaq	64(%rdi), %rcx
	cmpq	%rcx, %r15
	setnb	%sil
	cmpq	%rdi, %r10
	movl	%r8d, %edi
	setbe	%cl
	orl	%esi, %ecx
	andl	%ecx, %edi
	leaq	64(%r9), %rcx
	cmpq	%rcx, %r15
	setnb	%sil
	cmpq	%r9, %r10
	movq	-416(%rbp), %r9
	setbe	%cl
	orl	%esi, %ecx
	andl	%edi, %ecx
	movq	%r9, %rsi
	addq	%r14, %rsi
	cmpq	%rsi, %r15
	setnb	%sil
	cmpq	%rax, %r10
	setbe	%dil
	orl	%edi, %esi
	andl	%esi, %ecx
	movq	-408(%rbp), %rsi
	addq	%r14, %rsi
	cmpq	%rsi, %r15
	setnb	%sil
	addq	-368(%rbp), %r14
	cmpq	%r14, %r10
	setbe	%dil
	orl	%edi, %esi
	testb	%sil, %cl
	je	.L28
	movq	%r9, %rcx
	addq	%r13, %rcx
	cmpq	%rcx, %r15
	setnb	%sil
	cmpq	%rdx, %r10
	setbe	%cl
	orb	%cl, %sil
	je	.L28
	movq	-240(%rbp), %rcx
	addq	-392(%rbp), %rcx
	movq	%rcx, %r9
	shrq	$3, %r9
	negq	%r9
	andl	$3, %r9d
	leal	3(%r9), %esi
	cmpl	-420(%rbp), %esi
	ja	.L45
	movl	$2, -316(%rbp)
	testl	%r9d, %r9d
	je	.L17
	movq	-256(%rbp), %rdi
	leal	-1(%r9), %r10d
	movl	$3, %r8d
	movq	-272(%rbp), %rsi
	addq	$4, %r10
	movq	-296(%rbp), %r13
.L18:
	vmovsd	(%rcx), %xmm0
	movl	%r8d, %r14d
	addq	$8, %rax
	addq	$8, %rcx
	vaddsd	8(%rax), %xmm0, %xmm0
	addq	$8, %rsi
	addq	$8, %rdi
	vaddsd	-8(%rsi), %xmm0, %xmm0
	addq	$8, %rdx
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
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
	vmovsd	%xmm0, -8(%r13,%r8,8)
	addq	$1, %r8
	cmpq	%r10, %r8
	jne	.L18
	movl	%r14d, -316(%rbp)
.L17:
	movl	-320(%rbp), %edi
	movl	%r9d, %eax
	movq	-232(%rbp), %r8
	vbroadcastsd	-80(%rbp), %ymm2
	subl	%r9d, %edi
	movq	-224(%rbp), %r9
	movl	%edi, -332(%rbp)
	shrl	$2, %edi
	movl	%edi, -92(%rbp)
	movq	-280(%rbp), %rdi
	leaq	2(%rax,%rdi), %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	0(,%rax,8), %rdx
	movq	%rcx, -88(%rbp)
	leaq	(%r12,%rcx), %rsi
	leaq	(%rdx,%rbx), %rcx
	movq	%rsi, -104(%rbp)
	leaq	(%r12,%rcx), %rbx
	movq	%rbx, -112(%rbp)
	movq	-312(%rbp), %rbx
	leaq	(%rdx,%rbx), %rcx
	leaq	(%r12,%rcx), %rbx
	movq	%rbx, -120(%rbp)
	movq	-240(%rbp), %rbx
	leaq	(%rdx,%rbx), %rcx
	leaq	(%r12,%rcx), %rbx
	leaq	(%rdx,%r11), %rcx
	movq	%rbx, -128(%rbp)
	addq	-264(%rbp), %rdx
	leaq	(%r12,%rcx), %rbx
	movq	-248(%rbp), %rcx
	movq	%rbx, -136(%rbp)
	leaq	(%r12,%rdx), %rbx
	movq	%rbx, -144(%rbp)
	leaq	1(%rax,%rcx), %rdx
	leaq	(%r12,%rdx,8), %rsi
	movq	%rsi, -152(%rbp)
	movq	-216(%rbp), %rsi
	leaq	1(%rax,%rsi), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -160(%rbp)
	leaq	1(%rax,%rdi), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -168(%rbp)
	leaq	1(%rax,%r9), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -176(%rbp)
	leaq	1(%rax,%r8), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -184(%rbp)
	leaq	2(%rax,%rcx), %rdx
	leaq	(%r12,%rdx,8), %r15
	leaq	2(%rax,%rsi), %rdx
	leaq	(%r12,%rdx,8), %r14
	leaq	2(%rax,%r9), %rdx
	leaq	(%r12,%rdx,8), %r13
	leaq	2(%rax,%r8), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -208(%rbp)
	leaq	3(%rax,%rcx), %rdx
	leaq	(%r12,%rdx,8), %rbx
	leaq	3(%rax,%rsi), %rdx
	movq	%rdi, %rsi
	leaq	(%r12,%rdx,8), %r11
	leaq	3(%rax,%rdi), %rdx
	leaq	(%r12,%rdx,8), %r10
	leaq	3(%rax,%r9), %rdx
	leaq	(%r12,%rdx,8), %r9
	leaq	3(%rax,%r8), %rdx
	leaq	(%r12,%rdx,8), %r8
	leaq	4(%rax,%rcx), %rdx
	movq	-224(%rbp), %rcx
	leaq	(%r12,%rdx,8), %rdi
	movq	%rdi, -192(%rbp)
	movq	-216(%rbp), %rdi
	leaq	4(%rax,%rdi), %rdx
	leaq	(%r12,%rdx,8), %rdi
	leaq	4(%rax,%rsi), %rdx
	leaq	(%r12,%rdx,8), %rsi
	leaq	4(%rax,%rcx), %rdx
	leaq	(%r12,%rdx,8), %rcx
	movq	-232(%rbp), %rdx
	leaq	4(%rax,%rdx), %rax
	leaq	(%r12,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	-328(%rbp), %rax
	movq	%rax, -200(%rbp)
	xorl	%eax, %eax
	movl	$0, -88(%rbp)
	movq	%r12, -344(%rbp)
	movq	-208(%rbp), %r12
	movq	%rdx, -208(%rbp)
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	movq	-104(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	movq	-112(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
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
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-184(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r15,%rax), %xmm0
	vinsertf128	$0x1, 16(%r15,%rax), %ymm0, %ymm0
	movq	-192(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r14,%rax), %xmm0
	vinsertf128	$0x1, 16(%r14,%rax), %ymm0, %ymm0
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
	vaddpd	%ymm0, %ymm1, %ymm0
	vaddpd	(%rdx,%rax), %ymm0, %ymm1
	vmovupd	(%rdi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	movq	-208(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	(%rsi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rcx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	movq	-200(%rbp), %rdx
	vaddpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	addl	$1, -88(%rbp)
	movl	-88(%rbp), %edx
	cmpl	%edx, -92(%rbp)
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-332(%rbp), %ebx
	movl	-316(%rbp), %r8d
	movq	-344(%rbp), %r12
	movl	%ebx, %eax
	andl	$-4, %eax
	addl	%eax, %r8d
	cmpl	%eax, %ebx
	je	.L23
.L16:
	movq	-280(%rbp), %rax
	movslq	%r8d, %r8
	movl	-424(%rbp), %r9d
	movq	-296(%rbp), %r10
	addq	%r8, %rax
	leaq	(%r12,%rax,8), %rdi
	movq	-216(%rbp), %rax
	addq	%r8, %rax
	leaq	(%r12,%rax,8), %rsi
	movq	-224(%rbp), %rax
	addq	%r8, %rax
	leaq	(%r12,%rax,8), %rcx
	movq	-232(%rbp), %rax
	addq	%r8, %rax
	leaq	(%r12,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%r8, %rax
	leaq	-16(%r12,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rax), %xmm0
	addq	$8, %rdi
	addq	$8, %rsi
	addq	$8, %rcx
	vaddsd	-8(%rdi), %xmm0, %xmm0
	addq	$8, %rdx
	addq	$8, %rax
	vaddsd	-24(%rsi), %xmm0, %xmm0
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
	vmovsd	%xmm0, (%r10,%r8,8)
	addq	$1, %r8
	cmpl	%r8d, %r9d
	jg	.L21
.L23:
	movq	-360(%rbp), %rax
	movq	-352(%rbp), %rbx
	addq	%rax, -288(%rbp)
	addq	%rbx, -280(%rbp)
	addq	%rbx, -248(%rbp)
	addq	%rbx, -216(%rbp)
	addq	%rbx, -224(%rbp)
	addq	%rbx, -232(%rbp)
	addq	%rax, -296(%rbp)
	addq	%rax, -304(%rbp)
	addq	%rax, -272(%rbp)
	addq	%rax, -256(%rbp)
	addq	%rax, -312(%rbp)
	addq	%rax, -240(%rbp)
	addq	%rax, -264(%rbp)
	movl	-96(%rbp), %ebx
	cmpl	%ebx, -336(%rbp)
	jg	.L24
.L71:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L72
	movq	%r12, %rdi
	call	dummy
	movq	-328(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L72:
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
	movq	-312(%rbp), %rcx
	movq	-240(%rbp), %rbx
	movq	-392(%rbp), %rdi
	movq	-328(%rbp), %r8
	leaq	(%r12,%rcx), %rsi
	movq	-432(%rbp), %r9
	movq	-256(%rbp), %rcx
	addq	-288(%rbp), %r9
	addq	%rbx, %rdi
	addq	%rbx, %r8
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
	vaddsd	-8(%rsi), %xmm0, %xmm0
	addq	$8, %r8
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
	movq	-80(%rbp), %rcx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rcx, -328(%rbp)
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
	movq	-328(%rbp), %rax
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
	movq	-328(%rbp), %rcx
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
.L78:
	movq	%r12, %rdi
	vzeroupper
	call	dummy
	movq	-328(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$2, -336(%rbp)
	jg	.L14
	jmp	.L15
.L41:
	movl	$1, %edi
	jmp	.L5
.L77:
	movq	$0, -328(%rbp)
	xorl	%edx, %edx
	jmp	.L9
.L43:
	movl	$1, %eax
	jmp	.L9
.L75:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-80(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -328(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -328(%rbp)
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
