	.file	"2d-1r-point-symmetric-variable-star-stencil.c_compilable.c"
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
	subq	$224, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	movl	%r12d, %r14d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %r13
	movslq	%r14d, %r15
	salq	$3, %r15
	movq	%r15, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rbx
	testl	%r14d, %r14d
	jle	.L3
	leal	-1(%r14), %ecx
	movq	%rbx, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %ecx
	jb	.L43
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rbx)
	cmpl	$1, %eax
	je	.L45
	vmovsd	%xmm0, 8(%rbx)
	cmpl	$3, %eax
	jne	.L46
	vmovsd	%xmm0, 16(%rbx)
	movl	$3, %r8d
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%rbx,%rax,8), %rdx
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
	je	.L85
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rbx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rbx,%rax,8)
.L8:
	leaq	-56(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
	movl	%ecx, -68(%rbp)
	call	posix_memalign
	movl	-68(%rbp), %ecx
	testl	%eax, %eax
	je	.L86
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %ecx
	cmovg	%r14d, %edi
	cmpl	$4, %ecx
	ja	.L87
	movq	$0, -104(%rbp)
	xorl	%eax, %eax
.L35:
	movq	-104(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L39
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L39
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L39
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L39
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L39
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L39:
	leal	(%r14,%r14,2), %r15d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movslq	%r15d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r14
	testl	%r15d, %r15d
	jle	.L14
	leal	-1(%r15), %ecx
	movq	%r14, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %ecx
	jb	.L49
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L16
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%r14)
	cmpl	$1, %eax
	je	.L51
	vmovsd	%xmm0, 8(%r14)
	cmpl	$3, %eax
	jne	.L52
	vmovsd	%xmm0, 16(%r14)
	movl	$3, %edi
.L16:
	vmovapd	.LC5(%rip), %ymm0
	leaq	(%r14,%rax,8), %rdx
	movl	%r15d, %esi
	subl	%eax, %esi
	xorl	%eax, %eax
	movl	%esi, %ecx
	shrl	$2, %ecx
	.p2align 4,,10
	.p2align 3
.L18:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%eax, %ecx
	ja	.L18
	movl	%esi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rdi), %eax
	cmpl	%edx, %esi
	je	.L14
