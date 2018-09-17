	.file	"2d-3r-homogeneous-variable-box-stencil.c_compilable.c"
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
	movq	%rax, %r15
	movq	%rax, -72(%rbp)
	call	strtol
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r15d
	movq	%rax, %rbx
	movslq	%r15d, %r14
	leaq	0(,%r14,8), %r13
	movq	%r13, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r14
	testl	%r15d, %r15d
	jle	.L3
	movq	%r14, %rax
	movl	$5, %ecx
	leal	-1(%r15), %r12d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r12d
	jb	.L50
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r14)
	cmpl	$1, %eax
	je	.L52
	vmovsd	%xmm0, 8(%r14)
	cmpl	$3, %eax
	jne	.L53
	vmovsd	%xmm0, 16(%r14)
	movl	$3, %edi
.L5:
	movl	%r15d, %esi
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
	je	.L94
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r14,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r14,%rax,8)
.L8:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L95
.L41:
	movq	$0, -56(%rbp)
	movq	$0, -480(%rbp)
	testl	%r15d, %r15d
	jle	.L10
	movq	-480(%rbp), %r11
	leal	-1(%r15), %r12d
.L40:
	testl	%r15d, %r15d
	movl	$1, %esi
	movq	%r11, %rax
	movl	$0, %ecx
	cmovg	%r15d, %esi
	shrq	$3, %rax
	movl	$5, %edi
	negq	%rax
	andl	$3, %eax
	testl	%r15d, %r15d
	leal	3(%rax), %edx
	cmovg	%r12d, %ecx
	cmpl	$5, %edx
	cmovb	%edi, %edx
	cmpl	%edx, %ecx
	movl	$0, %ecx
	jb	.L11
	testl	%eax, %eax
	je	.L12
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%r11)
	cmpl	$1, %eax
	je	.L56
	vmovsd	%xmm0, 8(%r11)
	cmpl	$3, %eax
	jne	.L57
	vmovsd	%xmm0, 16(%r11)
	movl	$3, %ecx
.L12:
	movl	%esi, %edi
	movq	-480(%rbp), %rdx
	vmovapd	.LC3(%rip), %ymm0
	subl	%eax, %edi
	movl	%edi, %esi
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
	shrl	$2, %esi
	.p2align 4,,10
	.p2align 3
