	.file	"2d-2r-homogeneous-constant-star-stencil.c_compilable.c"
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
	subq	$288, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	movl	%r12d, %r13d
	call	strtol
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r13d
	movq	%rax, %rbx
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
	movq	$0, -96(%rbp)
	xorl	%eax, %eax
.L31:
	movq	-96(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
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
	leal	-2(%r12), %eax
	movl	%eax, -216(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$2, -216(%rbp)
	jle	.L81
.L14:
	leal	-2(%rbx), %eax
	movl	%eax, -320(%rbp)
	cmpl	$2, %eax
	jle	.L73
	movq	-96(%rbp), %rdi
	leal	(%rbx,%rbx), %ecx
	movslq	%ebx, %r14
	movl	%ebx, -240(%rbp)
	leaq	0(,%r14,8), %r11
	movslq	%ecx, %r13
	movl	%ebx, -196(%rbp)
	leaq	16(,%r13,8), %rax
	movl	%ecx, -184(%rbp)
	leaq	-16(%rax), %rsi
	movq	%r14, -248(%rbp)
	leaq	(%rdi,%rax), %rdx
	movq	%r14, -104(%rbp)
	xorl	%r14d, %r14d
	movq	%rdx, -152(%rbp)
	leaq	(%rdi,%rsi), %rdx
	leaq	32(%rdi,%rax), %rax
	movq	%rdx, -192(%rbp)
	leal	(%rcx,%rbx), %edx
	movq	%rax, -160(%rbp)
	leal	0(,%rbx,4), %eax
	movslq	%edx, %r8
	movl	%edx, -136(%rbp)
	movl	%eax, -140(%rbp)
	leal	-4(%rbx), %edx
	movslq	%eax, %r10
	leaq	0(,%r8,8), %rax
	movl	%edx, -180(%rbp)
	addq	%r13, %rdx
	movq	%rax, -168(%rbp)
	leaq	0(,%r10,8), %rax
	movq	%rax, -176(%rbp)
	leal	-5(%rbx), %eax
	leaq	16(%r15), %rbx
	movl	%eax, -316(%rbp)
	addq	%r13, %rax
	movq	%rbx, -296(%rbp)
	leaq	48(%r15), %rbx
	leaq	(%r11,%r15), %rcx
	movq	%rbx, -304(%rbp)
	leaq	16(%rdi,%rdx,8), %rbx
	movq	%r11, -256(%rbp)
	leaq	16(%rcx), %rdx
	movq	%rbx, -280(%rbp)
	leaq	64(%r15), %rbx
	movq	%rdx, -272(%rbp)
	movq	%rbx, -312(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	48(%rcx), %rbx
	movq	%r8, -112(%rbp)
	movq	%rbx, -288(%rbp)
	leaq	8(%r15,%rax,8), %rax
	leaq	8(%rdx), %rbx
	movq	%r10, -128(%rbp)
	movq	%rsi, -88(%rbp)
	movl	$3, -204(%rbp)
	movl	$2, -200(%rbp)
	movl	$4, -236(%rbp)
	movq	$0, -120(%rbp)
	movl	$2, -144(%rbp)
	movq	%rbx, -264(%rbp)
	movq	%rax, -328(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-280(%rbp), %rax
	leaq	-80(%rbp), %rdi
	addl	$1, -144(%rbp)
	movq	-88(%rbp), %rsi
	movq	-160(%rbp), %rbx
	addq	%r14, %rax
	movq	-304(%rbp), %r11
	cmpq	%rax, %rdi
	movq	-152(%rbp), %rdi
	movq	-264(%rbp), %rax
	leaq	(%r15,%rsi), %rdx
	setnb	%cl
	movq	-168(%rbp), %r8
	movq	-296(%rbp), %r9
	cmpq	%rax, %rdi
	setnb	%al
	orl	%ecx, %eax
	cmpl	$5, -180(%rbp)
	seta	%cl
	andl	%ecx, %eax
	movq	-312(%rbp), %rcx
	addq	%rsi, %rcx
	cmpq	%rcx, %rdi
	setnb	%cl
	cmpq	%rdx, %rbx
	setbe	%sil
	orl	%esi, %ecx
	movq	-272(%rbp), %rsi
	andl	%ecx, %eax
	movq	-288(%rbp), %rcx
	addq	%r14, %rcx
	cmpq	%rcx, %rdi
	setnb	%cl
	addq	%r14, %rsi
	cmpq	%rsi, %rbx
	setbe	%sil
	orl	%esi, %ecx
	movq	%r9, %rsi
	andl	%ecx, %eax
	movq	%r11, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %rdi
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %rbx
	setbe	%sil
	orl	%esi, %ecx
	leaq	(%r9,%r14), %rsi
	andl	%ecx, %eax
	leaq	(%r11,%r14), %rcx
	cmpq	%rcx, %rdi
	setnb	%cl
	cmpq	%rsi, %rbx
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L28
	movq	-176(%rbp), %rsi
	addq	%rsi, %r11
	cmpq	%r11, %rdi
	setnb	%cl
	addq	%rsi, %r9
	cmpq	%r9, %rbx
	setbe	%al
	orb	%al, %cl
	je	.L28
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-316(%rbp), %eax
	ja	.L45
	movl	$2, -132(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	$3, -132(%rbp)
	movl	-184(%rbp), %ebx
	movl	-196(%rbp), %r12d
	leal	1(%rbx), %ecx
	leal	2(%rbx), %eax
	movslq	%ecx, %rcx
	leaq	(%r15,%rcx,8), %r9
	cltq
	leal	3(%rbx), %ecx
	vmovsd	(%r9), %xmm0
	leal	2(%r12), %r10d
	movslq	%ecx, %rcx
	leaq	(%r15,%rax,8), %rsi
	movslq	%r10d, %r10
	leaq	(%r15,%rcx,8), %r8
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	leal	4(%rbx), %edi
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movslq	%edi, %r11
	movl	-136(%rbp), %r10d
	leaq	(%r15,%r11,8), %rdi
	addl	$2, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movq	-88(%rbp), %r10
	vaddsd	(%r15,%r10), %xmm0, %xmm0
	movslq	-200(%rbp), %r10
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-140(%rbp), %r10d
	addl	$2, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-96(%rbp), %r10
	vmovsd	%xmm0, (%r10,%rax,8)
	cmpl	$1, %edx
	je	.L17
	leal	3(%r12), %r10d
	vmovsd	(%r8), %xmm0
	movl	$4, -132(%rbp)
	vaddsd	(%rsi), %xmm0, %xmm0
	leal	5(%rbx), %eax
	movslq	%r10d, %r10
	vaddsd	(%rdi), %xmm0, %xmm0
	cltq
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	leaq	(%r15,%rax,8), %rax
	movl	-136(%rbp), %r10d
	addl	$3, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	movslq	-204(%rbp), %r9
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%r15,%r9,8), %xmm0, %xmm0
	movl	-140(%rbp), %r9d
	addl	$3, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r15,%r9,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-96(%rbp), %r9
	vmovsd	%xmm0, (%r9,%rcx,8)
	cmpl	$3, %edx
	jne	.L17
	movl	$5, -132(%rbp)
	vmovsd	(%r8), %xmm0
	movl	-136(%rbp), %r10d
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	leal	4(%r12), %eax
	cltq
	movl	-140(%rbp), %r9d
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%r10), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	6(%rbx), %eax
	cltq
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movslq	-236(%rbp), %rax
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%r9), %eax
	cltq
	movq	-96(%rbp), %r9
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r9,%r11,8)
.L17:
	movl	-180(%rbp), %edi
	movl	%edx, %eax
	movq	%r15, -232(%rbp)
	movq	-120(%rbp), %rsi
	leaq	2(%rax,%r13), %rcx
	salq	$3, %rcx
	vbroadcastsd	-80(%rbp), %ymm2
	leaq	(%r15,%rcx), %rbx
	addq	-96(%rbp), %rcx
	subl	%edx, %edi
	leaq	1(%rax,%r13), %rdx
	movl	%edi, -208(%rbp)
	shrl	$2, %edi
	leaq	(%r15,%rdx,8), %r11
	movl	%edi, -212(%rbp)
	leaq	3(%rax,%r13), %rdx
	leaq	(%r15,%rdx,8), %r10
	movq	-104(%rbp), %rdx
	leaq	2(%rax,%rdx), %rdx
	leaq	(%r15,%rdx,8), %r9
	movq	-112(%rbp), %rdx
	leaq	2(%rax,%rdx), %rdx
	leaq	(%r15,%rdx,8), %r8
	movq	-88(%rbp), %rdx
	leaq	(%rdx,%rax,8), %r12
	leaq	(%r15,%r12), %rdx
	movq	%rdx, -224(%rbp)
	leaq	4(%rax,%r13), %rdx
	leaq	(%r15,%rdx,8), %r12
	leaq	2(%rax,%rsi), %rdx
	movq	-128(%rbp), %rsi
	leaq	(%r15,%rdx,8), %rdi
	xorl	%edx, %edx
	leaq	2(%rax,%rsi), %rax
	leaq	(%r15,%rax,8), %rsi
	movq	-224(%rbp), %r15
	xorl	%eax, %eax
	movq	%r13, -224(%rbp)
	movl	-212(%rbp), %r13d
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	vmovupd	(%rbx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm0, %ymm1
	addl	$1, %edx
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
	vaddpd	(%r15,%rax), %ymm0, %ymm0
	vaddpd	(%r12,%rax), %ymm0, %ymm1
	vmovupd	(%rdi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	(%rsi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %r13d
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-208(%rbp), %edi
	movl	-132(%rbp), %edx
	movq	-232(%rbp), %r15
	movq	-224(%rbp), %r13
	movl	%edi, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %edi
	je	.L23
.L16:
	movq	-104(%rbp), %r8
	movslq	%edx, %rdx
	movq	-112(%rbp), %rdi
	leaq	(%rdx,%r13), %rax
	movq	-120(%rbp), %rsi
	leaq	(%r15,%rax,8), %rax
	movq	-128(%rbp), %rcx
	movl	-320(%rbp), %r9d
	subq	%r13, %r8
	movq	-192(%rbp), %r10
	subq	%r13, %rdi
	subq	%r13, %rsi
	subq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rax), %xmm0
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %r9d
	jg	.L21
.L23:
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rsi
	movl	-240(%rbp), %ebx
	addq	%rax, -152(%rbp)
	addl	%ebx, -184(%rbp)
	addq	%rax, %r14
	addl	%ebx, -196(%rbp)
	addq	%rsi, %r13
	addl	%ebx, -136(%rbp)
	addl	%ebx, -236(%rbp)
	addl	%ebx, -140(%rbp)
	addl	%ebx, -200(%rbp)
	addq	%rax, -192(%rbp)
	addq	%rax, -160(%rbp)
	addq	%rsi, -104(%rbp)
	addq	%rsi, -112(%rbp)
	addq	%rsi, -120(%rbp)
	addq	%rsi, -128(%rbp)
	addq	%rax, -88(%rbp)
	addl	%ebx, -204(%rbp)
	addq	%rax, -168(%rbp)
	addq	%rax, -176(%rbp)
	movl	-144(%rbp), %ebx
	cmpl	%ebx, -216(%rbp)
	jg	.L24
.L73:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L74
	movq	%r15, %rdi
	call	dummy
	movq	-96(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L74:
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
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	movq	-328(%rbp), %rbx
	movq	-104(%rbp), %r8
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-128(%rbp), %rcx
	leaq	(%rbx,%r14), %r9
	movq	-96(%rbp), %rax
	subq	%r13, %r8
	addq	-88(%rbp), %rax
	subq	%r13, %rdi
	subq	%r13, %rsi
	subq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	8(%rdx), %xmm0
	addq	$8, %rax
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	16(%rdx,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	16(%rdx,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%rcx,8), %xmm0, %xmm0
	addq	$8, %rdx
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rax)
	cmpq	%r9, %rdx
	jne	.L22
	jmp	.L23
.L45:
	movl	$2, %edx
	jmp	.L16
.L78:
	movq	-80(%rbp), %rdx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rdx, -96(%rbp)
	shrq	$3, %rdx
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
	movq	-96(%rbp), %rax
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
	movq	-96(%rbp), %rcx
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
	movq	-96(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$2, -216(%rbp)
	jg	.L14
	jmp	.L15
.L41:
	movl	$1, %edi
	jmp	.L5
.L79:
	xorl	%edx, %edx
	movq	$0, -96(%rbp)
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
	movq	$0, -96(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L35
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
