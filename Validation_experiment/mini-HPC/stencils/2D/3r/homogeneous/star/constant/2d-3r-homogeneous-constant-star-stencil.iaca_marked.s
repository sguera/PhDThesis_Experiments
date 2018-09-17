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
	call	strtol
	movl	%ebx, %r13d
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	imull	%eax, %r13d
	movq	%rax, %r12
	movslq	%r13d, %r15
	salq	$3, %r15
	movq	%r15, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %r14
	testl	%r13d, %r13d
	jle	.L3
	movq	%r14, %rax
	movl	$5, %ecx
	leal	-1(%r13), %r8d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r8d
	jb	.L39
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r14)
	cmpl	$1, %eax
	je	.L41
	vmovsd	%xmm0, 8(%r14)
	cmpl	$3, %eax
	jne	.L42
	vmovsd	%xmm0, 16(%r14)
	movl	$3, %edi
.L5:
	movl	%r13d, %esi
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
	je	.L77
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r14,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r14,%rax,8)
.L8:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	movl	%r8d, -88(%rbp)
	call	posix_memalign
	movl	-88(%rbp), %r8d
	testl	%eax, %eax
	je	.L78
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovg	%r8d, %eax
	cmovg	%r13d, %edi
	cmpl	$4, %eax
	ja	.L79
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
.L31:
	vmovsd	.LC2(%rip), %xmm0
	movq	-128(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L35
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L35:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -80(%rbp)
	leal	-3(%r12), %eax
	movl	%eax, -316(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$3, -316(%rbp)
	jle	.L81
.L14:
	leal	-3(%rbx), %eax
	movl	%eax, -412(%rbp)
	cmpl	$3, %eax
	jle	.L73
	leal	(%rbx,%rbx), %edx
	movq	-128(%rbp), %r10
	movslq	%ebx, %r8
	movl	%ebx, -340(%rbp)
	leal	(%rdx,%rbx), %ecx
	movslq	%edx, %r15
	movq	%r8, -328(%rbp)
	leaq	0(,%r8,8), %r9
	movslq	%ecx, %r13
	movl	%ecx, -132(%rbp)
	leaq	24(,%r13,8), %rax
	movl	%ebx, -204(%rbp)
	leaq	-24(%rax), %rdi
	leaq	(%r10,%rax), %rsi
	movq	%r10, %rax
	movl	%edx, -196(%rbp)
	addq	%rdi, %rax
	movq	%rdi, -120(%rbp)
	leaq	(%r9,%r14), %rdx
	movq	%rax, -272(%rbp)
	leaq	56(%r10,%r13,8), %rax
	movq	%rax, -224(%rbp)
	leal	0(,%rbx,4), %eax
	leal	(%rax,%rbx), %edi
	movslq	%eax, %r11
	movq	%rsi, -88(%rbp)
	leal	(%rcx,%rcx), %esi
	movl	%eax, -200(%rbp)
	movslq	%edi, %r12
	movslq	%esi, %r8
	leal	-7(%rbx), %ecx
	leaq	0(,%r15,8), %rax
	movq	%r8, -184(%rbp)
	movq	%rax, -232(%rbp)
	leaq	0(,%r11,8), %rax
	movq	%rax, -240(%rbp)
	leaq	0(,%r12,8), %rax
	movq	%rax, -248(%rbp)
	leaq	0(,%r8,8), %rax
	movq	-328(%rbp), %r8
	movq	%rax, -256(%rbp)
	leal	-6(%rbx), %eax
	leaq	24(%r14), %rbx
	movl	%eax, -260(%rbp)
	addq	%r13, %rax
	leaq	24(%r10,%rax,8), %rax
	movq	%r12, -168(%rbp)
	movq	%r13, %r12
	movl	%ecx, -344(%rbp)
	addq	%r13, %rcx
	movq	%r14, %r13
	movq	%r9, -336(%rbp)
	movq	%r15, -144(%rbp)
	movq	%r11, -152(%rbp)
	movl	%edi, -208(%rbp)
	movl	%esi, -212(%rbp)
	movq	%r8, -160(%rbp)
	movq	$0, -192(%rbp)
	movl	$4, -276(%rbp)
	movl	$3, -264(%rbp)
	movl	$5, -320(%rbp)
	movq	$0, -176(%rbp)
	movl	$3, -216(%rbp)
	movq	%rbx, -376(%rbp)
	leaq	56(%r14), %rbx
	movq	%rax, -368(%rbp)
	leaq	80(%r14), %rax
	movq	%rax, -400(%rbp)
	leaq	56(%rdx), %rax
	movq	%rax, -384(%rbp)
	leaq	24(%rdx), %rax
	movq	%rax, -360(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rbx, -392(%rbp)
	movq	%rax, -352(%rbp)
	leaq	16(%r14), %rax
	movq	%rax, -408(%rbp)
	leaq	8(%r14,%rcx,8), %rax
	movq	-88(%rbp), %r14
	movq	%rax, -424(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-192(%rbp), %r9
	leaq	-80(%rbp), %rbx
	movq	-120(%rbp), %rdi
	movq	-368(%rbp), %rdx
	addl	$1, -216(%rbp)
	movq	-224(%rbp), %r15
	leaq	0(%r13,%rdi), %rax
	movq	-232(%rbp), %r10
	addq	%r9, %rdx
	movq	-248(%rbp), %r8
	cmpq	%rdx, %rbx
	movq	-392(%rbp), %rbx
	setnb	%cl
	cmpq	-352(%rbp), %r14
	setnb	%dl
	orl	%ecx, %edx
	cmpl	$5, -260(%rbp)
	seta	%cl
	andl	%ecx, %edx
	movq	-400(%rbp), %rcx
	addq	%rdi, %rcx
	movq	-376(%rbp), %rdi
	cmpq	%rcx, %r14
	setnb	%cl
	cmpq	%rax, %r15
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r10, %rsi
	movq	-240(%rbp), %r10
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
	movq	-360(%rbp), %rsi
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
	movq	-256(%rbp), %rsi
	addq	%rsi, %rbx
	cmpq	%rbx, %r14
	setnb	%cl
	addq	%rsi, %rdi
	cmpq	%rdi, %r15
	setbe	%dl
	orb	%dl, %cl
	je	.L28
	movq	-408(%rbp), %rdx
	addq	-120(%rbp), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-344(%rbp), %eax
	ja	.L45
	movl	$3, -136(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	-132(%rbp), %r11d
	movl	$4, -136(%rbp)
	leal	1(%r11), %edi
	leal	2(%r11), %ecx
	movslq	%edi, %rdi
	movslq	%ecx, %rcx
	leal	3(%r11), %eax
	leaq	0(%r13,%rdi,8), %r10
	leal	5(%r11), %edi
	cltq
	leaq	0(%r13,%rcx,8), %rsi
	movslq	%edi, %r15
	leal	4(%r11), %ecx
	leal	6(%r11), %edi
	movslq	%ecx, %rcx
	leaq	0(%r13,%rax,8), %rbx
	vmovsd	(%rsi), %xmm0
	movl	-196(%rbp), %r11d
	leaq	0(%r13,%rcx,8), %r9
	vaddsd	(%rbx), %xmm0, %xmm0
	movslq	%edi, %rdi
	vaddsd	(%r9), %xmm0, %xmm0
	leaq	0(%r13,%r15,8), %r8
	addl	$3, %r11d
	leaq	0(%r13,%rdi,8), %rdi
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-200(%rbp), %r11d
	addl	$3, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
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
	movq	-120(%rbp), %r11
	vaddsd	0(%r13,%r11), %xmm0, %xmm0
	movslq	-264(%rbp), %r11
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-212(%rbp), %r11d
	addl	$3, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-128(%rbp), %r11
	vmovsd	%xmm0, (%r11,%rax,8)
	cmpl	$1, %edx
	je	.L17
	movl	-132(%rbp), %r11d
	vmovsd	(%r9), %xmm0
	movl	$5, -136(%rbp)
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	leal	7(%r11), %eax
	movl	-196(%rbp), %r11d
	cltq
	addl	$4, %r11d
	leaq	0(%r13,%rax,8), %rax
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-200(%rbp), %r11d
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
	movslq	-276(%rbp), %r10
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
	vmovsd	(%r9), %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	movl	$6, -136(%rbp)
	vaddsd	(%rdi), %xmm0, %xmm0
	movl	-196(%rbp), %edi
	movl	-132(%rbp), %r11d
	movl	-212(%rbp), %r10d
	leal	5(%rdi), %ecx
	movl	-200(%rbp), %edi
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	leal	5(%rdi), %ecx
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	movl	-204(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	movl	-208(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	8(%r11), %eax
	cltq
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	movslq	-320(%rbp), %rax
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	5(%r10), %eax
	movq	-128(%rbp), %r10
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%r15,8)
.L17:
	movl	-260(%rbp), %esi
	movl	%edx, %eax
	movq	-176(%rbp), %r8
	movq	%r13, -304(%rbp)
	leaq	3(%rax,%r12), %rcx
	movq	%r14, -312(%rbp)
	vbroadcastsd	-80(%rbp), %ymm1
	subl	%edx, %esi
	leaq	2(%rax,%r12), %rdx
	salq	$3, %rcx
	leaq	0(%r13,%rdx,8), %rdx
	movl	%esi, -280(%rbp)
	shrl	$2, %esi
	leaq	0(%r13,%rcx), %r15
	movq	%rdx, -96(%rbp)
	leaq	4(%rax,%r12), %rdx
	addq	-128(%rbp), %rcx
	leaq	0(%r13,%rdx,8), %rdi
	movq	-144(%rbp), %rdx
	movl	%esi, -88(%rbp)
	movq	-152(%rbp), %rsi
	movq	%rdi, -104(%rbp)
	leaq	3(%rax,%rdx), %rdx
	leaq	0(%r13,%rdx,8), %rbx
	leaq	3(%rax,%rsi), %rdx
	movq	-160(%rbp), %rsi
	leaq	0(%r13,%rdx,8), %rdi
	leaq	1(%rax,%r12), %rdx
	movq	%rbx, -288(%rbp)
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdi, -112(%rbp)
	movq	-184(%rbp), %rdi
	movq	%rdx, -296(%rbp)
	leaq	5(%rax,%r12), %rdx
	movq	-296(%rbp), %r14
	leaq	0(%r13,%rdx,8), %rbx
	leaq	3(%rax,%rsi), %rdx
	movq	-168(%rbp), %rsi
	movq	%r12, -296(%rbp)
	leaq	0(%r13,%rdx,8), %r11
	leaq	3(%rax,%rsi), %rdx
	movq	-120(%rbp), %rsi
	leaq	0(%r13,%rdx,8), %r10
	leaq	6(%rax,%r12), %rdx
	movq	-288(%rbp), %r12
	leaq	(%rsi,%rax,8), %rsi
	leaq	0(%r13,%rdx,8), %r9
	leaq	3(%rax,%r8), %rdx
	leaq	3(%rax,%rdi), %rax
	addq	%r13, %rsi
	leaq	0(%r13,%rdx,8), %r8
	leaq	0(%r13,%rax,8), %rdi
	movq	-112(%rbp), %r13
	xorl	%eax, %eax
	movq	%rcx, -112(%rbp)
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	movq	-96(%rbp), %rcx
	vmovupd	(%r15,%rax), %ymm0
	addl	$1, %edx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-104(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	vaddpd	(%r12,%rax), %ymm0, %ymm0
	vaddpd	0(%r13,%rax), %ymm0, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%rsi,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	movq	-112(%rbp), %rcx
	vmulpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, -88(%rbp)
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-280(%rbp), %ebx
	movl	-136(%rbp), %edx
	movq	-304(%rbp), %r13
	movq	-312(%rbp), %r14
	movl	%ebx, %eax
	movq	-296(%rbp), %r12
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %ebx
	je	.L23
.L16:
	movslq	%edx, %rdx
	movq	-144(%rbp), %r10
	movq	-152(%rbp), %r9
	movq	-160(%rbp), %r8
	movq	-168(%rbp), %rdi
	leaq	(%rdx,%r12), %rax
	movq	-176(%rbp), %rsi
	leaq	0(%r13,%rax,8), %rax
	subq	%r12, %r10
	movq	-184(%rbp), %rcx
	movl	-412(%rbp), %r11d
	subq	%r12, %r9
	subq	%r12, %r8
	subq	%r12, %rdi
	movq	-272(%rbp), %rbx
	subq	%r12, %rsi
	subq	%r12, %rcx
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
	vmulsd	-80(%rbp), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, (%rbx,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %r11d
	jg	.L21
.L23:
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdi
	movl	-340(%rbp), %ebx
	addq	%rax, -272(%rbp)
	addl	%ebx, -132(%rbp)
	addq	%rax, %r14
	addq	%rdi, %r12
	addl	%ebx, -196(%rbp)
	addl	%ebx, -200(%rbp)
	addl	%ebx, -204(%rbp)
	addl	%ebx, -208(%rbp)
	addq	%rax, -224(%rbp)
	addq	%rdi, -144(%rbp)
	addq	%rdi, -152(%rbp)
	addq	%rdi, -160(%rbp)
	addq	%rdi, -168(%rbp)
	addq	%rdi, -176(%rbp)
	addq	%rdi, -184(%rbp)
	addq	%rax, -120(%rbp)
	addl	%ebx, -320(%rbp)
	addl	%ebx, -212(%rbp)
	addl	%ebx, -264(%rbp)
	addl	%ebx, -276(%rbp)
	movl	-216(%rbp), %ebx
	addq	%rax, -192(%rbp)
	addq	%rax, -232(%rbp)
	addq	%rax, -240(%rbp)
	addq	%rax, -248(%rbp)
	addq	%rax, -256(%rbp)
	cmpl	%ebx, -316(%rbp)
	jg	.L24
	movq	%r13, %r14
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L74
	movq	%r14, %rdi
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
	movq	-144(%rbp), %r10
	movq	-152(%rbp), %r9
	movq	-160(%rbp), %r8
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	-128(%rbp), %rdx
	subq	%r12, %r10
	subq	%r12, %r9
	movq	-184(%rbp), %rcx
	movq	-424(%rbp), %r11
	subq	%r12, %r8
	subq	%r12, %rdi
	addq	-120(%rbp), %rdx
	addq	-192(%rbp), %r11
	subq	%r12, %rsi
	subq	%r12, %rcx
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	16(%rax), %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	addq	$8, %rdx
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
	vmulsd	-80(%rbp), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, 16(%rdx)
	cmpq	%r11, %rax
	jne	.L22
	jmp	.L23
.L45:
	movl	$3, %edx
	jmp	.L16
.L78:
	movq	-80(%rbp), %rdx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rdx, -128(%rbp)
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r13d, %r13d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r8d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r8d
	jb	.L31
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	movq	-128(%rbp), %rax
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
	movq	-128(%rbp), %rcx
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
.L80:
	movq	%r14, %rdi
	vzeroupper
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$3, -316(%rbp)
	jg	.L14
	jmp	.L15
.L41:
	movl	$1, %edi
	jmp	.L5
.L79:
	xorl	%edx, %edx
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
	jmp	.L9
.L43:
	movl	$1, %eax
	jmp	.L9
.L77:
	vzeroupper
	jmp	.L8
.L3:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
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
