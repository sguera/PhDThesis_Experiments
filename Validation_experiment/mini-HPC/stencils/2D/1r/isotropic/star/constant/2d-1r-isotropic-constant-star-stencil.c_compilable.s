	.file	"2d-1r-isotropic-constant-star-stencil.c_compilable.c"
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
	subq	$256, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	movl	%r12d, %r14d
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %r13
	movslq	%r14d, %rcx
	leaq	0(,%rcx,8), %r15
	movq	%r15, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %rbx
	testl	%r14d, %r14d
	jle	.L3
	movq	%rbx, %rax
	movl	$5, %esi
	leal	-1(%r14), %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %ecx
	jb	.L37
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rbx)
	cmpl	$1, %eax
	je	.L39
	vmovsd	%xmm0, 8(%rbx)
	cmpl	$3, %eax
	jne	.L40
	vmovsd	%xmm0, 16(%rbx)
	movl	$3, %r8d
.L5:
	movl	%r14d, %edi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%rbx,%rax,8), %rdx
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
	je	.L75
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
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	movl	%ecx, -120(%rbp)
	call	posix_memalign
	movl	-120(%rbp), %ecx
	testl	%eax, %eax
	je	.L76
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %edi
	cmovg	%ecx, %eax
	cmovg	%r14d, %edi
	cmpl	$4, %eax
	ja	.L77
	xorl	%r15d, %r15d
	xorl	%eax, %eax
