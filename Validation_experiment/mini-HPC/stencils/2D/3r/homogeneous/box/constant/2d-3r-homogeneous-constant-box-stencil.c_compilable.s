	.file	"2d-3r-homogeneous-constant-box-stencil.c_compilable.c"
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
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	movl	%r12d, %r8d
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	imull	%eax, %r8d
	movq	%rax, %rbx
	movslq	%r8d, %r15
	movl	%r8d, -88(%rbp)
	salq	$3, %r15
	movq	%r15, %rdx
	call	posix_memalign
	movl	-88(%rbp), %r8d
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %r13
	testl	%r8d, %r8d
	jle	.L3
	movq	%r13, %rax
	movl	$5, %ecx
	leal	-1(%r8), %r14d
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
	vmovsd	%xmm0, 0(%r13)
	cmpl	$1, %eax
	je	.L41
	vmovsd	%xmm0, 8(%r13)
	cmpl	$3, %eax
	jne	.L42
	vmovsd	%xmm0, 16(%r13)
	movl	$3, %edi
.L5:
	movl	%r8d, %esi
	vmovapd	.LC1(%rip), %ymm0
	leaq	0(%r13,%rax,8), %rdx
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
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	cmpl	%eax, %r8d
	jle	.L8
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
.L8:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	movl	%r8d, -88(%rbp)
	call	posix_memalign
	movl	-88(%rbp), %r8d
	testl	%eax, %eax
	je	.L76
	testl	%r8d, %r8d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %r14d
	cmovg	%r8d, %edi
	cmpl	$4, %r14d
	ja	.L77
	movq	$0, -560(%rbp)
	xorl	%eax, %eax
