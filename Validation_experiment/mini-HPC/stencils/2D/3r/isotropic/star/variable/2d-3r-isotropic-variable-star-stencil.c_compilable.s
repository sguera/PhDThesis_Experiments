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
	movq	%rax, -72(%rbp)
	call	strtol
	movq	-72(%rbp), %r10
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movq	%rax, %r12
	movl	%r10d, %r13d
	imull	%eax, %r13d
	movslq	%r13d, %r14
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	movq	-72(%rbp), %r10
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rbx
	testl	%r13d, %r13d
	jle	.L3
	movq	%rbx, %rax
	movl	$5, %ecx
	leal	-1(%r13), %r15d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r15d
	jb	.L42
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rbx)
	cmpl	$1, %eax
	je	.L44
	vmovsd	%xmm0, 8(%rbx)
	cmpl	$3, %eax
	jne	.L45
	vmovsd	%xmm0, 16(%rbx)
	movl	$3, %edi
.L5:
	movl	%r13d, %esi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%rbx,%rax,8), %rdx
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
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rbx,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rbx,%rax,8)
.L8:
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movq	%r10, -72(%rbp)
	call	posix_memalign
	movq	-72(%rbp), %r10
	testl	%eax, %eax
	je	.L86
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %r15d
	cmovg	%r13d, %edi
	cmpl	$4, %r15d
	ja	.L87
	movq	$0, -184(%rbp)
	xorl	%eax, %eax
