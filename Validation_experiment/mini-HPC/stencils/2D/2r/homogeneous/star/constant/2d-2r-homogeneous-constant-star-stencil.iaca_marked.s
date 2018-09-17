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
	movq	%rax, %rbx
	call	strtol
	movl	%ebx, %r13d
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	imull	%eax, %r13d
	movq	%rax, %r12
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
	movq	%r15, %rax
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
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L41
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L42
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %edi
.L5:
	movl	%r13d, %esi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r15,%rax,8), %rdx
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
	movq	%r8, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
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
	vmovsd	.LC2(%rip), %xmm0
	movq	-96(%rbp), %rcx
	movslq	%eax, %rdx
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
	leal	-2(%r12), %eax
	movl	%eax, -208(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$2, -208(%rbp)
	jle	.L81
.L14:
	leal	-2(%rbx), %eax
	movl	%eax, -320(%rbp)
	cmpl	$2, %eax
	jle	.L73
	leal	(%rbx,%rbx), %ecx
	movq	-96(%rbp), %rdi
	movslq	%ebx, %r11
	movl	%ebx, -240(%rbp)
	movslq	%ecx, %r12
	leaq	0(,%r11,8), %r10
	movq	%r11, -104(%rbp)
	leaq	16(,%r12,8), %rax
	movl	%ecx, -188(%rbp)
	leaq	-16(%rax), %rsi
	leaq	(%rdi,%rax), %r14
	movq	%r11, -248(%rbp)
	leaq	(%rdi,%rsi), %rdx
	leaq	32(%rdi,%rax), %rax
	movq	%rsi, -88(%rbp)
	movq	%rdx, -184(%rbp)
	leal	(%rcx,%rbx), %edx
	leaq	(%r10,%r15), %rcx
	movslq	%edx, %r9
	movl	%edx, -140(%rbp)
	leal	-4(%rbx), %edx
	leaq	16(%r15), %rsi
	movl	%edx, -152(%rbp)
	addq	%r12, %rdx
	leaq	16(%rdi,%rdx,8), %rdx
	movq	%rax, -160(%rbp)
	leal	0(,%rbx,4), %eax
	movslq	%eax, %r8
	movl	%eax, -144(%rbp)
	leaq	0(,%r9,8), %rax
	movq	%rdx, -304(%rbp)
	leaq	64(%r15), %rdx
	movq	%rax, -168(%rbp)
	leaq	0(,%r8,8), %rax
	movq	%rdx, -288(%rbp)
	leaq	48(%rcx), %rdx
	movq	%rax, -176(%rbp)
	leal	-5(%rbx), %eax
	movq	%rdx, -312(%rbp)
	leaq	16(%rcx), %rdx
	movl	%eax, -316(%rbp)
	addq	%r12, %rax
	movq	%rdx, -296(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	8(%r15,%rax,8), %rax
	movq	%rsi, -272(%rbp)
	addq	$8, %rdx
	leaq	48(%r15), %rsi
	movq	%r10, -256(%rbp)
	movq	%r9, -112(%rbp)
	movq	%r8, -128(%rbp)
	movl	$3, -196(%rbp)
	movl	$2, -192(%rbp)
	movl	$4, -236(%rbp)
	movq	$0, -120(%rbp)
	movl	$2, -148(%rbp)
	movq	%rsi, -280(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rax, -328(%rbp)
	movl	%ebx, -136(%rbp)
	xorl	%ebx, %ebx
	movq	%rbx, %r13
	movq	%r12, %rbx
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-304(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movq	-88(%rbp), %rdi
	addl	$1, -148(%rbp)
	movq	-280(%rbp), %r11
	addq	%r13, %rax
	leaq	(%r15,%rdi), %rdx
	movq	-168(%rbp), %r8
	movq	-272(%rbp), %r9
	cmpq	%rax, %rcx
	setnb	%cl
	cmpq	-264(%rbp), %r14
	setnb	%al
	orl	%ecx, %eax
	cmpl	$5, -152(%rbp)
	seta	%cl
	andl	%ecx, %eax
	movq	-288(%rbp), %rcx
	addq	%rdi, %rcx
	movq	-160(%rbp), %rdi
	cmpq	%rcx, %r14
	setnb	%cl
	cmpq	%rdx, %rdi
	setbe	%sil
	orl	%esi, %ecx
	movq	-296(%rbp), %rsi
	andl	%ecx, %eax
	movq	-312(%rbp), %rcx
	addq	%r13, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r13, %rsi
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %ecx
	movq	%r9, %rsi
	andl	%ecx, %eax
	movq	%r11, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %ecx
	leaq	(%r9,%r13), %rsi
	andl	%ecx, %eax
	leaq	(%r11,%r13), %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L28
	movq	-176(%rbp), %rsi
	addq	%rsi, %r11
	cmpq	%r11, %r14
	setnb	%cl
	addq	%rsi, %r9
	cmpq	%r9, %rdi
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
	movl	-188(%rbp), %r12d
	movl	-136(%rbp), %r10d
	movl	$3, -132(%rbp)
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
	vmovsd	(%r9), %xmm0
	leaq	(%r15,%r11,8), %rdi
	leaq	(%r15,%rcx,8), %r8
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-140(%rbp), %r10d
	addl	$2, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movq	-88(%rbp), %r10
	vaddsd	(%r15,%r10), %xmm0, %xmm0
	movslq	-192(%rbp), %r10
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-144(%rbp), %r10d
	addl	$2, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-96(%rbp), %r10
	vmovsd	%xmm0, (%r10,%rax,8)
	cmpl	$1, %edx
	je	.L17
	movl	-136(%rbp), %r10d
	vmovsd	(%r8), %xmm0
	leal	5(%r12), %eax
	movl	$4, -132(%rbp)
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	cltq
	addl	$3, %r10d
	leaq	(%r15,%rax,8), %rax
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-140(%rbp), %r10d
	addl	$3, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	movslq	-196(%rbp), %r9
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%r15,%r9,8), %xmm0, %xmm0
	movl	-144(%rbp), %r9d
	addl	$3, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r15,%r9,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-96(%rbp), %r9
	vmovsd	%xmm0, (%r9,%rcx,8)
	cmpl	$3, %edx
	jne	.L17
	movl	-136(%rbp), %r10d
	vmovsd	(%r8), %xmm0
	movl	$5, -132(%rbp)
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	leal	4(%r10), %eax
	movl	-140(%rbp), %r10d
	movl	-144(%rbp), %r9d
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%r10), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	6(%r12), %eax
	cltq
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movslq	-236(%rbp), %rax
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%r9), %eax
	movq	-96(%rbp), %r9
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r9,%r11,8)
.L17:
	movl	%edx, %eax
	movl	-152(%rbp), %esi
	movq	-104(%rbp), %r11
	movq	%r15, -232(%rbp)
	leaq	2(%rax,%rbx), %rcx
	movq	-112(%rbp), %r8
	vbroadcastsd	-80(%rbp), %ymm1
	salq	$3, %rcx
	subl	%edx, %esi
	leaq	(%r15,%rcx), %rdx
	movl	%esi, -200(%rbp)
	shrl	$2, %esi
	addq	-96(%rbp), %rcx
	movq	%rdx, -216(%rbp)
	leaq	1(%rax,%rbx), %rdx
	leaq	(%r15,%rdx,8), %r12
	leaq	3(%rax,%rbx), %rdx
	movl	%esi, -204(%rbp)
	leaq	(%r15,%rdx,8), %rdi
	leaq	2(%rax,%r11), %rdx
	leaq	(%r15,%rdx,8), %r11
	leaq	2(%rax,%r8), %rdx
	movq	-88(%rbp), %r8
	movq	%rdi, -224(%rbp)
	leaq	(%r15,%rdx,8), %r10
	leaq	4(%rax,%rbx), %rdx
	leaq	(%r8,%rax,8), %rsi
	movq	-120(%rbp), %r8
	leaq	(%r15,%rdx,8), %r9
	addq	%r15, %rsi
	leaq	2(%rax,%r8), %rdx
	leaq	(%r15,%rdx,8), %r8
	movq	-128(%rbp), %rdx
	leaq	2(%rax,%rdx), %rax
	xorl	%edx, %edx
	leaq	(%r15,%rax,8), %rdi
	movq	-224(%rbp), %r15
	xorl	%eax, %eax
	movq	%r14, -224(%rbp)
	movq	-216(%rbp), %r14
	movq	%rbx, -216(%rbp)
	movl	-204(%rbp), %ebx
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
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
	vmulpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %ebx
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-200(%rbp), %esi
	movl	-132(%rbp), %edx
	movq	-232(%rbp), %r15
	movq	-224(%rbp), %r14
	movl	%esi, %eax
	movq	-216(%rbp), %rbx
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %esi
	je	.L23
