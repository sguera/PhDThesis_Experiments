	.file	"2d-2r-isotropic-constant-star-stencil.c_compilable.c"
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
	movl	%ebx, %r13d
	call	strtol
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r13d
	movq	%rax, %r12
	movslq	%r13d, %r15
	leaq	0(,%r15,8), %r8
	movq	%r8, %rdx
	movq	%r8, -152(%rbp)
	call	posix_memalign
	movq	-152(%rbp), %r8
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
	movq	$0, -160(%rbp)
	xorl	%eax, %eax
.L31:
	movq	-160(%rbp), %rcx
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
	movq	%rax, -144(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -80(%rbp)
	leal	-2(%r12), %eax
	movl	%eax, -288(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$2, -288(%rbp)
	jle	.L81
.L14:
	leal	-2(%rbx), %eax
	movl	%eax, -416(%rbp)
	cmpl	$2, %eax
	jle	.L73
	movq	-160(%rbp), %rdi
	leal	(%rbx,%rbx), %ecx
	movslq	%ebx, %r9
	movl	%ebx, -312(%rbp)
	movslq	%ecx, %r14
	movl	%ecx, -268(%rbp)
	leaq	16(,%r14,8), %rax
	movl	%ebx, -200(%rbp)
	movq	%r14, %r13
	leaq	-16(%rax), %rsi
	movq	%r9, -320(%rbp)
	leaq	(%rdi,%rax), %r10
	movq	%rsi, -152(%rbp)
	leaq	32(%rdi,%rax), %rax
	movq	%r9, -168(%rbp)
	movq	%rax, -232(%rbp)
	leal	-4(%rbx), %eax
	leaq	(%rdi,%rsi), %rdx
	movl	%eax, -224(%rbp)
	leaq	2(%r14,%rax), %rax
	movq	%rdx, -264(%rbp)
	leaq	(%rdi,%rax,8), %rax
	movq	$0, -208(%rbp)
	leal	(%rcx,%rbx), %edx
	movq	%rax, -240(%rbp)
	leaq	16(%r15), %rcx
	movslq	%edx, %rdi
	movl	%edx, -212(%rbp)
	leal	0(,%rbx,4), %eax
	movq	%rcx, -392(%rbp)
	movl	%eax, -216(%rbp)
	leaq	0(,%r9,8), %r8
	movslq	%eax, %r11
	leaq	48(%r15), %rcx
	movq	%r8, -328(%rbp)
	leaq	0(,%rdi,8), %rax
	movq	%rcx, -400(%rbp)
	movq	%rax, -248(%rbp)
	leaq	(%r8,%r15), %rdx
	leaq	0(,%r11,8), %rax
	movq	%rdi, -176(%rbp)
	leaq	64(%r15), %rcx
	movq	%rax, -256(%rbp)
	leaq	-112(%rbp), %rsi
	movq	%rcx, -408(%rbp)
	leal	-5(%rbx), %eax
	movq	%r11, -192(%rbp)
	leaq	-144(%rbp), %rbx
	movl	%eax, -412(%rbp)
	addq	%r14, %rax
	movq	%r10, %r14
	leaq	48(%rdx), %rcx
	addq	$16, %rdx
	movq	%rbx, -368(%rbp)
	addq	$8, %rbx
	movq	%rdx, -360(%rbp)
	leaq	8(%rsi), %rdx
	movl	$3, -276(%rbp)
	leaq	8(%r15,%rax,8), %rax
	movl	$2, -272(%rbp)
	movl	$4, -308(%rbp)
	movq	$0, -184(%rbp)
	movl	$2, -220(%rbp)
	movq	%rsi, -384(%rbp)
	movq	%rcx, -376(%rbp)
	movq	%rdx, -336(%rbp)
	movq	%rbx, -344(%rbp)
	leaq	-80(%rbp), %rbx
	addq	$8, %rbx
	movq	%rax, -424(%rbp)
	movq	%rbx, -352(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-240(%rbp), %rbx
	movq	-384(%rbp), %rax
	addl	$1, -220(%rbp)
	cmpq	-336(%rbp), %r14
	movq	-152(%rbp), %r9
	movq	-232(%rbp), %r10
	movq	-208(%rbp), %r11
	setnb	%dil
	cmpq	%rax, %rbx
	movq	-248(%rbp), %r8
	leaq	(%r15,%r9), %rdx
	setbe	%al
	orl	%eax, %edi
	cmpq	-344(%rbp), %r14
	setnb	%sil
	cmpq	-368(%rbp), %rbx
	setbe	%cl
	orl	%esi, %ecx
	leaq	-80(%rbp), %rsi
	andl	%edi, %ecx
	cmpl	$5, -224(%rbp)
	movq	-400(%rbp), %rdi
	seta	%al
	andl	%eax, %ecx
	cmpq	-352(%rbp), %r14
	setnb	%al
	cmpq	%rsi, %rbx
	movq	-392(%rbp), %rbx
	setbe	%sil
	orl	%esi, %eax
	andl	%ecx, %eax
	movq	-408(%rbp), %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	cmpq	%rdx, %r10
	setbe	%sil
	orl	%esi, %ecx
	movq	-360(%rbp), %rsi
	andl	%ecx, %eax
	movq	-376(%rbp), %rcx
	addq	%r11, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r11, %rsi
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %ecx
	movq	%rbx, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %ecx
	movq	%rbx, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r11, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r11, %rsi
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L28
	movq	%rdi, %rax
	movq	-256(%rbp), %rdi
	addq	%rdi, %rax
	cmpq	%rax, %r14
	setnb	%cl
	addq	%rdi, %rbx
	cmpq	%rbx, %r10
	setbe	%al
	orb	%al, %cl
	je	.L28
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-412(%rbp), %eax
	ja	.L45
	movl	$2, -196(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	-268(%rbp), %r12d
	movl	$3, -196(%rbp)
	leal	4(%r12), %esi
	leal	1(%r12), %ecx
	movslq	%esi, %rbx
	movl	-200(%rbp), %esi
	leal	2(%r12), %eax
	movslq	%ecx, %rcx
	leaq	(%r15,%rcx,8), %r10
	cltq
	leal	3(%r12), %ecx
	leal	2(%rsi), %r11d
	movl	-212(%rbp), %esi
	movslq	%ecx, %rcx
	leaq	(%r15,%rcx,8), %r9
	movslq	%r11d, %r11
	vmovsd	(%r15,%r11,8), %xmm1
	leaq	(%r15,%rax,8), %rdi
	vmovsd	(%r9), %xmm0
	leaq	(%r15,%rbx,8), %r8
	addl	$2, %esi
	vaddsd	(%r10), %xmm0, %xmm0
	movslq	%esi, %rsi
	movl	-216(%rbp), %r11d
	vaddsd	(%r15,%rsi,8), %xmm1, %xmm1
	movslq	-272(%rbp), %rsi
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm2
	addl	$2, %r11d
	vmovsd	(%rdi), %xmm1
	movslq	%r11d, %r11
	vmulsd	-144(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%r11,8), %xmm2
	movq	-152(%rbp), %r11
	vaddsd	(%r15,%rsi,8), %xmm2, %xmm2
	vmovsd	(%r15,%r11), %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	movq	-160(%rbp), %r11
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%rax,8)
	cmpl	$1, %edx
	je	.L17
	leal	5(%r12), %eax
	vmovsd	(%rdi), %xmm0
	movl	$4, -196(%rbp)
	cltq
	vaddsd	(%r8), %xmm0, %xmm0
	leaq	(%r15,%rax,8), %rsi
	movl	-200(%rbp), %eax
	leal	3(%rax), %r11d
	movl	-212(%rbp), %eax
	movslq	%r11d, %r11
	vmovsd	(%r15,%r11,8), %xmm1
	movl	-216(%rbp), %r11d
	addl	$3, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm1, %xmm1
	movslq	-276(%rbp), %rax
	addl	$3, %r11d
	movslq	%r11d, %r11
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm2
	vmovsd	(%r9), %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r10), %xmm0
	vmovsd	(%r15,%r11,8), %xmm2
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm2, %xmm2
	movq	-160(%rbp), %r10
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%rcx,8)
	cmpl	$3, %edx
	jne	.L17
	movl	-200(%rbp), %eax
	movl	$5, -196(%rbp)
	vmovsd	(%r9), %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	movl	-216(%rbp), %r11d
	leal	4(%rax), %ecx
	movl	-212(%rbp), %eax
	movslq	%ecx, %rcx
	vmovsd	-144(%rbp), %xmm1
	vmovsd	(%r15,%rcx,8), %xmm3
	leal	4(%r11), %ecx
	addl	$4, %eax
	movslq	%ecx, %rcx
	cltq
	vaddsd	(%r15,%rax,8), %xmm3, %xmm3
	movslq	-308(%rbp), %rax
	vaddsd	%xmm0, %xmm3, %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm2
	vmulsd	(%r8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%rcx,8), %xmm2
	vaddsd	(%r15,%rax,8), %xmm2, %xmm2
	leal	6(%r12), %eax
	cltq
	vmovsd	(%r15,%rax,8), %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%rbx,8)
