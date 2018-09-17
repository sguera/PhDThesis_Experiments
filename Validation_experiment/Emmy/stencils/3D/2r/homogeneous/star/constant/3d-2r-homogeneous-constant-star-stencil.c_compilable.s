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
	subq	$608, %rsp
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	movl	%r13d, %r14d
	call	strtol
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %rbx
	imull	%r12d, %r14d
	movslq	%r14d, %rcx
	leaq	0(,%rcx,8), %r9
	movq	%r9, %rdx
	movq	%r9, -88(%rbp)
	call	posix_memalign
	movq	-88(%rbp), %r9
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %rcx
	testl	%r14d, %r14d
	jle	.L3
	leal	-1(%r14), %r15d
	movq	%rcx, %rax
	movl	$5, %esi
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
	vmovsd	%xmm0, (%rcx)
	cmpl	$1, %eax
	je	.L44
	vmovsd	%xmm0, 8(%rcx)
	cmpl	$3, %eax
	jne	.L45
	vmovsd	%xmm0, 16(%rcx)
	movl	$3, %esi
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%rcx,%rax,8), %rdx
	movl	%r14d, %r8d
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
	je	.L81
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%esi, %rax
	vmovsd	%xmm0, (%rcx,%rax,8)
	leal	1(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
	leal	2(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
	leal	3(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
	leal	4(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	addl	$5, %esi
	vmovsd	%xmm0, (%rcx,%rax,8)
	cmpl	%esi, %r14d
	jle	.L8
	movslq	%esi, %rsi
	vmovsd	%xmm0, (%rcx,%rsi,8)
.L8:
	leaq	-80(%rbp), %rdi
	movq	%r9, %rdx
	movl	$32, %esi
	movq	%rcx, -88(%rbp)
	call	posix_memalign
	movq	-88(%rbp), %rcx
	testl	%eax, %eax
	je	.L82
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %esi
	cmovle	%eax, %r15d
	cmovg	%r14d, %esi
	cmpl	$4, %r15d
	ja	.L83
	movq	$0, -280(%rbp)
	xorl	%eax, %eax
.L32:
	movq	-280(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L36
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L36
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L36
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L36
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L36
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L36:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -80(%rbp)
	leal	-2(%r13), %eax
	movl	%eax, -560(%rbp)
	testl	%edx, %edx
	jne	.L84
	cmpl	$2, -560(%rbp)
	jle	.L79
	leal	-2(%r12), %eax
	movl	%r12d, -328(%rbp)
	movl	%eax, -512(%rbp)
	movl	%r12d, %eax
	imull	%ebx, %eax
	movl	%eax, -564(%rbp)
	cmpl	$4, %ebx
	jle	.L79
.L41:
	cmpl	$2, -512(%rbp)
	jle	.L76
	movl	-564(%rbp), %eax
	leal	(%r12,%r12), %esi
	movl	%r12d, -612(%rbp)
	movslq	%esi, %rdi
	movl	%esi, -568(%rbp)
	movq	%rdi, -576(%rbp)
	movl	$0, -552(%rbp)
	movl	$2, -532(%rbp)
	leal	(%rax,%rax), %edx
	movl	%edx, -516(%rbp)
	leal	(%rax,%rax,2), %edx
	movl	%edx, -548(%rbp)
	leal	0(,%rax,4), %edx
	movl	%edx, -556(%rbp)
	movslq	%r12d, %rdx
	movq	%rdx, -344(%rbp)
	salq	$3, %rdx
	movq	%rdx, -376(%rbp)
	leal	(%r12,%r12,2), %edx
	movl	%edx, -628(%rbp)
	movslq	%edx, %rdx
	movq	%rdx, -584(%rbp)
	leal	0(,%r12,4), %edx
	movl	%edx, -632(%rbp)
	movslq	%edx, %rdx
	movq	%rdx, -544(%rbp)
	movl	%eax, %edx
	addl	%esi, %eax
	movl	-328(%rbp), %esi
	movl	%eax, -616(%rbp)
	movl	%r12d, %eax
	subl	%edx, %eax
	movl	%edx, -536(%rbp)
	addl	%eax, %eax
	movl	%eax, -620(%rbp)
	leal	(%rdx,%r12), %eax
	addl	%eax, %eax
	movl	%eax, -624(%rbp)
	leal	-4(%r12), %eax
	movl	%eax, -176(%rbp)
	addq	%rdi, %rax
	movq	%rax, -592(%rbp)
	leal	(%rsi,%rsi,2), %eax
	cltq
	movq	%rax, -600(%rbp)
	leal	0(,%rsi,4), %eax
	cltq
	movq	%rax, -608(%rbp)
	leaq	16(%rcx), %rax
	movq	%rax, -416(%rbp)
	leaq	48(%rcx), %rax
	movq	%rax, -392(%rbp)
	leaq	64(%rcx), %rax
	movq	%rax, -400(%rbp)
	leaq	2(%rdi), %rax
	movq	%rax, -648(%rbp)
	leaq	6(%rdi), %rax
	movq	%rax, -656(%rbp)
	leal	-2(%rbx), %eax
	movq	%rcx, %rbx
	movl	%eax, -404(%rbp)
	leal	-5(%r12), %eax
	movl	%eax, -408(%rbp)
	addq	%rdi, %rax
	movq	%rax, -640(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -384(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movslq	-516(%rbp), %rdi
	movq	-648(%rbp), %rax
	movq	-280(%rbp), %r14
	movq	-576(%rbp), %r11
	movq	%rdi, %rcx
	addl	-616(%rbp), %ecx
	movq	%rdi, -320(%rbp)
	movq	%rdi, %r10
	addq	%rdi, %rax
	movl	-568(%rbp), %r15d
	leaq	(%r14,%rax,8), %rax
	movq	-344(%rbp), %r13
	addl	$1, -532(%rbp)
	movq	%rax, -144(%rbp)
	movq	%r11, %rax
	addq	%rdi, %rax
	movl	%ecx, -308(%rbp)
	movl	-612(%rbp), %ecx
	leaq	0(,%rax,8), %rsi
	movq	%rax, -288(%rbp)
	movq	%r14, %rax
	addq	%rsi, %rax
	movq	%rsi, -120(%rbp)
	movl	-536(%rbp), %esi
	movq	%rax, -296(%rbp)
	movq	-656(%rbp), %rax
	addl	%edi, %ecx
	movl	%ecx, -312(%rbp)
	movl	-628(%rbp), %ecx
	addq	%rdi, %rax
	leaq	(%r14,%rax,8), %rax
	addl	%edi, %ecx
	movq	%rax, -184(%rbp)
	movl	%edi, %eax
	addl	%r15d, %eax
	movl	%ecx, -136(%rbp)
	movl	-620(%rbp), %ecx
	movl	%eax, -300(%rbp)
	movl	%esi, %eax
	addl	%r15d, %eax
	movl	%eax, -304(%rbp)
	movl	-632(%rbp), %eax
	addl	%edi, %ecx
	movl	%ecx, -156(%rbp)
	movl	-624(%rbp), %ecx
	addl	%edi, %eax
	movl	%eax, -164(%rbp)
	movq	%r13, %rax
	addq	%rdi, %rax
	addl	%edi, %ecx
	movq	%rax, -456(%rbp)
	salq	$3, %rax
	movl	%ecx, -160(%rbp)
	movslq	%esi, %rcx
	movq	%rax, -192(%rbp)
	movq	-584(%rbp), %r12
	movq	%rdi, %rax
	movslq	-548(%rbp), %r9
	movq	%r11, -256(%rbp)
	movq	-600(%rbp), %r8
	movq	%r13, -248(%rbp)
	movslq	-552(%rbp), %rdx
	movq	$0, -128(%rbp)
	addq	%r12, %rax
	movq	%r12, -264(%rbp)
	movl	$0, -168(%rbp)
	salq	$3, %rax
	movq	%rax, -200(%rbp)
	addq	%r10, %r8
	movq	-544(%rbp), %rax
	movq	%r8, -464(%rbp)
	movq	-608(%rbp), %r8
	movq	$0, -152(%rbp)
	movl	$2, -172(%rbp)
	addq	%rdi, %rax
	salq	$3, %rax
	addq	%r10, %r8
	movq	%rax, -208(%rbp)
	leaq	(%r11,%rcx), %rax
	subq	%r10, %rcx
	movq	%rax, -480(%rbp)
	salq	$3, %rax
	movq	%rax, -216(%rbp)
	leaq	(%r11,%r9), %rax
	subq	%r10, %r9
	movq	%rax, -488(%rbp)
	salq	$3, %rax
	movq	%rax, -224(%rbp)
	leaq	(%r11,%rdx), %rax
	subq	%r10, %rdx
	movq	%rax, -496(%rbp)
	salq	$3, %rax
	movq	%rax, -232(%rbp)
	movslq	-556(%rbp), %rax
	movq	%r8, -472(%rbp)
	movq	-640(%rbp), %r8
	leaq	(%r11,%rax), %rsi
	subq	%r10, %rax
	movq	%rsi, -504(%rbp)
	salq	$3, %rsi
	addq	%r10, %r8
	movq	%rsi, -240(%rbp)
	leaq	(%rbx,%rdi,8), %rsi
	addq	-592(%rbp), %rdi
	leaq	(%rbx,%r8,8), %r8
	movq	%r8, -528(%rbp)
	movq	-544(%rbp), %r8
	leaq	16(%r14,%rdi,8), %rdi
	movq	%rdi, -360(%rbp)
	leaq	48(%rsi), %rdi
	movq	%r8, -272(%rbp)
	movq	%rdi, -368(%rbp)
	leaq	16(%rsi), %rdi
	movq	%rax, -448(%rbp)
	leal	2(%r10), %eax
	movl	%eax, -508(%rbp)
	leal	3(%r10), %eax
	movq	%rdi, -352(%rbp)
	movq	%rcx, -424(%rbp)
	movq	%r9, -432(%rbp)
	movq	%rdx, -440(%rbp)
	movl	%eax, -520(%rbp)
	.p2align 4,,10
	.p2align 3
.L29:
	movq	-152(%rbp), %r10
	leaq	-80(%rbp), %rdi
	movq	-360(%rbp), %rax
	movq	-144(%rbp), %r14
	addl	$1, -172(%rbp)
	movq	-120(%rbp), %rsi
	addq	%r10, %rax
	movq	-184(%rbp), %r11
	cmpq	%rax, %rdi
	movq	-384(%rbp), %rax
	setnb	%cl
	movq	-392(%rbp), %rdi
	leaq	(%rbx,%rsi), %rdx
	movq	-192(%rbp), %r8
	movq	-416(%rbp), %r15
	cmpq	%rax, %r14
	movq	-216(%rbp), %r9
	setnb	%al
	orl	%ecx, %eax
	cmpl	$5, -176(%rbp)
	seta	%cl
	andl	%ecx, %eax
	movq	-400(%rbp), %rcx
	addq	%rsi, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	cmpq	%rdx, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r15, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	movq	-200(%rbp), %r8
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r15, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	movq	-208(%rbp), %r8
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	-352(%rbp), %rsi
	andl	%ecx, %eax
	movq	-368(%rbp), %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r10, %rsi
	movq	-224(%rbp), %r10
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r15, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	movq	-232(%rbp), %r8
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r15, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r9, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r15, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r10, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r15, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L27
	movq	-240(%rbp), %rsi
	addq	%rsi, %rdi
	cmpq	%rdi, %r14
	setnb	%cl
	addq	%rsi, %r15
	cmpq	%r15, %r11
	setbe	%al
	orb	%al, %cl
	je	.L27
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-408(%rbp), %eax
	ja	.L48
	movl	$2, -132(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	-300(%rbp), %r15d
	movl	$3, -132(%rbp)
	movl	-304(%rbp), %r14d
	movl	-308(%rbp), %r13d
	movl	-312(%rbp), %r12d
	leal	3(%r15), %r10d
	leal	2(%r15), %eax
	movslq	%r10d, %r9
	movl	-508(%rbp), %r10d
	leal	1(%r15), %esi
	cltq
	movq	%r9, -88(%rbp)
	addl	-168(%rbp), %r10d
	movslq	%esi, %rsi
	leaq	(%rbx,%r9,8), %rdi
	leal	2(%r14), %r9d
	leaq	(%rbx,%rsi,8), %r8
	movslq	%r9d, %r9
	leaq	(%rbx,%rax,8), %rcx
	vmovsd	(%r8), %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	leal	4(%r15), %esi
	vaddsd	(%rdi), %xmm0, %xmm0
	movslq	%esi, %r11
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	leal	2(%r13), %r9d
	leaq	(%rbx,%r11,8), %rsi
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	leal	2(%r12), %r9d
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movl	-136(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movslq	%r15d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movl	-156(%rbp), %r9d
	vaddsd	(%rsi), %xmm0, %xmm0
	addl	$2, %r9d
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movl	-160(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movslq	%r10d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movl	-164(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-280(%rbp), %r9
	vmovsd	%xmm0, (%r9,%rax,8)
	cmpl	$1, %edx
	je	.L17
	leal	3(%r14), %r9d
	vmovsd	(%rdi), %xmm0
	movl	$4, -132(%rbp)
	vaddsd	(%rcx), %xmm0, %xmm0
	leal	5(%r15), %eax
	movslq	%r9d, %r9
	vaddsd	(%rsi), %xmm0, %xmm0
	cltq
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	leal	3(%r13), %r9d
	leaq	(%rbx,%rax,8), %rax
	movslq	%r9d, %r9
	movl	-520(%rbp), %r10d
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	leal	3(%r12), %r9d
	movslq	%r9d, %r9
	addl	-168(%rbp), %r10d
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movl	-136(%rbp), %r9d
	addl	$3, %r9d
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	movl	-156(%rbp), %r8d
	vaddsd	(%rax), %xmm0, %xmm0
	movq	-88(%rbp), %r9
	addl	$3, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movl	-160(%rbp), %r8d
	addl	$3, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movslq	%r10d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movl	-164(%rbp), %r8d
	movq	-280(%rbp), %r10
	addl	$3, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%r9,8)
	cmpl	$3, %edx
	jne	.L17
	movl	$5, -132(%rbp)
	vmovsd	(%rdi), %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	leal	4(%r14), %eax
	cltq
	movl	-136(%rbp), %r9d
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%r13), %eax
	cltq
	movl	-156(%rbp), %r8d
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%r12), %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%r9), %eax
	cltq
	movl	-168(%rbp), %r9d
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	6(%r15), %eax
	cltq
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%r8), %eax
	movl	-160(%rbp), %r8d
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%r8), %eax
	movl	-164(%rbp), %r8d
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	movl	-516(%rbp), %eax
	leal	4(%r9,%rax), %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%r8), %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%r11,8)
.L17:
	movl	-176(%rbp), %ecx
	movl	%edx, %eax
	movq	%rbx, -336(%rbp)
	movq	-288(%rbp), %rsi
	movq	-128(%rbp), %rdi
	movq	-456(%rbp), %r10
	subl	%edx, %ecx
	movq	-120(%rbp), %r9
	movl	%ecx, -324(%rbp)
	shrl	$2, %ecx
	vbroadcastsd	-80(%rbp), %ymm2
	movl	%ecx, -88(%rbp)
	leaq	2(%rax,%rsi), %rcx
	leaq	0(,%rcx,8), %rdx
	movq	-480(%rbp), %rcx
	movq	%rdx, -112(%rbp)
	leaq	(%rbx,%rdx), %r15
	leaq	1(%rax,%rsi), %rdx
	leaq	(%rbx,%rdx,8), %r14
	leaq	3(%rax,%rsi), %rdx
	leaq	(%rbx,%rdx,8), %r13
	leaq	2(%rdi,%rcx), %rdx
	movq	-488(%rbp), %rcx
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %r12
	leaq	2(%rdi,%rcx), %rdx
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %rcx
	leaq	2(%rdi,%r10), %rdx
	movq	-464(%rbp), %r10
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %r11
	leaq	2(%rdi,%r10), %rdx
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %r10
	leaq	(%r9,%rax,8), %rdx
	leaq	(%rbx,%rdx), %r9
	leaq	4(%rax,%rsi), %rdx
	movq	%r9, -96(%rbp)
	leaq	(%rbx,%rdx,8), %rsi
	movq	%rsi, -104(%rbp)
	movq	%rdi, %rsi
	movq	-496(%rbp), %rdi
	leaq	2(%rsi,%rdi), %rdx
	movq	-504(%rbp), %rdi
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %r9
	leaq	2(%rsi,%rdi), %rdx
	movq	-320(%rbp), %rdi
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %r8
	leaq	2(%rdi,%rsi), %rdx
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %rdi
	movq	-472(%rbp), %rdx
	leaq	2(%rsi,%rdx), %rdx
	addq	%rdx, %rax
	movq	-112(%rbp), %rdx
	addq	-280(%rbp), %rdx
	leaq	(%rbx,%rax,8), %rsi
	xorl	%eax, %eax
	movq	%rdx, -112(%rbp)
	xorl	%edx, %edx
	movl	%edx, %ebx
	.p2align 4,,10
	.p2align 3
.L19:
	vmovupd	(%r15,%rax), %xmm0
	vinsertf128	$0x1, 16(%r15,%rax), %ymm0, %ymm1
	addl	$1, %ebx
	vmovupd	(%r14,%rax), %xmm0
	vinsertf128	$0x1, 16(%r14,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	0(%r13,%rax), %xmm1
	vinsertf128	$0x1, 16(%r13,%rax), %ymm1, %ymm1
	movq	-96(%rbp), %rdx
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r12,%rax), %xmm1
	vinsertf128	$0x1, 16(%r12,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rcx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r11,%rax), %xmm1
	vinsertf128	$0x1, 16(%r11,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r10,%rax), %xmm1
	vinsertf128	$0x1, 16(%r10,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vaddpd	(%rdx,%rax), %ymm0, %ymm0
	movq	-104(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm0, %ymm1
	vmovupd	(%r9,%rax), %xmm0
	vinsertf128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	movq	-112(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	(%r8,%rax), %xmm1
	vinsertf128	$0x1, 16(%r8,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rdi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rsi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpl	%ebx, -88(%rbp)
	ja	.L19
	movl	-324(%rbp), %edi
	movl	-132(%rbp), %edx
	movq	-336(%rbp), %rbx
	movl	%edi, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %edi
	je	.L23
.L16:
	movq	-256(%rbp), %r10
	movslq	%edx, %rdx
	movq	-320(%rbp), %rax
	movq	-248(%rbp), %r8
	movq	-264(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-272(%rbp), %rcx
	addq	%r10, %rax
	subq	%r10, %r8
	movl	-512(%rbp), %r9d
	addq	%rdx, %rax
	movq	-424(%rbp), %r11
	leaq	-16(%rbx,%rax,8), %rax
	subq	%r10, %rdi
	subq	%r10, %rsi
	movq	-432(%rbp), %r12
	subq	%r10, %rcx
	movq	-440(%rbp), %r13
	movq	-296(%rbp), %r10
	movq	-448(%rbp), %r14
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	16(%rax), %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	16(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	16(%rax,%r13,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r14,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %r9d
	jg	.L21
.L23:
	movq	-376(%rbp), %rax
	movl	-328(%rbp), %edi
	movq	-344(%rbp), %rsi
	addl	%edi, -300(%rbp)
	addl	%edi, -304(%rbp)
	addl	%edi, -308(%rbp)
	addl	%edi, -312(%rbp)
	addq	%rax, -144(%rbp)
	addq	%rax, -296(%rbp)
	addq	%rax, -184(%rbp)
	addq	%rsi, -248(%rbp)
	addq	%rsi, -256(%rbp)
	addq	%rsi, -264(%rbp)
	addq	%rsi, -128(%rbp)
	addq	%rsi, -272(%rbp)
	addq	%rsi, -288(%rbp)
	addq	%rax, -120(%rbp)
	addl	%edi, -136(%rbp)
	addl	%edi, -156(%rbp)
	addl	%edi, -160(%rbp)
	addl	%edi, -164(%rbp)
	addl	%edi, -168(%rbp)
	addq	%rax, -152(%rbp)
	addq	%rax, -192(%rbp)
	addq	%rax, -200(%rbp)
	addq	%rax, -208(%rbp)
	addq	%rax, -216(%rbp)
	addq	%rax, -224(%rbp)
	addq	%rax, -232(%rbp)
	addq	%rax, -240(%rbp)
	movl	-404(%rbp), %edi
	cmpl	%edi, -172(%rbp)
	jne	.L29
	movl	-564(%rbp), %eax
	movl	-532(%rbp), %edx
	addl	%eax, -516(%rbp)
	addl	%eax, -536(%rbp)
	addl	%eax, -548(%rbp)
	addl	%eax, -552(%rbp)
	addl	%eax, -556(%rbp)
	cmpl	%edx, -560(%rbp)
	jg	.L28
	movq	%rbx, %rcx
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L77
	movq	%rcx, %rdi
	call	dummy
	movq	-280(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L77:
	addq	$608, %rsp
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
.L83:
	movq	$0, -280(%rbp)
	xorl	%edx, %edx
.L9:
	movq	-280(%rbp), %r15
	subl	%edx, %esi
	movl	%esi, %edi
	vmovapd	.LC3(%rip), %ymm0
	shrl	$2, %edi
	leaq	(%r15,%rdx,8), %r8
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L11:
	addl	$1, %edx
	vmovapd	%ymm0, (%r8)
	addq	$32, %r8
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
	movq	-152(%rbp), %rax
	movq	-528(%rbp), %rdi
	movq	-256(%rbp), %r15
	movq	-248(%rbp), %r8
	movq	-128(%rbp), %rsi
	leaq	8(%rax,%rdi), %r9
	movq	-272(%rbp), %rcx
	movq	-264(%rbp), %rdi
	movq	-144(%rbp), %rax
	subq	%r15, %r8
	movq	-424(%rbp), %r10
	subq	%r15, %rsi
	movq	-432(%rbp), %r11
	subq	%r15, %rcx
	movq	-440(%rbp), %r12
	subq	%r15, %rdi
	movq	-448(%rbp), %r13
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	8(%rdx), %xmm0
	addq	$8, %rax
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	16(%rdx,%r10,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%r11,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	16(%rdx,%r12,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%r13,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%rcx,8), %xmm0, %xmm0
	addq	$8, %rdx
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rax)
	cmpq	%r9, %rdx
	jne	.L22
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L48:
	movl	$2, %edx
	jmp	.L16
.L82:
	movq	-80(%rbp), %rdx
	testl	%r14d, %r14d
	movl	$1, %esi
	movl	$5, %edi
	cmovg	%r14d, %esi
	movq	%rdx, -280(%rbp)
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	leal	3(%rdx), %r8d
	cmovle	%eax, %r15d
	cmpl	$5, %r8d
	cmovb	%edi, %r8d
	cmpl	%r8d, %r15d
	jb	.L32
	testl	%edx, %edx
	je	.L9
	movq	-280(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L46
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L47
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
	jmp	.L9
.L84:
	movq	%rcx, %rdi
	movq	%rcx, -88(%rbp)
	vzeroupper
	call	dummy
	movq	-280(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$2, -560(%rbp)
	movq	-88(%rbp), %rcx
	jle	.L15
	leal	-2(%r12), %eax
	movl	%r12d, -328(%rbp)
	movl	%eax, -512(%rbp)
	movl	%r12d, %eax
	imull	%ebx, %eax
	movl	%eax, -564(%rbp)
	cmpl	$4, %ebx
	jg	.L41
	jmp	.L15
.L81:
	vzeroupper
	jmp	.L8
.L79:
	vzeroupper
	jmp	.L77
.L46:
	movl	$1, %eax
	jmp	.L9
.L3:
	leaq	-80(%rbp), %rdi
	movq	%r9, %rdx
	movl	$32, %esi
	movq	%rcx, -88(%rbp)
	call	posix_memalign
	movq	-88(%rbp), %rcx
	movq	$0, -280(%rbp)
	testl	%eax, %eax
	jne	.L36
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)
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
