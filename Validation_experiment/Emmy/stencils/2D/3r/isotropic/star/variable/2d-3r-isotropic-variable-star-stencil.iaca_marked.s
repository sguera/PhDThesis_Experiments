	.file	"2d-3r-isotropic-variable-star-stencil.c_compilable.c"
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
	subq	$352, %rsp
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
	movq	-56(%rbp), %r15
	testl	%r13d, %r13d
	jle	.L3
	leal	-1(%r13), %r8d
	movq	%r15, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r8d
	jb	.L42
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L44
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L45
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
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	movl	%r8d, -72(%rbp)
	call	posix_memalign
	movl	-72(%rbp), %r8d
	testl	%eax, %eax
	je	.L86
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovg	%r8d, %eax
	cmovg	%r13d, %edi
	cmpl	$4, %eax
	ja	.L87
	movq	$0, -192(%rbp)
	xorl	%eax, %eax
.L34:
	movq	-192(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L38
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L38
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L38
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L38
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L38
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L38:
	leaq	-56(%rbp), %rdi
	sall	$2, %r13d
	movl	$32, %esi
	movslq	%r13d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r9
	movq	%r9, -104(%rbp)
	testl	%r13d, %r13d
	jle	.L14
	leal	-1(%r13), %ecx
	movq	%r9, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %ecx
	jb	.L48
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L16
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%r9)
	cmpl	$1, %eax
	je	.L50
	vmovsd	%xmm0, 8(%r9)
	cmpl	$3, %eax
	jne	.L51
	vmovsd	%xmm0, 16(%r9)
	movl	$3, %edi