.L15:
	vmovsd	.LC4(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r14,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%r14,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-1(%r13), %eax
	movl	%eax, -124(%rbp)
	testl	%edx, %edx
	jne	.L88
	cmpl	$1, -124(%rbp)
	jle	.L89
.L21:
	leal	(%r12,%r12), %esi
	movl	%r12d, -140(%rbp)
	leal	-1(%r12), %eax
	movl	%esi, -144(%rbp)
	leal	(%rsi,%r12), %r9d
	movl	%eax, -128(%rbp)
	movl	%r9d, -148(%rbp)
	cmpl	$1, %eax
	jle	.L81
	movq	-104(%rbp), %rdi
	movslq	%r12d, %rax
	movslq	%esi, %rcx
	movl	%r12d, -72(%rbp)
	leaq	0(,%rax,8), %r15
	movslq	%r9d, %rax
	movl	$1, -108(%rbp)
	leal	-2(%r12), %esi
	salq	$3, %rax
	movq	%r15, -168(%rbp)
	movq	%rsi, %r8
	movl	%esi, -112(%rbp)
	leaq	8(%rdi,%r15), %rdx
	movq	%rax, -176(%rbp)
	leaq	40(%rdi,%r15), %rdi
	movq	%r15, -96(%rbp)
	movq	%rdi, -120(%rbp)
	leaq	(%rsi,%rsi,2), %rdi
	salq	$3, %rsi
	movq	%rsi, -184(%rbp)
	leal	-3(%r12), %esi
	salq	$3, %rdi
	movq	%rdi, -192(%rbp)
	leaq	24(%r14,%rax), %rax
	movl	%r8d, %edi
	andl	$-4, %r8d
	movl	%esi, -152(%rbp)
	leaq	8(,%rsi,8), %rsi
	shrl	$2, %edi
	movq	%rsi, -256(%rbp)
	leaq	48(%rbx), %rsi
	movq	%rax, -88(%rbp)
	leaq	(%rbx,%r15), %rax
	movl	%edi, -68(%rbp)
	leal	1(%r8), %edi
	movq	%rsi, -200(%rbp)
	leaq	8(%rbx), %rsi
	leaq	(%rax,%r15), %r11
	movl	%edi, -224(%rbp)
	movq	%rbx, %r15
	leaq	8(,%rcx,8), %rdi
	movq	%rsi, -232(%rbp)
	leaq	16(%rbx), %rsi
	movl	%r8d, -220(%rbp)
	movq	%r14, %r8
	movq	%r11, %r14
	movq	%rdi, -208(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdi, -248(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movl	-72(%rbp), %edi
	leaq	8(%r15), %r10
	movl	-144(%rbp), %esi
	addl	$1, -108(%rbp)
	movq	-120(%rbp), %r11
	movl	%edi, -76(%rbp)
	subl	-140(%rbp), %edi
	addl	%edi, %esi
	movl	%edi, -80(%rbp)
	movq	-184(%rbp), %rdi
	movl	%esi, -72(%rbp)
	movq	-88(%rbp), %rsi
	leaq	(%rdx,%rdi), %rcx
	cmpq	%rcx, %rsi
	setnb	%dil
	addq	-192(%rbp), %rsi
	cmpq	%rsi, %rdx
	setnb	%cl
	orl	%ecx, %edi
	leaq	40(%r15), %rcx
	cmpq	%rcx, %rdx
	setnb	%sil
	cmpq	%r10, %r11
	setbe	%cl
	orl	%esi, %ecx
	andl	%edi, %ecx
	cmpl	$3, -112(%rbp)
	seta	%sil
	andl	%esi, %ecx
	movq	-200(%rbp), %rsi
	addq	-96(%rbp), %rsi
	cmpq	%rsi, %rdx
	setnb	%sil
	cmpq	%r11, %rax
	setnb	%dil
	orl	%edi, %esi
	testb	%sil, %cl
	je	.L32
	movq	-208(%rbp), %rdi
	leaq	(%rdi,%r15), %rcx
	cmpq	%rcx, %r11
	leaq	40(%r14), %rcx
	setbe	%sil
	cmpq	%rcx, %rdx
	setnb	%cl
	orb	%cl, %sil
	je	.L32
	cmpl	$2, -152(%rbp)
	jbe	.L53
	movq	-96(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-232(%rbp), %r13
	movq	-240(%rbp), %r12
	movq	-88(%rbp), %rsi
	addq	%rdi, %r13
	addq	%rdi, %r12
	movq	-248(%rbp), %rdi
	leaq	(%rdi,%r15), %r11
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L24:
	vmovupd	(%r12,%rcx), %xmm5
	vinsertf128	$0x1, 16(%r12,%rcx), %ymm5, %ymm3
	addl	$1, %edi
	addq	$96, %rsi
	vmovupd	(%rax,%rcx), %xmm4
	vinsertf128	$0x1, 16(%rax,%rcx), %ymm4, %ymm4
	vaddpd	%ymm3, %ymm4, %ymm5
	vmovupd	-96(%rsi), %xmm2
	vinsertf128	$0x1, -80(%rsi), %ymm2, %ymm2
	vmovupd	-64(%rsi), %xmm1
	vinsertf128	$0x1, -48(%rsi), %ymm1, %ymm1
	vperm2f128	$48, %ymm1, %ymm2, %ymm3
	vperm2f128	$2, %ymm1, %ymm2, %ymm1
	vmovupd	-32(%rsi), %xmm0
	vshufpd	$5, %ymm1, %ymm3, %ymm4
	vinsertf128	$0x1, -16(%rsi), %ymm0, %ymm0
	vpermilpd	$2, %ymm0, %ymm6
	vblendpd	$8, %ymm6, %ymm4, %ymm4
	vperm2f128	$33, %ymm2, %ymm2, %ymm2
	vshufpd	$2, %ymm2, %ymm3, %ymm3
	vshufpd	$2, %ymm1, %ymm2, %ymm1
	vmulpd	%ymm4, %ymm5, %ymm4
	vperm2f128	$33, %ymm0, %ymm3, %ymm5
	vblendpd	$8, %ymm5, %ymm3, %ymm3
	vmovupd	0(%r13,%rcx), %xmm5
	vinsertf128	$0x1, 16(%r13,%rcx), %ymm5, %ymm5
	vmulpd	%ymm5, %ymm3, %ymm3
	vaddpd	%ymm3, %ymm4, %ymm3
	vmovupd	(%r10,%rcx), %xmm4
	vinsertf128	$0x1, 16(%r10,%rcx), %ymm4, %ymm5
	vmovupd	(%r11,%rcx), %xmm4
	vinsertf128	$0x1, 16(%r11,%rcx), %ymm4, %ymm4
	vaddpd	%ymm4, %ymm5, %ymm4
	vinsertf128	$1, %xmm0, %ymm1, %ymm1
	vblendpd	$7, %ymm1, %ymm0, %ymm0
	vmulpd	%ymm0, %ymm4, %ymm0
	vaddpd	%ymm0, %ymm3, %ymm0
	vmovups	%xmm0, (%rdx,%rcx)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rcx)
	addq	$32, %rcx
	cmpl	%edi, -68(%rbp)
	ja	.L24
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-220(%rbp), %esi
	cmpl	%esi, -112(%rbp)
	je	.L27
	movl	-224(%rbp), %esi
.L23:
	movl	-76(%rbp), %r12d
	leal	1(%rsi), %ecx
	leal	(%rsi,%rsi,2), %edi
	leal	(%rcx,%r12), %r11d
	leal	(%r12,%rsi), %r10d
	movslq	%r11d, %r11
	leal	-1(%r12,%rsi), %r12d
	movslq	%r10d, %r10
	leaq	(%rbx,%r11,8), %r13
	movslq	%r12d, %r12
	vmovsd	(%rbx,%r12,8), %xmm2
	movq	%r13, -160(%rbp)
	leal	1(%r9,%rdi), %r12d
	vaddsd	0(%r13), %xmm2, %xmm2
	movslq	%r12d, %r12
	movl	-80(%rbp), %r13d
	vmulsd	(%r8,%r12,8), %xmm2, %xmm2
	leal	(%r9,%rdi), %r12d
	leal	2(%r9,%rdi), %edi
	movslq	%r12d, %r12
	vmovsd	(%r8,%r12,8), %xmm0
	leal	(%rsi,%r13), %r12d
	movslq	%edi, %rdi
	vmulsd	(%rbx,%r10,8), %xmm0, %xmm0
	movslq	%r12d, %r13
	movq	%r13, -136(%rbp)
	movl	-72(%rbp), %r13d
	leal	(%rsi,%r13), %r12d
	movq	-136(%rbp), %r13
	vaddsd	%xmm0, %xmm2, %xmm1
	movslq	%r12d, %r12
	vmovsd	(%rbx,%r13,8), %xmm0
	vaddsd	(%rbx,%r12,8), %xmm0, %xmm0
	vmulsd	(%r8,%rdi,8), %xmm0, %xmm0
	movq	-104(%rbp), %rdi
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi,%r10,8)
	cmpl	-128(%rbp), %ecx
	jge	.L27
	movl	-76(%rbp), %r13d
	leal	2(%rsi), %edi
	vmovsd	(%rbx,%r10,8), %xmm2
	leal	(%rcx,%rcx,2), %r12d
	leal	1(%r9,%r12), %r10d
	addl	%edi, %r13d
	movslq	%r10d, %r10
	movslq	%r13d, %r13
	movq	%r13, -216(%rbp)
	leaq	(%rbx,%r13,8), %r13
	vaddsd	0(%r13), %xmm2, %xmm2
	movq	%r13, -136(%rbp)
	vmulsd	(%r8,%r10,8), %xmm2, %xmm2
	leal	(%r9,%r12), %r10d
	movq	-160(%rbp), %r13
	movslq	%r10d, %r10
	vmovsd	(%r8,%r10,8), %xmm0
	movl	-80(%rbp), %r10d
	vmulsd	0(%r13), %xmm0, %xmm0
	addl	%ecx, %r10d
	addl	-72(%rbp), %ecx
	movslq	%r10d, %r10
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%r10,8), %xmm0
	movslq	%ecx, %rcx
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	leal	2(%r9,%r12), %ecx
	movslq	%ecx, %rcx
	movq	-104(%rbp), %r12
	vmulsd	(%r8,%rcx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r11,8)
	cmpl	-128(%rbp), %edi
	jge	.L27
	movl	-76(%rbp), %r13d
	leal	(%rdi,%rdi,2), %ecx
	leal	3(%r13,%rsi), %esi
	movl	-72(%rbp), %r13d
	movslq	%esi, %rsi
	vmovsd	(%rbx,%rsi,8), %xmm2
	leal	1(%r9,%rcx), %esi
	movslq	%esi, %rsi
	vaddsd	(%rbx,%r11,8), %xmm2, %xmm2
	vmulsd	(%r8,%rsi,8), %xmm2, %xmm2
	leal	(%r9,%rcx), %esi
	leal	2(%r9,%rcx), %ecx
	movslq	%esi, %rsi
	vmovsd	(%r8,%rsi,8), %xmm0
	movslq	%ecx, %rcx
	movq	-136(%rbp), %rsi
	vmulsd	(%rsi), %xmm0, %xmm0
	leal	(%rdi,%r13), %esi
	addl	-80(%rbp), %edi
	movslq	%esi, %rsi
	movq	-216(%rbp), %r13
	movslq	%edi, %rdi
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rsi,8), %xmm0
	vaddsd	(%rbx,%rdi,8), %xmm0, %xmm0
	vmulsd	(%r8,%rcx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r13,8)