.L17:
	movl	-224(%rbp), %esi
	movl	%edx, %eax
	movq	%r15, -304(%rbp)
	movq	-184(%rbp), %rdi
	leaq	2(%rax,%r13), %rcx
	salq	$3, %rcx
	vbroadcastsd	-112(%rbp), %ymm5
	leaq	(%r15,%rcx), %rbx
	addq	-160(%rbp), %rcx
	subl	%edx, %esi
	vbroadcastsd	-80(%rbp), %ymm4
	leaq	1(%rax,%r13), %rdx
	movl	%esi, -280(%rbp)
	shrl	$2, %esi
	vbroadcastsd	-144(%rbp), %ymm6
	leaq	(%r15,%rdx,8), %r11
	movl	%esi, -284(%rbp)
	leaq	3(%rax,%r13), %rdx
	leaq	(%r15,%rdx,8), %r10
	movq	-168(%rbp), %rdx
	leaq	2(%rax,%rdx), %rdx
	leaq	(%r15,%rdx,8), %r9
	movq	-176(%rbp), %rdx
	leaq	2(%rax,%rdx), %rdx
	leaq	(%r15,%rdx,8), %r8
	movq	-152(%rbp), %rdx
	leaq	(%rdx,%rax,8), %r12
	leaq	4(%rax,%r13), %rdx
	addq	%r15, %r12
	leaq	(%r15,%rdx,8), %rdx
	movq	%rdx, -296(%rbp)
	leaq	2(%rax,%rdi), %rdx
	leaq	(%r15,%rdx,8), %rdi
	movq	-192(%rbp), %rdx
	leaq	2(%rax,%rdx), %rax
	xorl	%edx, %edx
	leaq	(%r15,%rax,8), %rsi
	movq	-296(%rbp), %r15
	xorl	%eax, %eax
	movq	%r13, -296(%rbp)
	movl	-284(%rbp), %r13d
	.p2align 4,,10
	.p2align 3