.L16:
	movslq	%edx, %rdx
	movq	-104(%rbp), %r8
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-128(%rbp), %rcx
	leaq	(%rdx,%rbx), %rax
	movl	-320(%rbp), %r9d
	movq	-184(%rbp), %r10
	subq	%rbx, %r8
	subq	%rbx, %rdi
	leaq	(%r15,%rax,8), %rax
	subq	%rbx, %rsi
	subq	%rbx, %rcx
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
	vmulsd	-80(%rbp), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, (%r10,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %r9d
	jg	.L21
.L23:
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rsi
	movl	-240(%rbp), %edi
	addq	%rax, -184(%rbp)
	addq	%rax, -160(%rbp)
	addq	%rax, %r14
	addq	%rsi, %rbx
	addq	%rax, %r13
	addq	%rsi, -104(%rbp)
	addq	%rsi, -112(%rbp)
	addq	%rsi, -120(%rbp)
	addq	%rsi, -128(%rbp)
	addq	%rax, -88(%rbp)
	addl	%edi, -188(%rbp)
	addl	%edi, -136(%rbp)
	addl	%edi, -140(%rbp)
	addl	%edi, -236(%rbp)
	addl	%edi, -144(%rbp)
	addl	%edi, -192(%rbp)
	addl	%edi, -196(%rbp)
	addq	%rax, -168(%rbp)
	movl	-148(%rbp), %edx
	addq	%rax, -176(%rbp)
	cmpl	%edx, -208(%rbp)
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
	movq	-328(%rbp), %rsi
	movq	-104(%rbp), %r8
	movq	-112(%rbp), %rdi
	movq	-128(%rbp), %rcx
	leaq	(%rsi,%r13), %r9
	movq	-120(%rbp), %rsi
	movq	-96(%rbp), %rax
	subq	%rbx, %r8
	addq	-88(%rbp), %rax
	subq	%rbx, %rdi
	subq	%rbx, %rcx
	subq	%rbx, %rsi
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	8(%rdx), %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	addq	$8, %rax
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	16(%rdx,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	16(%rdx,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	addq	$8, %rdx
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
	vmovsd	.LC2(%rip), %xmm0
	movq	-96(%rbp), %rax
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
	movq	-96(%rbp), %rcx
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
	movq	%r15, %rdi
	vzeroupper
	call	dummy
	movq	-96(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$2, -208(%rbp)
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
	movq	%r8, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
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
