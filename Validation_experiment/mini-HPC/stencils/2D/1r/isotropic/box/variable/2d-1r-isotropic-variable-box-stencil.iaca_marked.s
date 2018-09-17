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
	call	strtol
	movl	%r12d, %r13d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r13d
	movq	%rax, %rbx
	movslq	%r13d, %r14
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r15
	testl	%r13d, %r13d
	jle	.L3
	movq	%r15, %rax
	movl	$5, %ecx
	leal	-1(%r13), %r8d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r8d
	jb	.L43
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L45
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L46
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
	je	.L85
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
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movl	%r8d, -68(%rbp)
	call	posix_memalign
	movl	-68(%rbp), %r8d
	testl	%eax, %eax
	je	.L86
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovg	%r8d, %eax
	cmovg	%r13d, %edi
	cmpl	$4, %eax
	ja	.L87
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
.L35:
	vmovsd	.LC2(%rip), %xmm0
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
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
	movq	-56(%rbp), %r10
	movq	%r10, -96(%rbp)
	testl	%r13d, %r13d
	jle	.L14
	movq	%r10, %rax
	movl	$5, %esi
	leal	-1(%r13), %ecx
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
	vmovsd	%xmm0, (%r10)
	cmpl	$1, %eax
	je	.L51
	vmovsd	%xmm0, 8(%r10)
	cmpl	$3, %eax
	jne	.L52
	vmovsd	%xmm0, 16(%r10)
	movl	$3, %edi