.L19:
	vmovupd	(%r10,%rax), %xmm3
	vinsertf128	$0x1, 16(%r10,%rax), %ymm3, %ymm0
	addl	$1, %edx
	vmovupd	(%r11,%rax), %xmm1
	vinsertf128	$0x1, 16(%r11,%rax), %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm3
	vmovupd	(%r9,%rax), %xmm1
	vinsertf128	$0x1, 16(%r9,%rax), %ymm1, %ymm1
	vmovupd	(%r8,%rax), %xmm0
	vinsertf128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vaddpd	%ymm0, %ymm3, %ymm1
	vmovupd	(%rbx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm0, %ymm0
	vmulpd	%ymm6, %ymm0, %ymm0
	vmulpd	%ymm5, %ymm1, %ymm2
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovapd	(%r12,%rax), %ymm0
	vaddpd	(%r15,%rax), %ymm0, %ymm2
	vmovupd	(%rdi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm0, %ymm3
	vmovupd	(%rsi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm3, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm0
	vmulpd	%ymm4, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %r13d
	ja	.L19
	movl	-280(%rbp), %ebx
	movl	-196(%rbp), %edx
	movq	-304(%rbp), %r15
	movq	-296(%rbp), %r13
	movl	%ebx, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %ebx
	je	.L23
.L16:
	movq	-168(%rbp), %r8
	movslq	%edx, %rdx
	movq	-176(%rbp), %rdi
	leaq	(%rdx,%r13), %rax
	movq	-184(%rbp), %rsi
	leaq	(%r15,%rax,8), %rax
	movq	-192(%rbp), %rcx
	movl	-416(%rbp), %r9d
	subq	%r13, %r8
	movq	-264(%rbp), %r10
	subq	%r13, %rdi
	subq	%r13, %rsi
	subq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rax,%r8,8), %xmm1
	vmovsd	-8(%rax), %xmm0
	vaddsd	(%rax,%rdi,8), %xmm1, %xmm1
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	(%rax), %xmm1
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vmulsd	-144(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	(%rax,%rsi,8), %xmm2
	vmovsd	-16(%rax), %xmm0
	vaddsd	(%rax,%rcx,8), %xmm2, %xmm2
	addq	$8, %rax
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %r9d
	jg	.L21
.L23:
	movq	-328(%rbp), %rax
	movq	-320(%rbp), %rdi
	movl	-312(%rbp), %ebx
	addq	%rax, -264(%rbp)
	addl	%ebx, -268(%rbp)
	addq	%rax, %r14
	addl	%ebx, -200(%rbp)
	addq	%rdi, %r13
	addl	%ebx, -212(%rbp)
	addl	%ebx, -308(%rbp)
	addl	%ebx, -216(%rbp)
	addl	%ebx, -272(%rbp)
	addq	%rax, -232(%rbp)
	addq	%rax, -240(%rbp)
	addq	%rdi, -168(%rbp)
	addq	%rdi, -176(%rbp)
	addq	%rdi, -184(%rbp)
	addq	%rdi, -192(%rbp)
	addq	%rax, -152(%rbp)
	addl	%ebx, -276(%rbp)
	addq	%rax, -208(%rbp)
	addq	%rax, -248(%rbp)
	addq	%rax, -256(%rbp)
	movl	-220(%rbp), %ebx
	cmpl	%ebx, -288(%rbp)
	jg	.L24
.L73:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L74
	movq	%r15, %rdi
	call	dummy
	movq	-160(%rbp), %rdi
	call	dummy
	leaq	-144(%rbp), %rdi
	call	dummy
	leaq	-112(%rbp), %rdi
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
	movq	-176(%rbp), %r8
	movq	-168(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	-184(%rbp), %rcx
	movq	-160(%rbp), %rax
	subq	%r13, %r8
	movq	-424(%rbp), %r9
	subq	%r13, %rdi
	addq	-152(%rbp), %rax
	subq	%r13, %rsi
	addq	-208(%rbp), %r9
	subq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	16(%rdx,%r8,8), %xmm1
	addq	$8, %rax
	vaddsd	16(%rdx,%rdi,8), %xmm1, %xmm1
	vmovsd	24(%rdx), %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm2
	vmovsd	-144(%rbp), %xmm1
	vmulsd	16(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rdx,%rsi,8), %xmm2
	vmovsd	32(%rdx), %xmm0
	vaddsd	16(%rdx,%rcx,8), %xmm2, %xmm2
	addq	$8, %rdx
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
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
	movq	%rdx, -160(%rbp)
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
	movq	-160(%rbp), %rax
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
	movq	-160(%rbp), %rcx
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
	movq	-160(%rbp), %rdi
	call	dummy
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$2, -288(%rbp)
	jg	.L14
	jmp	.L15
.L41:
	movl	$1, %edi
	jmp	.L5
.L79:
	movq	$0, -160(%rbp)
	xorl	%edx, %edx
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
	movq	$0, -160(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -160(%rbp)
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
	.align 8
.LC5:
	.long	765859228
	.long	1071838070
	.align 8
.LC6:
	.long	2226626236
	.long	1072102945
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