.L16:
	movq	-104(%rbp), %rdx
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
	movq	-104(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-3(%r12), %eax
	movl	%eax, -284(%rbp)
	testl	%edx, %edx
	jne	.L88
	cmpl	$3, -284(%rbp)
	jle	.L89
.L21:
	leal	-3(%rbx), %eax
	movl	%ebx, -300(%rbp)
	leal	0(,%rbx,4), %r9d
	movl	%eax, -288(%rbp)
	movl	%r9d, -216(%rbp)
	cmpl	$3, %eax
	jle	.L81
	movq	-192(%rbp), %r13
	leal	-6(%rbx), %esi
	movslq	%ebx, %rax
	movslq	%r9d, %rdx
	leal	(%rbx,%rbx), %r10d
	salq	$3, %rdx
	movq	%rsi, %r14
	movl	%esi, -240(%rbp)
	leal	(%r10,%rbx), %r11d
	movq	%rdx, -296(%rbp)
	leal	(%r9,%rbx,8), %edx
	movslq	%r11d, %rcx
	movl	%r10d, -304(%rbp)
	leaq	0(,%rax,8), %r12
	movslq	%edx, %rdi
	movl	%edx, -108(%rbp)
	movq	-296(%rbp), %rdx
	leaq	24(,%rcx,8), %rax
	movq	%r12, -312(%rbp)
	movq	%rax, -72(%rbp)
	leaq	12(%rdi,%rsi,4), %r8
	addq	%r13, %rax
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	leaq	3(%rcx,%rsi), %rsi
	movq	%rdx, -152(%rbp)
	movl	%r11d, -316(%rbp)
	movq	%r15, -136(%rbp)
	leaq	(%rax,%rdi,8), %rdi
	movl	$0, -124(%rbp)
	leaq	(%rax,%r8,8), %r8
	movq	-72(%rbp), %rax
	movq	%rdi, -224(%rbp)
	leaq	0(%r13,%rsi,8), %rdi
	movq	%r8, -248(%rbp)
	movq	%rdi, -256(%rbp)
	leaq	56(%r13,%rcx,8), %rdi
	movq	%r15, %r13
	movq	%rdi, -120(%rbp)
	movq	%r12, %rdi
	subq	$24, %rax
	addq	%r15, %rdi
	movl	$3, -236(%rbp)
	movq	%rax, -176(%rbp)
	movslq	%r10d, %rax
	movq	%rdi, -232(%rbp)
	leaq	0(,%rax,8), %rdi
	leal	(%r9,%rbx), %eax
	subl	$7, %ebx
	movq	%rdi, -144(%rbp)
	cltq
	movl	%ebx, -320(%rbp)
	leaq	0(,%rax,8), %rdx
	leal	(%r11,%r11), %eax
	movq	%rdx, -160(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movl	%r14d, %eax
	andl	$-4, %r14d
	shrl	$2, %eax
	movq	%rdx, -168(%rbp)
	movl	%eax, -112(%rbp)
	leal	3(%r14), %edx
	movl	%ebx, %eax
	leaq	8(,%rax,8), %rbx
	movl	%r14d, -340(%rbp)
	movq	%rbx, -392(%rbp)
	leaq	24(%r15), %rbx
	movq	%rbx, -264(%rbp)
	leaq	56(%r15), %rbx
	movq	%rbx, -328(%rbp)
	leaq	80(%r15), %rbx
	movl	%edx, -344(%rbp)
	movq	%rbx, -336(%rbp)
	leaq	16(%r15), %rbx
	movl	-124(%rbp), %eax
	movq	%rbx, -352(%rbp)
	leaq	32(%r15), %rbx
	movq	%rbx, -360(%rbp)
	leaq	8(%r15), %rbx
	movq	%rbx, -368(%rbp)
	leaq	40(%r15), %rbx
	movq	%rbx, -376(%rbp)
	leaq	48(%r15), %rbx
	movq	%rbx, -384(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movl	-316(%rbp), %esi
	movl	-300(%rbp), %ebx
	movl	-304(%rbp), %edi
	movq	-152(%rbp), %r14
	addl	%esi, %eax
	movq	-160(%rbp), %r8
	movl	%eax, -180(%rbp)
	subl	%ebx, %eax
	movq	-232(%rbp), %r15
	addl	%eax, %edi
	movl	%eax, -184(%rbp)
	movl	-216(%rbp), %eax
	movl	%edi, -204(%rbp)
	subl	%esi, %edi
	movq	-136(%rbp), %r10
	addl	$1, -236(%rbp)
	movl	%edi, -128(%rbp)
	movq	-248(%rbp), %rdx
	addl	%edi, %eax
	movq	-176(%rbp), %r12
	movl	%eax, -208(%rbp)
	leaq	24(%r15), %rdi
	addl	%eax, %ebx
	movq	-224(%rbp), %rax
	movl	%ebx, -212(%rbp)
	movq	-144(%rbp), %rbx
	leaq	24(%r10), %r9
	leaq	0(%r13,%r12), %rcx
	addq	$96, %rax
	movq	%rax, -200(%rbp)
	movq	-264(%rbp), %rax
	addq	%rax, %rbx
	addq	%rax, %r14
	addq	%rax, %r8
	addq	-168(%rbp), %rax
	movq	%rax, %r10
	leaq	56(%r15), %rax
	movq	-120(%rbp), %r15
	cmpq	%rax, -80(%rbp)
	setnb	%r11b
	cmpq	%rdi, %r15
	setbe	%al
	orl	%eax, %r11d
	movq	-256(%rbp), %rax
	cmpq	%rax, -200(%rbp)
	setnb	%sil
	cmpq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rdx
	setnb	%al
	orl	%esi, %eax
	andl	%r11d, %eax
	cmpl	$3, -240(%rbp)
	movq	-136(%rbp), %r11
	seta	%sil
	andl	%esi, %eax
	leaq	56(%r11), %rsi
	cmpq	%rsi, %rdx
	setnb	%r11b
	cmpq	%r9, %r15
	setbe	%sil
	orl	%esi, %r11d
	movq	-336(%rbp), %rsi
	andl	%r11d, %eax
	addq	%r12, %rsi
	cmpq	%rsi, %rdx
	setnb	%sil
	cmpq	%rcx, %r15
	movq	-328(%rbp), %r15
	setbe	%r11b
	movq	-120(%rbp), %r12
	orl	%esi, %r11d
	movq	-144(%rbp), %rsi
	andl	%r11d, %eax
	addq	%r15, %rsi
	cmpq	%rsi, %rdx
	setnb	%sil
	cmpq	%rbx, %r12
	setbe	%r11b
	orl	%esi, %r11d
	andl	%eax, %r11d
	movq	-152(%rbp), %rax
	addq	%r15, %rax
	cmpq	%rax, %rdx
	setnb	%sil
	cmpq	%r14, %r12
	setbe	%al
	orl	%esi, %eax
	movq	-160(%rbp), %rsi
	andl	%r11d, %eax
	addq	%r15, %rsi
	cmpq	%rsi, %rdx
	setnb	%sil
	cmpq	%r8, %r12
	setbe	%r11b
	orl	%r11d, %esi
	testb	%sil, %al
	je	.L54
	addq	-168(%rbp), %r15
	cmpq	%r15, %rdx
	setnb	%sil
	cmpq	%r10, %r12
	setbe	%al
	orb	%al, %sil
	je	.L54
	cmpl	$2, -320(%rbp)
	jbe	.L52
	movq	-176(%rbp), %rax
	movq	%r13, -280(%rbp)
	movq	-352(%rbp), %rsi
	movl	$0, -72(%rbp)
	movq	-264(%rbp), %r15
	movq	%rcx, -96(%rbp)
	movq	-360(%rbp), %r12
	movq	-384(%rbp), %r11
	addq	%rax, %rsi
	movq	-200(%rbp), %rdx
	movq	%rsi, -88(%rbp)
	movq	-368(%rbp), %rsi
	addq	%rax, %r15
	addq	%rax, %r12
	addq	%rax, %r11
	addq	%rax, %rsi
	movq	%rsi, -272(%rbp)
	movq	-376(%rbp), %rsi
	movq	-272(%rbp), %r13
	addq	%rax, %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L24:
	movq	-88(%rbp), %rcx
	vmovupd	(%rdx,%rax,4), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax,4), %ymm0, %ymm6
	vmovupd	32(%rdx,%rax,4), %xmm0
	vinsertf128	$0x1, 48(%rdx,%rax,4), %ymm0, %ymm2
	vinsertf128	$1, %xmm2, %ymm6, %ymm1
	vmovupd	64(%rdx,%rax,4), %xmm0
	vinsertf128	$0x1, 80(%rdx,%rax,4), %ymm0, %ymm4
	vmovupd	96(%rdx,%rax,4), %xmm0
	vinsertf128	$0x1, 112(%rdx,%rax,4), %ymm0, %ymm3
	vperm2f128	$49, %ymm2, %ymm6, %ymm0
	vinsertf128	$1, %xmm3, %ymm4, %ymm2
	vunpcklpd	%ymm0, %ymm1, %ymm6
	vunpckhpd	%ymm0, %ymm1, %ymm5
	vperm2f128	$49, %ymm3, %ymm4, %ymm0
	vmovupd	(%r12,%rax), %xmm4
	vunpcklpd	%ymm0, %ymm2, %ymm3
	vunpckhpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%rcx,%rax), %xmm0
	vinsertf128	$0x1, 16(%r12,%rax), %ymm4, %ymm2
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vaddpd	%ymm2, %ymm0, %ymm4
	movq	-96(%rbp), %rcx
	vmovupd	(%rbx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm0, %ymm0
	vmovupd	(%r14,%rax), %xmm2
	vinsertf128	$0x1, 16(%r14,%rax), %ymm2, %ymm2
	vaddpd	%ymm2, %ymm0, %ymm2
	vaddpd	%ymm2, %ymm4, %ymm0
	vinsertf128	$1, %xmm1, %ymm5, %ymm2
	vperm2f128	$49, %ymm1, %ymm5, %ymm1
	vunpcklpd	%ymm1, %ymm2, %ymm4
	vunpckhpd	%ymm1, %ymm2, %ymm1
	vmulpd	%ymm4, %ymm0, %ymm5
	vinsertf128	$1, %xmm3, %ymm6, %ymm4
	vmovupd	(%r15,%rax), %xmm0
	vperm2f128	$49, %ymm3, %ymm6, %ymm3
	vinsertf128	$0x1, 16(%r15,%rax), %ymm0, %ymm0
	vunpcklpd	%ymm3, %ymm4, %ymm6
	vmulpd	%ymm0, %ymm6, %ymm0
	vmovupd	0(%r13,%rax), %xmm6
	vaddpd	%ymm0, %ymm5, %ymm0
	vinsertf128	$0x1, 16(%r13,%rax), %ymm6, %ymm7
	vmovupd	(%rsi,%rax), %xmm5
	vunpckhpd	%ymm3, %ymm4, %ymm3
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm5, %ymm5
	vaddpd	%ymm5, %ymm7, %ymm6
	vmovupd	(%rdi,%rax), %xmm5
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm5, %ymm7
	vmovupd	(%r8,%rax), %xmm5
	vinsertf128	$0x1, 16(%r8,%rax), %ymm5, %ymm5
	vaddpd	%ymm5, %ymm7, %ymm5
	vmovupd	(%rcx,%rax), %xmm4
	vaddpd	%ymm5, %ymm6, %ymm5
	vmulpd	%ymm3, %ymm5, %ymm3
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm4, %ymm5
	vaddpd	%ymm3, %ymm0, %ymm3
	vmovupd	(%r11,%rax), %xmm0
	vinsertf128	$0x1, 16(%r11,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm5, %ymm4
	vmovupd	(%r9,%rax), %xmm0
	vinsertf128	$0x1, 16(%r9,%rax), %ymm0, %ymm5
	vmovupd	(%r10,%rax), %xmm0
	vinsertf128	$0x1, 16(%r10,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm5, %ymm0
	movq	-80(%rbp), %rcx
	addl	$1, -72(%rbp)
	vaddpd	%ymm0, %ymm4, %ymm0
	vmulpd	%ymm1, %ymm0, %ymm1
	vaddpd	%ymm1, %ymm3, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	movl	-72(%rbp), %ecx
	addq	$32, %rax
	cmpl	%ecx, -112(%rbp)
	ja	.L24
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-280(%rbp), %r13
	movl	-240(%rbp), %ebx
	cmpl	%ebx, -340(%rbp)
	je	.L27
	movl	-344(%rbp), %eax
.L23:
	movl	-184(%rbp), %ebx
	leal	1(%rax), %edx
	movl	-180(%rbp), %r12d
	leal	0(,%rax,4), %r9d
	movl	-204(%rbp), %ecx
	leal	(%rax,%rbx), %edi
	movl	-108(%rbp), %ebx
	leal	(%rdx,%r12), %r14d
	movslq	%edi, %rdi
	vmovsd	0(%r13,%rdi,8), %xmm2
	leal	(%rax,%r12), %esi
	movslq	%r14d, %r14
	addl	%eax, %ecx
	leal	-1(%rax,%r12), %edi
	movslq	%ecx, %rcx
	movslq	%esi, %rsi
	leaq	0(%r13,%r14,8), %r10
	vaddsd	0(%r13,%rcx,8), %xmm2, %xmm2
	movslq	%edi, %rdi
	vmovsd	0(%r13,%rdi,8), %xmm0
	movq	%r10, -72(%rbp)
	leal	1(%r9,%rbx), %ecx
	vaddsd	(%r10), %xmm0, %xmm0
	movslq	%ecx, %rcx
	movq	-104(%rbp), %r10
	vaddsd	%xmm0, %xmm2, %xmm2
	vmulsd	(%r10,%rcx,8), %xmm2, %xmm3
	leal	(%rbx,%r9), %ecx
	movslq	%ecx, %rcx
	vmovsd	(%r10,%rcx,8), %xmm0
	leal	2(%rax), %ecx
	leal	(%rcx,%r12), %r8d
	vmulsd	0(%r13,%rsi,8), %xmm0, %xmm0
	movslq	%r8d, %r15
	movl	-128(%rbp), %r8d
	leal	-2(%rax,%r12), %r10d
	movslq	%r10d, %r10
	leal	(%rax,%r8), %r11d
	movl	-208(%rbp), %r8d
	vaddsd	%xmm0, %xmm3, %xmm2
	movslq	%r11d, %r11
	vmovsd	0(%r13,%r10,8), %xmm3
	vmovsd	0(%r13,%r11,8), %xmm0
	movq	-104(%rbp), %r11
	addl	%eax, %r8d
	vaddsd	0(%r13,%r15,8), %xmm3, %xmm3
	movslq	%r8d, %r8
	vaddsd	0(%r13,%r8,8), %xmm0, %xmm0
	leal	2(%r9,%rbx), %r8d
	movslq	%r8d, %r8
	vaddsd	%xmm0, %xmm3, %xmm0
	vmulsd	(%r11,%r8,8), %xmm0, %xmm0
	leal	-3(%rax,%r12), %r11d
	leal	3(%rax,%r12), %r8d
	movslq	%r11d, %r11
	movslq	%r8d, %r8
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	0(%r13,%r11,8), %xmm2
	movl	-124(%rbp), %r11d
	vaddsd	0(%r13,%r8,8), %xmm2, %xmm2
	leal	(%r11,%rax), %ebx
	movl	-212(%rbp), %r11d
	movslq	%ebx, %rbx
	vmovsd	0(%r13,%rbx,8), %xmm0
	movl	-108(%rbp), %ebx
	addl	%eax, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movq	-104(%rbp), %r11
	leal	3(%r9,%rbx), %r9d
	movslq	%r9d, %r9
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%r11,%r9,8), %xmm0, %xmm0
	movq	-192(%rbp), %r9
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r9,%rsi,8)
	cmpl	-288(%rbp), %edx
	jge	.L27
	movl	-184(%rbp), %r11d
	leaq	0(%r13,%r15,8), %r12
	vmovsd	0(%r13,%rsi,8), %xmm0
	movq	%r12, -88(%rbp)
	vaddsd	(%r12), %xmm0, %xmm0
	leal	0(,%rdx,4), %r9d
	movq	-104(%rbp), %r12
	leal	(%rdx,%r11), %ebx
	movl	-204(%rbp), %r11d
	movslq	%ebx, %rbx
	vmovsd	0(%r13,%rbx,8), %xmm2
	movl	-108(%rbp), %ebx
	addl	%edx, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm2, %xmm2
	leal	1(%r9,%rbx), %r11d
	movslq	%r11d, %r11
	vaddsd	%xmm0, %xmm2, %xmm2
	vmulsd	(%r12,%r11,8), %xmm2, %xmm3
	leal	(%rbx,%r9), %r11d
	movq	-72(%rbp), %rbx
	movslq	%r11d, %r11
	vmovsd	(%r12,%r11,8), %xmm0
	movl	-208(%rbp), %r11d
	vmulsd	(%rbx), %xmm0, %xmm0
	movl	-128(%rbp), %ebx
	addl	%edx, %r11d
	movslq	%r11d, %r11
	addl	%edx, %ebx
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	0(%r13,%rdi,8), %xmm3
	movslq	%ebx, %rbx
	vaddsd	0(%r13,%r8,8), %xmm3, %xmm3
	vmovsd	0(%r13,%rbx,8), %xmm0
	movl	-108(%rbp), %ebx
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	leal	2(%r9,%rbx), %r11d
	vaddsd	%xmm0, %xmm3, %xmm0
	movslq	%r11d, %r11
	vmulsd	(%r12,%r11,8), %xmm0, %xmm0
	movl	-180(%rbp), %r12d
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	0(%r13,%r10,8), %xmm2
	leal	4(%rax,%r12), %r11d
	movl	-124(%rbp), %r10d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm2, %xmm2
	addl	%edx, %r10d
	addl	-212(%rbp), %edx
	movslq	%r10d, %r10
	vmovsd	0(%r13,%r10,8), %xmm0
	movq	-104(%rbp), %r10
	movslq	%edx, %rdx
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	leal	3(%r9,%rbx), %edx
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%r10,%rdx,8), %xmm0, %xmm0
	movq	-192(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r14,8)
	cmpl	-288(%rbp), %ecx
	jge	.L27
	vmovsd	0(%r13,%r8,8), %xmm1
	movl	-204(%rbp), %r9d
	leal	0(,%rcx,4), %edx
	movl	-184(%rbp), %r8d
	leal	5(%rax,%r12), %eax
	vaddsd	0(%r13,%r14,8), %xmm1, %xmm1
	cltq
	addl	%ecx, %r9d
	addl	%ecx, %r8d
	movslq	%r9d, %r9
	movslq	%r8d, %r8
	vmovsd	0(%r13,%r9,8), %xmm0
	vaddsd	0(%r13,%r8,8), %xmm0, %xmm0
	leal	1(%rdx,%rbx), %r8d
	movq	-88(%rbp), %r9
	movslq	%r8d, %r8
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	(%r10,%r8,8), %xmm1, %xmm3
	leal	(%rbx,%rdx), %r8d
	movslq	%r8d, %r8
	vmovsd	(%r10,%r8,8), %xmm0
	vmulsd	(%r9), %xmm0, %xmm0
	movl	-208(%rbp), %r8d
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	0(%r13,%r11,8), %xmm3
	addl	%ecx, %r8d
	vaddsd	0(%r13,%rsi,8), %xmm3, %xmm3
	movslq	%r8d, %r8
	movl	-128(%rbp), %esi
	vmovsd	0(%r13,%r8,8), %xmm0
	addl	%ecx, %esi
	movslq	%esi, %rsi
	vaddsd	0(%r13,%rsi,8), %xmm0, %xmm0
	leal	2(%rdx,%rbx), %esi
	movslq	%esi, %rsi
	vaddsd	%xmm0, %xmm3, %xmm0
	vmulsd	(%r10,%rsi,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	0(%r13,%rax,8), %xmm2
	movl	-212(%rbp), %eax
	vaddsd	0(%r13,%rdi,8), %xmm2, %xmm2
	addl	%ecx, %eax
	addl	-124(%rbp), %ecx
	cltq
	vmovsd	0(%r13,%rax,8), %xmm0
	leal	3(%rdx,%rbx), %eax
	cltq
	movq	-192(%rbp), %rdx
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%r10,%rax,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r15,8)
.L27:
	movq	-312(%rbp), %rax
	addq	%rax, -80(%rbp)
	addq	%rax, -256(%rbp)
	addq	%rax, -120(%rbp)
	addq	%rax, -232(%rbp)
	addq	%rax, -136(%rbp)
	addq	%rax, -176(%rbp)
	addq	%rax, -144(%rbp)
	addq	%rax, -152(%rbp)
	addq	%rax, -160(%rbp)
	addq	%rax, -168(%rbp)
	movl	-128(%rbp), %eax
	movq	-296(%rbp), %rsi
	movl	-216(%rbp), %ebx
	addq	%rsi, -248(%rbp)
	addq	%rsi, -224(%rbp)
	movl	%eax, -124(%rbp)
	addl	%ebx, -108(%rbp)
	movl	-236(%rbp), %edi
	cmpl	%edi, -284(%rbp)
	jg	.L28
	movq	%r13, %r15
	vzeroupper
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L82
	movq	%r15, %rdi
	call	dummy
	movq	-192(%rbp), %rdi
	call	dummy
	movq	-104(%rbp), %rdi
	call	dummy
.L82:
	addq	$352, %rsp
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
.L54:
	.cfi_restore_state
	movq	-192(%rbp), %rbx
	xorl	%eax, %eax
	movq	-176(%rbp), %rdx
	movq	-392(%rbp), %r11
	movq	-80(%rbp), %r12
	movq	-224(%rbp), %r10
	leaq	(%rbx,%rdx), %r9
	movq	-152(%rbp), %rbx
	movq	-136(%rbp), %r14
	leaq	0(%r13,%rbx), %r8
	movq	-144(%rbp), %rbx
	leaq	0(%r13,%rbx), %rdi
	movq	-160(%rbp), %rbx
	leaq	0(%r13,%rbx), %rsi
	movq	-168(%rbp), %rbx
	leaq	0(%r13,%rbx), %rdx
	movq	-232(%rbp), %rbx
	.p2align 4,,10
	.p2align 3
.L26:
	vmovsd	24(%r8,%rax), %xmm2
	addq	$8, %rcx
	vaddsd	24(%rdi,%rax), %xmm2, %xmm2
	vmovsd	24(%rcx), %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm2
	vmulsd	104(%r10,%rax,4), %xmm2, %xmm1
	vmovsd	16(%rcx), %xmm2
	vmulsd	96(%r10,%rax,4), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rsi,%rax), %xmm1
	vmovsd	32(%rcx), %xmm0
	vaddsd	24(%rbx,%rax), %xmm1, %xmm1
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	112(%r10,%rax,4), %xmm1, %xmm1
	vmovsd	40(%rcx), %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	24(%rdx,%rax), %xmm2
	vaddsd	24(%r14,%rax), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	120(%r10,%rax,4), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 24(%r9,%rax)
	addq	$8, %rax
	cmpq	%r11, %rax
	jne	.L26
	movq	%r12, -80(%rbp)
	jmp	.L27
