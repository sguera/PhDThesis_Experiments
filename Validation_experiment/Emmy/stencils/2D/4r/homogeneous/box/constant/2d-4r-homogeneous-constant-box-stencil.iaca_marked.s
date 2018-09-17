	.file	"2d-4r-homogeneous-constant-box-stencil.c_compilable.c"
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
	subq	$896, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	movl	%r12d, %r13d
	call	strtol
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r13d
	movq	%rax, %rbx
	movslq	%r13d, %r15
	salq	$3, %r15
	movq	%r15, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %r14
	testl	%r13d, %r13d
	jle	.L3
	leal	-1(%r13), %r8d
	movq	%r14, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r8d
	jb	.L39
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r14)
	cmpl	$1, %eax
	je	.L41
	vmovsd	%xmm0, 8(%r14)
	cmpl	$3, %eax
	jne	.L42
	vmovsd	%xmm0, 16(%r14)
	movl	$3, %edi
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r14,%rax,8), %rdx
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
	je	.L75
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r14,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r14,%rax,8)
.L8:
	leaq	-80(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
	movl	%r8d, -88(%rbp)
	call	posix_memalign
	movl	-88(%rbp), %r8d
	testl	%eax, %eax
	je	.L76
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovg	%r8d, %eax
	cmovg	%r13d, %edi
	cmpl	$4, %eax
	ja	.L77
	movq	$0, -856(%rbp)
	xorl	%eax, %eax
.L31:
	movq	-856(%rbp), %rcx
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
	movq	%rax, -80(%rbp)
	leal	-4(%r12), %eax
	movl	%eax, -864(%rbp)
	testl	%edx, %edx
	jne	.L78
	cmpl	$4, -864(%rbp)
	jle	.L79
.L14:
	leal	-4(%rbx), %eax
	movl	%eax, -912(%rbp)
	cmpl	$4, %eax
	jle	.L71
	movq	-856(%rbp), %rsi
	movslq	%ebx, %r15
	movq	$0, -816(%rbp)
	leal	0(,%rbx,4), %edx
	movq	%r15, -880(%rbp)
	movslq	%edx, %rdi
	addl	%ebx, %edx
	movq	%r15, -824(%rbp)
	leaq	32(,%rdi,8), %rax
	movq	%rdi, -808(%rbp)
	leaq	(%rsi,%rax), %rcx
	movq	$0, -120(%rbp)
	leaq	0(,%r15,8), %r9
	movq	%rcx, -104(%rbp)
	leaq	-32(%rax), %rcx
	movq	%r9, -888(%rbp)
	leaq	32(%rsi,%rax), %rax
	movq	%rcx, -776(%rbp)
	movq	%rax, -96(%rbp)
	leaq	(%r14,%r9), %rax
	leaq	(%rsi,%rcx), %r8
	movq	%rax, -800(%rbp)
	movslq	%edx, %rcx
	leal	(%rbx,%rbx), %eax
	movq	%r8, -784(%rbp)
	movslq	%eax, %r8
	addl	%ebx, %eax
	movq	%rcx, -712(%rbp)
	salq	$3, %rcx
	movq	%r8, -832(%rbp)
	salq	$3, %r8
	movq	%r8, -728(%rbp)
	movslq	%eax, %r8
	addl	%eax, %eax
	cltq
	movq	%rcx, -744(%rbp)
	movq	%rax, -720(%rbp)
	salq	$3, %rax
	movq	%rax, -752(%rbp)
	leal	0(,%rbx,8), %eax
	movl	%eax, %edx
	cltq
	movq	%r8, -840(%rbp)
	salq	$3, %r8
	movq	%rax, -112(%rbp)
	salq	$3, %rax
	subl	%ebx, %edx
	movq	%rax, -768(%rbp)
	leal	-8(%rbx), %eax
	movslq	%edx, %rcx
	movl	%eax, -848(%rbp)
	leal	-9(%rbx), %edx
	addq	%rdi, %rax
	leaq	32(%rsi,%rax,8), %rax
	movl	%edx, -908(%rbp)
	addq	%rdi, %rdx
	movq	%rax, -904(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rcx, -696(%rbp)
	addq	$8, %rax
	salq	$3, %rcx
	movq	%rax, -896(%rbp)
	leaq	32(%r14), %rax
	movq	%rax, -920(%rbp)
	leaq	96(%r14), %rdi
	leaq	8(%r14,%rdx,8), %rax
	movq	%r8, -736(%rbp)
	movq	%rcx, -760(%rbp)
	movq	%r9, -792(%rbp)
	movl	$4, -128(%rbp)
	movq	%rdi, -704(%rbp)
	movq	%rax, -928(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-760(%rbp), %r10
	movq	-768(%rbp), %r11
	movq	-120(%rbp), %rbx
	movq	-752(%rbp), %r15
	leaq	(%r14,%r10), %r9
	movq	-728(%rbp), %rcx
	leaq	(%r14,%r11), %r10
	movq	-904(%rbp), %r11
	movq	-736(%rbp), %rsi
	leaq	(%r14,%rbx), %rdx
	movq	-744(%rbp), %rdi
	leaq	(%r14,%r15), %r8
	leaq	-80(%rbp), %r15
	addq	%r14, %rcx
	movq	-776(%rbp), %r12
	addl	$1, -128(%rbp)
	addq	%rbx, %r11
	addq	%r14, %rsi
	movq	-104(%rbp), %rbx
	addq	%r14, %rdi
	cmpq	%r11, %r15
	movq	-896(%rbp), %r11
	leaq	(%r14,%r12), %rax
	setnb	%r15b
	cmpq	%r11, %rbx
	movq	-704(%rbp), %r11
	setnb	%r13b
	orl	%r15d, %r13d
	cmpl	$4, -848(%rbp)
	seta	%r15b
	addq	%r12, %r11
	andl	%r13d, %r15d
	cmpq	%r11, %rbx
	movq	-120(%rbp), %r11
	setnb	%bl
	cmpq	%rax, -96(%rbp)
	movl	%r15d, %r13d
	movq	-704(%rbp), %r15
	setbe	%r12b
	orl	%ebx, %r12d
	addq	%r15, %r11
	andl	%r12d, %r13d
	cmpq	%r11, -104(%rbp)
	setnb	%bl
	cmpq	%rdx, -96(%rbp)
	setbe	%r11b
	orl	%ebx, %r11d
	andl	%r11d, %r13d
	movq	-792(%rbp), %r11
	movl	%r13d, %r12d
	movq	%r15, %r13
	addq	%r15, %r11
	cmpq	%r11, -104(%rbp)
	movl	%r12d, %r11d
	movq	%r13, %r12
	movq	-96(%rbp), %r15
	setnb	%bl
	cmpq	-800(%rbp), %r15
	setbe	%r15b
	orl	%ebx, %r15d
	movq	-728(%rbp), %rbx
	andl	%r15d, %r11d
	addq	%r13, %rbx
	cmpq	%rbx, -104(%rbp)
	setnb	%bl
	cmpq	%rcx, -96(%rbp)
	setbe	%r13b
	orl	%ebx, %r13d
	andl	%r13d, %r11d
	movl	%r11d, %r15d
	movq	-736(%rbp), %r11
	movl	%r15d, %r13d
	movq	-704(%rbp), %r15
	addq	%r12, %r11
	cmpq	%r11, -104(%rbp)
	movq	-744(%rbp), %r11
	setnb	%bl
	cmpq	%rsi, -96(%rbp)
	setbe	%r12b
	addq	%r15, %r11
	orl	%ebx, %r12d
	andl	%r12d, %r13d
	cmpq	%r11, -104(%rbp)
	movl	%r13d, %r12d
	movq	-104(%rbp), %r13
	setnb	%bl
	cmpq	%rdi, -96(%rbp)
	setbe	%r11b
	orl	%ebx, %r11d
	andl	%r11d, %r12d
	movq	-752(%rbp), %r11
	addq	%r15, %r11
	cmpq	%r11, %r13
	setnb	%bl
	cmpq	%r8, -96(%rbp)
	setbe	%r11b
	orl	%ebx, %r11d
	movq	-760(%rbp), %rbx
	andl	%r12d, %r11d
	addq	%r15, %rbx
	cmpq	%rbx, %r13
	setnb	%bl
	cmpq	%r9, -96(%rbp)
	setbe	%r12b
	orl	%r12d, %ebx
	testb	%bl, %r11b
	je	.L28
	addq	-768(%rbp), %r15
	cmpq	%r15, %r13
	setnb	%bl
	cmpq	%r10, -96(%rbp)
	setbe	%r11b
	orb	%r11b, %bl
	je	.L28
	movq	-920(%rbp), %rbx
	addq	-776(%rbp), %rbx
	shrq	$3, %rbx
	negq	%rbx
	andl	$3, %ebx
	leal	3(%rbx), %r11d
	cmpl	-908(%rbp), %r11d
	ja	.L45
	movl	$4, -844(%rbp)
	testl	%ebx, %ebx
	je	.L17
	leal	-1(%rbx), %r13d
	movl	%ebx, -88(%rbp)
	movq	-800(%rbp), %r11
	movl	$5, %r12d
	movq	-784(%rbp), %rbx
	addq	$6, %r13
.L18:
	vmovsd	(%rdx), %xmm0
	movl	%r12d, %r15d
	addq	$8, %rax
	addq	$8, %rdx
	vaddsd	24(%rax), %xmm0, %xmm0
	addq	$8, %r11
	addq	$8, %rcx
	vaddsd	-8(%r11), %xmm0, %xmm0
	addq	$8, %rsi
	addq	$8, %rdi
	vaddsd	-8(%rcx), %xmm0, %xmm0
	addq	$8, %r8
	addq	$8, %r9
	vaddsd	-8(%rsi), %xmm0, %xmm0
	addq	$8, %r10
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
	vaddsd	-8(%r8), %xmm0, %xmm0
	vaddsd	-8(%r9), %xmm0, %xmm0
	vaddsd	-8(%r10), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	8(%r11), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%r8), %xmm0, %xmm0
	vaddsd	8(%r9), %xmm0, %xmm0
	vaddsd	8(%r10), %xmm0, %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	16(%r11), %xmm0, %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm0
	vaddsd	16(%rsi), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	vaddsd	16(%r8), %xmm0, %xmm0
	vaddsd	16(%r9), %xmm0, %xmm0
	vaddsd	16(%r10), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	24(%r11), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%r8), %xmm0, %xmm0
	vaddsd	24(%r9), %xmm0, %xmm0
	vaddsd	24(%r10), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	32(%r11), %xmm0, %xmm0
	vaddsd	32(%rcx), %xmm0, %xmm0
	vaddsd	32(%rsi), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	32(%rdi), %xmm0, %xmm0
	vaddsd	32(%r8), %xmm0, %xmm0
	vaddsd	32(%r9), %xmm0, %xmm0
	vaddsd	32(%r10), %xmm0, %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vaddsd	40(%r11), %xmm0, %xmm0
	vaddsd	40(%rcx), %xmm0, %xmm0
	vaddsd	40(%rsi), %xmm0, %xmm0
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	40(%rdi), %xmm0, %xmm0
	vaddsd	40(%r8), %xmm0, %xmm0
	vaddsd	40(%r9), %xmm0, %xmm0
	vaddsd	40(%r10), %xmm0, %xmm0
	vaddsd	48(%rdx), %xmm0, %xmm0
	vaddsd	48(%r11), %xmm0, %xmm0
	vaddsd	48(%rcx), %xmm0, %xmm0
	vaddsd	48(%rsi), %xmm0, %xmm0
	vaddsd	48(%rax), %xmm0, %xmm0
	vaddsd	48(%rdi), %xmm0, %xmm0
	vaddsd	48(%r8), %xmm0, %xmm0
	vaddsd	48(%r9), %xmm0, %xmm0
	vaddsd	48(%r10), %xmm0, %xmm0
	vaddsd	56(%rdx), %xmm0, %xmm0
	vaddsd	56(%r11), %xmm0, %xmm0
	vaddsd	56(%rcx), %xmm0, %xmm0
	vaddsd	56(%rsi), %xmm0, %xmm0
	vaddsd	56(%rax), %xmm0, %xmm0
	vaddsd	56(%rdi), %xmm0, %xmm0
	vaddsd	56(%r8), %xmm0, %xmm0
	vaddsd	56(%r9), %xmm0, %xmm0
	vaddsd	56(%r10), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rbx,%r12,8)
	addq	$1, %r12
	cmpq	%r13, %r12
	jne	.L18
	movl	-88(%rbp), %ebx
	movl	%r15d, -844(%rbp)