.L16:
	movl	%r13d, %esi
	movq	-96(%rbp), %rdx
	vmovapd	.LC5(%rip), %ymm0
	subl	%eax, %esi
	movl	%esi, %ecx
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
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
	movq	-96(%rbp), %rcx
	movslq	%eax, %rdx
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
	leal	(%rbx,%rbx,2), %edi
	movl	%ebx, -160(%rbp)
	movl	%eax, -156(%rbp)
	movl	%edi, -164(%rbp)
	cmpl	$1, %eax
	jle	.L81
	movslq	%ebx, %rax
	movq	-96(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movl	%ebx, -68(%rbp)
	leaq	0(,%rax,8), %rcx
	movslq	%edi, %rax
	movl	%edi, -80(%rbp)
	salq	$3, %rax
	leaq	8(%rsi,%rcx), %r10
	movq	%rcx, -176(%rbp)
	movq	%rax, -184(%rbp)
	leaq	24(%rdx,%rax), %rax
	movq	%rax, -104(%rbp)
	movq	%rcx, %rax
	leaq	48(%r15,%rcx), %rcx
	leaq	(%r15,%rax), %r14
	movq	%rcx, -112(%rbp)
	leaq	40(%rsi,%rax), %rcx
	leaq	(%r14,%rax), %r13
	leal	-2(%rbx), %eax
	movl	$1, -88(%rbp)
	movq	%rax, %rsi
	leaq	(%rax,%rax,2), %rdx
	movl	%eax, -132(%rbp)
	salq	$3, %rax
	movq	%rax, -192(%rbp)
	movl	%esi, %eax
	salq	$3, %rdx
	andl	$-4, %esi
	shrl	$2, %eax
	movq	%rdx, -216(%rbp)
	leal	-3(%rbx), %edx
	movl	%eax, -72(%rbp)
	leal	1(%rsi), %eax
	movl	%eax, -252(%rbp)
	movl	%edx, %eax
	leaq	8(,%rax,8), %rax
	movl	%edx, -244(%rbp)
	movq	%rax, -264(%rbp)
	leal	(%rbx,%rbx), %eax
	movl	%esi, -248(%rbp)
	movl	%eax, -168(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%r15, %rcx
	.p2align 4,,10
	.p2align 3
.L28:
	movl	-68(%rbp), %eax
	movl	-168(%rbp), %esi
	movq	-104(%rbp), %rbx
	addl	$1, -88(%rbp)
	movl	%eax, -84(%rbp)
	subl	-160(%rbp), %eax
	addl	%eax, %esi
	movl	%eax, -76(%rbp)
	movq	-192(%rbp), %rax
	movl	%esi, -68(%rbp)
	movq	-120(%rbp), %rdi
	addq	%r10, %rax
	cmpq	%rax, %rbx
	movq	-216(%rbp), %rax
	setnb	%sil
	addq	%rbx, %rax
	cmpq	%rax, %r10
	setnb	%al
	orl	%eax, %esi
	cmpq	%rdi, %r14
	setnb	%al
	cmpq	-112(%rbp), %r10
	setnb	%dl
	orl	%eax, %edx
	cmpl	$3, -132(%rbp)
	seta	%al
	andl	%edx, %eax
	leaq	48(%rcx), %rdx
	andl	%esi, %eax
	cmpq	%rdx, %r10
	setnb	%dl
	cmpq	%rdi, %rcx
	setnb	%sil
	orl	%esi, %edx
	testb	%dl, %al
	je	.L32
	leaq	48(%r13), %rax
	cmpq	%rax, %r10
	setnb	%dl
	cmpq	%rdi, %r13
	setnb	%al
	orb	%al, %dl
	je	.L32
	cmpl	$2, -244(%rbp)
	jbe	.L53
	movq	-112(%rbp), %rax
	movq	%rbx, %rdx
	leaq	8(%r13), %r11
	leaq	8(%rcx), %rbx
	leaq	16(%rcx), %r8
	leaq	16(%r13), %rdi
	xorl	%esi, %esi
	leaq	-40(%rax), %r12
	leaq	-32(%rax), %r9
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L24:
	vmovupd	(%rdx), %ymm1
	vmovupd	64(%rdx), %ymm0
	addl	$1, %esi
	addq	$96, %rdx
	vmovupd	-64(%rdx), %ymm2
	vmovupd	(%rbx,%rax), %ymm5
	vaddpd	(%r14,%rax), %ymm5, %ymm5
	vaddpd	(%r11,%rax), %ymm5, %ymm5
	vaddpd	(%r9,%rax), %ymm5, %ymm6
	vperm2f128	$48, %ymm2, %ymm1, %ymm4
	vpermpd	$164, %ymm0, %ymm5
	vperm2f128	$2, %ymm2, %ymm1, %ymm3
	vshufpd	$5, %ymm3, %ymm4, %ymm3
	vblendpd	$8, %ymm5, %ymm3, %ymm3
	vmulpd	%ymm3, %ymm6, %ymm5
	vpermpd	$78, %ymm1, %ymm3
	vshufpd	$2, %ymm3, %ymm4, %ymm3
	vpalignr	$8, %ymm2, %ymm1, %ymm1
	vperm2f128	$33, %ymm0, %ymm3, %ymm4
	vblendpd	$8, %ymm4, %ymm3, %ymm3
	vpermpd	$83, %ymm1, %ymm1
	vmovupd	0(%r13,%rax), %ymm4
	vaddpd	(%rcx,%rax), %ymm4, %ymm4
	vmulpd	(%r12,%rax), %ymm3, %ymm3
	vaddpd	(%r8,%rax), %ymm4, %ymm4
	vinsertf128	$1, %xmm0, %ymm1, %ymm1
	vaddpd	(%rdi,%rax), %ymm4, %ymm4
	vblendpd	$7, %ymm1, %ymm0, %ymm0
	vmulpd	%ymm0, %ymm4, %ymm0
	vaddpd	%ymm3, %ymm5, %ymm3
	vaddpd	%ymm0, %ymm3, %ymm0
	vmovupd	%ymm0, (%r10,%rax)
	addq	$32, %rax
	cmpl	%esi, -72(%rbp)
	ja	.L24
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-248(%rbp), %esi
	cmpl	%esi, -132(%rbp)
	je	.L27
	movl	-252(%rbp), %eax
.L23:
	movl	-84(%rbp), %ebx
	leal	1(%rax), %esi
	movl	-68(%rbp), %r11d
	leal	-1(%rax), %edx
	leal	(%rax,%rax,2), %edi
	leal	(%rbx,%rsi), %r9d
	leal	(%rbx,%rax), %r8d
	movslq	%r9d, %r9
	movslq	%r8d, %r8
	movq	%r9, -200(%rbp)
	leaq	(%r15,%r9,8), %r9
	movq	%r9, -144(%rbp)
	movl	-76(%rbp), %r9d
	addl	%esi, %r9d
	movslq	%r9d, %r12
	leal	(%rsi,%r11), %r9d
	movslq	%r9d, %r11
	movl	-76(%rbp), %r9d
	movq	%r12, -224(%rbp)
	leaq	(%r15,%r12,8), %r12
	movq	%r11, -232(%rbp)
	leaq	(%r15,%r11,8), %r11
	movq	%r11, -152(%rbp)
	leal	(%rdx,%rbx), %r11d
	addl	%eax, %r9d
	movslq	%r11d, %r11
	movslq	%r9d, %r9
	vmovsd	(%r15,%r11,8), %xmm2
	movl	-68(%rbp), %r11d
	vaddsd	(%r15,%r9,8), %xmm2, %xmm2
	addl	%eax, %r11d
	movslq	%r11d, %rbx
	movq	-144(%rbp), %r11
	vaddsd	(%r15,%rbx,8), %xmm2, %xmm2
	movq	%rbx, -208(%rbp)
	vaddsd	(%r11), %xmm2, %xmm2
	movl	-80(%rbp), %r11d
	movq	-96(%rbp), %rbx
	leal	1(%r11,%rdi), %r11d
	movslq	%r11d, %r11
	vmulsd	(%rbx,%r11,8), %xmm2, %xmm2
	movl	-80(%rbp), %r11d
	addl	%edi, %r11d
	movslq	%r11d, %r11
	vmovsd	(%rbx,%r11,8), %xmm0
	vmulsd	(%r15,%r8,8), %xmm0, %xmm0
	movl	-76(%rbp), %r11d
	addl	%edx, %r11d
	addl	-68(%rbp), %edx
	movslq	%r11d, %r11
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%r11,8), %xmm0
	movl	-80(%rbp), %r11d
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	movq	-152(%rbp), %rdx
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	leal	2(%r11,%rdi), %edx
	movslq	%edx, %rdx
	vmulsd	(%rbx,%rdx,8), %xmm0, %xmm0
	movq	-128(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r8,8)
	cmpl	-156(%rbp), %esi
	jge	.L27
	movl	-84(%rbp), %edi
	leal	2(%rax), %edx
	vmovsd	(%r15,%r8,8), %xmm2
	leal	(%rsi,%rsi,2), %esi
	vaddsd	(%r12), %xmm2, %xmm2
	movq	-152(%rbp), %r8
	addl	%edx, %edi
	movl	-80(%rbp), %r12d
	movslq	%edi, %rdi
	vaddsd	(%r8), %xmm2, %xmm2
	movq	%rdi, -240(%rbp)
	leaq	(%r15,%rdi,8), %rdi
	leal	1(%r12,%rsi), %r8d
	movq	%rdi, %rbx
	movslq	%r8d, %r8
	movl	-76(%rbp), %edi
	vaddsd	(%rbx), %xmm2, %xmm2
	movq	%rbx, -152(%rbp)
	movq	-96(%rbp), %rbx
	addl	%edx, %edi
	movslq	%edi, %rdi
	vmulsd	(%rbx,%r8,8), %xmm2, %xmm2
	leal	(%r12,%rsi), %r8d
	leaq	(%r15,%rdi,8), %r11
	movl	-68(%rbp), %edi
	movslq	%r8d, %r8
	leal	2(%r12,%rsi), %esi
	vmovsd	(%rbx,%r8,8), %xmm0
	movq	-144(%rbp), %r8
	addl	%edx, %edi
	movslq	%esi, %rsi
	movslq	%edi, %rdi
	vmulsd	(%r8), %xmm0, %xmm0
	leaq	(%r15,%rdi,8), %rdi
	movq	%rbx, %r8
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%r9,8), %xmm0
	movq	-208(%rbp), %r9
	vaddsd	(%r15,%r9,8), %xmm0, %xmm0
	vaddsd	(%r11), %xmm0, %xmm0
	movl	%r12d, %r9d
	vaddsd	(%rdi), %xmm0, %xmm0
	vmulsd	(%rbx,%rsi,8), %xmm0, %xmm0
	movq	-128(%rbp), %r12
	movq	-200(%rbp), %rbx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%rbx,8)
	cmpl	%edx, -156(%rbp)
	jle	.L27
	movl	-84(%rbp), %esi
	addl	$3, %eax
	leal	(%rdx,%rdx,2), %edx
	vmovsd	(%r15,%rbx,8), %xmm2
	vaddsd	(%r11), %xmm2, %xmm2
	vaddsd	(%rdi), %xmm2, %xmm2
	movq	%r8, %rdi
	movl	%r9d, %ebx
	addl	%eax, %esi
	movq	-232(%rbp), %r11
	movslq	%esi, %rsi
	vaddsd	(%r15,%rsi,8), %xmm2, %xmm2
	leal	1(%r9,%rdx), %esi
	movslq	%esi, %rsi
	vmulsd	(%r8,%rsi,8), %xmm2, %xmm2
	leal	(%r9,%rdx), %esi
	movq	-224(%rbp), %r9
	movslq	%esi, %rsi
	vmovsd	(%r8,%rsi,8), %xmm0
	movq	-152(%rbp), %r8
	movl	-76(%rbp), %esi
	vmulsd	(%r8), %xmm0, %xmm0
	addl	%eax, %esi
	addl	-68(%rbp), %eax
	cltq
	movslq	%esi, %rsi
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%r11,8), %xmm0
	vaddsd	(%r15,%r9,8), %xmm0, %xmm0
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	2(%rbx,%rdx), %eax
	cltq
	vmulsd	(%rdi,%rax,8), %xmm0, %xmm0
	movq	-240(%rbp), %rdi
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%rdi,8)
.L27:
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rdi
	movl	-164(%rbp), %ebx
	addq	%rdi, -104(%rbp)
	addq	%rax, %r10
	addq	%rax, -112(%rbp)
	addq	%rax, %r14
	addq	%rax, %rcx
	addq	%rax, -120(%rbp)
	addq	%rax, %r13
	movl	-88(%rbp), %esi
	addl	%ebx, -80(%rbp)
	cmpl	%esi, -136(%rbp)
	jg	.L28