.L29:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r15,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L33
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
.L33:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -112(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -80(%rbp)
	leal	-1(%r13), %eax
	movl	%eax, -220(%rbp)
	testl	%edx, %edx
	jne	.L78
	cmpl	$1, -220(%rbp)
	jle	.L79
.L14:
	leal	-1(%r12), %eax
	movl	%eax, -140(%rbp)
	cmpl	$1, %eax
	jle	.L71
	movslq	%r12d, %rdi
	leaq	8(%rbx), %rsi
	movl	%r12d, -224(%rbp)
	xorl	%ecx, %ecx
	leaq	0(,%rdi,8), %r14
	movq	%rsi, -192(%rbp)
	leaq	40(%rbx), %rsi
	leaq	8(%r15,%r14), %rax
	leaq	(%rbx,%r14), %r8
	movq	%r15, -120(%rbp)
	movq	%rax, -168(%rbp)
	leaq	40(%r15,%r14), %rax
	movq	%rax, -176(%rbp)
	leal	-2(%r12), %eax
	movl	%eax, -196(%rbp)
	leaq	1(%rdi,%rax), %rax
	leaq	(%r15,%rax,8), %rax
	movq	%rsi, -256(%rbp)
	leaq	48(%rbx), %rsi
	movq	%r14, %r15
	movq	%rax, -184(%rbp)
	leal	(%r12,%r12), %eax
	movq	%rdi, -232(%rbp)
	movl	%eax, -124(%rbp)
	cltq
	movq	%rdi, -208(%rbp)
	leaq	-112(%rbp), %rdi
	movq	%rsi, -264(%rbp)
	leaq	-80(%rbp), %rsi
	movq	%rax, -288(%rbp)
	addq	$8, %rsi
	salq	$3, %rax
	movq	%rdi, -272(%rbp)
	addq	$8, %rdi
	movq	%rax, -160(%rbp)
	leal	-3(%r12), %eax
	movq	$0, -152(%rbp)
	movq	$0, -216(%rbp)
	movl	$1, -144(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdi, -248(%rbp)
	movl	%eax, -276(%rbp)
	leaq	8(,%rax,8), %rax
	movq	%rax, -296(%rbp)
	movl	%r12d, %eax
	movq	%r14, -136(%rbp)
	movl	%ecx, %r14d
	.p2align 4,,10
	.p2align 3
.L23:
	movq	-168(%rbp), %rdi
	movq	-240(%rbp), %rsi
	leaq	-80(%rbp), %rcx
	movq	-184(%rbp), %r10
	addl	$1, -144(%rbp)
	cmpq	%rsi, %rdi
	movq	-176(%rbp), %r9
	movq	-152(%rbp), %r13
	setnb	%sil
	cmpq	%rcx, %r10
	movq	-192(%rbp), %r11
	setbe	%dl
	orl	%edx, %esi
	cmpq	-248(%rbp), %rdi
	setnb	%cl
	cmpq	-272(%rbp), %r10
	movq	-256(%rbp), %r10
	setbe	%dl
	orl	%ecx, %edx
	andl	%esi, %edx
	cmpl	$5, -196(%rbp)
	seta	%cl
	andl	%ecx, %edx
	movq	-264(%rbp), %rcx
	addq	-136(%rbp), %rcx
	cmpq	%rcx, %rdi
	setnb	%cl
	cmpq	%r9, %r8
	setnb	%sil
	orl	%esi, %ecx
	movq	%r11, %rsi
	andl	%ecx, %edx
	movq	%r10, %rcx
	addq	%r13, %rcx
	cmpq	%rcx, %rdi
	setnb	%cl
	addq	%r13, %rsi
	cmpq	%rsi, %r9
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L48
	movq	-160(%rbp), %rsi
	movq	%r10, %rdx
	addq	%rsi, %rdx
	cmpq	%rdx, %rdi
	movq	%r11, %rdx
	setnb	%cl
	addq	%rsi, %rdx
	cmpq	%rdx, %r9
	setbe	%dl
	orb	%dl, %cl
	je	.L48
	movq	-136(%rbp), %rcx
	addq	%r11, %rcx
	shrq	$3, %rcx
	negq	%rcx
	andl	$3, %ecx
	leal	3(%rcx), %edx
	cmpl	-276(%rbp), %edx
	ja	.L43
	movl	$1, -128(%rbp)
	testl	%ecx, %ecx
	je	.L17
	movl	-124(%rbp), %r13d
	leal	2(%rax), %edx
	leal	1(%r14), %r11d
	vmovsd	(%r8), %xmm0
	movslq	%edx, %rdx
	movslq	%r11d, %r11
	leal	1(%rax), %edi
	movl	$2, -128(%rbp)
	leal	1(%r13), %r9d
	leaq	(%rbx,%rdx,8), %rsi
	vmovsd	(%rbx,%r11,8), %xmm1
	movslq	%edi, %rdi
	movslq	%r9d, %r9
	vaddsd	(%rsi), %xmm0, %xmm0
	leaq	(%rbx,%rdi,8), %r10
	movq	-120(%rbp), %r11
	vaddsd	(%rbx,%r9,8), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovsd	(%r10), %xmm0
	vmulsd	-80(%rbp), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%rdi,8)
	cmpl	$1, %ecx
	je	.L17
	leal	3(%rax), %r9d
	leal	2(%r14), %r12d
	vmovsd	(%r10), %xmm0
	movq	-120(%rbp), %r10
	movslq	%r9d, %r9
	leal	2(%r13), %edi
	movslq	%r12d, %r12
	movl	$3, -128(%rbp)
	leaq	(%rbx,%r9,8), %r11
	movslq	%edi, %rdi
	vmovsd	(%rbx,%r12,8), %xmm2
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%rbx,%rdi,8), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%rsi), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%rdx,8)
	cmpl	$3, %ecx
	jne	.L17
	leal	3(%r14), %edi
	leal	3(%r13), %edx
	movl	$4, -128(%rbp)
	movslq	%edx, %rdx
	movslq	%edi, %rdi
	vmovsd	(%rbx,%rdi,8), %xmm2
	vaddsd	(%rbx,%rdx,8), %xmm2, %xmm2
	leal	4(%rax), %edx
	movslq	%edx, %rdx
	vmovsd	(%rbx,%rdx,8), %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r11), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%r9,8)