.L27:
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rcx
	addq	%rdi, -120(%rbp)
	addq	%rcx, -88(%rbp)
	addq	%rdi, %rdx
	addq	%rdi, %rax
	movl	-108(%rbp), %esi
	addq	%rdi, %r15
	addq	%rdi, %r14
	addl	-148(%rbp), %r9d
	addq	%rdi, -96(%rbp)
	cmpl	%esi, -124(%rbp)
	jg	.L28
	movq	%r8, %r14
	vzeroupper
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L82
	movq	%rbx, %rdi
	call	dummy
	movq	-104(%rbp), %rdi
	call	dummy
	movq	%r14, %rdi
	call	dummy
.L82:
	addq	$224, %rsp
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
.L32:
	.cfi_restore_state
	movq	-88(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %r11
	movq	-256(%rbp), %r10
	subq	$24, %rsi
	addq	%r11, %rdi
	.p2align 4,,10
	.p2align 3
.L26:
	vmovsd	16(%rax,%rcx), %xmm1
	addq	$24, %rsi
	vaddsd	(%rax,%rcx), %xmm1, %xmm1
	vmulsd	8(%rsi), %xmm1, %xmm2
	vmovsd	8(%rax,%rcx), %xmm1
	vmulsd	(%rsi), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%r14,%rcx), %xmm0
	vaddsd	8(%r15,%rcx), %xmm0, %xmm0
	vmulsd	16(%rsi), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rdi,%rcx)
	addq	$8, %rcx
	cmpq	%r10, %rcx
	jne	.L26
	jmp	.L27
