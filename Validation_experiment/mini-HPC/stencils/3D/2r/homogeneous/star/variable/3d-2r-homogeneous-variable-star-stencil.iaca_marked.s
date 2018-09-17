	.file	"3d-2r-homogeneous-variable-star-stencil.c_compilable.c"
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
	subq	$640, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r15
	call	strtol
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movl	%eax, %ecx
	movq	%rax, -80(%rbp)
	imull	%r15d, %ecx
	imull	%ebx, %ecx
	movslq	%ecx, %r12
	leaq	0(,%r12,8), %rax
	movq	%r12, %r14
	movq	%rax, %rdx
	movq	%rax, -72(%rbp)
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r12
	testl	%r14d, %r14d
	jle	.L3
	movq	%r12, %rax
	movl	$5, %esi
	leal	-1(%r14), %r13d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %r13d
	jb	.L53
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r12)
	cmpl	$1, %eax
	je	.L55
	vmovsd	%xmm0, 8(%r12)
	cmpl	$3, %eax
	jne	.L56
	vmovsd	%xmm0, 16(%r12)
	movl	$3, %r8d
.L5:
	movl	%r14d, %edi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r12,%rax,8), %rdx
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
	je	.L100
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r12,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r12,%rax,8)
.L8:
	movq	-72(%rbp), %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L101
.L42:
	movq	$0, -56(%rbp)
	movq	$0, -256(%rbp)
	testl	%r14d, %r14d
	jle	.L10
	movq	-256(%rbp), %rcx
	leal	-1(%r14), %r13d
.L41:
	testl	%r14d, %r14d
	movl	$1, %edi
	movq	%rcx, %rax
	movl	$0, %esi
	cmovg	%r14d, %edi
	shrq	$3, %rax
	movl	$5, %r8d
	negq	%rax
	andl	$3, %eax
	testl	%r14d, %r14d
	leal	3(%rax), %edx
	cmovg	%r13d, %esi
	cmpl	$5, %edx
	cmovb	%r8d, %edx
	cmpl	%edx, %esi
	jb	.L57
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.L12
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx)
	cmpl	$1, %eax
	je	.L59
	vmovsd	%xmm0, 8(%rcx)
	cmpl	$3, %eax
	jne	.L60
	vmovsd	%xmm0, 16(%rcx)
	movl	$3, %esi
.L12:
	subl	%eax, %edi
	vmovapd	.LC3(%rip), %ymm0
	leaq	(%rcx,%rax,8), %rdx
	xorl	%eax, %eax
	movl	%edi, %r8d
	shrl	$2, %r8d
	.p2align 4,,10
	.p2align 3
