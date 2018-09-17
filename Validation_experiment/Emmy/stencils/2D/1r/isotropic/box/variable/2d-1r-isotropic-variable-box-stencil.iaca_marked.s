	.file	"2d-1r-isotropic-variable-box-stencil.c_compilable.c"
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
	subq	$224, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	movl	%ebx, %r13d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r13d
	movq	%rax, %r12
	movslq	%r13d, %r14
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rsi
	movq	%rsi, -256(%rbp)
	testl	%r13d, %r13d
	jle	.L3
	leal	-1(%r13), %r15d
	movq	%rsi, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r15d
	jb	.L43
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rsi)
	cmpl	$1, %eax
	je	.L45
	vmovsd	%xmm0, 8(%rsi)
	cmpl	$3, %eax
	jne	.L46
	vmovsd	%xmm0, 16(%rsi)
	movl	$3, %edi
.L5:
	movq	-256(%rbp), %rdx
	movl	%r13d, %esi
	subl	%eax, %esi
	vmovapd	.LC1(%rip), %ymm0
	movl	%esi, %ecx
	shrl	$2, %ecx
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
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
	je	.L85
	vzeroupper
.L4:
	movq	-256(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L8:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L86
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovg	%r15d, %eax
	cmovg	%r13d, %edi
	cmpl	$4, %eax
	ja	.L87
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
.L35:
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L39
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L39
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L39
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L39
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L39
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L39:
	leal	0(%r13,%r13,2), %r13d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movslq	%r13d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r15
	movq	%r15, -80(%rbp)
	testl	%r13d, %r13d
	jle	.L14
	leal	-1(%r13), %ecx
	movq	%r15, %rax
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
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L51
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L52
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %edi
.L16:
	movq	-80(%rbp), %rdx
	movl	%r13d, %esi
	subl	%eax, %esi
	vmovapd	.LC5(%rip), %ymm0
	movl	%esi, %ecx
	shrl	$2, %ecx
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
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
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-1(%r12), %eax
	movl	%eax, -136(%rbp)
	testl	%edx, %edx
	jne	.L88
	cmpl	$1, -136(%rbp)
	jle	.L89
.L21:
	leal	-1(%rbx), %eax
	movl	%ebx, -160(%rbp)
	leal	(%rbx,%rbx,2), %r9d
	movl	%eax, -156(%rbp)
	movl	%r9d, -164(%rbp)
	cmpl	$1, %eax
	jle	.L81
	movq	-80(%rbp), %rsi
	movslq	%ebx, %rax
	movl	%ebx, -68(%rbp)
	leaq	0(,%rax,8), %rcx
	movq	-128(%rbp), %rdi
	movslq	%r9d, %rax
	movl	%r9d, -88(%rbp)
	movq	-256(%rbp), %r10
	salq	$3, %rax
	movq	%rcx, -176(%rbp)
	movq	%rax, -184(%rbp)
	leaq	24(%rsi,%rax), %rax
	movl	$1, -96(%rbp)
	movq	%rax, -104(%rbp)
	leaq	8(%rdi,%rcx), %r15
	leaq	48(%r10,%rcx), %rax
	movq	%r10, %r14
	movq	%rax, -112(%rbp)
	movq	%rdi, %rax
	addq	%rcx, %r14
	movq	%rcx, %rdi
	leaq	40(%rax,%rcx), %rax
	movq	%r10, %rcx
	movq	%rax, -120(%rbp)
	leal	-2(%rbx), %eax
	leaq	(%rax,%rax,2), %rdx
	movl	%eax, -132(%rbp)
	leaq	(%r14,%rdi), %r13
	movq	%rax, %rdi
	salq	$3, %rax
	leaq	0(,%rdx,8), %rsi
	movq	%rax, -192(%rbp)
	leal	-3(%rbx), %eax
	movq	%rsi, -216(%rbp)
	movl	%edi, %esi
	andl	$-4, %edi
	movl	%eax, -244(%rbp)
	leaq	8(,%rax,8), %rax
	shrl	$2, %esi
	movl	%edi, -248(%rbp)
	addl	$1, %edi
	movq	%rax, -272(%rbp)
	leal	(%rbx,%rbx), %eax
	movl	%eax, -168(%rbp)
	movq	%r10, %rax
	movl	%esi, -72(%rbp)
	movl	%edi, -260(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movl	-68(%rbp), %edi
	movl	-168(%rbp), %esi
	movq	-104(%rbp), %rbx
	addl	$1, -96(%rbp)
	movl	%edi, -92(%rbp)
	subl	-160(%rbp), %edi
	addl	%edi, %esi
	movl	%edi, -84(%rbp)
	movq	-192(%rbp), %rdi
	movl	%esi, -68(%rbp)
	leaq	(%r15,%rdi), %rdx
	cmpq	%rdx, %rbx
	setnb	%dil
	addq	-216(%rbp), %rbx
	cmpq	%rbx, %r15
	movq	-120(%rbp), %rbx
	setnb	%dl
	orl	%edx, %edi
	cmpq	%rbx, %r14
	setnb	%dl
	cmpq	-112(%rbp), %r15
	setnb	%sil
	orl	%edx, %esi
	cmpl	$3, -132(%rbp)
	seta	%dl
	andl	%esi, %edx
	leaq	48(%rcx), %rsi
	andl	%edi, %edx
	cmpq	%rsi, %r15
	setnb	%sil
	cmpq	%rbx, %rcx
	setnb	%dil
	orl	%edi, %esi
	testb	%sil, %dl
	je	.L32
	leaq	48(%r13), %rdx
	cmpq	%rdx, %r15
	setnb	%sil
	cmpq	%rbx, %r13
	setnb	%dl
	orb	%dl, %sil
	je	.L32
	cmpl	$2, -244(%rbp)
	jbe	.L53
	movq	-112(%rbp), %rdi
	leaq	8(%rcx), %rbx
	xorl	%edx, %edx
	movq	-104(%rbp), %rsi
	leaq	8(%r13), %r11
	leaq	16(%rcx), %r9
	leaq	16(%r13), %r8
	leaq	-40(%rdi), %r12
	leaq	-32(%rdi), %r10
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L24:
	vmovupd	(%r14,%rdx), %xmm4
	vinsertf128	$0x1, 16(%r14,%rdx), %ymm4, %ymm4
	addl	$1, %edi
	addq	$96, %rsi
	vmovupd	(%rbx,%rdx), %xmm3
	vinsertf128	$0x1, 16(%rbx,%rdx), %ymm3, %ymm3
	vaddpd	%ymm3, %ymm4, %ymm4
	vmovupd	(%r11,%rdx), %xmm3
	vinsertf128	$0x1, 16(%r11,%rdx), %ymm3, %ymm3
	vmovupd	-96(%rsi), %xmm1
	vinsertf128	$0x1, -80(%rsi), %ymm1, %ymm1
	vaddpd	%ymm3, %ymm4, %ymm4
	vmovupd	(%r10,%rdx), %xmm3
	vinsertf128	$0x1, 16(%r10,%rdx), %ymm3, %ymm3
	vmovupd	-64(%rsi), %xmm2
	vinsertf128	$0x1, -48(%rsi), %ymm2, %ymm2
	vperm2f128	$48, %ymm2, %ymm1, %ymm6
	vperm2f128	$2, %ymm2, %ymm1, %ymm2
	vmovupd	-32(%rsi), %xmm0
	vinsertf128	$0x1, -16(%rsi), %ymm0, %ymm0
	vpermilpd	$2, %ymm0, %ymm5
	vperm2f128	$33, %ymm1, %ymm1, %ymm1
	vaddpd	%ymm3, %ymm4, %ymm3
	vshufpd	$5, %ymm2, %ymm6, %ymm4
	vblendpd	$8, %ymm5, %ymm4, %ymm4
	vmulpd	%ymm4, %ymm3, %ymm4
	vshufpd	$2, %ymm1, %ymm6, %ymm3
	vperm2f128	$33, %ymm0, %ymm3, %ymm5
	vblendpd	$8, %ymm5, %ymm3, %ymm3
	vmovupd	0(%r13,%rdx), %xmm6
	vshufpd	$2, %ymm2, %ymm1, %ymm1
	vinsertf128	$1, %xmm0, %ymm1, %ymm1
	vblendpd	$7, %ymm1, %ymm0, %ymm0
	vmovupd	(%r12,%rdx), %xmm5
	vinsertf128	$0x1, 16(%r12,%rdx), %ymm5, %ymm5
	vmulpd	%ymm5, %ymm3, %ymm3
	vaddpd	%ymm3, %ymm4, %ymm3
	vmovupd	(%rcx,%rdx), %xmm5
	vinsertf128	$0x1, 16(%r13,%rdx), %ymm6, %ymm4
	vinsertf128	$0x1, 16(%rcx,%rdx), %ymm5, %ymm5
	vaddpd	%ymm4, %ymm5, %ymm6
	vmovupd	(%r9,%rdx), %xmm4
	vinsertf128	$0x1, 16(%r9,%rdx), %ymm4, %ymm4
	vaddpd	%ymm4, %ymm6, %ymm5
	vmovupd	(%r8,%rdx), %xmm4
	vinsertf128	$0x1, 16(%r8,%rdx), %ymm4, %ymm4
	vaddpd	%ymm4, %ymm5, %ymm4
	vmulpd	%ymm0, %ymm4, %ymm0
	vaddpd	%ymm0, %ymm3, %ymm0
	vmovups	%xmm0, (%r15,%rdx)
	vextractf128	$0x1, %ymm0, 16(%r15,%rdx)
	addq	$32, %rdx
	cmpl	%edi, -72(%rbp)
	ja	.L24
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-248(%rbp), %ebx
	cmpl	%ebx, -132(%rbp)
	je	.L27
	movl	-260(%rbp), %edx
.L23:
	movl	-92(%rbp), %ebx
	leal	1(%rdx), %edi
	movl	-68(%rbp), %r11d
	leal	-1(%rdx), %esi
	leal	(%rdx,%rdx,2), %r8d
	leal	(%rbx,%rdi), %r10d
	leal	(%rbx,%rdx), %r9d
	movslq	%r10d, %r10
	movq	%r10, -200(%rbp)
	leaq	(%rax,%r10,8), %r10
	movslq	%r9d, %r9
	movq	%r10, -144(%rbp)
	movl	-84(%rbp), %r10d
	addl	%edi, %r10d
	movslq	%r10d, %r12
	leal	(%rdi,%r11), %r10d
	movq	%r12, -224(%rbp)
	leaq	(%rax,%r12,8), %r12
	movslq	%r10d, %r11
	movl	-84(%rbp), %r10d
	movq	%r11, -232(%rbp)
	leaq	(%rax,%r11,8), %r11
	movq	%r11, -152(%rbp)
	leal	(%rsi,%rbx), %r11d
	movslq	%r11d, %r11
	vmovsd	(%rax,%r11,8), %xmm2
	addl	%edx, %r10d
	movl	-68(%rbp), %r11d
	movslq	%r10d, %r10
	vaddsd	(%rax,%r10,8), %xmm2, %xmm2
	addl	%edx, %r11d
	movslq	%r11d, %rbx
	movq	-144(%rbp), %r11
	vaddsd	(%rax,%rbx,8), %xmm2, %xmm2
	movq	%rbx, -208(%rbp)
	movq	-80(%rbp), %rbx
	vaddsd	(%r11), %xmm2, %xmm2
	movl	-88(%rbp), %r11d
	leal	1(%r11,%r8), %r11d
	movslq	%r11d, %r11
	vmulsd	(%rbx,%r11,8), %xmm2, %xmm2
	movl	-88(%rbp), %r11d
	addl	%r8d, %r11d
	movslq	%r11d, %r11
	vmovsd	(%rbx,%r11,8), %xmm0
	movl	-84(%rbp), %r11d
	vmulsd	(%rax,%r9,8), %xmm0, %xmm0
	addl	%esi, %r11d
	addl	-68(%rbp), %esi
	movslq	%r11d, %r11
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rax,%r11,8), %xmm0
	movl	-88(%rbp), %r11d
	movslq	%esi, %rsi
	vaddsd	(%rax,%rsi,8), %xmm0, %xmm0
	movq	-152(%rbp), %rsi
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	leal	2(%r11,%r8), %esi
	movslq	%esi, %rsi
	vmulsd	(%rbx,%rsi,8), %xmm0, %xmm0
	movq	-128(%rbp), %rsi
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%r9,8)
	cmpl	-156(%rbp), %edi
	jge	.L27
	movl	-92(%rbp), %r8d
	leal	2(%rdx), %esi
	vmovsd	(%rax,%r9,8), %xmm2
	movq	-152(%rbp), %r9
	leal	(%rdi,%rdi,2), %edi
	vaddsd	(%r12), %xmm2, %xmm2
	addl	%esi, %r8d
	movl	-88(%rbp), %r12d
	movslq	%r8d, %r8
	movq	%r8, -240(%rbp)
	leaq	(%rax,%r8,8), %r8
	vaddsd	(%r9), %xmm2, %xmm2
	movq	%r8, %rbx
	movl	-84(%rbp), %r8d
	vaddsd	(%rbx), %xmm2, %xmm2
	movq	%rbx, -152(%rbp)
	leal	1(%r12,%rdi), %r9d
	movq	-80(%rbp), %rbx
	movslq	%r9d, %r9
	addl	%esi, %r8d
	movslq	%r8d, %r8
	vmulsd	(%rbx,%r9,8), %xmm2, %xmm2
	leal	(%r12,%rdi), %r9d
	leaq	(%rax,%r8,8), %r11
	movslq	%r9d, %r9
	movl	-68(%rbp), %r8d
	vmovsd	(%rbx,%r9,8), %xmm0
	leal	2(%r12,%rdi), %edi
	movl	%r12d, %ebx
	movq	-144(%rbp), %r9
	movslq	%edi, %rdi
	movq	-128(%rbp), %r12
	addl	%esi, %r8d
	movslq	%r8d, %r8
	vmulsd	(%r9), %xmm0, %xmm0
	movq	-80(%rbp), %r9
	leaq	(%rax,%r8,8), %r8
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rax,%r10,8), %xmm0
	movq	-208(%rbp), %r10
	vaddsd	(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vmulsd	(%r9,%rdi,8), %xmm0, %xmm0
	movq	-200(%rbp), %r10
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r10,8)
	cmpl	%esi, -156(%rbp)
	jle	.L27
	movl	-92(%rbp), %edi
	addl	$3, %edx
	leal	(%rsi,%rsi,2), %esi
	vmovsd	(%rax,%r10,8), %xmm2
	vaddsd	(%r11), %xmm2, %xmm2
	vaddsd	(%r8), %xmm2, %xmm2
	addl	%edx, %edi
	movq	-232(%rbp), %r11
	movslq	%edi, %rdi
	movq	-224(%rbp), %r10
	vaddsd	(%rax,%rdi,8), %xmm2, %xmm2
	leal	1(%rbx,%rsi), %edi
	movslq	%edi, %rdi
	movq	-240(%rbp), %r8
	vmulsd	(%r9,%rdi,8), %xmm2, %xmm2
	leal	(%rbx,%rsi), %edi
	movslq	%edi, %rdi
	vmovsd	(%r9,%rdi,8), %xmm0
	movq	-152(%rbp), %rdi
	vmulsd	(%rdi), %xmm0, %xmm0
	movl	-84(%rbp), %edi
	addl	%edx, %edi
	addl	-68(%rbp), %edx
	vaddsd	%xmm0, %xmm2, %xmm1
	movslq	%edi, %rdi
	vmovsd	(%rax,%r11,8), %xmm0
	vaddsd	(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	(%rax,%rdi,8), %xmm0, %xmm0
	movslq	%edx, %rdx
	vaddsd	(%rax,%rdx,8), %xmm0, %xmm0
	leal	2(%rbx,%rsi), %edx
	movslq	%edx, %rdx
	vmulsd	(%r9,%rdx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r8,8)
.L27:
	movq	-176(%rbp), %rbx
	movq	-184(%rbp), %rsi
	addq	%rbx, -112(%rbp)
	addq	%rsi, -104(%rbp)
	addq	%rbx, %r15
	movl	-164(%rbp), %esi
	addq	%rbx, %r14
	addl	%esi, -88(%rbp)
	addq	%rbx, %rcx
	addq	%rbx, %r13
	addq	%rbx, -120(%rbp)
	movl	-96(%rbp), %esi
	cmpl	%esi, -136(%rbp)
	jg	.L28
.L81:
	vzeroupper
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L82
	movq	-256(%rbp), %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	movq	-80(%rbp), %rdi
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
	movq	-104(%rbp), %rbx
	leaq	-8(%r15), %rdi
	xorl	%edx, %edx
	movq	-272(%rbp), %r8
	leaq	-24(%rbx), %rsi
	.p2align 4,,10
	.p2align 3
.L26:
	vmovsd	8(%rcx,%rdx), %xmm0
	addq	$24, %rsi
	vaddsd	(%r14,%rdx), %xmm0, %xmm2
	vmovsd	8(%r14,%rdx), %xmm1
	vaddsd	8(%r13,%rdx), %xmm2, %xmm2
	vmulsd	(%rsi), %xmm1, %xmm0
	vaddsd	16(%r14,%rdx), %xmm2, %xmm2
	vmulsd	8(%rsi), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	0(%r13,%rdx), %xmm0
	vaddsd	(%rcx,%rdx), %xmm0, %xmm0
	vaddsd	16(%rcx,%rdx), %xmm0, %xmm0
	vaddsd	16(%r13,%rdx), %xmm0, %xmm0
	vmulsd	16(%rsi), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rdi,%rdx)
	addq	$8, %rdx
	cmpq	%r8, %rdx
	jne	.L26
	jmp	.L27