.L31:
	vmovsd	.LC2(%rip), %xmm0
	movq	-560(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L35
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r8d
	jle	.L35
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L35:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -80(%rbp)
	leal	-3(%r12), %eax
	movl	%eax, -568(%rbp)
	testl	%edx, %edx
	jne	.L78
	cmpl	$3, -568(%rbp)
	jle	.L79
.L14:
	leal	-3(%rbx), %eax
	movl	%eax, -632(%rbp)
	cmpl	$3, %eax
	jle	.L71
	leal	(%rbx,%rbx), %edx
	movslq	%ebx, %r15
	movq	-560(%rbp), %rsi
	movq	$0, -520(%rbp)
	leal	(%rdx,%rbx), %eax
	movslq	%edx, %rdx
	leaq	0(,%r15,8), %r14
	movq	$0, -104(%rbp)
	movslq	%eax, %rdi
	addl	%eax, %eax
	movq	%rdx, -536(%rbp)
	salq	$3, %rdx
	leaq	24(,%rdi,8), %rcx
	cltq
	movq	%rdx, -456(%rbp)
	leal	0(,%rbx,4), %edx
	leaq	(%rsi,%rcx), %r11
	movq	%rax, -432(%rbp)
	salq	$3, %rax
	movq	%r11, -96(%rbp)
	leaq	-24(%rcx), %r11
	movq	%rsi, %rcx
	addq	%r11, %rcx
	movq	%rax, -480(%rbp)
	leal	-6(%rbx), %eax
	movq	%rcx, -544(%rbp)
	leaq	56(%rsi,%rdi,8), %rcx
	movq	%rcx, -88(%rbp)
	movq	%r14, %rcx
	leaq	0(%r13,%r14), %r14
	movq	%r14, -504(%rbp)
	movslq	%edx, %r14
	addl	%ebx, %edx
	movslq	%edx, %rdx
	movl	%eax, -552(%rbp)
	addq	%rdi, %rax
	leaq	24(%rsi,%rax,8), %rax
	movq	%rdx, -448(%rbp)
	salq	$3, %rdx
	movq	%rdx, -472(%rbp)
	leal	-7(%rbx), %edx
	leaq	80(%r13), %rbx
	movq	%rax, -624(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movl	%edx, -628(%rbp)
	addq	%rdi, %rdx
	movq	%r14, -440(%rbp)
	salq	$3, %r14
	movq	%rax, -608(%rbp)
	leaq	8(%r13,%rdx,8), %rax
	movq	%rdi, -512(%rbp)
	movq	%r11, -496(%rbp)
	movq	%r14, -464(%rbp)
	movq	%rcx, -488(%rbp)
	movl	$3, -112(%rbp)
	movq	%rbx, -616(%rbp)
	movq	%rax, -640(%rbp)
	movq	%r15, -600(%rbp)
	movq	%r15, -528(%rbp)
	movq	%rcx, %r15
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-104(%rbp), %rbx
	movq	-456(%rbp), %rdi
	movq	-472(%rbp), %r14
	movq	-624(%rbp), %r9
	movq	-464(%rbp), %rsi
	leaq	0(%r13,%rdi), %rcx
	movq	-480(%rbp), %r8
	leaq	0(%r13,%rbx), %rdx
	addq	%rbx, %r9
	leaq	0(%r13,%r14), %rdi
	leaq	-80(%rbp), %r14
	movq	-96(%rbp), %rbx
	addq	%r13, %rsi
	addl	$1, -112(%rbp)
	addq	%r13, %r8
	cmpq	%r9, %r14
	movq	-608(%rbp), %r9
	movq	-616(%rbp), %r11
	setnb	%r10b
	movq	-496(%rbp), %r12
	cmpq	%r9, %rbx
	movq	%r11, %r9
	setnb	%r14b
	leaq	0(%r13,%r12), %rax
	orl	%r10d, %r14d
	cmpl	$4, -552(%rbp)
	seta	%r10b
	addq	%r12, %r9
	andl	%r14d, %r10d
	cmpq	%r9, %rbx
	setnb	%r9b
	cmpq	%rax, -88(%rbp)
	setbe	%r12b
	orl	%r9d, %r12d
	movl	%r10d, %r9d
	andl	%r12d, %r9d
	movl	%r9d, %r14d
	movq	-104(%rbp), %r9
	movl	%r14d, %r12d
	movq	%r11, %r14
	addq	%r11, %r9
	cmpq	%r9, %rbx
	movq	-488(%rbp), %r9
	setnb	%r10b
	cmpq	%rdx, -88(%rbp)
	setbe	%bl
	addq	%r11, %r9
	orl	%r10d, %ebx
	andl	%ebx, %r12d
	cmpq	%r9, -96(%rbp)
	movq	-88(%rbp), %r9
	setnb	%r10b
	cmpq	-504(%rbp), %r9
	movq	-456(%rbp), %r9
	setbe	%r11b
	orl	%r10d, %r11d
	addq	%r14, %r9
	andl	%r11d, %r12d
	movl	%r12d, %ebx
	movq	-96(%rbp), %r12
	cmpq	%r9, %r12
	setnb	%r10b
	cmpq	%rcx, -88(%rbp)
	setbe	%r9b
	orl	%r10d, %r9d
	andl	%r9d, %ebx
	movq	-464(%rbp), %r9
	movl	%ebx, %r11d
	movq	-88(%rbp), %rbx
	addq	%r14, %r9
	cmpq	%r9, %r12
	setnb	%r10b
	cmpq	%rsi, %rbx
	setbe	%r9b
	orl	%r10d, %r9d
	movq	-472(%rbp), %r10
	andl	%r11d, %r9d
	addq	%r14, %r10
	cmpq	%r10, %r12
	setnb	%r10b
	cmpq	%rdi, %rbx
	setbe	%r11b
	orl	%r11d, %r10d
	testb	%r10b, %r9b
	je	.L28
	addq	-480(%rbp), %r14
	cmpq	%r14, %r12
	setnb	%r10b
	cmpq	%r8, %rbx
	setbe	%r9b
	orb	%r9b, %r10b
	je	.L28
	movq	%rdx, %r11
	shrq	$3, %r11
	negq	%r11
	andl	$3, %r11d
	leal	3(%r11), %r9d
	cmpl	-628(%rbp), %r9d
	ja	.L45
	movl	$3, -548(%rbp)
	testl	%r11d, %r11d
	je	.L17
	leal	-1(%r11), %ebx
	movq	-504(%rbp), %r9
	movq	-544(%rbp), %r12
	movl	$4, %r10d
	addq	$5, %rbx
.L18:
	vmovsd	(%rdx), %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	movl	%r10d, %r14d
	addq	$8, %rax
	addq	$8, %rdx
	addq	$8, %r9
	addq	$8, %rcx
	addq	$8, %rsi
	vaddsd	-8(%r9), %xmm0, %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	addq	$8, %rdi
	addq	$8, %r8
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
	vaddsd	-8(%r8), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	8(%r9), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%r8), %xmm0, %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	16(%r9), %xmm0, %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm0
	vaddsd	16(%rsi), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	vaddsd	16(%r8), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	24(%r9), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%r8), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	32(%r9), %xmm0, %xmm0
	vaddsd	32(%rcx), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	32(%rsi), %xmm0, %xmm0
	vaddsd	32(%rdi), %xmm0, %xmm0
	vaddsd	32(%r8), %xmm0, %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vaddsd	40(%r9), %xmm0, %xmm0
	vaddsd	40(%rcx), %xmm0, %xmm0
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	40(%rsi), %xmm0, %xmm0
	vaddsd	40(%rdi), %xmm0, %xmm0
	vaddsd	40(%r8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -8(%r12,%r10,8)
	addq	$1, %r10
	cmpq	%rbx, %r10
	jne	.L18
	movl	%r14d, -548(%rbp)
.L17:
	movl	%r11d, %eax
	movq	-104(%rbp), %rsi
	movq	-528(%rbp), %r10
	leaq	0(,%rax,8), %rdx
	movl	-552(%rbp), %ebx
	movq	-536(%rbp), %r8
	addq	%rdx, %rsi
	movq	-440(%rbp), %r9
	movq	-448(%rbp), %r12
	addq	%r13, %rsi
	subl	%r11d, %ebx
	movq	-432(%rbp), %r11
	movq	%rsi, -120(%rbp)
	movq	-488(%rbp), %rsi
	movl	%ebx, -564(%rbp)
	shrl	$2, %ebx
	addq	%rdx, %rsi
	movl	%ebx, -108(%rbp)
	movq	-512(%rbp), %rbx
	addq	%r13, %rsi
	movq	%rsi, -128(%rbp)
	movq	-456(%rbp), %rsi
	leaq	3(%rax,%rbx), %rcx
	salq	$3, %rcx
	addq	%rdx, %rsi
	leaq	0(%r13,%rcx), %rdi
	addq	%r13, %rsi
	movq	%rsi, -136(%rbp)
	movq	-496(%rbp), %rsi
	addq	%rdx, %rsi
	addq	%r13, %rsi
	movq	%rsi, -144(%rbp)
	movq	-464(%rbp), %rsi
	addq	%rdx, %rsi
	addq	%r13, %rsi
	movq	%rsi, -152(%rbp)
	movq	-472(%rbp), %rsi
	addq	%rdx, %rsi
	addq	-480(%rbp), %rdx
	addq	%r13, %rsi
	movq	%rsi, -160(%rbp)
	leaq	0(%r13,%rdx), %rsi
	movq	%rsi, -168(%rbp)
	movq	-520(%rbp), %rsi
	leaq	1(%rax,%rsi), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -176(%rbp)
	leaq	1(%rax,%r10), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -184(%rbp)
	leaq	1(%rax,%r8), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -192(%rbp)
	leaq	1(%rax,%rbx), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -200(%rbp)
	leaq	1(%rax,%r9), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -208(%rbp)
	leaq	1(%rax,%r12), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -216(%rbp)
	leaq	1(%rax,%r11), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -224(%rbp)
	leaq	2(%rax,%rsi), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -232(%rbp)
	leaq	2(%rax,%r10), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -240(%rbp)
	leaq	2(%rax,%r8), %rdx
	addq	-560(%rbp), %rcx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%r13, -584(%rbp)
	vbroadcastsd	-80(%rbp), %ymm1
	movq	%rdx, -248(%rbp)
	leaq	2(%rax,%rbx), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -256(%rbp)
	leaq	2(%rax,%r9), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -264(%rbp)
	leaq	2(%rax,%r12), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -272(%rbp)
	leaq	2(%rax,%r11), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -280(%rbp)
	leaq	3(%rax,%rsi), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -288(%rbp)
	leaq	3(%rax,%r10), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -296(%rbp)
	leaq	3(%rax,%r8), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -304(%rbp)
	leaq	3(%rax,%r9), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -312(%rbp)
	leaq	3(%rax,%r12), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -320(%rbp)
	leaq	3(%rax,%r11), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -328(%rbp)
	leaq	4(%rax,%rsi), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -336(%rbp)
	leaq	4(%rax,%r10), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -344(%rbp)
	leaq	4(%rax,%r8), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -352(%rbp)
	leaq	4(%rax,%rbx), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -360(%rbp)
	leaq	4(%rax,%r9), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -368(%rbp)
	leaq	4(%rax,%r12), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -376(%rbp)
	leaq	4(%rax,%r11), %rdx
	movq	%rsi, %r11
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -384(%rbp)
	leaq	5(%rax,%rsi), %rdx
	leaq	0(%r13,%rdx,8), %rsi
	leaq	5(%rax,%r10), %rdx
	movq	%rsi, -392(%rbp)
	leaq	0(%r13,%rdx,8), %rsi
	leaq	5(%rax,%r8), %rdx
	movq	%rsi, -400(%rbp)
	leaq	0(%r13,%rdx,8), %rsi
	leaq	5(%rax,%rbx), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rsi, -408(%rbp)
	movq	%rbx, %rsi
	movq	-432(%rbp), %rbx
	movq	%rdx, -416(%rbp)
	leaq	5(%rax,%r9), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -424(%rbp)
	leaq	5(%rax,%r12), %rdx
	leaq	0(%r13,%rdx,8), %r14
	leaq	5(%rax,%rbx), %rdx
	leaq	0(%r13,%rdx,8), %r12
	leaq	6(%rax,%r11), %rdx
	leaq	0(%r13,%rdx,8), %rbx
	leaq	6(%rax,%r10), %rdx
	leaq	0(%r13,%rdx,8), %r11
	leaq	6(%rax,%r8), %rdx
	leaq	0(%r13,%rdx,8), %r10
	leaq	6(%rax,%rsi), %rdx
	movq	-440(%rbp), %rsi
	leaq	0(%r13,%rdx,8), %r9
	leaq	6(%rax,%rsi), %rdx
	movq	-448(%rbp), %rsi
	leaq	0(%r13,%rdx,8), %r8
	leaq	6(%rax,%rsi), %rdx
	leaq	0(%r13,%rdx,8), %rsi
	xorl	%edx, %edx
	movq	%rsi, -576(%rbp)
	movq	-432(%rbp), %rsi
	leaq	6(%rax,%rsi), %rax
	leaq	0(%r13,%rax,8), %rsi
	movq	-424(%rbp), %r13
	xorl	%eax, %eax
	movq	%rcx, -424(%rbp)
	movq	%r15, -592(%rbp)
	movq	-576(%rbp), %r15
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-120(%rbp), %rcx
	vmovupd	(%rdi,%rax), %ymm0
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
	vaddpd	0(%r13,%rax), %ymm0, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vaddpd	(%r12,%rax), %ymm0, %ymm0
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vaddpd	(%r15,%rax), %ymm0, %ymm0
	vaddpd	(%rsi,%rax), %ymm0, %ymm0
	movq	-424(%rbp), %rcx
	vmulpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	-108(%rbp), %edx
	jb	.L19
	movl	-564(%rbp), %edi
	movl	-548(%rbp), %r10d
	movq	-584(%rbp), %r13
	movq	-592(%rbp), %r15
	movl	%edi, %eax
	andl	$-4, %eax
	addl	%eax, %r10d
	cmpl	%eax, %edi
	je	.L23
.L16:
	movq	-512(%rbp), %rax
	movslq	%r10d, %r10
	movl	-632(%rbp), %r11d
	movq	-544(%rbp), %rbx
	addq	%r10, %rax
	leaq	0(%r13,%rax,8), %r9
	movq	-528(%rbp), %rax
	addq	%r10, %rax
	leaq	0(%r13,%rax,8), %r8
	movq	-536(%rbp), %rax
	addq	%r10, %rax
	leaq	0(%r13,%rax,8), %rdi
	movq	-440(%rbp), %rax
	addq	%r10, %rax
	leaq	0(%r13,%rax,8), %rsi
	movq	-448(%rbp), %rax
	addq	%r10, %rax
	leaq	0(%r13,%rax,8), %rcx
	movq	-432(%rbp), %rax
	addq	%r10, %rax
	leaq	0(%r13,%rax,8), %rdx
	movq	-520(%rbp), %rax
	addq	%r10, %rax
	leaq	-24(%r13,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rax), %xmm0
	addq	$8, %r9
	addq	$8, %r8
	addq	$8, %rdi
	addq	$8, %rsi
	addq	$8, %rcx
	addq	$8, %rdx
	addq	$8, %rax
	vaddsd	-8(%r9), %xmm0, %xmm0
	vaddsd	-32(%r8), %xmm0, %xmm0
	vaddsd	-32(%rdi), %xmm0, %xmm0
	vaddsd	-32(%r9), %xmm0, %xmm0
	vaddsd	-32(%rsi), %xmm0, %xmm0
	vaddsd	-32(%rcx), %xmm0, %xmm0
	vaddsd	-32(%rdx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	-24(%r8), %xmm0, %xmm0
	vaddsd	-24(%rdi), %xmm0, %xmm0
	vaddsd	-24(%r9), %xmm0, %xmm0
	vaddsd	-24(%rsi), %xmm0, %xmm0
	vaddsd	-24(%rcx), %xmm0, %xmm0
	vaddsd	-24(%rdx), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	-16(%r8), %xmm0, %xmm0
	vaddsd	-16(%rdi), %xmm0, %xmm0
	vaddsd	-16(%r9), %xmm0, %xmm0
	vaddsd	-16(%rsi), %xmm0, %xmm0
	vaddsd	-16(%rcx), %xmm0, %xmm0
	vaddsd	-16(%rdx), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	-8(%r8), %xmm0, %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	8(%r8), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%r9), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	16(%r8), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	vaddsd	16(%r9), %xmm0, %xmm0
	vaddsd	16(%rsi), %xmm0, %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx,%r10,8)
	addq	$1, %r10
	cmpl	%r10d, %r11d
	jg	.L21