.L52:
	movl	$3, %eax
	jmp	.L23
.L86:
	movq	-56(%rbp), %rdx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rdx, -192(%rbp)
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r13d, %r13d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r8d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r8d
	jb	.L34
	testl	%edx, %edx
	je	.L9
	movq	-192(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L46
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L47
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	movq	-192(%rbp), %rcx
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
	jmp	.L34
.L88:
	movq	%r15, %rdi
	vzeroupper
	call	dummy
	movq	-192(%rbp), %rdi
	call	dummy
	movq	-104(%rbp), %rdi
	call	dummy
	cmpl	$3, -284(%rbp)
	jg	.L21
	jmp	.L22
.L44:
	movl	$1, %edi
	jmp	.L5
.L87:
	movq	$0, -192(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L9
.L50:
	movl	$1, %edi
	jmp	.L16
.L46:
	movl	$1, %eax
	jmp	.L9
.L90:
	vzeroupper
	jmp	.L38
.L85:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -192(%rbp)
	testl	%eax, %eax
	jne	.L38
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)
	jmp	.L38
.L47:
	movl	$2, %eax
	jmp	.L9
.L45:
	movl	$2, %edi
	jmp	.L5
.L51:
	movl	$2, %edi
	jmp	.L16
.L81:
	vzeroupper
	jmp	.L22
.L89:
	vzeroupper
	jmp	.L82
.L48:
	xorl	%eax, %eax
	jmp	.L15
.L42:
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