.L53:
	movl	$1, %edx
	jmp	.L23
.L86:
	movq	-56(%rbp), %rcx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rcx, -128(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r13d, %r13d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r15d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r15d
	jb	.L35
	testl	%edx, %edx
	je	.L9
	movq	-128(%rbp), %rax
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
	movq	-128(%rbp), %rcx
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
	movq	-256(%rbp), %rdi
	vzeroupper
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	movq	-80(%rbp), %rdi
	call	dummy
	cmpl	$1, -136(%rbp)
	jg	.L21
	jmp	.L22
.L45:
	movl	$1, %edi
	jmp	.L5
.L87:
	xorl	%edx, %edx
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
	jmp	.L9
.L47:
	movl	$1, %eax
	jmp	.L9
.L90:
	vzeroupper
	jmp	.L39
.L51:
	movl	$1, %edi
	jmp	.L16
.L85:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -128(%rbp)
	testl	%eax, %eax
	jne	.L39
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.L39
.L46:
	movl	$2, %edi
	jmp	.L5
.L48:
	movl	$2, %eax
	jmp	.L9
.L52:
	movl	$2, %edi
	jmp	.L16
.L89:
	vzeroupper
	jmp	.L82
.L43:
	xorl	%eax, %eax
	jmp	.L4
.L49:
	xorl	%eax, %eax
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