.L14:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%eax, %esi
	ja	.L14
	movl	%edi, %eax
	andl	$-4, %eax
	addl	%eax, %ecx
	cmpl	%eax, %edi
	je	.L96
	vzeroupper
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movq	-480(%rbp), %rdi
	movslq	%ecx, %rax
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	1(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	2(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	3(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	4(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	5(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L15:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L97
	movq	-56(%rbp), %rsi
	testl	%r15d, %r15d
	movl	$1, %edi
	cmovg	%r15d, %edi
	movq	%rsi, -488(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
	negq	%rdx
	andl	$3, %edx
	testl	%r15d, %r15d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r12d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r12d
	jb	.L45
	testl	%edx, %edx
	je	.L18
	vmovsd	.LC4(%rip), %xmm0
	movq	-488(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L58
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L59
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L18:
	subl	%edx, %edi
	movq	-488(%rbp), %rcx
	vmovapd	.LC5(%rip), %ymm0
	movl	%edi, %esi
	leaq	(%rcx,%rdx,8), %rcx
	shrl	$2, %esi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L20:
	addl	$1, %edx
	vmovapd	%ymm0, (%rcx)
	addq	$32, %rcx
	cmpl	%edx, %esi
	ja	.L20
	movl	%edi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %edi
	je	.L17
.L45:
	vmovsd	.LC4(%rip), %xmm0
	movq	-488(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L17:
	movl	-72(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$3, %eax
	movl	%eax, -568(%rbp)
	testl	%edx, %edx
	jne	.L98
	cmpl	$3, -568(%rbp)
	jle	.L99
.L23:
	leal	-3(%rbx), %eax
	movl	%eax, -412(%rbp)
	cmpl	$3, %eax
	jle	.L90
	leal	(%rbx,%rbx), %edx
	movslq	%ebx, %r15
	movq	-480(%rbp), %rdi
	movq	$0, -520(%rbp)
	leal	(%rdx,%rbx), %eax
	leaq	0(,%r15,8), %r12
	movq	$0, -432(%rbp)
	movslq	%eax, %r11
	movq	%rdi, %rsi
	addl	%eax, %eax
	movl	$3, -416(%rbp)
	leaq	24(,%r11,8), %rcx
	leaq	56(%rdi,%r11,8), %r13
	cltq
	movq	%r11, -512(%rbp)
	leaq	(%rdi,%rcx), %r8
	subq	$24, %rcx
	movq	-488(%rbp), %rdi
	movq	%rax, -72(%rbp)
	addq	%rcx, %rsi
	salq	$3, %rax
	movq	%rcx, -472(%rbp)
	movq	%rsi, -552(%rbp)
	movq	%rdi, %rsi
	addq	%rcx, %rsi
	movq	%rax, -464(%rbp)
	leal	-7(%rbx), %eax
	movq	%rsi, -560(%rbp)
	leaq	(%r14,%r12), %rsi
	movq	%rsi, -504(%rbp)
	movslq	%edx, %rsi
	leal	0(,%rbx,4), %edx
	movq	%rsi, -536(%rbp)
	salq	$3, %rsi
	movq	%rsi, -440(%rbp)
	movslq	%edx, %rsi
	addl	%ebx, %edx
	subl	$6, %ebx
	movq	%rsi, -424(%rbp)
	salq	$3, %rsi
	movl	%ebx, -544(%rbp)
	leaq	80(%r14), %rbx
	movq	%rsi, -448(%rbp)
	movslq	%edx, %rsi
	movq	%rbx, -640(%rbp)
	leaq	56(%rdi), %rbx
	movq	%rsi, -408(%rbp)
	salq	$3, %rsi
	movl	%eax, -644(%rbp)
	addq	$4, %rax
	movq	%rbx, -632(%rbp)
	leaq	24(%rdi), %rbx
	movq	%rsi, -456(%rbp)
	movq	%rbx, -624(%rbp)
	movq	%rax, -656(%rbp)
	movq	%r15, -616(%rbp)
	movq	%r15, -528(%rbp)
	movq	%r12, %r15
	movq	%r12, -496(%rbp)
	movq	%r8, %r12
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-440(%rbp), %rdi
	movq	-456(%rbp), %r8
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r10
	leaq	(%rdi,%r14), %rcx
	leaq	(%r8,%r14), %rdi
	movq	-432(%rbp), %rax
	movq	-448(%rbp), %rsi
	leaq	(%r9,%r14), %r8
	movq	-632(%rbp), %r9
	addl	$1, -416(%rbp)
	leaq	(%r10,%r14), %rdx
	addq	%r14, %rax
	addq	%r14, %rsi
	movq	-640(%rbp), %rbx
	addq	%r10, %r9
	cmpq	%r9, %r12
	movq	-624(%rbp), %r9
	setnb	%r11b
	addq	%r10, %r9
	cmpq	%r9, %r13
	setbe	%r9b
	orl	%r9d, %r11d
	movq	%rbx, %r9
	addq	%r10, %r9
	cmpq	%r9, %r12
	setnb	%r10b
	cmpq	%rdx, %r13
	setbe	%r9b
	orl	%r10d, %r9d
	andl	%r11d, %r9d
	cmpl	$4, -544(%rbp)
	seta	%r10b
	andl	%r10d, %r9d
	movq	-432(%rbp), %r10
	addq	%rbx, %r10
	cmpq	%r10, %r12
	setnb	%r11b
	cmpq	%rax, %r13
	setbe	%r10b
	orl	%r10d, %r11d
	movq	-496(%rbp), %r10
	andl	%r11d, %r9d
	addq	%rbx, %r10
	cmpq	%r10, %r12
	setnb	%r10b
	cmpq	-504(%rbp), %r13
	setbe	%r11b
	orl	%r10d, %r11d
	movq	-440(%rbp), %r10
	andl	%r11d, %r9d
	addq	%rbx, %r10
	cmpq	%r10, %r12
	setnb	%r10b
	cmpq	%rcx, %r13
	setbe	%r11b
	orl	%r10d, %r11d
	andl	%r9d, %r11d
	movq	-448(%rbp), %r9
	addq	%rbx, %r9
	cmpq	%r9, %r12
	setnb	%r10b
	cmpq	%rsi, %r13
	setbe	%r9b
	orl	%r10d, %r9d
	movq	-456(%rbp), %r10
	andl	%r11d, %r9d
	addq	%rbx, %r10
	cmpq	%r10, %r12
	setnb	%r10b
	cmpq	%rdi, %r13
	setbe	%r11b
	orl	%r11d, %r10d
	testb	%r10b, %r9b
	je	.L37
	addq	-464(%rbp), %rbx
	cmpq	%rbx, %r12
	setnb	%r10b
	cmpq	%r8, %r13
	setbe	%r9b
	orb	%r9b, %r10b
	je	.L37
	movq	%rax, %r11
	shrq	$3, %r11
	negq	%r11
	andl	$3, %r11d
	leal	3(%r11), %ebx
	cmpl	%ebx, -644(%rbp)
	jb	.L60
	movl	$3, -540(%rbp)
	testl	%r11d, %r11d
	je	.L26
	movq	%r12, -88(%rbp)
	movq	-472(%rbp), %r10
	movq	-504(%rbp), %r9
	movl	%r11d, -80(%rbp)
	movl	$3, %r11d
.L27:
	vmovsd	(%rax), %xmm0
	addl	$1, %r11d
	addq	$8, %rdx
	addq	$8, %rax
	addq	$8, %r9
	addq	$8, %rcx
	addq	$8, %rsi
	addq	$8, %rdi
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	-8(%r9), %xmm0, %xmm0
	addq	$8, %r8
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
	vaddsd	-8(%r8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	8(%r9), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%r8), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	16(%r9), %xmm0, %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm0
	vaddsd	16(%rsi), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	vaddsd	16(%r8), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	24(%r9), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	movq	-488(%rbp), %r12
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%r8), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	32(%r9), %xmm0, %xmm0
	vaddsd	32(%rcx), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	32(%rsi), %xmm0, %xmm0
	vaddsd	32(%rdi), %xmm0, %xmm0
	vaddsd	32(%r8), %xmm0, %xmm0
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	40(%r9), %xmm0, %xmm0
	vaddsd	40(%rcx), %xmm0, %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vaddsd	40(%rsi), %xmm0, %xmm0
	vaddsd	40(%rdi), %xmm0, %xmm0
	vaddsd	40(%r8), %xmm0, %xmm0
	vmulsd	24(%r12,%r10), %xmm0, %xmm0
	movq	-480(%rbp), %r12
	vmovsd	%xmm0, 24(%r12,%r10)
	addq	$8, %r10
	cmpl	%ebx, %r11d
	jne	.L27
	movl	%r11d, -540(%rbp)
	movq	-88(%rbp), %r12
	movl	-80(%rbp), %r11d
.L26:
	movl	%r11d, %eax
	movq	-432(%rbp), %rsi
	movl	-544(%rbp), %ebx
	leaq	0(,%rax,8), %rdx
	movq	-536(%rbp), %r10
	movq	-424(%rbp), %r9
	addq	%rdx, %rsi
	subl	%r11d, %ebx
	movq	-520(%rbp), %r11
	movq	-408(%rbp), %r8
	addq	%r14, %rsi
	movl	%ebx, -564(%rbp)
	shrl	$2, %ebx
	movq	-488(%rbp), %rdi
	movq	%rsi, -96(%rbp)
	movq	-496(%rbp), %rsi
	movl	%ebx, -80(%rbp)
	movq	-512(%rbp), %rbx
	addq	%rdx, %rsi
	addq	%r14, %rsi
	leaq	3(%rax,%rbx), %rcx
	movq	%rsi, -104(%rbp)
	movq	-440(%rbp), %rsi
	salq	$3, %rcx
	addq	%rcx, %rdi
	addq	%rdx, %rsi
	movq	%rdi, -88(%rbp)
	leaq	(%r14,%rcx), %rdi
	addq	%r14, %rsi
	movq	%rsi, -112(%rbp)
	movq	-472(%rbp), %rsi
	addq	%rdx, %rsi
	addq	%r14, %rsi
	movq	%rsi, -120(%rbp)
	movq	-448(%rbp), %rsi
	addq	%rdx, %rsi
	addq	%r14, %rsi
	movq	%rsi, -128(%rbp)
	movq	-456(%rbp), %rsi
	addq	%rdx, %rsi
	addq	-464(%rbp), %rdx
	addq	%r14, %rsi
	movq	%rsi, -136(%rbp)
	leaq	(%r14,%rdx), %rsi
	leaq	1(%rax,%r11), %rdx
	movq	%rsi, -144(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	movq	%rsi, -152(%rbp)
	movq	-528(%rbp), %rsi
	leaq	1(%rax,%rsi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -160(%rbp)
	leaq	1(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -168(%rbp)
	leaq	1(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -176(%rbp)
	leaq	1(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -184(%rbp)
	leaq	1(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -192(%rbp)
	movq	-72(%rbp), %rdx
	leaq	1(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -200(%rbp)
	leaq	2(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -208(%rbp)
	leaq	2(%rax,%rsi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -216(%rbp)
	leaq	2(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -224(%rbp)
	leaq	2(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -232(%rbp)
	leaq	2(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -240(%rbp)
	leaq	2(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -248(%rbp)
	movq	-72(%rbp), %rdx
	leaq	2(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -256(%rbp)
	leaq	3(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -264(%rbp)
	leaq	3(%rax,%rsi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -272(%rbp)
	leaq	3(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -280(%rbp)
	leaq	3(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -288(%rbp)
	leaq	3(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -296(%rbp)
	movq	-72(%rbp), %rdx
	leaq	3(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -304(%rbp)
	leaq	4(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -312(%rbp)
	leaq	4(%rax,%rsi), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -320(%rbp)
	leaq	4(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -328(%rbp)
	leaq	4(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -336(%rbp)
	leaq	4(%rax,%r9), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdx, -344(%rbp)
	leaq	4(%rax,%r8), %rdx
	leaq	(%r14,%rdx,8), %r8
	movq	-72(%rbp), %rdx
	movq	%r8, -352(%rbp)
	leaq	4(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %r8
	leaq	5(%rax,%r11), %rdx
	movq	%r8, -360(%rbp)
	leaq	(%r14,%rdx,8), %r8
	leaq	5(%rax,%rsi), %rdx
	movq	%r8, -368(%rbp)
	movq	%rsi, %r8
	leaq	(%r14,%rdx,8), %rsi
	leaq	5(%rax,%r10), %rdx
	movq	%rsi, -376(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	leaq	5(%rax,%rbx), %rdx
	movq	%rsi, -384(%rbp)
	movq	%rbx, %rsi
	leaq	(%r14,%rdx,8), %rbx
	leaq	5(%rax,%r9), %rdx
	movq	%rbx, -392(%rbp)
	leaq	(%r14,%rdx,8), %rbx
	movq	%rbx, -576(%rbp)
	movq	-408(%rbp), %rbx
	leaq	5(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rbx
	movq	-72(%rbp), %rdx
	movq	%rbx, -584(%rbp)
	leaq	5(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %r9
	leaq	6(%rax,%r11), %rdx
	leaq	(%r14,%rdx,8), %rbx
	leaq	6(%rax,%r8), %rdx
	movq	%r9, -400(%rbp)
	leaq	(%r14,%rdx,8), %r11
	leaq	6(%rax,%r10), %rdx
	leaq	(%r14,%rdx,8), %r10
	leaq	6(%rax,%rsi), %rdx
	movq	-424(%rbp), %rsi
	addq	-480(%rbp), %rcx
	leaq	(%r14,%rdx,8), %r9
	movq	%r14, -600(%rbp)
	leaq	6(%rax,%rsi), %rdx
	movq	-408(%rbp), %rsi
	movq	%r12, -608(%rbp)
	leaq	(%r14,%rdx,8), %r8
	movq	-576(%rbp), %r12
	movq	%r15, -576(%rbp)
	leaq	6(%rax,%rsi), %rdx
	leaq	(%r14,%rdx,8), %rsi
	movq	-72(%rbp), %rdx
	movq	%rsi, -592(%rbp)
	movq	-592(%rbp), %r15
	leaq	6(%rax,%rdx), %rax
	movq	%r13, -592(%rbp)
	xorl	%edx, %edx
	movq	-584(%rbp), %r13
	leaq	(%r14,%rax,8), %rsi
	movq	-400(%rbp), %r14
	xorl	%eax, %eax
	movq	%rcx, -400(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movq	-96(%rbp), %rcx
	vmovupd	(%rdi,%rax), %ymm0
	addl	$1, %edx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-104(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-112(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-120(%rbp), %rcx
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
	movq	-88(%rbp), %rcx
	vaddpd	(%r12,%rax), %ymm0, %ymm0
	vaddpd	0(%r13,%rax), %ymm0, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vaddpd	(%r15,%rax), %ymm0, %ymm0
	vaddpd	(%rsi,%rax), %ymm0, %ymm0
	vmulpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-400(%rbp), %rcx
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, -80(%rbp)
	ja	.L28
	movl	-564(%rbp), %ebx
	movl	-540(%rbp), %r10d
	movq	-600(%rbp), %r14
	movq	-608(%rbp), %r12
	movl	%ebx, %eax
	movq	-576(%rbp), %r15
	movq	-592(%rbp), %r13
	andl	$-4, %eax
	addl	%eax, %r10d
	cmpl	%eax, %ebx
	je	.L32
.L25:
	movq	-512(%rbp), %rax
	movslq	%r10d, %r10
	movq	-552(%rbp), %r11
	movq	-560(%rbp), %rbx
	addq	%r10, %rax
	leaq	(%r14,%rax,8), %r9
	movq	-528(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r14,%rax,8), %r8
	movq	-536(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r14,%rax,8), %rdi
	movq	-424(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r14,%rax,8), %rsi
	movq	-408(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r14,%rax,8), %rcx
	movq	-72(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r14,%rax,8), %rdx
	movq	-520(%rbp), %rax
	addq	%r10, %rax
	leaq	-24(%r14,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L30:
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
	vmulsd	(%rbx,%r10,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r11,%r10,8)
	addq	$1, %r10
	cmpl	%r10d, -412(%rbp)
	jg	.L30
.L32:
	addq	%r15, -552(%rbp)
	addq	%r15, %r12
	addq	%r15, %r13
	movq	-616(%rbp), %rax
	addq	%r15, -560(%rbp)
	addq	%r15, -504(%rbp)
	addq	%rax, -512(%rbp)
	addq	%r15, -432(%rbp)
	addq	%r15, -496(%rbp)
	addq	%r15, -440(%rbp)
	addq	%r15, -472(%rbp)
	addq	%r15, -448(%rbp)
	addq	%r15, -456(%rbp)
	addq	%r15, -464(%rbp)
	addq	%rax, -520(%rbp)
	addq	%rax, -528(%rbp)
	addq	%rax, -536(%rbp)
	addq	%rax, -424(%rbp)
	addq	%rax, -408(%rbp)
	movl	-416(%rbp), %edi
	addq	%rax, -72(%rbp)
	cmpl	%edi, -568(%rbp)
	jg	.L33
.L90:
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L91
	movq	%r14, %rdi
	call	dummy
	movq	-480(%rbp), %rdi
	call	dummy
	movq	-488(%rbp), %rdi
	call	dummy
.L91:
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
.L95:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	%rax, %r11
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L37:
	movq	-496(%rbp), %rbx
	movq	%r12, -80(%rbp)
	movl	$3, %r10d
	movq	-552(%rbp), %r11
	movq	-656(%rbp), %r12
	leaq	(%r14,%rbx), %r9
	movq	-560(%rbp), %rbx
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	(%rax), %xmm0
	addq	$8, %rdx
	addq	$8, %rax
	addq	$8, %r9
	addq	$8, %rcx
	addq	$8, %rsi
	addq	$8, %rdi
	addq	$8, %r8
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	-8(%r9), %xmm0, %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
	vaddsd	-8(%r8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	8(%r9), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	8(%rdi), %xmm0, %xmm0
	vaddsd	8(%r8), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	16(%r9), %xmm0, %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm0
	vaddsd	16(%rsi), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	vaddsd	16(%r8), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	24(%r9), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%r8), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	32(%r9), %xmm0, %xmm0
	vaddsd	32(%rcx), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	32(%rsi), %xmm0, %xmm0
	vaddsd	32(%rdi), %xmm0, %xmm0
	vaddsd	32(%r8), %xmm0, %xmm0
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	40(%r9), %xmm0, %xmm0
	vaddsd	40(%rcx), %xmm0, %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vaddsd	40(%rsi), %xmm0, %xmm0
	vaddsd	40(%rdi), %xmm0, %xmm0
	vaddsd	40(%r8), %xmm0, %xmm0
	vmulsd	(%rbx,%r10,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r11,%r10,8)
	addq	$1, %r10
	cmpq	%r10, %r12
	jne	.L31
	movq	-80(%rbp), %r12
	jmp	.L32
.L60:
	movl	$3, %r10d
	jmp	.L25
.L97:
	testl	%r15d, %r15d
	jle	.L100
	movl	%r15d, %edi
	cmpl	$4, %r12d
	jbe	.L62
	movq	$0, -488(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L98:
	movq	%r14, %rdi
	vzeroupper
	call	dummy
	movq	-480(%rbp), %rdi
	call	dummy
	movq	-488(%rbp), %rdi
	call	dummy
	cmpl	$3, -568(%rbp)
	jg	.L23
	jmp	.L24
.L52:
	movl	$1, %edi
	jmp	.L5
.L62:
	movq	$0, -488(%rbp)
	xorl	%eax, %eax
	jmp	.L45
.L3:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L41
	movq	-56(%rbp), %rax
	movq	%rax, -480(%rbp)
.L10:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -488(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -488(%rbp)
	jmp	.L17
.L94:
	vzeroupper
	jmp	.L8
.L58:
	movl	$1, %eax
	jmp	.L18
.L96:
	vzeroupper
	jmp	.L15
.L56:
	movl	$1, %ecx
	jmp	.L12
.L59:
	movl	$2, %eax
	jmp	.L18
.L57:
	movl	$2, %ecx
	jmp	.L12
.L53:
	movl	$2, %edi
	jmp	.L5
.L99:
	vzeroupper
	jmp	.L91
.L50:
	xorl	%eax, %eax
	jmp	.L4
.L100:
	movq	$0, -488(%rbp)
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