.L34:
	vmovsd	.LC2(%rip), %xmm0
	movq	-184(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L38
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L38
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L38
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L38
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L38
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L38:
	sall	$2, %r13d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movq	%r10, -72(%rbp)
	movslq	%r13d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	movq	-72(%rbp), %r10
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r15
	movq	%r15, -104(%rbp)
	testl	%r13d, %r13d
	jle	.L14
	movq	%r15, %rax
	movl	$5, %esi
	leal	-1(%r13), %ecx
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
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L50
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L51
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %edi
.L16:
	movl	%r13d, %esi
	movq	-104(%rbp), %rdx
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
	movq	-104(%rbp), %rcx
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
	leal	-3(%r12), %eax
	movl	%eax, -276(%rbp)
	testl	%edx, %edx
	jne	.L88
	cmpl	$3, -276(%rbp)
	jle	.L89
.L21:
	leal	-3(%r10), %eax
	leal	0(,%r10,4), %r15d
	movl	%r10d, -300(%rbp)
	movl	%eax, -280(%rbp)
	movl	%r15d, -200(%rbp)
	cmpl	$3, %eax
	jle	.L81
	leal	(%r10,%r10), %r11d
	movslq	%r10d, %rax
	leal	-6(%r10), %esi
	movq	-104(%rbp), %rdi
	leal	(%r11,%r10), %r12d
	salq	$3, %rax
	movq	%rsi, %r14
	movq	%rbx, -128(%rbp)
	movslq	%r12d, %rcx
	movq	-184(%rbp), %r13
	movq	%rax, -288(%rbp)
	leaq	24(,%rcx,8), %rax
	movl	%esi, -224(%rbp)
	leaq	0(%r13,%rax), %rdx
	subq	$24, %rax
	movl	%r11d, -304(%rbp)
	movq	%rax, -168(%rbp)
	movslq	%r11d, %rax
	salq	$3, %rax
	movq	%rdx, -72(%rbp)
	movslq	%r15d, %rdx
	movq	%rax, -136(%rbp)
	leal	(%r15,%r10), %eax
	salq	$3, %rdx
	cltq
	movq	%rdx, -296(%rbp)
	leal	(%r15,%r10,8), %edx
	salq	$3, %rax
	movslq	%edx, %r9
	movl	%edx, -108(%rbp)
	movq	-296(%rbp), %rdx
	movq	%rax, -152(%rbp)
	leal	(%r12,%r12), %eax
	leaq	12(%r9,%rsi,4), %r8
	cltq
	movq	%rdx, -144(%rbp)
	leal	-7(%r10), %edx
	leaq	(%rdi,%r8,8), %r8
	salq	$3, %rax
	leaq	(%rdi,%r9,8), %rdi
	leaq	3(%rcx,%rsi), %rsi
	movl	%r12d, -308(%rbp)
	movq	%rax, -160(%rbp)
	movl	%r14d, %eax
	andl	$-4, %r14d
	shrl	$2, %eax
	movq	%rdi, -208(%rbp)
	leaq	0(%r13,%rsi,8), %rdi
	movl	%eax, -112(%rbp)
	leal	3(%r14), %eax
	movl	%eax, -336(%rbp)
	movl	%edx, %eax
	leaq	8(,%rax,8), %rax
	movq	%rdi, -240(%rbp)
	leaq	56(%r13,%rcx,8), %rdi
	movq	-288(%rbp), %rcx
	movq	%rax, -384(%rbp)
	leaq	24(%rbx), %rax
	movq	%rax, -256(%rbp)
	leaq	56(%rbx), %rax
	movq	%rax, -320(%rbp)
	leaq	80(%rbx), %rax
	movq	%rdi, -248(%rbp)
	leaq	(%rbx,%rcx), %rdi
	movq	%rax, -328(%rbp)
	leaq	16(%rbx), %rax
	movl	%r14d, -332(%rbp)
	movq	%r8, -232(%rbp)
	movq	%rdi, -216(%rbp)
	movl	%edx, -312(%rbp)
	movl	$0, -116(%rbp)
	movl	$3, -220(%rbp)
	movq	%rax, -344(%rbp)
	leaq	32(%rbx), %rax
	movq	-72(%rbp), %r14
	movq	%rax, -352(%rbp)
	leaq	8(%rbx), %rax
	movq	%rax, -360(%rbp)
	leaq	40(%rbx), %rax
	movq	%rax, -368(%rbp)
	leaq	48(%rbx), %rax
	movq	%rax, -376(%rbp)
	movl	-116(%rbp), %eax
	.p2align 4,,10
	.p2align 3
.L28:
	movl	-308(%rbp), %esi
	movl	-300(%rbp), %edx
	movl	-304(%rbp), %edi
	movq	-136(%rbp), %r12
	addl	%esi, %eax
	movq	-152(%rbp), %r8
	movq	-128(%rbp), %r9
	movl	%eax, -172(%rbp)
	subl	%edx, %eax
	movq	-216(%rbp), %r11
	addl	%eax, %edi
	movl	%eax, -176(%rbp)
	movl	-200(%rbp), %eax
	addq	$24, %r9
	movq	%r9, -72(%rbp)
	leaq	24(%r11), %r15
	movq	-168(%rbp), %r13
	movl	%edi, -188(%rbp)
	subl	%esi, %edi
	addl	%edi, %eax
	movl	%edi, -120(%rbp)
	movq	-144(%rbp), %rdi
	leaq	(%rbx,%r13), %rcx
	addl	%eax, %edx
	movl	%eax, -192(%rbp)
	movq	-208(%rbp), %rax
	movl	%edx, -196(%rbp)
	leaq	96(%rax), %rdx
	movq	-256(%rbp), %rax
	addl	$1, -220(%rbp)
	addq	%rax, %r12
	addq	%rax, %rdi
	addq	%rax, %r8
	addq	-160(%rbp), %rax
	movq	%rax, %r9
	leaq	56(%r11), %rax
	movq	-248(%rbp), %r11
	cmpq	%rax, %r14
	setnb	%r10b
	cmpq	%r15, %r11
	setbe	%al
	orl	%eax, %r10d
	cmpq	-240(%rbp), %rdx
	setnb	%sil
	cmpq	-232(%rbp), %r14
	setnb	%al
	orl	%esi, %eax
	andl	%r10d, %eax
	cmpl	$3, -224(%rbp)
	movq	-128(%rbp), %r10
	seta	%sil
	andl	%esi, %eax
	leaq	56(%r10), %rsi
	cmpq	%rsi, %r14
	setnb	%r10b
	cmpq	-72(%rbp), %r11
	setbe	%sil
	orl	%esi, %r10d
	movq	-328(%rbp), %rsi
	andl	%r10d, %eax
	addq	%r13, %rsi
	movq	%r11, %r13
	cmpq	%rsi, %r14
	setnb	%sil
	cmpq	%rcx, %r11
	movq	-320(%rbp), %r11
	setbe	%r10b
	orl	%esi, %r10d
	movq	-136(%rbp), %rsi
	andl	%r10d, %eax
	addq	%r11, %rsi
	cmpq	%rsi, %r14
	setnb	%sil
	cmpq	%r12, %r13
	setbe	%r10b
	orl	%esi, %r10d
	andl	%eax, %r10d
	movq	-144(%rbp), %rax
	addq	%r11, %rax
	cmpq	%rax, %r14
	setnb	%sil
	cmpq	%rdi, %r13
	setbe	%al
	orl	%esi, %eax
	movq	-152(%rbp), %rsi
	andl	%r10d, %eax
	addq	%r11, %rsi
	cmpq	%rsi, %r14
	setnb	%sil
	cmpq	%r8, %r13
	setbe	%r10b
	orl	%r10d, %esi
	testb	%sil, %al
	je	.L54
	addq	-160(%rbp), %r11
	cmpq	%r11, %r14
	setnb	%sil
	cmpq	%r9, %r13
	setbe	%al
	orb	%al, %sil
	je	.L54
	cmpl	$2, -312(%rbp)
	jbe	.L52
	movq	-168(%rbp), %rax
	movq	-256(%rbp), %rsi
	movq	%rcx, -96(%rbp)
	movq	-352(%rbp), %r13
	movq	-368(%rbp), %r11
	movq	%rbx, -272(%rbp)
	addq	%rax, %rsi
	movq	-376(%rbp), %r10
	movq	%rsi, -80(%rbp)
	movq	-344(%rbp), %rsi
	addq	%rax, %r13
	addq	%rax, %r11
	addq	%rax, %r10
	addq	%rax, %rsi
	movq	%rsi, -88(%rbp)
	movq	-360(%rbp), %rsi
	addq	%rax, %rsi
	xorl	%eax, %eax
	movq	%rsi, -264(%rbp)
	movq	-264(%rbp), %rbx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L24:
	vmovupd	32(%rdx,%rax,4), %ymm0
	vmovupd	64(%rdx,%rax,4), %ymm5
	addl	$1, %esi
	vmovupd	96(%rdx,%rax,4), %ymm4
	vmovupd	(%rdx,%rax,4), %ymm1
	movq	-88(%rbp), %rcx
	vmovupd	(%rdi,%rax), %ymm6
	vunpcklpd	%ymm0, %ymm1, %ymm3
	vunpcklpd	%ymm4, %ymm5, %ymm2
	vunpckhpd	%ymm0, %ymm1, %ymm1
	vunpckhpd	%ymm4, %ymm5, %ymm0
	vaddpd	(%r12,%rax), %ymm6, %ymm4
	vmovupd	0(%r13,%rax), %ymm5
	vpermpd	$216, %ymm1, %ymm1
	vaddpd	(%rcx,%rax), %ymm5, %ymm5
	vpermpd	$216, %ymm0, %ymm0
	vpermpd	$216, %ymm3, %ymm3
	movq	-80(%rbp), %rcx
	vpermpd	$216, %ymm2, %ymm2
	vaddpd	%ymm4, %ymm5, %ymm6
	vunpcklpd	%ymm0, %ymm1, %ymm4
	vunpckhpd	%ymm0, %ymm1, %ymm0
	vpermpd	$216, %ymm4, %ymm4
	vpermpd	$216, %ymm0, %ymm0
	vmulpd	%ymm4, %ymm6, %ymm5
	vunpcklpd	%ymm2, %ymm3, %ymm4
	vunpckhpd	%ymm2, %ymm3, %ymm2
	vmovupd	(%r10,%rax), %ymm3
	vpermpd	$216, %ymm4, %ymm4
	vpermpd	$216, %ymm2, %ymm2
	vmulpd	(%rcx,%rax), %ymm4, %ymm4
	movq	-96(%rbp), %rcx
	vaddpd	%ymm4, %ymm5, %ymm4
	vmovupd	(%r11,%rax), %ymm5
	vaddpd	(%rbx,%rax), %ymm5, %ymm6
	vmovupd	(%r8,%rax), %ymm5
	vaddpd	(%r15,%rax), %ymm5, %ymm5
	vaddpd	%ymm5, %ymm6, %ymm5
	vmulpd	%ymm2, %ymm5, %ymm2
	vaddpd	%ymm2, %ymm4, %ymm2
	vaddpd	(%rcx,%rax), %ymm3, %ymm4
	movq	-72(%rbp), %rcx
	vmovupd	(%r9,%rax), %ymm3
	vaddpd	(%rcx,%rax), %ymm3, %ymm3
	vaddpd	%ymm3, %ymm4, %ymm3
	vmulpd	%ymm0, %ymm3, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm0
	vmovupd	%ymm0, (%r14,%rax)
	addq	$32, %rax
	cmpl	%esi, -112(%rbp)
	ja	.L24
	movq	-272(%rbp), %rbx
	movl	-224(%rbp), %edx
	cmpl	%edx, -332(%rbp)
	je	.L27
	movl	-336(%rbp), %eax
.L23:
	movl	-176(%rbp), %ecx
	movl	-172(%rbp), %r10d
	leal	1(%rax), %edx
	leal	0(,%rax,4), %r9d
	movl	-188(%rbp), %r8d
	leal	(%rax,%rcx), %edi
	leal	(%rdx,%r10), %r15d
	movslq	%edi, %rdi
	leal	(%rax,%r8), %ecx
	movslq	%r15d, %r15
	movq	-104(%rbp), %r8
	vmovsd	(%rbx,%rdi,8), %xmm2
	leaq	(%rbx,%r15,8), %r12
	movslq	%ecx, %rcx
	leal	(%rax,%r10), %esi
	leal	-1(%rax,%r10), %edi
	movq	%r12, -80(%rbp)
	vaddsd	(%rbx,%rcx,8), %xmm2, %xmm2
	movslq	%esi, %rsi
	movslq	%edi, %r11
	movl	%r10d, %edi
	leal	-2(%rax,%r10), %r10d
	vmovsd	(%rbx,%r11,8), %xmm0
	vaddsd	(%r12), %xmm0, %xmm0
	movq	%r11, -72(%rbp)
	movslq	%r10d, %r10
	movl	-108(%rbp), %r12d
	movl	-120(%rbp), %r11d
	leal	1(%r9,%r12), %ecx
	vaddsd	%xmm0, %xmm2, %xmm2
	addl	%eax, %r11d
	movslq	%ecx, %rcx
	movslq	%r11d, %r11
	vmulsd	(%r8,%rcx,8), %xmm2, %xmm3
	leal	(%r12,%r9), %ecx
	movslq	%ecx, %rcx
	vmovsd	(%r8,%rcx,8), %xmm0
	leal	2(%rax), %ecx
	vmulsd	(%rbx,%rsi,8), %xmm0, %xmm0
	leal	(%rcx,%rdi), %r8d
	movslq	%r8d, %r13
	movl	-192(%rbp), %r8d
	addl	%eax, %r8d
	movslq	%r8d, %r8
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%rbx,%r11,8), %xmm0
	vmovsd	(%rbx,%r10,8), %xmm3
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movq	-104(%rbp), %r11
	leal	2(%r9,%r12), %r8d
	vaddsd	(%rbx,%r13,8), %xmm3, %xmm3
	movslq	%r8d, %r8
	movl	-116(%rbp), %r12d
	addl	%eax, %r12d
	vaddsd	%xmm0, %xmm3, %xmm0
	vmulsd	(%r11,%r8,8), %xmm0, %xmm0
	leal	-3(%rax,%rdi), %r11d
	movslq	%r12d, %r12
	movslq	%r11d, %r11
	leal	3(%rax,%rdi), %r8d
	movslq	%r8d, %r8
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%r11,8), %xmm2
	vmovsd	(%rbx,%r12,8), %xmm0
	movl	-196(%rbp), %r11d
	movl	-108(%rbp), %r12d
	vaddsd	(%rbx,%r8,8), %xmm2, %xmm2
	addl	%eax, %r11d
	leal	3(%r9,%r12), %r9d
	movslq	%r11d, %r11
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r11,8), %xmm0, %xmm0
	movq	-104(%rbp), %r11
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%r11,%r9,8), %xmm0, %xmm0
	movq	-184(%rbp), %r9
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r9,%rsi,8)
	cmpl	-280(%rbp), %edx
	jge	.L27
	movl	-176(%rbp), %r11d
	leaq	(%rbx,%r13,8), %rdi
	vmovsd	(%rbx,%rsi,8), %xmm0
	leal	0(,%rdx,4), %r9d
	vaddsd	(%rdi), %xmm0, %xmm0
	movq	%rdi, -88(%rbp)
	leal	(%rdx,%r11), %r12d
	movl	-188(%rbp), %r11d
	movq	-104(%rbp), %rdi
	movslq	%r12d, %r12
	addl	%edx, %r11d
	vmovsd	(%rbx,%r12,8), %xmm2
	movl	-108(%rbp), %r12d
	movslq	%r11d, %r11
	vaddsd	(%rbx,%r11,8), %xmm2, %xmm2
	leal	1(%r9,%r12), %r11d
	movslq	%r11d, %r11
	vaddsd	%xmm0, %xmm2, %xmm2
	vmulsd	(%rdi,%r11,8), %xmm2, %xmm3
	leal	(%r12,%r9), %r11d
	movq	-80(%rbp), %r12
	movslq	%r11d, %r11
	vmovsd	(%rdi,%r11,8), %xmm0
	vmulsd	(%r12), %xmm0, %xmm0
	movq	-72(%rbp), %r11
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%rbx,%r11,8), %xmm3
	movl	-120(%rbp), %r11d
	vaddsd	(%rbx,%r8,8), %xmm3, %xmm3
	leal	(%rdx,%r11), %r12d
	movl	-192(%rbp), %r11d
	movslq	%r12d, %r12
	addl	%edx, %r11d
	vmovsd	(%rbx,%r12,8), %xmm0
	movl	-108(%rbp), %r12d
	movslq	%r11d, %r11
	vaddsd	(%rbx,%r11,8), %xmm0, %xmm0
	leal	2(%r9,%r12), %r11d
	movslq	%r11d, %r11
	vaddsd	%xmm0, %xmm3, %xmm0
	vmulsd	(%rdi,%r11,8), %xmm0, %xmm0
	movl	-172(%rbp), %edi
	leal	4(%rax,%rdi), %r11d
	movslq	%r11d, %r11
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%r10,8), %xmm2
	movl	-116(%rbp), %r10d
	vaddsd	(%rbx,%r11,8), %xmm2, %xmm2
	addl	%edx, %r10d
	addl	-196(%rbp), %edx
	movslq	%r10d, %r10
	movslq	%edx, %rdx
	vmovsd	(%rbx,%r10,8), %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	leal	3(%r9,%r12), %edx
	movq	-104(%rbp), %r10
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%r10,%rdx,8), %xmm0, %xmm0
	movq	-184(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r15,8)
	cmpl	-280(%rbp), %ecx
	jge	.L27
	vmovsd	(%rbx,%r8,8), %xmm1
	movl	-188(%rbp), %r9d
	leal	5(%rax,%rdi), %eax
	leal	0(,%rcx,4), %edx
	movl	-176(%rbp), %r8d
	vaddsd	(%rbx,%r15,8), %xmm1, %xmm1
	movl	%r12d, %r15d
	cltq
	addl	%ecx, %r9d
	addl	%ecx, %r8d
	movslq	%r9d, %r9
	movslq	%r8d, %r8
	vmovsd	(%rbx,%r9,8), %xmm0
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	leal	1(%rdx,%r12), %r8d
	movslq	%r8d, %r8
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	(%r10,%r8,8), %xmm1, %xmm3
	leal	(%r12,%rdx), %r8d
	movq	-88(%rbp), %r12
	movslq	%r8d, %r8
	vmovsd	(%r10,%r8,8), %xmm0
	vmulsd	(%r12), %xmm0, %xmm0
	movl	-192(%rbp), %r8d
	addl	%ecx, %r8d
	movslq	%r8d, %r8
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%rbx,%r11,8), %xmm3
	movl	-120(%rbp), %r11d
	vaddsd	(%rbx,%rsi,8), %xmm3, %xmm3
	vmovsd	(%rbx,%r8,8), %xmm0
	leal	(%rcx,%r11), %esi
	movslq	%esi, %rsi
	vaddsd	(%rbx,%rsi,8), %xmm0, %xmm0
	leal	2(%rdx,%r15), %esi
	movslq	%esi, %rsi
	vaddsd	%xmm0, %xmm3, %xmm0
	vmulsd	(%r10,%rsi,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rax,8), %xmm2
	movq	-72(%rbp), %rax
	vaddsd	(%rbx,%rax,8), %xmm2, %xmm2
	movl	-196(%rbp), %eax
	addl	%ecx, %eax
	addl	-116(%rbp), %ecx
	cltq
	movslq	%ecx, %rcx
	vmovsd	(%rbx,%rax,8), %xmm0
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	leal	3(%rdx,%r15), %eax
	cltq
	movq	-184(%rbp), %rdx
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%r10,%rax,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r13,8)
.L27:
	movq	-288(%rbp), %rax
	addq	%rax, -240(%rbp)
	addq	%rax, -248(%rbp)
	movq	-296(%rbp), %rsi
	addq	%rax, %r14
	addq	%rax, -216(%rbp)
	movl	-200(%rbp), %edi
	addq	%rax, -128(%rbp)
	movl	-220(%rbp), %ecx
	addq	%rax, -168(%rbp)
	addq	%rax, -136(%rbp)
	addq	%rax, -144(%rbp)
	addq	%rax, -152(%rbp)
	addq	%rax, -160(%rbp)
	movl	-120(%rbp), %eax
	addq	%rsi, -232(%rbp)
	addq	%rsi, -208(%rbp)
	addl	%edi, -108(%rbp)
	movl	%eax, -116(%rbp)
	cmpl	%ecx, -276(%rbp)
	jg	.L28