.L81:
	vzeroupper
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L82
	movq	%r15, %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	movq	-96(%rbp), %rdi
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
	movq	-104(%rbp), %rax
	movq	-264(%rbp), %rdi
	leaq	-8(%r10), %rsi
	leaq	-24(%rax), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L26:
	vmovsd	8(%rcx,%rax), %xmm0
	vmovsd	8(%r14,%rax), %xmm1
	addq	$24, %rdx
	vaddsd	(%r14,%rax), %xmm0, %xmm2
	vmulsd	(%rdx), %xmm1, %xmm0
	vaddsd	8(%r13,%rax), %xmm2, %xmm2
	vaddsd	16(%r14,%rax), %xmm2, %xmm2
	vmulsd	8(%rdx), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	0(%r13,%rax), %xmm0
	vaddsd	(%rcx,%rax), %xmm0, %xmm0
	vaddsd	16(%rcx,%rax), %xmm0, %xmm0
	vaddsd	16(%r13,%rax), %xmm0, %xmm0
	vmulsd	16(%rdx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rsi,%rax)
	addq	$8, %rax
	cmpq	%rdi, %rax
	jne	.L26
	jmp	.L27
.L53:
	movl	$1, %eax
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
	cmovle	%eax, %r8d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r8d
	jb	.L35
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	movq	-128(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L47
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L48
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
	je	.L90
	vzeroupper
	jmp	.L35
.L88:
	movq	%r15, %rdi
	vzeroupper
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	movq	-96(%rbp), %rdi
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
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
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