.L53:
	movl	$1, %esi
	jmp	.L23
.L86:
	movq	-56(%rbp), %rdx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %r8d
	cmovg	%r14d, %edi
	movq	%rdx, -104(%rbp)
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	leal	3(%rdx), %esi
	cmovle	%eax, %ecx
	cmpl	$5, %esi
	cmovb	%r8d, %esi
	cmpl	%esi, %ecx
	jb	.L35
	testl	%edx, %edx
	je	.L9
	movq	-104(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L47
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L48
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	movq	-104(%rbp), %rcx
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
	je	.L90
	vzeroupper
	jmp	.L35
.L88:
	movq	%rbx, %rdi
	vzeroupper
	call	dummy
	movq	-104(%rbp), %rdi
	call	dummy
	movq	%r14, %rdi
	call	dummy
	cmpl	$1, -124(%rbp)
	jg	.L21
	jmp	.L22
.L45:
	movl	$1, %r8d
	jmp	.L5
.L87:
	xorl	%edx, %edx
	movq	$0, -104(%rbp)
	jmp	.L9
.L51:
	movl	$1, %edi
	jmp	.L16
.L47:
	movl	$1, %eax
	jmp	.L9
.L90:
	vzeroupper
	jmp	.L39
.L85:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-56(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -104(%rbp)
	testl	%eax, %eax
	jne	.L39
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.L39
.L48:
	movl	$2, %eax
	jmp	.L9
.L46:
	movl	$2, %r8d
	jmp	.L5
.L52:
	movl	$2, %edi
	jmp	.L16
.L81:
	vzeroupper
	jmp	.L22
.L89:
	vzeroupper
	jmp	.L82
.L49:
	xorl	%eax, %eax
	jmp	.L15
.L43:
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