.L17:
	movl	-196(%rbp), %edi
	movl	%ecx, %edx
	movq	-216(%rbp), %r10
	movq	-136(%rbp), %r11
	vbroadcastsd	-112(%rbp), %ymm3
	subl	%ecx, %edi
	movq	-208(%rbp), %rcx
	vbroadcastsd	-80(%rbp), %ymm2
	leaq	(%r11,%rdx,8), %r9
	movl	%edi, -200(%rbp)
	shrl	$2, %edi
	leaq	1(%rdx,%rcx), %rsi
	leaq	2(%rdx,%rcx), %rcx
	addq	%rbx, %r9
	leaq	(%rbx,%rcx,8), %r12
	leaq	1(%rdx,%r10), %rcx
	salq	$3, %rsi
	leaq	(%rbx,%rcx,8), %r11
	movq	-288(%rbp), %rcx
	leaq	(%rbx,%rsi), %r13
	addq	-120(%rbp), %rsi
	leaq	1(%r10,%rcx), %rcx
	addq	%rcx, %rdx
	xorl	%ecx, %ecx
	leaq	(%rbx,%rdx,8), %r10
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L19:
	vmovupd	(%r12,%rdx), %ymm1
	vmovupd	(%r10,%rdx), %ymm0
	addl	$1, %ecx
	vaddpd	(%r9,%rdx), %ymm1, %ymm1
	vaddpd	(%r11,%rdx), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm1
	vmulpd	0(%r13,%rdx), %ymm3, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, (%rsi,%rdx)
	addq	$32, %rdx
	cmpl	%ecx, %edi
	ja	.L19
	movl	-200(%rbp), %esi
	movl	-128(%rbp), %edi
	movl	%esi, %edx
	andl	$-4, %edx
	addl	%edx, %edi
	cmpl	%edx, %esi
	je	.L22
