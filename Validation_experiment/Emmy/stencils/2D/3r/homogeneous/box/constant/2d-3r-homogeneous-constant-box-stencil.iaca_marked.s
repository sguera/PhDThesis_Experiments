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
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rsi, %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	subq	$608, %rsp
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
	movq	$0, -560(%rbp)
	xorl	%eax, %eax
.L31:
	movq	-560(%rbp), %rcx
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
	leal	-3(%r12), %eax
	movl	%eax, -568(%rbp)
	testl	%edx, %edx
	jne	.L78
	cmpl	$3, -568(%rbp)
	jle	.L79
.L14:
	leal	-3(%rbx), %eax
	movl	%eax, -624(%rbp)
	cmpl	$3, %eax
	jle	.L71
	movq	-560(%rbp), %rsi
	leal	(%rbx,%rbx), %edx
	movslq	%ebx, %r15
	movq	$0, -512(%rbp)
	leal	(%rdx,%rbx), %eax
	movslq	%edx, %rdx
	movq	%r15, -584(%rbp)
	movslq	%eax, %rdi
	addl	%eax, %eax
	movq	%rdx, -528(%rbp)
	salq	$3, %rdx
	leaq	24(,%rdi,8), %rcx
	cltq
	movq	%rdi, -504(%rbp)
	leaq	(%rsi,%rcx), %r10
	movq	%rdx, -448(%rbp)
	movq	%r10, -544(%rbp)
	leaq	-24(%rcx), %r10
	movq	%rsi, %rcx
	addq	%r10, %rcx
	movq	%rax, -424(%rbp)
	salq	$3, %rax
	leaq	0(,%r15,8), %r11
	movq	%rcx, -536(%rbp)
	movq	%rdi, %rcx
	leaq	56(%rsi,%rdi,8), %rdi
	movq	%r11, -592(%rbp)
	leal	0(,%rbx,4), %edx
	movq	%rdi, -96(%rbp)
	movq	%r11, %rdi
	leaq	(%r14,%r11), %r11
	movq	%rax, -472(%rbp)
	movq	%r11, -496(%rbp)
	leal	-6(%rbx), %eax
	movslq	%edx, %r11
	addl	%ebx, %edx
	movslq	%edx, %rdx
	movl	%eax, -552(%rbp)
	addq	%rcx, %rax
	leaq	24(%rsi,%rax,8), %rax
	movq	%rdx, -440(%rbp)
	salq	$3, %rdx
	movq	%rdx, -464(%rbp)
	leal	-7(%rbx), %edx
	movq	%rax, -616(%rbp)
	leaq	-80(%rbp), %rax
	movl	%edx, -620(%rbp)
	leaq	80(%r14), %rbx
	addq	$8, %rax
	addq	%rcx, %rdx
	movq	%r11, -432(%rbp)
	salq	$3, %r11
	movq	%rax, -600(%rbp)
	leaq	8(%r14,%rdx,8), %rax
	movq	%r10, -488(%rbp)
	movq	%r11, -456(%rbp)
	movq	%r15, -520(%rbp)
	movq	%rdi, -480(%rbp)
	movq	$0, -104(%rbp)
	movl	$3, -112(%rbp)
	movq	%rbx, -608(%rbp)
	movq	%rax, -632(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-104(%rbp), %rbx
	leaq	-80(%rbp), %r13
	movq	-616(%rbp), %r9
	movq	-544(%rbp), %r11
	movq	-472(%rbp), %r10
	addl	$1, -112(%rbp)
	leaq	(%r14,%rbx), %rdx
	addq	%rbx, %r9
	movq	-448(%rbp), %rsi
	cmpq	%r9, %r13
	movq	-600(%rbp), %r9
	movq	-456(%rbp), %rdi
	leaq	(%r14,%r10), %r8
	setnb	%r10b
	movq	-464(%rbp), %r15
	leaq	(%r14,%rsi), %rcx
	movq	-488(%rbp), %r12
	cmpq	%r9, %r11
	movq	-96(%rbp), %rbx
	leaq	(%r14,%rdi), %rsi
	setnb	%r13b
	leaq	(%r14,%r15), %rdi
	movq	-608(%rbp), %r15
	orl	%r10d, %r13d
	cmpl	$4, -552(%rbp)
	leaq	(%r14,%r12), %rax
	movq	%r15, %r9
	seta	%r10b
	addq	%r12, %r9
	andl	%r13d, %r10d
	cmpq	%r9, %r11
	setnb	%r9b
	cmpq	%rax, %rbx
	movl	%r10d, %r13d
	setbe	%r12b
	orl	%r9d, %r12d
	movq	-104(%rbp), %r9
	andl	%r12d, %r13d
	movl	%r13d, %r12d
	movq	%r11, %r13
	addq	%r15, %r9
	cmpq	%r9, %r11
	movq	-480(%rbp), %r9
	setnb	%r10b
	cmpq	%rdx, %rbx
	setbe	%bl
	orl	%r10d, %ebx
	addq	%r15, %r9
	andl	%ebx, %r12d
	movq	-96(%rbp), %rbx
	cmpq	%r9, %r11
	movq	-448(%rbp), %r9
	setnb	%r10b
	cmpq	-496(%rbp), %rbx
	setbe	%r11b
	addq	%r15, %r9
	orl	%r10d, %r11d
	andl	%r11d, %r12d
	cmpq	%r9, %r13
	movl	%r12d, %ebx
	movq	%r13, %r12
	movq	-96(%rbp), %r13
	setnb	%r10b
	movl	%ebx, %r11d
	cmpq	%rcx, %r13
	setbe	%r9b
	orl	%r10d, %r9d
	andl	%r9d, %r11d
	movq	-456(%rbp), %r9
	addq	%r15, %r9
	cmpq	%r9, %r12
	setnb	%r10b
	cmpq	%rsi, %r13
	setbe	%r9b
	orl	%r10d, %r9d
	movq	-464(%rbp), %r10
	andl	%r11d, %r9d
	addq	%r15, %r10
	cmpq	%r10, %r12
	setnb	%r10b
	cmpq	%rdi, %r13
	setbe	%r11b
	orl	%r11d, %r10d
	testb	%r10b, %r9b
	je	.L28
	addq	-472(%rbp), %r15
	cmpq	%r15, %r12
	setnb	%r10b
	cmpq	%r8, %r13
	setbe	%r9b
	orb	%r9b, %r10b
	je	.L28
	movq	%rdx, %r11
	shrq	$3, %r11
	negq	%r11
	andl	$3, %r11d
	leal	3(%r11), %r9d
	cmpl	-620(%rbp), %r9d
	ja	.L45
	movl	$3, -548(%rbp)
	testl	%r11d, %r11d
	je	.L17
	movq	-496(%rbp), %r9
	leal	-1(%r11), %ebx
	movl	$4, %r10d
	movq	-536(%rbp), %r12
	addq	$5, %rbx
.L18:
	vmovsd	(%rdx), %xmm0
	movl	%r10d, %r13d
	addq	$8, %rax
	addq	$8, %rdx
	vaddsd	16(%rax), %xmm0, %xmm0
	addq	$8, %r9
	addq	$8, %rcx
	vaddsd	-8(%r9), %xmm0, %xmm0
	addq	$8, %rsi
	addq	$8, %rdi
	vaddsd	-8(%rcx), %xmm0, %xmm0
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
	movl	%r13d, -548(%rbp)
.L17:
	movl	-552(%rbp), %ebx
	movl	%r11d, %eax
	movq	-432(%rbp), %r10
	movq	-440(%rbp), %r9
	movq	-424(%rbp), %r12
	subl	%r11d, %ebx
	movq	-528(%rbp), %r11
	movl	%ebx, -564(%rbp)
	shrl	$2, %ebx
	movl	%ebx, -108(%rbp)
	movq	-504(%rbp), %rbx
	movq	%r11, %r8
	leaq	3(%rax,%rbx), %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	(%r14,%rcx), %rsi
	movq	%rcx, -88(%rbp)
	movq	%rsi, -120(%rbp)
	movq	-104(%rbp), %rsi
	leaq	0(,%rax,8), %rdx
	leaq	(%rdx,%rsi), %rcx
	movq	-480(%rbp), %rsi
	leaq	(%r14,%rcx), %rdi
	movq	%rdi, -128(%rbp)
	leaq	(%rdx,%rsi), %rcx
	movq	-448(%rbp), %rsi
	leaq	(%r14,%rcx), %rdi
	movq	%rdi, -136(%rbp)
	leaq	(%rdx,%rsi), %rcx
	movq	-488(%rbp), %rsi
	leaq	(%r14,%rcx), %rdi
	movq	%rdi, -144(%rbp)
	leaq	(%rdx,%rsi), %rcx
	movq	-456(%rbp), %rsi
	leaq	(%r14,%rcx), %rdi
	movq	%rdi, -152(%rbp)
	leaq	(%rdx,%rsi), %rcx
	movq	-464(%rbp), %rsi
	leaq	(%r14,%rcx), %rdi
	movq	%rdi, -160(%rbp)
	leaq	(%rdx,%rsi), %rcx
	addq	-472(%rbp), %rdx
	leaq	(%r14,%rcx), %rdi
	movq	%rdi, -168(%rbp)
	leaq	(%r14,%rdx), %rdi
	movq	%rdi, -176(%rbp)
	movq	-512(%rbp), %rdi
	leaq	1(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %rsi
	movq	%rsi, -184(%rbp)
	movq	-520(%rbp), %rsi
	leaq	1(%rax,%rsi), %rdx
	movq	%rsi, %rcx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -192(%rbp)
	leaq	1(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -200(%rbp)
	leaq	1(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -208(%rbp)
	leaq	1(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -216(%rbp)
	leaq	1(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -224(%rbp)
	leaq	1(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -232(%rbp)
	leaq	2(%rax,%rdi), %rdx
	vbroadcastsd	-80(%rbp), %ymm2
	leaq	(%r14,%rdx,8), %rdx
	movq	%r14, -576(%rbp)
	movq	%rdx, -240(%rbp)
	leaq	2(%rax,%rsi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -248(%rbp)
	leaq	2(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -256(%rbp)
	leaq	2(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -264(%rbp)
	leaq	2(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -272(%rbp)
	leaq	2(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -280(%rbp)
	leaq	2(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -288(%rbp)
	leaq	3(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -296(%rbp)
	leaq	3(%rax,%rsi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -304(%rbp)
	leaq	3(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -312(%rbp)
	leaq	3(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -320(%rbp)
	leaq	3(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -328(%rbp)
	leaq	3(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -336(%rbp)
	leaq	4(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -344(%rbp)
	leaq	4(%rax,%rsi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -352(%rbp)
	leaq	4(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -360(%rbp)
	leaq	4(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -368(%rbp)
	leaq	4(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -376(%rbp)
	leaq	4(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -384(%rbp)
	leaq	4(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %r15
	leaq	5(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %r13
	leaq	5(%rax,%rsi), %rdx
	leaq	(%r14,%rdx,8), %rsi
	leaq	5(%rax,%r11), %rdx
	movq	%rsi, -392(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	leaq	5(%rax,%rbx), %rdx
	movq	%rsi, -400(%rbp)
	movq	%rbx, %rsi
	leaq	(%r14,%rdx,8), %rbx
	leaq	5(%rax,%r10), %rdx
	movq	%rbx, -416(%rbp)
	leaq	(%r14,%rdx,8), %r12
	leaq	5(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rbx
	movq	-424(%rbp), %rdx
	leaq	5(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %r11
	leaq	6(%rax,%rdi), %rdx
	leaq	(%r14,%rdx,8), %r10
	leaq	6(%rax,%rcx), %rdx
	movq	-440(%rbp), %rcx
	leaq	(%r14,%rdx,8), %r9
	leaq	6(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %r8
	leaq	6(%rax,%rsi), %rdx
	movq	-432(%rbp), %rsi
	leaq	(%r14,%rdx,8), %rdi
	leaq	6(%rax,%rsi), %rdx
	leaq	(%r14,%rdx,8), %rsi
	leaq	6(%rax,%rcx), %rdx
	leaq	(%r14,%rdx,8), %rcx
	movq	-424(%rbp), %rdx
	leaq	6(%rax,%rdx), %rax
	leaq	(%r14,%rax,8), %rdx
	movq	-88(%rbp), %rax
	movl	$0, -88(%rbp)
	addq	-560(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-416(%rbp), %r14
	xorl	%eax, %eax
	movq	%rdx, -416(%rbp)
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	movq	-120(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	movq	-128(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-136(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-144(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
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
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
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
	vaddpd	%ymm0, %ymm1, %ymm0
	movq	-344(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm0, %ymm1
	movq	-352(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	movq	-360(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	movq	-368(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	movq	-376(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	movq	-384(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r15,%rax), %xmm1
	vinsertf128	$0x1, 16(%r15,%rax), %ymm1, %ymm1
	movq	-392(%rbp), %rdx
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	0(%r13,%rax), %xmm1
	vinsertf128	$0x1, 16(%r13,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	movq	-400(%rbp), %rdx
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r14,%rax), %xmm1
	vinsertf128	$0x1, 16(%r14,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r12,%rax), %xmm1
	vinsertf128	$0x1, 16(%r12,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rbx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r11,%rax), %xmm1
	vinsertf128	$0x1, 16(%r11,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r10,%rax), %xmm1
	vinsertf128	$0x1, 16(%r10,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r9,%rax), %xmm1
	vinsertf128	$0x1, 16(%r9,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r8,%rax), %xmm1
	vinsertf128	$0x1, 16(%r8,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rdi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rsi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rcx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm1, %ymm1
	movq	-416(%rbp), %rdx
	addl	$1, -88(%rbp)
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	movq	-408(%rbp), %rdx
	vaddpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rax)
	movl	-88(%rbp), %edx
	addq	$32, %rax
	cmpl	-108(%rbp), %edx
	jb	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-564(%rbp), %ebx
	movl	-548(%rbp), %r10d
	movq	-576(%rbp), %r14
	movl	%ebx, %eax
	andl	$-4, %eax
	addl	%eax, %r10d
	cmpl	%eax, %ebx
	je	.L23
.L16:
	movq	-504(%rbp), %rax
	movslq	%r10d, %r10
	movl	-624(%rbp), %r11d
	movq	-536(%rbp), %rbx
	addq	%r10, %rax
	leaq	(%r14,%rax,8), %r9
	movq	-520(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r14,%rax,8), %r8
	movq	-528(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r14,%rax,8), %rdi
	movq	-432(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r14,%rax,8), %rsi
	movq	-440(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r14,%rax,8), %rcx
	movq	-424(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r14,%rax,8), %rdx
	movq	-512(%rbp), %rax
	addq	%r10, %rax
	leaq	-24(%r14,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rax), %xmm0
	addq	$8, %r9
	addq	$8, %r8
	addq	$8, %rdi
	vaddsd	-8(%r9), %xmm0, %xmm0
	addq	$8, %rsi
	addq	$8, %rcx
	vaddsd	-32(%r8), %xmm0, %xmm0
	addq	$8, %rdx
	addq	$8, %rax
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
	movq	-592(%rbp), %rax
	movq	-584(%rbp), %rbx
	addq	%rax, -544(%rbp)
	addq	%rbx, -504(%rbp)
	addq	%rbx, -512(%rbp)
	addq	%rbx, -520(%rbp)
	addq	%rbx, -528(%rbp)
	addq	%rax, -536(%rbp)
	addq	%rax, -96(%rbp)
	addq	%rax, -496(%rbp)
	addq	%rax, -104(%rbp)
	addq	%rax, -480(%rbp)
	addq	%rax, -448(%rbp)
	addq	%rax, -488(%rbp)
	addq	%rax, -456(%rbp)
	addq	%rax, -464(%rbp)
	addq	%rax, -472(%rbp)
	addq	%rbx, -432(%rbp)
	addq	%rbx, -440(%rbp)
	addq	%rbx, -424(%rbp)
	movl	-112(%rbp), %ebx
	cmpl	%ebx, -568(%rbp)
	jg	.L24
.L71:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L72
	movq	%r14, %rdi
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
	movq	-480(%rbp), %rbx
	movq	-560(%rbp), %r10
	movq	-632(%rbp), %r11
	addq	-488(%rbp), %r10
	addq	-104(%rbp), %r11
	leaq	(%r14,%rbx), %r9
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	(%rdx), %xmm0
	addq	$8, %rax
	addq	$8, %rdx
	addq	$8, %r9
	vaddsd	16(%rax), %xmm0, %xmm0
	addq	$8, %rcx
	addq	$8, %rsi
	vaddsd	-8(%r9), %xmm0, %xmm0
	addq	$8, %rdi
	addq	$8, %r8
	vaddsd	-8(%rcx), %xmm0, %xmm0
	addq	$8, %r10
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
	movq	-80(%rbp), %rcx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rcx, -560(%rbp)
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
	movq	-560(%rbp), %rax
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
	movq	-560(%rbp), %rcx
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