.L14:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%eax, %r8d
	ja	.L14
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rsi), %eax
	cmpl	%edx, %edi
	je	.L102
	vzeroupper
	movq	-256(%rbp), %rcx
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L15:
	movq	-72(%rbp), %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L103
	movq	-56(%rbp), %rcx
	testl	%r14d, %r14d
	movl	$1, %r8d
	movl	$5, %edi
	cmovg	%r14d, %r8d
	movq	%rcx, -248(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	leal	3(%rdx), %esi
	cmovle	%eax, %r13d
	cmpl	$5, %esi
	cmovb	%edi, %esi
	cmpl	%esi, %r13d
	jb	.L46
	testl	%edx, %edx
	je	.L18
	vmovsd	.LC4(%rip), %xmm0
	movq	-248(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L61
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L62
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L18:
	subl	%edx, %r8d
	movq	-248(%rbp), %rcx
	vmovapd	.LC5(%rip), %ymm0
	movl	%r8d, %edi
	leaq	(%rcx,%rdx,8), %rsi
	shrl	$2, %edi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L20:
	addl	$1, %edx
	vmovapd	%ymm0, (%rsi)
	addq	$32, %rsi
	cmpl	%edx, %edi
	ja	.L20
	movl	%r8d, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %r8d
	je	.L17
.L46:
	vmovsd	.LC4(%rip), %xmm0
	movq	-248(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L17:
	movl	-80(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$2, %eax
	movl	%eax, -576(%rbp)
	testl	%edx, %edx
	jne	.L104
	cmpl	$2, -576(%rbp)
	jle	.L98
	leal	-2(%rbx), %eax
	movl	%ebx, %r10d
	movl	%eax, -116(%rbp)
	movl	%ebx, %eax
	imull	%r15d, %eax
	movl	%eax, -588(%rbp)
	cmpl	$4, %r15d
	jle	.L98
.L52:
	cmpl	$2, -116(%rbp)
	jle	.L95
	movl	-588(%rbp), %eax
	leal	(%rbx,%rbx), %edx
	movl	%ebx, %edi
	leaq	48(%r12), %r11
	movl	%ebx, -628(%rbp)
	movslq	%edx, %rsi
	leal	(%rax,%rax), %ecx
	movl	%edx, -592(%rbp)
	movl	%ecx, -400(%rbp)
	leal	(%r10,%r10), %ecx
	movl	%ecx, -324(%rbp)
	leal	(%rax,%rax,2), %ecx
	movl	%ecx, -564(%rbp)
	leal	0(,%rax,4), %ecx
	movl	%ecx, -572(%rbp)
	movslq	%ebx, %rcx
	movq	%rcx, -392(%rbp)
	leaq	0(,%rcx,8), %r13
	leal	(%rbx,%rbx,2), %ecx
	movl	%ecx, -644(%rbp)
	movslq	%ecx, %rcx
	movq	%rcx, -608(%rbp)
	leal	0(,%rbx,4), %ecx
	movl	%ecx, -648(%rbp)
	movslq	%ecx, %rcx
	movq	%rcx, -560(%rbp)
	movl	%eax, %ecx
	addl	%edx, %eax
	movl	%eax, -632(%rbp)
	movl	%ebx, %eax
	addl	%ecx, %ebx
	subl	%ecx, %eax
	movl	%ecx, -552(%rbp)
	leal	-5(%rdi), %ecx
	addl	%eax, %eax
	movl	%ecx, -540(%rbp)
	movl	%eax, -636(%rbp)
	leal	(%rbx,%rbx), %eax
	leaq	16(%r12), %rbx
	movl	%eax, -640(%rbp)
	leal	(%r10,%r10,2), %eax
	cltq
	movq	%rsi, -600(%rbp)
	movq	%rax, -616(%rbp)
	leal	0(,%r10,4), %eax
	cltq
	movl	%r10d, -396(%rbp)
	movq	%rax, -624(%rbp)
	leal	-4(%rdi), %eax
	movl	%eax, -176(%rbp)
	leaq	64(%r12), %rax
	movq	%rax, -424(%rbp)
	leaq	2(%rsi), %rax
	movq	%rax, -656(%rbp)
	leaq	6(%rsi), %rax
	movq	%rax, -664(%rbp)
	leal	-5(%r15), %eax
	movq	%r13, %r15
	movl	$0, -568(%rbp)
	addq	$1, %rax
	movq	%rax, -416(%rbp)
	movq	-248(%rbp), %rax
	movl	$2, -548(%rbp)
	leaq	32(%rax), %rdx
	addq	$64, %rax
	movq	%rax, -472(%rbp)
	movl	%ecx, %eax
	addq	$3, %rax
	movq	%rdx, -464(%rbp)
	movq	%rax, -584(%rbp)
	movq	%rbx, -672(%rbp)
	movq	%r11, -680(%rbp)
	.p2align 4,,10
	.p2align 3
.L37:
	movl	-400(%rbp), %r10d
	movq	-656(%rbp), %rax
	movq	-256(%rbp), %rsi
	movq	-600(%rbp), %r8
	movslq	%r10d, %rbx
	addl	$1, -548(%rbp)
	addq	%rbx, %rax
	movq	%rbx, %rcx
	addl	-632(%rbp), %ecx
	movq	%rbx, -320(%rbp)
	leaq	(%rsi,%rax,8), %r14
	movq	%rbx, %rax
	movl	%ecx, -148(%rbp)
	movl	-628(%rbp), %ecx
	addq	%r8, %rax
	leaq	0(,%rax,8), %rdi
	movq	%rax, -312(%rbp)
	movq	%rsi, %rax
	addl	%r10d, %ecx
	addq	%rdi, %rax
	movl	%ecx, -152(%rbp)
	movl	-644(%rbp), %ecx
	movq	%rax, -264(%rbp)
	movq	-664(%rbp), %rax
	movq	%rdi, -128(%rbp)
	movl	-592(%rbp), %edi
	addl	%r10d, %ecx
	addq	%rbx, %rax
	movl	%ecx, -156(%rbp)
	movl	-636(%rbp), %ecx
	leaq	(%rsi,%rax,8), %r11
	movslq	-324(%rbp), %rax
	movq	-248(%rbp), %rsi
	addl	%r10d, %ecx
	movq	%rax, -408(%rbp)
	addq	$2, %rax
	movq	%rax, -480(%rbp)
	leaq	(%rsi,%rax,8), %rax
	movslq	-552(%rbp), %rsi
	movq	%rax, -272(%rbp)
	movl	%r10d, %eax
	addl	%edi, %eax
	movl	%ecx, -160(%rbp)
	movl	-640(%rbp), %ecx
	movl	%eax, -120(%rbp)
	movl	%esi, %eax
	addl	%edi, %eax
	addl	%r10d, %ecx
	movl	%eax, -144(%rbp)
	movl	-648(%rbp), %eax
	movl	%ecx, -164(%rbp)
	addl	%r10d, %eax
	movl	%eax, -168(%rbp)
	movq	-392(%rbp), %r9
	movq	-608(%rbp), %r13
	movslq	-564(%rbp), %rcx
	movq	%r8, -288(%rbp)
	movq	%r9, %rax
	movslq	-568(%rbp), %rdx
	movq	%r9, -280(%rbp)
	addq	%rbx, %rax
	movq	%r13, -296(%rbp)
	movq	%rax, -488(%rbp)
	salq	$3, %rax
	movq	%rax, -184(%rbp)
	movq	%rbx, %rax
	addq	%r13, %rax
	movq	$0, -72(%rbp)
	movq	%r11, %r13
	movl	$0, -172(%rbp)
	salq	$3, %rax
	movq	%rax, -192(%rbp)
	leaq	0(,%rbx,8), %rax
	movq	%rax, -200(%rbp)
	movq	-560(%rbp), %rax
	movq	$0, -136(%rbp)
	addq	%rbx, %rax
	salq	$3, %rax
	movq	%rax, -208(%rbp)
	leaq	(%r8,%rsi), %rax
	subq	%rbx, %rsi
	movq	%rax, -512(%rbp)
	salq	$3, %rax
	movq	%rax, -216(%rbp)
	leaq	(%r8,%rcx), %rax
	subq	%rbx, %rcx
	movq	%rax, -520(%rbp)
	salq	$3, %rax
	movq	%rax, -224(%rbp)
	leaq	(%r8,%rdx), %rax
	subq	%rbx, %rdx
	movq	%rax, -528(%rbp)
	salq	$3, %rax
	movq	%rax, -232(%rbp)
	movslq	-572(%rbp), %rax
	movq	%rsi, -432(%rbp)
	leaq	(%r8,%rax), %rdi
	subq	%rbx, %rax
	movq	%rdi, -536(%rbp)
	salq	$3, %rdi
	movq	%rdi, -240(%rbp)
	movq	-616(%rbp), %rdi
	addq	%rbx, %rdi
	movq	%rdi, -496(%rbp)
	movq	-624(%rbp), %rdi
	addq	%rbx, %rdi
	movq	%r15, %rbx
	movq	%rdi, -504(%rbp)
	movq	-560(%rbp), %rdi
	movq	%rdi, -304(%rbp)
	movq	%rcx, -440(%rbp)
	movq	-672(%rbp), %r11
	movq	%rax, -456(%rbp)
	leal	2(%r10), %eax
	movq	-72(%rbp), %rcx
	movq	%rdx, -448(%rbp)
	movq	-680(%rbp), %r10
	movl	%eax, -544(%rbp)
	.p2align 4,,10
	.p2align 3
.L38:
	movq	-184(%rbp), %r15
	addq	-408(%rbp), %rcx
	salq	$3, %rcx
	movq	-128(%rbp), %rsi
	leaq	(%r10,%r15), %rax
	cmpq	%rax, %r14
	leaq	(%r11,%r15), %rax
	leaq	(%rsi,%r12), %rdx
	setnb	%dil
	cmpq	%rax, %r13
	setbe	%al
	orl	%eax, %edi
	movq	-424(%rbp), %rax
	addq	%rsi, %rax
	cmpq	%rax, %r14
	setnb	%sil
	cmpq	%rdx, %r13
	setbe	%al
	orl	%esi, %eax
	andl	%edi, %eax
	cmpl	$5, -176(%rbp)
	movq	-192(%rbp), %rdi
	seta	%sil
	andl	%esi, %eax
	leaq	(%r10,%rdi), %rsi
	cmpq	%rsi, %r14
	setnb	%sil
	addq	%r11, %rdi
	cmpq	%rdi, %r13
	setbe	%dil
	orl	%edi, %esi
	movq	-200(%rbp), %rdi
	andl	%esi, %eax
	leaq	(%r10,%rdi), %rsi
	cmpq	%rsi, %r14
	setnb	%sil
	addq	%r11, %rdi
	cmpq	%rdi, %r13
	setbe	%dil
	orl	%edi, %esi
	movq	-208(%rbp), %rdi
	andl	%esi, %eax
	leaq	(%r10,%rdi), %rsi
	cmpq	%rsi, %r14
	setnb	%sil
	addq	%r11, %rdi
	cmpq	%rdi, %r13
	setbe	%dil
	orl	%edi, %esi
	movq	-216(%rbp), %rdi
	andl	%esi, %eax
	leaq	(%r10,%rdi), %rsi
	cmpq	%rsi, %r14
	setnb	%sil
	addq	%r11, %rdi
	cmpq	%rdi, %r13
	setbe	%dil
	orl	%edi, %esi
	movq	-224(%rbp), %rdi
	andl	%esi, %eax
	leaq	(%r10,%rdi), %rsi
	cmpq	%rsi, %r14
	setnb	%sil
	addq	%r11, %rdi
	cmpq	%rdi, %r13
	setbe	%dil
	orl	%edi, %esi
	movq	-232(%rbp), %rdi
	andl	%esi, %eax
	leaq	(%r10,%rdi), %rsi
	cmpq	%rsi, %r14
	setnb	%sil
	addq	%r11, %rdi
	cmpq	%rdi, %r13
	setbe	%dil
	orl	%edi, %esi
	movq	-240(%rbp), %rdi
	andl	%esi, %eax
	leaq	(%r10,%rdi), %rsi
	cmpq	%rsi, %r14
	setnb	%sil
	addq	%r11, %rdi
	cmpq	%rdi, %r13
	setbe	%dil
	orl	%edi, %esi
	testb	%sil, %al
	je	.L36
	movq	-464(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %r13
	setbe	%al
	addq	-472(%rbp), %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	orb	%cl, %al
	je	.L36
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	%eax, -540(%rbp)
	jb	.L63
	movl	$2, -140(%rbp)
	testl	%edx, %edx
	je	.L26
	movl	-120(%rbp), %r9d
	movl	-72(%rbp), %esi
	movl	%esi, -88(%rbp)
	leal	1(%r9), %esi
	leal	2(%r9), %eax
	movslq	%esi, %rsi
	cltq
	leaq	(%r12,%rsi,8), %r8
	leal	3(%r9), %esi
	movslq	%esi, %r15
	leal	4(%r9), %esi
	leaq	(%r12,%rax,8), %r9
	vmovsd	(%r9), %xmm0
	movl	-144(%rbp), %r9d
	leaq	(%r12,%r15,8), %rdi
	leaq	(%r12,%rax,8), %rcx
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	movq	%rcx, -80(%rbp)
	movslq	%esi, %rcx
	addl	$2, %r9d
	leaq	(%r12,%rcx,8), %rsi
	movq	%rcx, -96(%rbp)
	movl	-544(%rbp), %ecx
	movslq	%r9d, %r9
	addl	-172(%rbp), %ecx
	vaddsd	(%r12,%r9,8), %xmm0, %xmm0
	movl	-148(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r12,%r9,8), %xmm0, %xmm0
	movl	-152(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r12,%r9,8), %xmm0, %xmm0
	movl	-156(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r12,%r9,8), %xmm0, %xmm0
	movslq	-120(%rbp), %r9
	vaddsd	(%r12,%r9,8), %xmm0, %xmm0
	movl	-160(%rbp), %r9d
	vaddsd	(%rsi), %xmm0, %xmm0
	addl	$2, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r12,%r9,8), %xmm0, %xmm0
	movl	-164(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r12,%r9,8), %xmm0, %xmm0
	movslq	%ecx, %r9
	movl	-324(%rbp), %ecx
	vaddsd	(%r12,%r9,8), %xmm0, %xmm0
	movl	-168(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r12,%r9,8), %xmm0, %xmm0
	movq	-72(%rbp), %r9
	leal	4(%rcx,%r9), %r9d
	movq	-248(%rbp), %rcx
	movslq	%r9d, %r9
	vmulsd	(%rcx,%r9,8), %xmm0, %xmm0
	movq	-256(%rbp), %rcx
	movl	$3, -140(%rbp)
	vmovsd	%xmm0, (%rcx,%rax,8)
	cmpl	$1, %edx
	je	.L26
	movl	-120(%rbp), %r9d
	movq	-80(%rbp), %rcx
	movl	$4, -140(%rbp)
	vmovsd	(%rdi), %xmm0
	leal	5(%r9), %eax
	movl	-144(%rbp), %r9d
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	cltq
	movl	-400(%rbp), %ecx
	addl	$3, %r9d
	leaq	(%r12,%rax,8), %rax
	movslq	%r9d, %r9
	vaddsd	(%r12,%r9,8), %xmm0, %xmm0
	movl	-148(%rbp), %r9d
	addl	$3, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r12,%r9,8), %xmm0, %xmm0
	movl	-152(%rbp), %r9d
	addl	$3, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r12,%r9,8), %xmm0, %xmm0
	movl	-156(%rbp), %r9d
	addl	$3, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r12,%r9,8), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	movl	-160(%rbp), %r8d
	vaddsd	(%rax), %xmm0, %xmm0
	addl	$3, %r8d
	movslq	%r8d, %r8
	vaddsd	(%r12,%r8,8), %xmm0, %xmm0
	movl	-164(%rbp), %r8d
	addl	$3, %r8d
	movslq	%r8d, %r8
	vaddsd	(%r12,%r8,8), %xmm0, %xmm0
	movl	-172(%rbp), %r8d
	leal	3(%r8,%rcx), %r8d
	movl	-324(%rbp), %ecx
	movslq	%r8d, %r8
	vaddsd	(%r12,%r8,8), %xmm0, %xmm0
	movl	-168(%rbp), %r8d
	addl	$3, %r8d
	movslq	%r8d, %r8
	vaddsd	(%r12,%r8,8), %xmm0, %xmm0
	movq	-72(%rbp), %r8
	leal	5(%rcx,%r8), %r8d
	movq	-248(%rbp), %rcx
	movslq	%r8d, %r8
	vmulsd	(%rcx,%r8,8), %xmm0, %xmm0
	movq	-256(%rbp), %rcx
	vmovsd	%xmm0, (%rcx,%r15,8)
	cmpl	$3, %edx
	jne	.L26
	vmovsd	(%rdi), %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	movl	$5, -140(%rbp)
	vaddsd	(%rax), %xmm0, %xmm0
	movl	-144(%rbp), %eax
	movl	-120(%rbp), %r9d
	movl	-160(%rbp), %r8d
	addl	$4, %eax
	movl	-400(%rbp), %esi
	movl	-324(%rbp), %ecx
	cltq
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	movl	-148(%rbp), %eax
	addl	$4, %eax
	cltq
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	movl	-152(%rbp), %eax
	addl	$4, %eax
	cltq
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	movl	-156(%rbp), %eax
	addl	$4, %eax
	cltq
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	movq	-80(%rbp), %rax
	vaddsd	(%rax), %xmm0, %xmm0
	leal	6(%r9), %eax
	cltq
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	leal	4(%r8), %eax
	movl	-164(%rbp), %r8d
	cltq
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	leal	4(%r8), %eax
	movl	-168(%rbp), %r8d
	cltq
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	movl	-172(%rbp), %eax
	leal	4(%rax,%rsi), %eax
	movl	-88(%rbp), %esi
	cltq
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	leal	4(%r8), %eax
	cltq
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	leal	6(%rsi,%rcx), %eax
	movq	-248(%rbp), %rcx
	cltq
	vmulsd	(%rcx,%rax,8), %xmm0, %xmm0
	movq	-256(%rbp), %rax
	movq	-96(%rbp), %rcx
	vmovsd	%xmm0, (%rax,%rcx,8)
.L26:
	movl	-176(%rbp), %ecx
	movl	%edx, %eax
	movq	-312(%rbp), %r8
	movq	%r12, -376(%rbp)
	movq	-136(%rbp), %rdi
	movq	-520(%rbp), %rsi
	movq	%r14, -384(%rbp)
	subl	%edx, %ecx
	movq	-480(%rbp), %rdx
	movq	-488(%rbp), %r9
	movl	%ecx, -328(%rbp)
	shrl	$2, %ecx
	movl	%ecx, -80(%rbp)
	movq	-72(%rbp), %rcx
	leaq	2(%rcx,%rdx), %rdx
	movq	-248(%rbp), %rcx
	addq	%rax, %rdx
	leaq	(%rcx,%rdx,8), %rcx
	movq	%rcx, -88(%rbp)
	leaq	2(%rax,%r8), %rcx
	salq	$3, %rcx
	leaq	(%r12,%rcx), %rdx
	addq	-256(%rbp), %rcx
	movq	%rdx, -96(%rbp)
	leaq	1(%rax,%r8), %rdx
	leaq	(%r12,%rdx,8), %r15
	leaq	3(%rax,%r8), %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -104(%rbp)
	movq	-512(%rbp), %rdx
	leaq	2(%rdi,%rdx), %rdx
	addq	%rax, %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -336(%rbp)
	leaq	2(%rdi,%rsi), %rdx
	addq	%rax, %rdx
	leaq	(%r12,%rdx,8), %rsi
	leaq	2(%rdi,%r9), %rdx
	addq	%rax, %rdx
	movq	%rsi, -344(%rbp)
	movq	-128(%rbp), %rsi
	leaq	(%r12,%rdx,8), %r9
	movq	-496(%rbp), %rdx
	leaq	(%rsi,%rax,8), %rsi
	movq	%r9, -352(%rbp)
	leaq	2(%rdi,%rdx), %rdx
	addq	%r12, %rsi
	addq	%rax, %rdx
	movq	%rsi, -360(%rbp)
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -112(%rbp)
	leaq	4(%rax,%r8), %rdx
	leaq	(%r12,%rdx,8), %r8
	movq	%r8, -368(%rbp)
	movq	-528(%rbp), %r8
	movq	-368(%rbp), %r14
	leaq	2(%rdi,%r8), %rdx
	movq	-536(%rbp), %r8
	addq	%rax, %rdx
	leaq	(%r12,%rdx,8), %rsi
	leaq	2(%rdi,%r8), %rdx
	movq	-320(%rbp), %r8
	addq	%rax, %rdx
	leaq	(%r12,%rdx,8), %r9
	leaq	2(%r8,%rdi), %rdx
	addq	%rax, %rdx
	leaq	(%r12,%rdx,8), %r8
	movq	-504(%rbp), %rdx
	leaq	2(%rdi,%rdx), %rdx
	addq	%rdx, %rax
	xorl	%edx, %edx
	leaq	(%r12,%rax,8), %rdi
	movq	-112(%rbp), %r12
	movq	%rcx, -112(%rbp)
	xorl	%eax, %eax
	movq	%rbx, -368(%rbp)
	movq	-352(%rbp), %rbx
	movq	%r13, -352(%rbp)
	movq	-360(%rbp), %r13
	movq	%r11, -360(%rbp)
	movq	-344(%rbp), %r11
	movq	%r10, -344(%rbp)
	movq	-336(%rbp), %r10
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L28:
	movq	-96(%rbp), %rcx
	vmovupd	(%r15,%rax), %ymm0
	addl	$1, %edx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-104(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-88(%rbp), %rcx
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	vaddpd	(%r12,%rax), %ymm0, %ymm0
	vaddpd	0(%r13,%rax), %ymm0, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vaddpd	(%rsi,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	vmulpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-112(%rbp), %rcx
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, -80(%rbp)
	ja	.L28
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-328(%rbp), %ecx
	movl	-140(%rbp), %edx
	movq	-376(%rbp), %r12
	movq	-384(%rbp), %r14
	movl	%ecx, %eax
	movq	-368(%rbp), %rbx
	movq	-352(%rbp), %r13
	andl	$-4, %eax
	movq	-360(%rbp), %r11
	movq	-344(%rbp), %r10
	addl	%eax, %edx
	cmpl	%eax, %ecx
	je	.L32
.L25:
	movq	-288(%rbp), %r15
	movslq	%edx, %rdx
	movq	-320(%rbp), %rax
	movq	%r12, -80(%rbp)
	movq	-280(%rbp), %r8
	movq	-296(%rbp), %rdi
	movq	%r14, -88(%rbp)
	addq	%r15, %rax
	movq	-136(%rbp), %rsi
	movq	-304(%rbp), %rcx
	movq	%rbx, -96(%rbp)
	addq	%rdx, %rax
	subq	%r15, %r8
	subq	%r15, %rdi
	movq	%r13, -104(%rbp)
	leaq	-16(%r12,%rax,8), %rax
	subq	%r15, %rsi
	subq	%r15, %rcx
	movq	-264(%rbp), %r9
	movq	-272(%rbp), %rbx
	movq	-432(%rbp), %r12
	movq	-440(%rbp), %r13
	movq	-448(%rbp), %r14
	movq	-456(%rbp), %r15
	.p2align 4,,10
	.p2align 3
.L30:
	vmovsd	16(%rax), %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	16(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r13,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	16(%rax,%r14,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rcx,8), %xmm0, %xmm0
	vmulsd	(%rbx,%rdx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, (%r9,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, -116(%rbp)
	jg	.L30
	movq	-80(%rbp), %r12
	movq	-88(%rbp), %r14
	movq	-96(%rbp), %rbx
	movq	-104(%rbp), %r13
.L32:
	movq	-392(%rbp), %rax
	addq	$1, -72(%rbp)
	addq	%rbx, %r14
	addq	%rbx, %r13
	addq	%rax, -280(%rbp)
	movq	-72(%rbp), %rcx
	addq	%rax, -288(%rbp)
	addq	%rax, -296(%rbp)
	addq	%rax, -136(%rbp)
	addq	%rax, -304(%rbp)
	addq	%rax, -312(%rbp)
	movl	-396(%rbp), %eax
	addq	%rbx, -264(%rbp)
	addq	$8, -272(%rbp)
	addq	%rbx, -128(%rbp)
	addl	%eax, -120(%rbp)
	addl	%eax, -144(%rbp)
	addl	%eax, -148(%rbp)
	addl	%eax, -152(%rbp)
	addl	%eax, -156(%rbp)
	addl	%eax, -160(%rbp)
	addl	%eax, -164(%rbp)
	addl	%eax, -168(%rbp)
	addl	%eax, -172(%rbp)
	addq	%rbx, -184(%rbp)
	addq	%rbx, -192(%rbp)
	addq	%rbx, -200(%rbp)
	addq	%rbx, -208(%rbp)
	addq	%rbx, -216(%rbp)
	addq	%rbx, -224(%rbp)
	addq	%rbx, -232(%rbp)
	addq	%rbx, -240(%rbp)
	cmpq	-416(%rbp), %rcx
	jne	.L38
	movl	%eax, %ecx
	movq	%rbx, %r15
	movl	-588(%rbp), %eax
	addl	%ecx, -324(%rbp)
	addl	%eax, -400(%rbp)
	movl	-548(%rbp), %ebx
	addl	%eax, -552(%rbp)
	addl	%eax, -564(%rbp)
	addl	%eax, -568(%rbp)
	addl	%eax, -572(%rbp)
	cmpl	%ebx, -576(%rbp)
	jg	.L37
.L95:
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L96
	movq	%r12, %rdi
	call	dummy
	movq	-256(%rbp), %rdi
	call	dummy
	movq	-248(%rbp), %rdi
	call	dummy
.L96:
	addq	$640, %rsp
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
.L101:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	%rax, %rcx
	jmp	.L41
.L55:
	movl	$1, %r8d
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L36:
	movq	-288(%rbp), %r15
	movq	-280(%rbp), %r8
	movq	%r12, -80(%rbp)
	movl	$2, %eax
	movq	-296(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	%r14, -88(%rbp)
	movq	-304(%rbp), %rcx
	subq	%r15, %r8
	movq	%rbx, -96(%rbp)
	subq	%r15, %rdi
	subq	%r15, %rsi
	movq	%r13, -104(%rbp)
	movq	-264(%rbp), %r9
	subq	%r15, %rcx
	movq	%r10, -112(%rbp)
	movq	-272(%rbp), %rbx
	movq	-432(%rbp), %r12
	movq	-440(%rbp), %r13
	movq	-448(%rbp), %r14
	movq	-456(%rbp), %r15
	movq	-584(%rbp), %r10
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	8(%rdx), %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	16(%rdx,%r12,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%r13,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	16(%rdx,%r14,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%r15,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%rcx,8), %xmm0, %xmm0
	vmulsd	(%rbx,%rax,8), %xmm0, %xmm0
	addq	$8, %rdx
	vmovsd	%xmm0, (%r9,%rax,8)
	addq	$1, %rax
	cmpq	%r10, %rax
	jne	.L31
	movq	-80(%rbp), %r12
	movq	-88(%rbp), %r14
	movq	-96(%rbp), %rbx
	movq	-104(%rbp), %r13
	movq	-112(%rbp), %r10
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L63:
	movl	$2, %edx
	jmp	.L25
.L103:
	testl	%r14d, %r14d
	jle	.L105
	movl	%r14d, %r8d
	cmpl	$4, %r13d
	jbe	.L67
	movq	$0, -248(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L104:
	movq	%r12, %rdi
	vzeroupper
	call	dummy
	movq	-256(%rbp), %rdi
	call	dummy
	movq	-248(%rbp), %rdi
	call	dummy
	cmpl	$2, -576(%rbp)
	jle	.L24
	leal	-2(%rbx), %eax
	movl	%ebx, %r10d
	movl	%eax, -116(%rbp)
	movl	%ebx, %eax
	imull	%r15d, %eax
	movl	%eax, -588(%rbp)
	cmpl	$4, %r15d
	jg	.L52
	jmp	.L24
.L102:
	vzeroupper
	jmp	.L15
.L61:
	movl	$1, %eax
	jmp	.L18
.L100:
	vzeroupper
	jmp	.L8
.L98:
	vzeroupper
	jmp	.L96
.L59:
	movl	$1, %esi
	jmp	.L12
.L3:
	movq	-72(%rbp), %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L42
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)
.L10:
	movq	-72(%rbp), %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -248(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)
	jmp	.L17
.L67:
	movq	$0, -248(%rbp)
	xorl	%eax, %eax
	jmp	.L46
.L56:
	movl	$2, %r8d
	jmp	.L5
.L62:
	movl	$2, %eax
	jmp	.L18
.L60:
	movl	$2, %esi
	jmp	.L12
.L57:
	xorl	%eax, %eax
	jmp	.L11
.L53:
	xorl	%eax, %eax
	jmp	.L4
.L105:
	movq	$0, -248(%rbp)
	jmp	.L17
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