.L16:
	movl	-124(%rbp), %ecx
	leal	1(%rdi), %edx
	leal	(%r14,%rdi), %r10d
	movq	-120(%rbp), %r11
	leal	(%rdx,%rax), %r9d
	movslq	%r10d, %r10
	leal	(%rax,%rdi), %esi
	addl	%edi, %ecx
	vmovsd	(%rbx,%r10,8), %xmm2
	movslq	%r9d, %r9
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	leaq	(%rbx,%r9,8), %r12
	vaddsd	(%rbx,%rcx,8), %xmm2, %xmm2
	leal	-1(%rdi,%rax), %ecx
	movslq	%ecx, %rcx
	vmovsd	(%rbx,%rcx,8), %xmm0
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%rbx,%rsi,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%rsi,8)
	cmpl	%edx, -140(%rbp)
	jle	.L22
	leal	2(%rdi), %ecx
	leal	(%rdx,%r14), %r11d
	addl	-124(%rbp), %edx
	vmovsd	(%rbx,%rsi,8), %xmm0
	leal	(%rax,%rcx), %r10d
	movslq	%r11d, %r11
	movslq	%edx, %rdx
	movslq	%r10d, %r10
	vmovsd	(%rbx,%r11,8), %xmm2
	vaddsd	(%rbx,%rdx,8), %xmm2, %xmm2
	leaq	(%rbx,%r10,8), %r13
	movq	-120(%rbp), %r11
	vaddsd	0(%r13), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r12), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%r9,8)
	cmpl	%ecx, -140(%rbp)
	jle	.L22
	leal	3(%rdi), %edx
	leal	(%r14,%rcx), %r11d
	addl	-124(%rbp), %ecx
	vmovsd	(%rbx,%r9,8), %xmm0
	leal	(%rax,%rdx), %esi
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	movslq	%esi, %rsi
	vmovsd	(%rbx,%r11,8), %xmm2
	vaddsd	(%rbx,%rcx,8), %xmm2, %xmm2
	leaq	(%rbx,%rsi,8), %r12
	movq	-120(%rbp), %r11
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	0(%r13), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%r10,8)
	cmpl	%edx, -140(%rbp)
	jle	.L22
	leal	4(%rdi), %ecx
	leal	(%r14,%rdx), %r11d
	addl	-124(%rbp), %edx
	vmovsd	(%rbx,%r10,8), %xmm0
	leal	(%rax,%rcx), %r9d
	movslq	%r11d, %r11
	movslq	%edx, %rdx
	movslq	%r9d, %r9
	vmovsd	(%rbx,%r11,8), %xmm2
	vaddsd	(%rbx,%rdx,8), %xmm2, %xmm2
	leaq	(%rbx,%r9,8), %r13
	movq	-120(%rbp), %r11
	vaddsd	0(%r13), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r12), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%rsi,8)
	cmpl	%ecx, -140(%rbp)
	jle	.L22
	leal	5(%rdi), %edx
	leal	(%r14,%rcx), %r11d
	addl	-124(%rbp), %ecx
	vmovsd	(%rbx,%rsi,8), %xmm0
	leal	(%rax,%rdx), %r10d
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	movslq	%r10d, %r10
	vmovsd	(%rbx,%r11,8), %xmm2
	vaddsd	(%rbx,%rcx,8), %xmm2, %xmm2
	leaq	(%rbx,%r10,8), %r12
	movq	-120(%rbp), %r11
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	0(%r13), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%r9,8)
	cmpl	%edx, -140(%rbp)
	jle	.L22
	leal	6(%rdi,%rax), %ecx
	vmovsd	(%rbx,%r9,8), %xmm2
	movslq	%ecx, %rcx
	vaddsd	(%rbx,%rcx,8), %xmm2, %xmm2
	leal	(%r14,%rdx), %ecx
	addl	-124(%rbp), %edx
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	vmovsd	(%rbx,%rcx,8), %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r12), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%r10,8)
.L22:
	movl	-224(%rbp), %esi
	movq	-232(%rbp), %rdi
	addq	%r15, %r8
	addl	%esi, -124(%rbp)
	addl	%esi, %eax
	addl	%esi, %r14d
	addq	%r15, -168(%rbp)
	movl	-144(%rbp), %esi
	addq	%r15, -176(%rbp)
	addq	%r15, -184(%rbp)
	addq	%rdi, -208(%rbp)
	addq	%r15, -136(%rbp)
	addq	%rdi, -216(%rbp)
	addq	%r15, -152(%rbp)
	addq	%r15, -160(%rbp)
	cmpl	%esi, -220(%rbp)
	jg	.L23
	movq	-120(%rbp), %r15
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L72
	movq	%rbx, %rdi
	call	dummy
	movq	%r15, %rdi
	call	dummy
	leaq	-112(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L72:
	addq	$256, %rsp
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
.L48:
	.cfi_restore_state
	movq	-136(%rbp), %rsi
	movq	-120(%rbp), %rdi
	xorl	%edx, %edx
	movq	-152(%rbp), %rcx
	movq	-296(%rbp), %r9
	addq	%rsi, %rdi
	movq	-160(%rbp), %rsi
	addq	%rbx, %rcx
	addq	%rbx, %rsi
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	8(%rsi,%rdx), %xmm1
	vmovsd	16(%r8,%rdx), %xmm0
	vaddsd	8(%rcx,%rdx), %xmm1, %xmm1
	vaddsd	(%r8,%rdx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovsd	-112(%rbp), %xmm0
	vmulsd	-80(%rbp), %xmm1, %xmm1
	vmulsd	8(%r8,%rdx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rdi,%rdx)
	addq	$8, %rdx
	cmpq	%r9, %rdx
	jne	.L21
	jmp	.L22
.L43:
	movl	$1, %edi
	jmp	.L16
.L76:
	movq	-80(%rbp), %r15
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%r15, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	cmovle	%eax, %ecx
	movl	%ecx, %r8d
	leal	3(%rdx), %ecx
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r8d
	jb	.L29
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %edx
	je	.L41
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %edx
	jne	.L42
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	vmovapd	.LC3(%rip), %ymm0
	leaq	(%r15,%rdx,8), %rcx
	xorl	%edx, %edx
	movl	%edi, %esi
	shrl	$2, %esi
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
	jne	.L29
	jmp	.L33
.L78:
	movq	%rbx, %rdi
	vzeroupper
	call	dummy
	movq	%r15, %rdi
	call	dummy
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$1, -220(%rbp)
	jg	.L14
	jmp	.L15
.L39:
	movl	$1, %r8d
	jmp	.L5
.L77:
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	jmp	.L9
.L41:
	movl	$1, %eax
	jmp	.L9
.L75:
	vzeroupper
	jmp	.L8
.L3:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	xorl	%r15d, %r15d
	call	posix_memalign
	testl	%eax, %eax
	jne	.L33
	movq	-80(%rbp), %r15
	jmp	.L33
.L71:
	vzeroupper
	jmp	.L15
.L42:
	movl	$2, %eax
	jmp	.L9
.L40:
	movl	$2, %r8d
	jmp	.L5
.L79:
	vzeroupper
	jmp	.L72
.L37:
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
