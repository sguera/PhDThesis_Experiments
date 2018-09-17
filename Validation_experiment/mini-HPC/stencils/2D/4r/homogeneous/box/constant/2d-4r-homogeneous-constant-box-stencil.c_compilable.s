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
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rsi, %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	subq	$896, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movl	%ebx, %r13d
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	imull	%eax, %r13d
	movq	%rax, %r12
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
	movq	%r14, %rax
	movl	$5, %ecx
	leal	-1(%r13), %r8d
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
	movl	%r13d, %esi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r14,%rax,8), %rdx
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
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
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
	vmovsd	.LC2(%rip), %xmm0
	movq	-856(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L35
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
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
	movl	%eax, -920(%rbp)
	cmpl	$4, %eax
	jle	.L71
	leal	0(,%rbx,4), %edx
	movslq	%ebx, %r15
	movq	-856(%rbp), %rdi
	movq	$0, -816(%rbp)
	movslq	%edx, %rsi
	addl	%ebx, %edx
	leaq	0(,%r15,8), %r9
	movq	%r15, -888(%rbp)
	leaq	32(,%rsi,8), %rax
	movslq	%edx, %rdx
	movq	%rsi, -808(%rbp)
	leaq	(%rdi,%rax), %rcx
	movq	%rdx, -712(%rbp)
	salq	$3, %rdx
	movq	%rcx, -96(%rbp)
	leaq	-32(%rax), %rcx
	leaq	32(%rdi,%rax), %rax
	movq	%rax, -88(%rbp)
	leaq	(%r14,%r9), %rax
	leaq	(%rdi,%rcx), %r8
	movq	%rax, -800(%rbp)
	leal	(%rbx,%rbx), %eax
	movq	%r8, -784(%rbp)
	movslq	%eax, %r8
	addl	%ebx, %eax
	movslq	%eax, %r10
	addl	%eax, %eax
	movq	%rdx, -744(%rbp)
	cltq
	movq	%r8, -832(%rbp)
	salq	$3, %r8
	movq	%rax, -720(%rbp)
	salq	$3, %rax
	movq	%rax, -752(%rbp)
	leal	0(,%rbx,8), %eax
	movl	%eax, %edx
	cltq
	movq	%r8, -728(%rbp)
	leaq	0(,%r10,8), %r8
	movq	%rax, -696(%rbp)
	salq	$3, %rax
	subl	%ebx, %edx
	movq	%rax, -768(%rbp)
	leal	-8(%rbx), %eax
	movslq	%edx, %rdx
	movl	%eax, -848(%rbp)
	addq	%rsi, %rax
	leaq	32(%rdi,%rax,8), %rax
	movq	%rdx, -688(%rbp)
	salq	$3, %rdx
	movq	%rax, -912(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rdx, -760(%rbp)
	addq	$8, %rax
	leal	-9(%rbx), %edx
	movl	%edx, -916(%rbp)
	addq	%rsi, %rdx
	leaq	96(%r14), %rsi
	movq	%rax, -904(%rbp)
	leaq	32(%r14), %rax
	movq	%rax, -928(%rbp)
	leaq	8(%r14,%rdx,8), %rax
	movq	%r9, -896(%rbp)
	movq	%r10, -840(%rbp)
	movq	%r8, -736(%rbp)
	movq	%rcx, -776(%rbp)
	movq	%r15, -824(%rbp)
	movq	%r9, -792(%rbp)
	movq	$0, -104(%rbp)
	movl	$4, -112(%rbp)
	movq	%rsi, -704(%rbp)
	movq	%rax, -936(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-752(%rbp), %r10
	movq	-768(%rbp), %r11
	movq	-104(%rbp), %rbx
	movq	-728(%rbp), %rsi
	movq	-736(%rbp), %rdi
	leaq	(%r14,%r10), %r8
	leaq	(%r14,%r11), %r10
	movq	-744(%rbp), %r15
	movq	-912(%rbp), %r11
	leaq	(%r14,%rsi), %rcx
	addl	$1, -112(%rbp)
	leaq	(%r14,%rbx), %rdx
	movq	-760(%rbp), %r9
	leaq	(%r14,%rdi), %rsi
	leaq	(%r14,%r15), %rdi
	movq	-776(%rbp), %r12
	addq	%rbx, %r11
	leaq	-80(%rbp), %r15
	movq	-96(%rbp), %rbx
	addq	%r14, %r9
	cmpq	%r11, %r15
	movq	-904(%rbp), %r11
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
	movq	-104(%rbp), %r11
	setnb	%bl
	cmpq	%rax, -88(%rbp)
	movl	%r15d, %r13d
	movq	-704(%rbp), %r15
	setbe	%r12b
	orl	%ebx, %r12d
	addq	%r15, %r11
	andl	%r12d, %r13d
	cmpq	%r11, -96(%rbp)
	setnb	%bl
	cmpq	%rdx, -88(%rbp)
	setbe	%r11b
	orl	%ebx, %r11d
	andl	%r11d, %r13d
	movq	-792(%rbp), %r11
	movl	%r13d, %r12d
	movq	%r15, %r13
	addq	%r15, %r11
	cmpq	%r11, -96(%rbp)
	movq	-88(%rbp), %r15
	movl	%r12d, %r11d
	setnb	%bl
	cmpq	-800(%rbp), %r15
	movq	%r13, %r12
	setbe	%r15b
	orl	%ebx, %r15d
	movq	-728(%rbp), %rbx
	andl	%r15d, %r11d
	addq	%r13, %rbx
	cmpq	%rbx, -96(%rbp)
	setnb	%bl
	cmpq	%rcx, -88(%rbp)
	setbe	%r13b
	orl	%ebx, %r13d
	andl	%r13d, %r11d
	movl	%r11d, %r15d
	movq	-736(%rbp), %r11
	movl	%r15d, %r13d
	movq	-704(%rbp), %r15
	addq	%r12, %r11
	cmpq	%r11, -96(%rbp)
	movq	-744(%rbp), %r11
	setnb	%bl
	cmpq	%rsi, -88(%rbp)
	setbe	%r12b
	addq	%r15, %r11
	orl	%ebx, %r12d
	andl	%r12d, %r13d
	cmpq	%r11, -96(%rbp)
	setnb	%bl
	cmpq	%rdi, -88(%rbp)
	movl	%r13d, %r12d
	movq	-96(%rbp), %r13
	setbe	%r11b
	orl	%ebx, %r11d
	andl	%r11d, %r12d
	movq	-752(%rbp), %r11
	addq	%r15, %r11
	cmpq	%r11, %r13
	setnb	%bl
	cmpq	%r8, -88(%rbp)
	setbe	%r11b
	orl	%ebx, %r11d
	movq	-760(%rbp), %rbx
	andl	%r12d, %r11d
	addq	%r15, %rbx
	cmpq	%rbx, %r13
	setnb	%bl
	cmpq	%r9, -88(%rbp)
	setbe	%r12b
	orl	%r12d, %ebx
	testb	%bl, %r11b
	je	.L28
	addq	-768(%rbp), %r15
	cmpq	%r15, %r13
	setnb	%bl
	cmpq	%r10, -88(%rbp)
	setbe	%r11b
	orb	%r11b, %bl
	je	.L28
	movq	-928(%rbp), %rbx
	addq	-776(%rbp), %rbx
	shrq	$3, %rbx
	negq	%rbx
	andl	$3, %ebx
	leal	3(%rbx), %r11d
	cmpl	-916(%rbp), %r11d
	ja	.L45
	movl	$4, -844(%rbp)
	testl	%ebx, %ebx
	je	.L17
	leal	-1(%rbx), %r13d
	movl	%ebx, -108(%rbp)
	movq	-800(%rbp), %r11
	movl	$5, %r12d
	movq	-784(%rbp), %rbx
	addq	$6, %r13
.L18:
	vmovsd	(%rdx), %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	movl	%r12d, %r15d
	addq	$8, %rax
	addq	$8, %rdx
	addq	$8, %r11
	addq	$8, %rcx
	addq	$8, %rsi
	addq	$8, %rdi
	addq	$8, %r8
	addq	$8, %r9
	addq	$8, %r10
	vaddsd	-8(%r11), %xmm0, %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm0
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
	movl	%r15d, -844(%rbp)
	movl	-108(%rbp), %ebx
.L17:
	movl	-848(%rbp), %esi
	movq	-808(%rbp), %rdi
	movl	%ebx, %eax
	leaq	0(,%rax,8), %rdx
	movq	-832(%rbp), %r15
	movq	-840(%rbp), %r8
	subl	%ebx, %esi
	leaq	4(%rax,%rdi), %rcx
	movl	%esi, -860(%rbp)
	shrl	$2, %esi
	movl	%esi, -108(%rbp)
	leaq	0(,%rcx,8), %rsi
	leaq	(%r14,%rsi), %rbx
	movq	%rsi, -680(%rbp)
	movq	%rbx, -120(%rbp)
	movq	-104(%rbp), %rbx
	leaq	(%rdx,%rbx), %rcx
	movq	-792(%rbp), %rbx
	leaq	(%r14,%rcx), %rsi
	leaq	(%rdx,%rbx), %rcx
	leaq	(%r14,%rcx), %rbx
	movq	%rbx, -128(%rbp)
	movq	-728(%rbp), %rbx
	leaq	(%rdx,%rbx), %rcx
	leaq	(%r14,%rcx), %rbx
	movq	%rbx, -136(%rbp)
	movq	-736(%rbp), %rbx
	leaq	(%rdx,%rbx), %rcx
	leaq	(%r14,%rcx), %rbx
	movq	%rbx, -144(%rbp)
	movq	-776(%rbp), %rbx
	leaq	(%rdx,%rbx), %rcx
	leaq	(%r14,%rcx), %rbx
	movq	%rbx, -152(%rbp)
	movq	-744(%rbp), %rbx
	leaq	(%rdx,%rbx), %rcx
	leaq	(%r14,%rcx), %rbx
	movq	%rbx, -160(%rbp)
	movq	-752(%rbp), %rbx
	leaq	(%rdx,%rbx), %rcx
	leaq	(%r14,%rcx), %rbx
	movq	%rbx, -168(%rbp)
	movq	-760(%rbp), %rbx
	leaq	(%rdx,%rbx), %rcx
	addq	-768(%rbp), %rdx
	leaq	(%r14,%rcx), %rbx
	movq	-824(%rbp), %rcx
	movq	%rbx, -176(%rbp)
	leaq	(%r14,%rdx), %rbx
	movq	%rbx, -184(%rbp)
	movq	-816(%rbp), %rbx
	leaq	1(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -192(%rbp)
	leaq	1(%rax,%rcx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -200(%rbp)
	leaq	1(%rax,%r15), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -208(%rbp)
	leaq	1(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -216(%rbp)
	leaq	1(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -224(%rbp)
	movq	-712(%rbp), %r11
	movq	-720(%rbp), %r12
	movq	-688(%rbp), %r9
	leaq	1(%rax,%r11), %rdx
	movq	-696(%rbp), %r13
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -232(%rbp)
	leaq	1(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -240(%rbp)
	leaq	1(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -248(%rbp)
	leaq	1(%rax,%r13), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -256(%rbp)
	leaq	2(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -264(%rbp)
	leaq	2(%rax,%rcx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -272(%rbp)
	leaq	2(%rax,%r15), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -280(%rbp)
	leaq	2(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -288(%rbp)
	leaq	2(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -296(%rbp)
	leaq	2(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -304(%rbp)
	leaq	2(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -312(%rbp)
	leaq	2(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -320(%rbp)
	leaq	2(%rax,%r13), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -328(%rbp)
	leaq	3(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -336(%rbp)
	leaq	3(%rax,%rcx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -344(%rbp)
	leaq	3(%rax,%r15), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -352(%rbp)
	leaq	3(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -360(%rbp)
	leaq	3(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -368(%rbp)
	leaq	3(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -376(%rbp)
	leaq	3(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -384(%rbp)
	leaq	3(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -392(%rbp)
	leaq	3(%rax,%r13), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -400(%rbp)
	leaq	4(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -408(%rbp)
	leaq	4(%rax,%rcx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -416(%rbp)
	leaq	4(%rax,%r15), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -424(%rbp)
	leaq	4(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -432(%rbp)
	leaq	4(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -440(%rbp)
	leaq	4(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -448(%rbp)
	leaq	4(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -456(%rbp)
	leaq	4(%rax,%r13), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -464(%rbp)
	leaq	5(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -472(%rbp)
	leaq	5(%rax,%rcx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -480(%rbp)
	leaq	5(%rax,%r15), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -488(%rbp)
	leaq	5(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -496(%rbp)
	leaq	5(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -504(%rbp)
	leaq	5(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -512(%rbp)
	leaq	5(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -520(%rbp)
	leaq	5(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -528(%rbp)
	leaq	5(%rax,%r13), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -536(%rbp)
	leaq	6(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -544(%rbp)
	leaq	6(%rax,%rcx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -552(%rbp)
	leaq	6(%rax,%r15), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -560(%rbp)
	leaq	6(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -568(%rbp)
	leaq	6(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -576(%rbp)
	leaq	6(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -584(%rbp)
	leaq	6(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -592(%rbp)
	leaq	6(%rax,%r9), %rdx
	movq	%r15, %r9
	leaq	(%r14,%rdx,8), %r10
	leaq	6(%rax,%r13), %rdx
	movq	%r10, -600(%rbp)
	leaq	(%r14,%rdx,8), %r10
	leaq	7(%rax,%rbx), %rdx
	movq	%r10, -608(%rbp)
	leaq	(%r14,%rdx,8), %r10
	leaq	7(%rax,%rcx), %rdx
	movq	%r10, -616(%rbp)
	movq	%rcx, %r10
	leaq	(%r14,%rdx,8), %rcx
	leaq	7(%rax,%r15), %rdx
	leaq	(%r14,%rdx,8), %r15
	leaq	7(%rax,%r8), %rdx
	movq	%rcx, -624(%rbp)
	movq	%r15, -632(%rbp)
	leaq	(%r14,%rdx,8), %r15
	leaq	7(%rax,%rdi), %rdx
	movq	%r15, -640(%rbp)
	leaq	(%r14,%rdx,8), %r15
	leaq	7(%rax,%r11), %rdx
	movq	%r15, -648(%rbp)
	leaq	(%r14,%rdx,8), %r15
	leaq	7(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %r13
	movq	-688(%rbp), %rdx
	leaq	7(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %rcx
	movq	%rcx, -656(%rbp)
	movq	-696(%rbp), %rcx
	leaq	7(%rax,%rcx), %rdx
	leaq	(%r14,%rdx,8), %rcx
	leaq	8(%rax,%rbx), %rdx
	movq	%rcx, -664(%rbp)
	leaq	(%r14,%rdx,8), %rcx
	leaq	8(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %r12
	leaq	8(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rbx
	leaq	8(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %r11
	leaq	8(%rax,%rdi), %rdx
	movq	-712(%rbp), %rdi
	leaq	(%r14,%rdx,8), %r10
	leaq	8(%rax,%rdi), %rdx
	movq	-720(%rbp), %rdi
	leaq	(%r14,%rdx,8), %r9
	leaq	8(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %r8
	movq	-688(%rbp), %rdx
	leaq	8(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %rdi
	movq	-696(%rbp), %rdx
	leaq	8(%rax,%rdx), %rax
	leaq	(%r14,%rax,8), %rdx
	movq	%rdx, -672(%rbp)
	movq	-680(%rbp), %rax
	xorl	%edx, %edx
	addq	-856(%rbp), %rax
	movq	%rcx, -680(%rbp)
	movq	%rax, -872(%rbp)
	vbroadcastsd	-80(%rbp), %ymm1
	xorl	%eax, %eax
	movq	%r14, -880(%rbp)
	movq	-872(%rbp), %r14
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-120(%rbp), %rcx
	vmovupd	(%rsi,%rax), %ymm0
	addl	$1, %edx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-128(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-136(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-144(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-152(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-160(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-168(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-176(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-184(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-192(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-200(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-208(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-216(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-224(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-232(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-240(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-248(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-256(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-264(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-272(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-280(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-288(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-296(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-304(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-312(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-320(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-328(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-336(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-344(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-352(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-360(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-368(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-376(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-384(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-392(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-400(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-408(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-416(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-424(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-432(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-440(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-448(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-456(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-464(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-472(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-480(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-488(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-496(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-504(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-512(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-520(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-528(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-536(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-544(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-552(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-560(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-568(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-576(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-584(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-592(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-600(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-608(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-616(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-624(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-632(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-640(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-648(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-656(%rbp), %rcx
	vaddpd	(%r15,%rax), %ymm0, %ymm0
	vaddpd	0(%r13,%rax), %ymm0, %ymm0
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-664(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-680(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-672(%rbp), %rcx
	vaddpd	(%r12,%rax), %ymm0, %ymm0
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	vmulpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%r14,%rax)
	addq	$32, %rax
	cmpl	-108(%rbp), %edx
	jb	.L19
	movl	-860(%rbp), %esi
	movl	-844(%rbp), %ebx
	movq	-880(%rbp), %r14
	movl	%esi, %eax
	andl	$-4, %eax
	addl	%eax, %ebx
	cmpl	%esi, %eax
	je	.L23
.L16:
	movq	-808(%rbp), %rax
	movslq	%ebx, %rbx
	movl	-920(%rbp), %r12d
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
	movq	-688(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%r14,%rax,8), %rcx
	movq	-696(%rbp), %rax
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
	addq	$8, %r8
	addq	$8, %rdi
	addq	$8, %rsi
	addq	$8, %rcx
	vaddsd	-8(%r11), %xmm0, %xmm0
	vaddsd	-40(%r10), %xmm0, %xmm0
	addq	$8, %rdx
	addq	$8, %rax
	vaddsd	-40(%r9), %xmm0, %xmm0
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
	movq	-896(%rbp), %rax
	movq	-888(%rbp), %rsi
	addq	%rax, -96(%rbp)
	addq	%rax, -784(%rbp)
	addq	%rax, -88(%rbp)
	addq	%rax, -800(%rbp)
	addq	%rsi, -808(%rbp)
	addq	%rax, -104(%rbp)
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
	movl	-112(%rbp), %edi
	addq	%rsi, -832(%rbp)
	addq	%rsi, -840(%rbp)
	addq	%rsi, -712(%rbp)
	addq	%rsi, -720(%rbp)
	addq	%rsi, -688(%rbp)
	addq	%rsi, -696(%rbp)
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
	movq	-936(%rbp), %r12
	addq	-104(%rbp), %r12
	leaq	(%r14,%rbx), %r11
	movq	-96(%rbp), %rbx
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	(%rdx), %xmm0
	addq	$8, %rax
	addq	$8, %rdx
	addq	$8, %r11
	addq	$8, %rcx
	addq	$8, %rsi
	addq	$8, %rdi
	addq	$8, %r8
	vaddsd	24(%rax), %xmm0, %xmm0
	addq	$8, %r9
	addq	$8, %r10
	addq	$8, %rbx
	vaddsd	-8(%r11), %xmm0, %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm0
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
	movq	-80(%rbp), %rsi
	testl	%r13d, %r13d
	movl	$1, %edi
	cmovg	%r13d, %edi
	movq	%rsi, -856(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
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
	vmovsd	.LC2(%rip), %xmm0
	movq	-856(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L43
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L44
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	movq	-856(%rbp), %rcx
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
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
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
