	.file	"3d-2r-homogeneous-constant-star-stencil.c_compilable.c"
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
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	movq	%rsi, %r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$640, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	movq	%rax, -88(%rbp)
	call	strtol
	movl	%ebx, %r14d
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %r13
	imull	%r12d, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -96(%rbp)
	call	posix_memalign
	movq	-96(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %r9
	testl	%r14d, %r14d
	jle	.L3
	movq	%r9, %rax
	movl	$5, %esi
	leal	-1(%r14), %r15d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	xorl	%esi, %esi
	cmpl	%edx, %r15d
	jb	.L4
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r9)
	cmpl	$1, %eax
	je	.L44
	vmovsd	%xmm0, 8(%r9)
	cmpl	$3, %eax
	jne	.L45
	vmovsd	%xmm0, 16(%r9)
	movl	$3, %esi
.L5:
	movl	%r14d, %r8d
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r9,%rax,8), %rdx
	subl	%eax, %r8d
	xorl	%eax, %eax
	movl	%r8d, %edi
	shrl	$2, %edi
	.p2align 4,,10
	.p2align 3
.L7:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%eax, %edi
	ja	.L7
	movl	%r8d, %eax
	andl	$-4, %eax
	addl	%eax, %esi
	cmpl	%eax, %r8d
	je	.L82
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%esi, %rax
	vmovsd	%xmm0, (%r9,%rax,8)
	leal	1(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r9,%rax,8)
	leal	2(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r9,%rax,8)
	leal	3(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r9,%rax,8)
	leal	4(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	addl	$5, %esi
	vmovsd	%xmm0, (%r9,%rax,8)
	cmpl	%esi, %r14d
	jle	.L8
	movslq	%esi, %rsi
	vmovsd	%xmm0, (%r9,%rsi,8)
.L8:
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	movq	%r9, -96(%rbp)
	call	posix_memalign
	movq	-96(%rbp), %r9
	testl	%eax, %eax
	je	.L83
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %esi
	cmovle	%eax, %r15d
	cmovg	%r14d, %esi
	cmpl	$4, %r15d
	ja	.L84
	movq	$0, -184(%rbp)
	xorl	%eax, %eax
.L32:
	vmovsd	.LC2(%rip), %xmm0
	movq	-184(%rbp), %rbx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L36
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L36
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L36
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L36
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rbx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L36
	cltq
	vmovsd	%xmm0, (%rbx,%rax,8)
.L36:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -80(%rbp)
	leal	-2(%r13), %eax
	movl	%eax, -584(%rbp)
	testl	%edx, %edx
	jne	.L85
	cmpl	$2, -584(%rbp)
	jle	.L80
	movq	-88(%rbp), %rbx
	leal	-2(%r12), %eax
	movl	%r12d, %r8d
	movl	%eax, -116(%rbp)
	movl	%ebx, %eax
	imull	%r12d, %eax
	movl	%eax, -588(%rbp)
	cmpl	$4, %ebx
	jle	.L80
.L41:
	cmpl	$2, -116(%rbp)
	jle	.L76
	movl	-588(%rbp), %eax
	leal	(%r12,%r12,2), %edx
	leal	(%r12,%r12), %esi
	movl	%r12d, -620(%rbp)
	movl	%edx, -636(%rbp)
	movslq	%edx, %rdx
	movslq	%esi, %rdi
	leaq	16(%r9), %r11
	leal	(%rax,%rax), %ebx
	leaq	48(%r9), %r10
	movq	%rdx, -560(%rbp)
	leal	0(,%r12,4), %edx
	movl	%ebx, -524(%rbp)
	leal	(%rax,%rax,2), %ebx
	movl	%edx, -640(%rbp)
	movslq	%edx, %rdx
	movl	%ebx, -572(%rbp)
	leal	0(,%rax,4), %ebx
	movq	%rdx, -568(%rbp)
	movl	%eax, %edx
	addl	%esi, %eax
	movl	%eax, -624(%rbp)
	movl	%r12d, %eax
	subl	%edx, %eax
	movl	%ebx, -580(%rbp)
	movslq	%r12d, %rbx
	addl	%eax, %eax
	movq	%rbx, -360(%rbp)
	salq	$3, %rbx
	movl	%eax, -628(%rbp)
	leal	(%rdx,%r12), %eax
	movq	%rbx, %r13
	movq	%r9, %rbx
	addl	%eax, %eax
	movl	%esi, -592(%rbp)
	movl	%eax, -632(%rbp)
	leal	-4(%r12), %eax
	movl	%eax, -292(%rbp)
	addq	%rdi, %rax
	movq	%rax, -600(%rbp)
	leal	(%r8,%r8,2), %eax
	cltq
	movl	%edx, -552(%rbp)
	movq	%rax, -608(%rbp)
	leal	0(,%r8,4), %eax
	cltq
	movq	%rdi, -536(%rbp)
	movq	%rax, -616(%rbp)
	leaq	64(%r9), %rax
	movq	%rax, -408(%rbp)
	leaq	2(%rdi), %rax
	movq	%rax, -656(%rbp)
	leaq	6(%rdi), %rax
	movq	%rax, -664(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, -576(%rbp)
	subl	$2, %eax
	movl	%r8d, -400(%rbp)
	movl	%eax, -396(%rbp)
	leal	-5(%r12), %eax
	movl	%eax, -516(%rbp)
	addq	%rdi, %rax
	movq	%rax, -648(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%r11, -416(%rbp)
	movl	$2, -548(%rbp)
	movq	%rax, -392(%rbp)
	movq	%r10, -424(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movslq	-524(%rbp), %rsi
	movq	-656(%rbp), %rax
	movq	-536(%rbp), %rcx
	movq	-184(%rbp), %rdi
	addq	%rsi, %rax
	movq	%rsi, %rdx
	addl	-624(%rbp), %edx
	movl	-592(%rbp), %r10d
	leaq	(%rdi,%rax,8), %r12
	movq	%rcx, %rax
	movl	%edx, -148(%rbp)
	movl	-620(%rbp), %edx
	addq	%rsi, %rax
	movq	%rsi, -304(%rbp)
	leaq	0(,%rax,8), %r14
	movq	%rax, -280(%rbp)
	addl	%esi, %edx
	movq	%rdi, %rax
	addq	%r14, %rax
	movl	%edx, -152(%rbp)
	movl	-636(%rbp), %edx
	movq	%rax, -288(%rbp)
	movq	-664(%rbp), %rax
	addl	%esi, %edx
	movq	%r14, -128(%rbp)
	addq	%rsi, %rax
	movl	%edx, -156(%rbp)
	movl	-628(%rbp), %edx
	leaq	(%rdi,%rax,8), %r15
	movslq	-552(%rbp), %rdi
	movl	%esi, %eax
	addl	$1, -548(%rbp)
	addl	%r10d, %eax
	addl	%esi, %edx
	movl	%eax, -120(%rbp)
	movl	%edi, %eax
	leaq	(%rcx,%rdi), %r11
	addl	%r10d, %eax
	movl	%edx, -160(%rbp)
	movl	-632(%rbp), %edx
	movl	%esi, %r10d
	movl	%eax, -136(%rbp)
	movl	-640(%rbp), %eax
	addl	%esi, %edx
	addl	%esi, %eax
	movl	%edx, -164(%rbp)
	movl	%eax, -168(%rbp)
	movq	-360(%rbp), %rax
	addq	%rsi, %rax
	movq	%rax, %rdx
	movq	%rax, -464(%rbp)
	movq	-560(%rbp), %rax
	salq	$3, %rdx
	addq	%rsi, %rax
	movq	%rdx, -192(%rbp)
	leaq	0(,%rax,8), %r9
	movq	%r9, -200(%rbp)
	movq	-568(%rbp), %rax
	movslq	-572(%rbp), %r9
	movq	%r11, -488(%rbp)
	salq	$3, %r11
	movslq	-576(%rbp), %rdx
	addq	%rsi, %rax
	movq	%r11, -216(%rbp)
	leaq	(%rcx,%r9), %r11
	salq	$3, %rax
	movq	-608(%rbp), %r14
	movq	-648(%rbp), %r8
	movq	%r11, -496(%rbp)
	salq	$3, %r11
	movq	%rax, -208(%rbp)
	movslq	-580(%rbp), %rax
	movq	%r11, -224(%rbp)
	leaq	(%rcx,%rdx), %r11
	movq	%r11, -504(%rbp)
	salq	$3, %r11
	movq	%r11, -232(%rbp)
	leaq	(%rcx,%rax), %r11
	leaq	(%rbx,%rsi,8), %rcx
	movq	%r11, -512(%rbp)
	salq	$3, %r11
	movq	%r11, -240(%rbp)
	movq	%rsi, %r11
	addq	-600(%rbp), %rsi
	addq	%r11, %r14
	addq	%r11, %r8
	subq	%r11, %rax
	subq	%r11, %rdi
	movq	%r14, -472(%rbp)
	leaq	(%rbx,%r8,8), %r8
	movq	-616(%rbp), %r14
	subq	%r11, %r9
	movq	%r8, -544(%rbp)
	subq	%r11, %rdx
	movq	-560(%rbp), %r8
	movl	$0, -172(%rbp)
	addq	%r11, %r14
	movq	%r15, %r11
	movq	%r14, -480(%rbp)
	movq	-568(%rbp), %r14
	movq	%r8, -264(%rbp)
	movq	-360(%rbp), %r8
	movq	%r14, -272(%rbp)
	movq	-536(%rbp), %r14
	movq	%r8, -248(%rbp)
	xorl	%r8d, %r8d
	movq	%r14, -256(%rbp)
	movq	-184(%rbp), %r14
	movq	$0, -144(%rbp)
	movl	$2, -176(%rbp)
	leaq	16(%r14,%rsi,8), %rsi
	movq	%r13, %r14
	movq	%r12, %r13
	movq	%rsi, -376(%rbp)
	leaq	48(%rcx), %rsi
	movq	%r8, %r12
	movq	%rax, -456(%rbp)
	leal	2(%r10), %eax
	movq	%rsi, -384(%rbp)
	leaq	16(%rcx), %rsi
	movl	%eax, -520(%rbp)
	leal	3(%r10), %eax
	movq	%rsi, -368(%rbp)
	movq	%rdi, -432(%rbp)
	movq	%r9, -440(%rbp)
	movq	%rdx, -448(%rbp)
	movl	%eax, -528(%rbp)
	.p2align 4,,10
	.p2align 3
.L29:
	movq	-144(%rbp), %r10
	leaq	-80(%rbp), %rsi
	movq	-128(%rbp), %rdi
	movq	-376(%rbp), %rdx
	addl	$1, -176(%rbp)
	leaq	(%rbx,%rdi), %rax
	movq	-192(%rbp), %r9
	movq	-416(%rbp), %r15
	addq	%r10, %rdx
	movq	-232(%rbp), %r8
	cmpq	%rdx, %rsi
	setnb	%cl
	cmpq	-392(%rbp), %r13
	setnb	%dl
	orl	%ecx, %edx
	cmpl	$5, -292(%rbp)
	seta	%cl
	andl	%ecx, %edx
	movq	-408(%rbp), %rcx
	addq	%rdi, %rcx
	movq	-424(%rbp), %rdi
	cmpq	%rcx, %r13
	setnb	%cl
	cmpq	%rax, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r15, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r9, %rsi
	movq	-200(%rbp), %r9
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r15, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r9, %rsi
	movq	-224(%rbp), %r9
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	-368(%rbp), %rsi
	andl	%ecx, %edx
	movq	-384(%rbp), %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r10, %rsi
	movq	-208(%rbp), %r10
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r15, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r10, %rsi
	movq	-216(%rbp), %r10
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r15, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r10, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r15, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r9, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r15, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L27
	movq	-240(%rbp), %rsi
	addq	%rsi, %rdi
	cmpq	%rdi, %r13
	setnb	%cl
	addq	%rsi, %r15
	cmpq	%r15, %r11
	setbe	%dl
	orb	%dl, %cl
	je	.L27
	shrq	$3, %rax
	movq	%rax, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-516(%rbp), %eax
	ja	.L48
	movl	$2, -132(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	$3, -132(%rbp)
	movl	-120(%rbp), %esi
	leal	2(%rsi), %eax
	leal	1(%rsi), %ecx
	leal	3(%rsi), %r10d
	cltq
	movslq	%ecx, %rcx
	movslq	%r10d, %r10
	leaq	(%rbx,%rcx,8), %rdi
	leaq	(%rbx,%rax,8), %r9
	movl	%esi, %ecx
	leaq	(%rbx,%r10,8), %r8
	vmovsd	(%rdi), %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	addl	$4, %ecx
	vaddsd	(%r8), %xmm0, %xmm0
	movq	%r8, -88(%rbp)
	movslq	%ecx, %r15
	movl	-136(%rbp), %r8d
	leaq	(%rbx,%r15,8), %rcx
	addl	$2, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movl	-148(%rbp), %r8d
	addl	$2, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movl	-152(%rbp), %r8d
	addl	$2, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movl	-156(%rbp), %r8d
	addl	$2, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movslq	%esi, %r8
	movl	-520(%rbp), %esi
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movl	-160(%rbp), %r8d
	vaddsd	(%rcx), %xmm0, %xmm0
	addl	-172(%rbp), %esi
	addl	$2, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movl	-164(%rbp), %r8d
	addl	$2, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movslq	%esi, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movl	-168(%rbp), %r8d
	addl	$2, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-184(%rbp), %r8
	vmovsd	%xmm0, (%r8,%rax,8)
	cmpl	$1, %edx
	je	.L17
	movl	-120(%rbp), %r8d
	movq	-88(%rbp), %rsi
	movl	$4, -132(%rbp)
	leal	5(%r8), %eax
	movl	-136(%rbp), %r8d
	vmovsd	(%rsi), %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	cltq
	addl	$3, %r8d
	leaq	(%rbx,%rax,8), %rax
	movl	-528(%rbp), %esi
	addl	-172(%rbp), %esi
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movl	-148(%rbp), %r8d
	addl	$3, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movl	-152(%rbp), %r8d
	addl	$3, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movl	-156(%rbp), %r8d
	addl	$3, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	movl	-160(%rbp), %edi
	vaddsd	(%rax), %xmm0, %xmm0
	addl	$3, %edi
	movslq	%edi, %rdi
	vaddsd	(%rbx,%rdi,8), %xmm0, %xmm0
	movl	-164(%rbp), %edi
	addl	$3, %edi
	movslq	%edi, %rdi
	vaddsd	(%rbx,%rdi,8), %xmm0, %xmm0
	movslq	%esi, %rdi
	movq	-184(%rbp), %rsi
	vaddsd	(%rbx,%rdi,8), %xmm0, %xmm0
	movl	-168(%rbp), %edi
	addl	$3, %edi
	movslq	%edi, %rdi
	vaddsd	(%rbx,%rdi,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%r10,8)
	cmpl	$3, %edx
	jne	.L17
	movq	-88(%rbp), %r10
	movl	-120(%rbp), %r8d
	movl	$5, -132(%rbp)
	movl	-160(%rbp), %edi
	vmovsd	(%r10), %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	movl	-136(%rbp), %eax
	addl	$4, %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	movl	-148(%rbp), %eax
	addl	$4, %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	movl	-152(%rbp), %eax
	addl	$4, %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	movl	-156(%rbp), %eax
	addl	$4, %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	6(%r8), %eax
	cltq
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%rdi), %eax
	movl	-164(%rbp), %edi
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%rdi), %eax
	movl	-172(%rbp), %edi
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	movl	-524(%rbp), %eax
	leal	4(%rdi,%rax), %eax
	movl	-168(%rbp), %edi
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%rdi), %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%r15,8)
.L17:
	movl	-292(%rbp), %edi
	movl	%edx, %eax
	movq	-496(%rbp), %rsi
	movq	%rbx, -344(%rbp)
	movq	-464(%rbp), %r10
	movq	-472(%rbp), %r9
	movq	%r13, -352(%rbp)
	subl	%edx, %edi
	movq	-128(%rbp), %r8
	vbroadcastsd	-80(%rbp), %ymm1
	movl	%edi, -296(%rbp)
	shrl	$2, %edi
	movl	%edi, -88(%rbp)
	movq	-280(%rbp), %rdi
	leaq	2(%rax,%rdi), %rcx
	salq	$3, %rcx
	leaq	(%rbx,%rcx), %rdx
	addq	-184(%rbp), %rcx
	movq	%rdx, -96(%rbp)
	leaq	1(%rax,%rdi), %rdx
	leaq	(%rbx,%rdx,8), %r15
	leaq	3(%rax,%rdi), %rdx
	leaq	(%rbx,%rdx,8), %rdx
	movq	%rdx, -104(%rbp)
	movq	-488(%rbp), %rdx
	leaq	2(%r12,%rdx), %rdx
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %rdx
	movq	%rdx, -312(%rbp)
	leaq	2(%r12,%rsi), %rdx
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %rsi
	leaq	2(%r12,%r10), %rdx
	addq	%rax, %rdx
	movq	%rsi, -112(%rbp)
	leaq	(%r8,%rax,8), %rsi
	leaq	(%rbx,%rdx,8), %r10
	leaq	2(%r12,%r9), %rdx
	addq	%rax, %rdx
	leaq	(%rbx,%rsi), %r8
	movq	%r10, -320(%rbp)
	leaq	(%rbx,%rdx,8), %r9
	leaq	4(%rax,%rdi), %rdx
	movq	-504(%rbp), %rdi
	movq	%r8, -336(%rbp)
	leaq	(%rbx,%rdx,8), %rsi
	movq	%r9, -328(%rbp)
	movq	-328(%rbp), %r13
	leaq	2(%r12,%rdi), %rdx
	movq	-512(%rbp), %rdi
	movq	%r14, -328(%rbp)
	addq	%rax, %rdx
	movq	-336(%rbp), %r14
	movq	%r11, -336(%rbp)
	leaq	(%rbx,%rdx,8), %r10
	leaq	2(%r12,%rdi), %rdx
	movq	-304(%rbp), %rdi
	movq	-312(%rbp), %r11
	addq	%rax, %rdx
	movq	%r12, -312(%rbp)
	leaq	(%rbx,%rdx,8), %r9
	leaq	2(%rdi,%r12), %rdx
	movq	-480(%rbp), %rdi
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %r8
	leaq	2(%r12,%rdi), %rdx
	addq	%rdx, %rax
	xorl	%edx, %edx
	leaq	(%rbx,%rax,8), %rdi
	movq	-112(%rbp), %rbx
	movq	%rcx, -112(%rbp)
	xorl	%eax, %eax
	movq	-320(%rbp), %r12
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	movq	-96(%rbp), %rcx
	vmovupd	(%r15,%rax), %ymm0
	addl	$1, %edx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-104(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	vaddpd	(%r12,%rax), %ymm0, %ymm0
	vaddpd	0(%r13,%rax), %ymm0, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vaddpd	(%rsi,%rax), %ymm0, %ymm0
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	movq	-112(%rbp), %rcx
	vmulpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, -88(%rbp)
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-296(%rbp), %esi
	movl	-132(%rbp), %edx
	movq	-344(%rbp), %rbx
	movq	-352(%rbp), %r13
	movl	%esi, %eax
	movq	-328(%rbp), %r14
	movq	-336(%rbp), %r11
	andl	$-4, %eax
	movq	-312(%rbp), %r12
	addl	%eax, %edx
	cmpl	%eax, %esi
	je	.L23
.L16:
	movq	-256(%rbp), %r9
	movslq	%edx, %rdx
	movq	-304(%rbp), %rax
	movq	%r12, %rsi
	movq	-248(%rbp), %r8
	movq	-264(%rbp), %rdi
	movq	%rbx, -88(%rbp)
	addq	%r9, %rax
	movq	-272(%rbp), %rcx
	subq	%r9, %rsi
	movq	%r13, -96(%rbp)
	addq	%rdx, %rax
	subq	%r9, %r8
	subq	%r9, %rdi
	movq	-432(%rbp), %r10
	leaq	-16(%rbx,%rax,8), %rax
	subq	%r9, %rcx
	movq	-440(%rbp), %rbx
	movq	-288(%rbp), %r9
	movq	-448(%rbp), %r13
	movq	-456(%rbp), %r15
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	16(%rax), %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	16(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	16(%rax,%r13,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, (%r9,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, -116(%rbp)
	jg	.L21
.L79:
	movq	-88(%rbp), %rbx
	movq	-96(%rbp), %r13
.L23:
	movq	-360(%rbp), %rax
	addq	%r14, -288(%rbp)
	addq	%r14, %r13
	addq	%r14, %r11
	addq	%rax, -248(%rbp)
	addq	%rax, -256(%rbp)
	addq	%rax, %r12
	addq	%rax, -264(%rbp)
	addq	%rax, -272(%rbp)
	addq	%rax, -280(%rbp)
	movl	-400(%rbp), %eax
	addq	%r14, -128(%rbp)
	addl	%eax, -120(%rbp)
	addl	%eax, -136(%rbp)
	addl	%eax, -148(%rbp)
	addl	%eax, -152(%rbp)
	addl	%eax, -156(%rbp)
	addl	%eax, -160(%rbp)
	addl	%eax, -164(%rbp)
	addl	%eax, -168(%rbp)
	addq	%r14, -144(%rbp)
	movl	-396(%rbp), %edi
	addl	%eax, -172(%rbp)
	addq	%r14, -192(%rbp)
	addq	%r14, -200(%rbp)
	addq	%r14, -208(%rbp)
	addq	%r14, -216(%rbp)
	addq	%r14, -224(%rbp)
	addq	%r14, -232(%rbp)
	addq	%r14, -240(%rbp)
	cmpl	%edi, -176(%rbp)
	jne	.L29
	movl	-588(%rbp), %eax
	movq	%r14, %r13
	addl	%eax, -524(%rbp)
	addl	%eax, -552(%rbp)
	movl	-548(%rbp), %edx
	addl	%eax, -572(%rbp)
	addl	%eax, -576(%rbp)
	addl	%eax, -580(%rbp)
	cmpl	%edx, -584(%rbp)
	jg	.L28
	movq	%rbx, %r9
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L77
	movq	%r9, %rdi
	call	dummy
	movq	-184(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L77:
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
.L44:
	.cfi_restore_state
	movl	$1, %esi
	jmp	.L5
.L84:
	movq	$0, -184(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %esi
	movq	-184(%rbp), %rbx
	vmovapd	.LC3(%rip), %ymm0
	movl	%esi, %edi
	leaq	(%rbx,%rdx,8), %rcx
	shrl	$2, %edi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L11:
	addl	$1, %edx
	vmovapd	%ymm0, (%rcx)
	addq	$32, %rcx
	cmpl	%edx, %edi
	ja	.L11
	movl	%esi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %esi
	jne	.L32
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L27:
	movq	-144(%rbp), %rdx
	movq	-544(%rbp), %rsi
	movq	%rbx, -88(%rbp)
	movq	-256(%rbp), %r15
	movq	-248(%rbp), %r8
	movq	%r13, -96(%rbp)
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rcx
	leaq	8(%rdx,%rsi), %r9
	movq	%r12, %rsi
	movq	%r13, %rdx
	subq	%r15, %r8
	subq	%r15, %rsi
	movq	-432(%rbp), %r10
	subq	%r15, %rdi
	subq	%r15, %rcx
	movq	-440(%rbp), %rbx
	movq	-448(%rbp), %r13
	movq	-456(%rbp), %r15
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	8(%rax), %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	addq	$8, %rdx
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	16(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	16(%rax,%r13,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, -8(%rdx)
	cmpq	%r9, %rax
	jne	.L22
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L48:
	movl	$2, %edx
	jmp	.L16
.L83:
	movq	-80(%rbp), %rbx
	testl	%r14d, %r14d
	movl	$1, %esi
	movl	$5, %edi
	cmovg	%r14d, %esi
	movq	%rbx, -184(%rbp)
	shrq	$3, %rbx
	movq	%rbx, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r15d
	cmpl	$5, %ecx
	cmovb	%edi, %ecx
	cmpl	%ecx, %r15d
	jb	.L32
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
	jmp	.L9
.L85:
	movq	%r9, %rdi
	movq	%r9, -96(%rbp)
	vzeroupper
	call	dummy
	movq	-184(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$2, -584(%rbp)
	movq	-96(%rbp), %r9
	jle	.L15
	movq	-88(%rbp), %rbx
	leal	-2(%r12), %eax
	movl	%r12d, %r8d
	movl	%eax, -116(%rbp)
	movl	%ebx, %eax
	imull	%r12d, %eax
	movl	%eax, -588(%rbp)
	cmpl	$4, %ebx
	jg	.L41
	jmp	.L15
.L82:
	vzeroupper
	jmp	.L8
.L80:
	vzeroupper
	jmp	.L77
.L46:
	movl	$1, %eax
	jmp	.L9
.L3:
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	movq	%r9, -96(%rbp)
	call	posix_memalign
	movq	-96(%rbp), %r9
	movq	$0, -184(%rbp)
	testl	%eax, %eax
	jne	.L36
	movq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	.L36
.L47:
	movl	$2, %eax
	jmp	.L9
.L45:
	movl	$2, %esi
	jmp	.L5
.L76:
	vzeroupper
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