.L81:
	vzeroupper
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L82
	movq	%rbx, %rdi
	call	dummy
	movq	-184(%rbp), %rdi
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
	movq	-184(%rbp), %rdx
	movq	-168(%rbp), %rdi
	xorl	%eax, %eax
	movq	-384(%rbp), %r11
	movq	-208(%rbp), %r10
	leaq	(%rdx,%rdi), %r9
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rdi
	movq	-216(%rbp), %r12
	movq	-128(%rbp), %r13
	leaq	(%rbx,%rdx), %r8
	movq	-152(%rbp), %rdx
	addq	%rbx, %rdi
	leaq	(%rbx,%rdx), %rsi
	movq	-160(%rbp), %rdx
	addq	%rbx, %rdx
	.p2align 4,,10
	.p2align 3
.L26:
	vmovsd	24(%r8,%rax), %xmm2
	vmovsd	32(%rcx), %xmm0
	addq	$8, %rcx
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	24(%rdi,%rax), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm2
	vmulsd	104(%r10,%rax,4), %xmm2, %xmm1
	vmovsd	16(%rcx), %xmm2
	vmulsd	96(%r10,%rax,4), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rsi,%rax), %xmm1
	vmovsd	32(%rcx), %xmm0
	vaddsd	24(%r12,%rax), %xmm1, %xmm1
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	112(%r10,%rax,4), %xmm1, %xmm1
	vmovsd	40(%rcx), %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	24(%rdx,%rax), %xmm2
	vaddsd	24(%r13,%rax), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	120(%r10,%rax,4), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 24(%r9,%rax)
	addq	$8, %rax
	cmpq	%r11, %rax
	jne	.L26
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
	movq	%rdx, -184(%rbp)
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r13d, %r13d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r15d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r15d
	jb	.L34
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	movq	-184(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L46
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L47
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	movq	-184(%rbp), %rcx
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
	jmp	.L34
.L88:
	movq	%rbx, %rdi
	movq	%r10, -72(%rbp)
	vzeroupper
	call	dummy
	movq	-184(%rbp), %rdi
	call	dummy
	movq	-104(%rbp), %rdi
	call	dummy
	cmpl	$3, -276(%rbp)
	movq	-72(%rbp), %r10
	jg	.L21
	jmp	.L22
.L44:
	movl	$1, %edi
	jmp	.L5
.L87:
	movq	$0, -184(%rbp)
	xorl	%edx, %edx
	jmp	.L9
.L46:
	movl	$1, %eax
	jmp	.L9
.L90:
	vzeroupper
	jmp	.L38
.L50:
	movl	$1, %edi
	jmp	.L16
.L85:
	vzeroupper
	jmp	.L8
.L3:
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movq	%r10, -72(%rbp)
	call	posix_memalign
	movq	-72(%rbp), %r10
	movq	$0, -184(%rbp)
	testl	%eax, %eax
	jne	.L38
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	.L38
.L45:
	movl	$2, %edi
	jmp	.L5
.L47:
	movl	$2, %eax
	jmp	.L9
.L51:
	movl	$2, %edi
	jmp	.L16
.L89:
	vzeroupper
	jmp	.L82
.L42:
	xorl	%eax, %eax
	jmp	.L4
.L48:
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