.L23:
	movq	-600(%rbp), %rax
	addq	%r15, -96(%rbp)
	addq	%r15, -544(%rbp)
	addq	%r15, -88(%rbp)
	addq	%r15, -504(%rbp)
	addq	%rax, -512(%rbp)
	addq	%r15, -104(%rbp)
	addq	%r15, -488(%rbp)
	addq	%r15, -456(%rbp)
	addq	%r15, -496(%rbp)
	addq	%r15, -464(%rbp)
	addq	%r15, -472(%rbp)
	addq	%r15, -480(%rbp)
	addq	%rax, -520(%rbp)
	addq	%rax, -528(%rbp)
	addq	%rax, -536(%rbp)
	addq	%rax, -440(%rbp)
	movl	-112(%rbp), %ebx
	addq	%rax, -448(%rbp)
	addq	%rax, -432(%rbp)
	cmpl	%ebx, -568(%rbp)
	jg	.L24
.L71:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L72
	movq	%r13, %rdi
	call	dummy
	movq	-560(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L72:
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
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	movq	-488(%rbp), %rbx
	movq	-560(%rbp), %r10
	movq	-640(%rbp), %r11
	addq	-496(%rbp), %r10
	leaq	0(%r13,%rbx), %r9
	addq	-104(%rbp), %r11
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	(%rdx), %xmm0
	addq	$8, %rax
	addq	$8, %rdx
	addq	$8, %r9
	addq	$8, %rcx
	addq	$8, %rsi
	addq	$8, %rdi
	addq	$8, %r8
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	-8(%r9), %xmm0, %xmm0
	addq	$8, %r10
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
	vaddsd	-8(%r8), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	8(%r9), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%r8), %xmm0, %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	16(%r9), %xmm0, %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm0
	vaddsd	16(%rsi), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	vaddsd	16(%r8), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	24(%r9), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%r8), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	32(%r9), %xmm0, %xmm0
	vaddsd	32(%rcx), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	32(%rsi), %xmm0, %xmm0
	vaddsd	32(%rdi), %xmm0, %xmm0
	vaddsd	32(%r8), %xmm0, %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vaddsd	40(%r9), %xmm0, %xmm0
	vaddsd	40(%rcx), %xmm0, %xmm0
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	40(%rsi), %xmm0, %xmm0
	vaddsd	40(%rdi), %xmm0, %xmm0
	vaddsd	40(%r8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%r10)
	cmpq	%r11, %rax
	jne	.L22
	jmp	.L23
.L45:
	movl	$3, %r10d
	jmp	.L16
.L76:
	movq	-80(%rbp), %rsi
	testl	%r8d, %r8d
	movl	$1, %edi
	cmovg	%r8d, %edi
	movq	%rsi, -560(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
	negq	%rdx
	andl	$3, %edx
	testl	%r8d, %r8d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r14d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r14d
	jb	.L31
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	movq	-560(%rbp), %rax
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
	movq	-560(%rbp), %rcx
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
	movq	%r13, %rdi
	vzeroupper
	call	dummy
	movq	-560(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$3, -568(%rbp)
	jg	.L14
	jmp	.L15
.L41:
	movl	$1, %edi
	jmp	.L5
.L77:
	movq	$0, -560(%rbp)
	xorl	%edx, %edx
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
	movq	$0, -560(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -560(%rbp)
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