.L17:
	movl	-848(%rbp), %edi
	movl	%ebx, %eax
	movq	-832(%rbp), %r15
	movq	-840(%rbp), %r10
	subl	%ebx, %edi
	movl	%edi, -860(%rbp)
	shrl	$2, %edi
	movl	%edi, -124(%rbp)
	movq	-808(%rbp), %rdi
	leaq	4(%rax,%rdi), %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	(%r14,%rcx), %rsi
	movq	%rcx, -88(%rbp)
	movq	%rsi, -136(%rbp)
	movq	-120(%rbp), %rsi
	leaq	0(,%rax,8), %rdx
	leaq	(%rdx,%rsi), %rcx
	movq	-792(%rbp), %rsi
	leaq	(%r14,%rcx), %rbx
	movq	%rbx, -144(%rbp)
	leaq	(%rdx,%rsi), %rcx
	movq	-728(%rbp), %rsi
	leaq	(%r14,%rcx), %rbx
	movq	%rbx, -152(%rbp)
	leaq	(%rdx,%rsi), %rcx
	movq	-736(%rbp), %rsi
	leaq	(%r14,%rcx), %rbx
	movq	%rbx, -160(%rbp)
	leaq	(%rdx,%rsi), %rcx
	movq	-776(%rbp), %rsi
	leaq	(%r14,%rcx), %rbx
	movq	%rbx, -168(%rbp)
	leaq	(%rdx,%rsi), %rcx
	movq	-744(%rbp), %rsi
	leaq	(%r14,%rcx), %rbx
	movq	%rbx, -176(%rbp)
	leaq	(%rdx,%rsi), %rcx
	movq	-752(%rbp), %rsi
	leaq	(%r14,%rcx), %rbx
	movq	%rbx, -184(%rbp)
	leaq	(%rdx,%rsi), %rcx
	movq	-760(%rbp), %rsi
	leaq	(%r14,%rcx), %rbx
	movq	%rbx, -192(%rbp)
	leaq	(%rdx,%rsi), %rcx
	addq	-768(%rbp), %rdx
	leaq	(%r14,%rcx), %rbx
	movq	-824(%rbp), %rcx
	movq	%rbx, -200(%rbp)
	leaq	(%r14,%rdx), %rbx
	movq	%rbx, -208(%rbp)
	movq	-816(%rbp), %rbx
	leaq	1(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rsi
	leaq	1(%rax,%rcx), %rdx
	movq	%rsi, -216(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	leaq	1(%rax,%r15), %rdx
	movq	%rsi, -224(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	leaq	1(%rax,%r10), %rdx
	movq	%rsi, -232(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	leaq	1(%rax,%rdi), %rdx
	movq	%rsi, -240(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	movq	%rsi, -248(%rbp)
	movq	-712(%rbp), %r8
	movq	-720(%rbp), %r11
	movq	-696(%rbp), %r12
	movq	-112(%rbp), %r9
	leaq	1(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rsi
	leaq	1(%rax,%r11), %rdx
	movq	%rsi, -256(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	leaq	1(%rax,%r12), %rdx
	movq	%rsi, -264(%rbp)
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -272(%rbp)
	leaq	1(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -280(%rbp)
	leaq	2(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -288(%rbp)
	leaq	2(%rax,%rcx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -296(%rbp)
	leaq	2(%rax,%r15), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -304(%rbp)
	leaq	2(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -312(%rbp)
	leaq	2(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -320(%rbp)
	leaq	2(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -328(%rbp)
	leaq	2(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -336(%rbp)
	leaq	2(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -344(%rbp)
	leaq	2(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -352(%rbp)
	leaq	3(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -360(%rbp)
	leaq	3(%rax,%rcx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -368(%rbp)
	leaq	3(%rax,%r15), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -376(%rbp)
	leaq	3(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -384(%rbp)
	leaq	3(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -392(%rbp)
	leaq	3(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -400(%rbp)
	leaq	3(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -408(%rbp)
	leaq	3(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -416(%rbp)
	leaq	3(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -424(%rbp)
	leaq	4(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -432(%rbp)
	leaq	4(%rax,%rcx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -440(%rbp)
	leaq	4(%rax,%r15), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -448(%rbp)
	leaq	4(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -456(%rbp)
	leaq	4(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -464(%rbp)
	leaq	4(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -472(%rbp)
	leaq	4(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -480(%rbp)
	leaq	4(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -488(%rbp)
	leaq	5(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -496(%rbp)
	leaq	5(%rax,%rcx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -504(%rbp)
	leaq	5(%rax,%r15), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -512(%rbp)
	leaq	5(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -520(%rbp)
	leaq	5(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -528(%rbp)
	leaq	5(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -536(%rbp)
	leaq	5(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -544(%rbp)
	leaq	5(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rsi
	leaq	5(%rax,%r9), %rdx
	movq	%rsi, -552(%rbp)
	movq	%r15, %r9
	leaq	(%r14,%rdx,8), %rsi
	leaq	6(%rax,%rbx), %rdx
	movq	%rsi, -560(%rbp)
	movq	%rbx, %rsi
	leaq	(%r14,%rdx,8), %rbx
	leaq	6(%rax,%rcx), %rdx
	movq	%rbx, -568(%rbp)
	leaq	(%r14,%rdx,8), %rbx
	leaq	6(%rax,%r15), %rdx
	movq	%rbx, -576(%rbp)
	leaq	(%r14,%rdx,8), %rbx
	leaq	6(%rax,%r10), %rdx
	movq	%rbx, -584(%rbp)
	leaq	(%r14,%rdx,8), %rbx
	leaq	6(%rax,%rdi), %rdx
	movq	%rbx, -592(%rbp)
	leaq	(%r14,%rdx,8), %rbx
	leaq	6(%rax,%r8), %rdx
	movq	%rbx, -600(%rbp)
	movq	%r8, %rbx
	leaq	(%r14,%rdx,8), %r15
	leaq	6(%rax,%r11), %rdx
	movq	%r15, -608(%rbp)
	leaq	(%r14,%rdx,8), %r15
	leaq	6(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %r13
	movq	-112(%rbp), %rdx
	leaq	6(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %r12
	leaq	7(%rax,%rsi), %rdx
	leaq	(%r14,%rdx,8), %r8
	leaq	7(%rax,%rcx), %rdx
	movq	%r8, -616(%rbp)
	leaq	(%r14,%rdx,8), %r8
	leaq	7(%rax,%r9), %rdx
	movq	%r8, -624(%rbp)
	leaq	(%r14,%rdx,8), %r8
	leaq	7(%rax,%r10), %rdx
	movq	%r8, -632(%rbp)
	movq	%r10, %r8
	leaq	(%r14,%rdx,8), %r10
	leaq	7(%rax,%rdi), %rdx
	movq	%r10, -640(%rbp)
	leaq	(%r14,%rdx,8), %r10
	leaq	7(%rax,%rbx), %rdx
	movq	%r10, -648(%rbp)
	leaq	(%r14,%rdx,8), %r10
	leaq	7(%rax,%r11), %rdx
	movq	%r10, -656(%rbp)
	leaq	(%r14,%rdx,8), %r10
	movq	-696(%rbp), %rdx
	movq	%r10, -664(%rbp)
	leaq	7(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %r10
	movq	%r10, -688(%rbp)
	movq	-112(%rbp), %r10
	leaq	7(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %rbx
	leaq	8(%rax,%rsi), %rdx
	movq	-712(%rbp), %rsi
	leaq	(%r14,%rdx,8), %r11
	leaq	8(%rax,%rcx), %rdx
	leaq	(%r14,%rdx,8), %r10
	leaq	8(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %r9
	leaq	8(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %r8
	leaq	8(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %rdi
	leaq	8(%rax,%rsi), %rdx
	movq	-720(%rbp), %rsi
	movq	%rdi, -672(%rbp)
	leaq	(%r14,%rdx,8), %rdi
	leaq	8(%rax,%rsi), %rdx
	leaq	(%r14,%rdx,8), %rsi
	movq	-696(%rbp), %rdx
	leaq	8(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %rcx
	movq	-112(%rbp), %rdx
	vbroadcastsd	-80(%rbp), %ymm2
	movq	%r14, -872(%rbp)
	leaq	8(%rax,%rdx), %rax
	leaq	(%r14,%rax,8), %rdx
	movq	-88(%rbp), %rax
	movl	$0, -88(%rbp)
	addq	-856(%rbp), %rax
	movq	-688(%rbp), %r14
	movq	%rdx, -688(%rbp)
	movq	%rax, -680(%rbp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	movq	-144(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	movq	-136(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-152(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-160(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-168(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-176(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-184(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-192(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-200(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-208(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-216(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-224(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-232(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-240(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-248(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-256(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-264(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-272(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-280(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-288(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-296(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-304(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-312(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-320(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-328(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-336(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-344(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-352(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-360(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-368(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-376(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-384(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-392(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-400(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-408(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-416(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-424(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-432(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-440(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-448(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-456(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-464(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-472(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-480(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-488(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-496(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-504(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-512(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-520(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-528(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-536(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-544(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-552(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-560(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-568(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-576(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-584(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-592(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-600(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-608(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r15,%rax), %xmm0
	vinsertf128	$0x1, 16(%r15,%rax), %ymm0, %ymm0
	movq	-616(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	0(%r13,%rax), %xmm0
	vinsertf128	$0x1, 16(%r13,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r12,%rax), %xmm0
	vinsertf128	$0x1, 16(%r12,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	movq	-624(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	movq	-632(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-640(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-648(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-656(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-664(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r14,%rax), %xmm0
	vinsertf128	$0x1, 16(%r14,%rax), %ymm0, %ymm0
	movq	-672(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rbx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r11,%rax), %xmm0
	vinsertf128	$0x1, 16(%r11,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r10,%rax), %xmm0
	vinsertf128	$0x1, 16(%r10,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r9,%rax), %xmm0
	vinsertf128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r8,%rax), %xmm0
	vinsertf128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vaddpd	(%rdx,%rax), %ymm0, %ymm1
	vmovupd	(%rdi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	(%rsi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rcx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm1, %ymm1
	movq	-688(%rbp), %rdx
	addl	$1, -88(%rbp)
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	movq	-680(%rbp), %rdx
	vaddpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rax)
	movl	-88(%rbp), %edx
	addq	$32, %rax
	cmpl	-124(%rbp), %edx
	jb	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-860(%rbp), %esi
	movl	-844(%rbp), %ebx
	movq	-872(%rbp), %r14
	movl	%esi, %eax
	andl	$-4, %eax
	addl	%eax, %ebx
	cmpl	%esi, %eax
	je	.L23
.L16:
	movq	-808(%rbp), %rax
	movslq	%ebx, %rbx
	movl	-912(%rbp), %r12d
	movq	-784(%rbp), %r13
	addq	%rbx, %rax
	leaq	(%r14,%rax,8), %r11
	movq	-824(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%r14,%rax,8), %r10
	movq	-832(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%r14,%rax,8), %r9
	movq	-840(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%r14,%rax,8), %r8
	movq	-712(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%r14,%rax,8), %rdi
	movq	-720(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%r14,%rax,8), %rsi
	movq	-696(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%r14,%rax,8), %rcx
	movq	-112(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%r14,%rax,8), %rdx
	movq	-816(%rbp), %rax
	addq	%rbx, %rax
	leaq	-32(%r14,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rax), %xmm0
	addq	$8, %r11
	addq	$8, %r10
	addq	$8, %r9
	vaddsd	-8(%r11), %xmm0, %xmm0
	addq	$8, %r8
	addq	$8, %rdi
	vaddsd	-40(%r10), %xmm0, %xmm0
	addq	$8, %rsi
	addq	$8, %rcx
	vaddsd	-40(%r9), %xmm0, %xmm0
	addq	$8, %rdx
	addq	$8, %rax
	vaddsd	-40(%r8), %xmm0, %xmm0
	vaddsd	-40(%r11), %xmm0, %xmm0
	vaddsd	-40(%rdi), %xmm0, %xmm0
	vaddsd	-40(%rsi), %xmm0, %xmm0
	vaddsd	-40(%rcx), %xmm0, %xmm0
	vaddsd	-40(%rdx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	-32(%r10), %xmm0, %xmm0
	vaddsd	-32(%r9), %xmm0, %xmm0
	vaddsd	-32(%r8), %xmm0, %xmm0
	vaddsd	-32(%r11), %xmm0, %xmm0
	vaddsd	-32(%rdi), %xmm0, %xmm0
	vaddsd	-32(%rsi), %xmm0, %xmm0
	vaddsd	-32(%rcx), %xmm0, %xmm0
	vaddsd	-32(%rdx), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	-24(%r10), %xmm0, %xmm0
	vaddsd	-24(%r9), %xmm0, %xmm0
	vaddsd	-24(%r8), %xmm0, %xmm0
	vaddsd	-24(%r11), %xmm0, %xmm0
	vaddsd	-24(%rdi), %xmm0, %xmm0
	vaddsd	-24(%rsi), %xmm0, %xmm0
	vaddsd	-24(%rcx), %xmm0, %xmm0
	vaddsd	-24(%rdx), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	-16(%r10), %xmm0, %xmm0
	vaddsd	-16(%r9), %xmm0, %xmm0
	vaddsd	-16(%r8), %xmm0, %xmm0
	vaddsd	-16(%r11), %xmm0, %xmm0
	vaddsd	-16(%rdi), %xmm0, %xmm0
	vaddsd	-16(%rsi), %xmm0, %xmm0
	vaddsd	-16(%rcx), %xmm0, %xmm0
	vaddsd	-16(%rdx), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	-8(%r10), %xmm0, %xmm0
	vaddsd	-8(%r9), %xmm0, %xmm0
	vaddsd	-8(%r8), %xmm0, %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	8(%r10), %xmm0, %xmm0
	vaddsd	8(%r9), %xmm0, %xmm0
	vaddsd	8(%r8), %xmm0, %xmm0
	vaddsd	8(%r11), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	48(%rax), %xmm0, %xmm0
	vaddsd	16(%r10), %xmm0, %xmm0
	vaddsd	16(%r9), %xmm0, %xmm0
	vaddsd	16(%r8), %xmm0, %xmm0
	vaddsd	16(%r11), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	vaddsd	16(%rsi), %xmm0, %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	56(%rax), %xmm0, %xmm0
	vaddsd	24(%r10), %xmm0, %xmm0
	vaddsd	24(%r9), %xmm0, %xmm0
	vaddsd	24(%r8), %xmm0, %xmm0
	vaddsd	24(%r11), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%rbx,8)
	addq	$1, %rbx
	cmpl	%ebx, %r12d
	jg	.L21
.L23:
	movq	-888(%rbp), %rax
	movq	-880(%rbp), %rsi
	addq	%rax, -104(%rbp)
	addq	%rax, -784(%rbp)
	addq	%rax, -96(%rbp)
	addq	%rax, -800(%rbp)
	addq	%rsi, -808(%rbp)
	addq	%rax, -120(%rbp)
	addq	%rax, -792(%rbp)
	addq	%rax, -728(%rbp)
	addq	%rax, -736(%rbp)
	addq	%rax, -776(%rbp)
	addq	%rax, -744(%rbp)
	addq	%rax, -752(%rbp)
	addq	%rax, -760(%rbp)
	addq	%rax, -768(%rbp)
	addq	%rsi, -816(%rbp)
	addq	%rsi, -824(%rbp)
	addq	%rsi, -832(%rbp)
	addq	%rsi, -840(%rbp)
	addq	%rsi, -712(%rbp)
	addq	%rsi, -720(%rbp)
	addq	%rsi, -696(%rbp)
	addq	%rsi, -112(%rbp)
	movl	-128(%rbp), %edi
	cmpl	%edi, -864(%rbp)
	jg	.L24
.L71:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L72
	movq	%r14, %rdi
	call	dummy
	movq	-856(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L72:
	addq	$896, %rsp
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
	movq	-792(%rbp), %rbx
	movq	-928(%rbp), %r12
	addq	-120(%rbp), %r12
	leaq	(%r14,%rbx), %r11
	movq	-104(%rbp), %rbx
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	(%rdx), %xmm0
	addq	$8, %rax
	addq	$8, %rdx
	addq	$8, %r11
	vaddsd	24(%rax), %xmm0, %xmm0
	addq	$8, %rcx
	addq	$8, %rsi
	vaddsd	-8(%r11), %xmm0, %xmm0
	addq	$8, %rdi
	addq	$8, %r8
	vaddsd	-8(%rcx), %xmm0, %xmm0
	addq	$8, %r9
	addq	$8, %r10
	vaddsd	-8(%rsi), %xmm0, %xmm0
	addq	$8, %rbx
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
	vaddsd	-8(%r8), %xmm0, %xmm0
	vaddsd	-8(%r9), %xmm0, %xmm0
	vaddsd	-8(%r10), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	8(%r11), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%r8), %xmm0, %xmm0
	vaddsd	8(%r9), %xmm0, %xmm0
	vaddsd	8(%r10), %xmm0, %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	16(%r11), %xmm0, %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm0
	vaddsd	16(%rsi), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	vaddsd	16(%r8), %xmm0, %xmm0
	vaddsd	16(%r9), %xmm0, %xmm0
	vaddsd	16(%r10), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	24(%r11), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%r8), %xmm0, %xmm0
	vaddsd	24(%r9), %xmm0, %xmm0
	vaddsd	24(%r10), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	32(%r11), %xmm0, %xmm0
	vaddsd	32(%rcx), %xmm0, %xmm0
	vaddsd	32(%rsi), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	32(%rdi), %xmm0, %xmm0
	vaddsd	32(%r8), %xmm0, %xmm0
	vaddsd	32(%r9), %xmm0, %xmm0
	vaddsd	32(%r10), %xmm0, %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vaddsd	40(%r11), %xmm0, %xmm0
	vaddsd	40(%rcx), %xmm0, %xmm0
	vaddsd	40(%rsi), %xmm0, %xmm0
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	40(%rdi), %xmm0, %xmm0
	vaddsd	40(%r8), %xmm0, %xmm0
	vaddsd	40(%r9), %xmm0, %xmm0
	vaddsd	40(%r10), %xmm0, %xmm0
	vaddsd	48(%rdx), %xmm0, %xmm0
	vaddsd	48(%r11), %xmm0, %xmm0
	vaddsd	48(%rcx), %xmm0, %xmm0
	vaddsd	48(%rsi), %xmm0, %xmm0
	vaddsd	48(%rax), %xmm0, %xmm0
	vaddsd	48(%rdi), %xmm0, %xmm0
	vaddsd	48(%r8), %xmm0, %xmm0
	vaddsd	48(%r9), %xmm0, %xmm0
	vaddsd	48(%r10), %xmm0, %xmm0
	vaddsd	56(%rdx), %xmm0, %xmm0
	vaddsd	56(%r11), %xmm0, %xmm0
	vaddsd	56(%rcx), %xmm0, %xmm0
	vaddsd	56(%rsi), %xmm0, %xmm0
	vaddsd	56(%rax), %xmm0, %xmm0
	vaddsd	56(%rdi), %xmm0, %xmm0
	vaddsd	56(%r8), %xmm0, %xmm0
	vaddsd	56(%r9), %xmm0, %xmm0
	vaddsd	56(%r10), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rbx)
	cmpq	%r12, %rax
	jne	.L22
	jmp	.L23
.L45:
	movl	$4, %ebx
	jmp	.L16
.L76:
	movq	-80(%rbp), %rcx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rcx, -856(%rbp)
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
	jb	.L31
	testl	%edx, %edx
	je	.L9
	movq	-856(%rbp), %rax
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
	movq	-856(%rbp), %rcx
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
.L78:
	movq	%r14, %rdi
	vzeroupper
	call	dummy
	movq	-856(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$4, -864(%rbp)
	jg	.L14
	jmp	.L15
.L41:
	movl	$1, %edi
	jmp	.L5
.L77:
	movq	$0, -856(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L9
.L43:
	movl	$1, %eax
	jmp	.L9
.L75:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-80(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -856(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -856(%rbp)
	jmp	.L35
.L44:
	movl	$2, %eax
	jmp	.L9
.L42:
	movl	$2, %edi
	jmp	.L5
.L79:
	vzeroupper
	jmp	.L72
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
