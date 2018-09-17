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
	movq	%rax, %r14
	movq	%rax, -72(%rbp)
	movl	%r14d, %r15d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r15d
	movq	%rax, %rbx
	movslq	%r15d, %r14
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r13
	testl	%r15d, %r15d
	jle	.L3
	leal	-1(%r15), %r12d
	movq	%r13, %rax
	movl	$5, %ecx
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
	vmovsd	%xmm0, 0(%r13)
	cmpl	$1, %eax
	je	.L52
	vmovsd	%xmm0, 8(%r13)
	cmpl	$3, %eax
	jne	.L53
	vmovsd	%xmm0, 16(%r13)
	movl	$3, %edi
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	0(%r13,%rax,8), %rdx
	movl	%r15d, %esi
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
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L8
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
.L8:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L95
.L41:
	movq	$0, -56(%rbp)
	movq	$0, -520(%rbp)
	testl	%r15d, %r15d
	jle	.L10
	movq	-520(%rbp), %r11
	leal	-1(%r15), %r12d
.L40:
	testl	%r15d, %r15d
	movl	$1, %esi
	movq	%r11, %rax
	cmovg	%r15d, %esi
	shrq	$3, %rax
	movl	$0, %ecx
	negq	%rax
	movl	$5, %edi
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
	movq	-520(%rbp), %rdx
	subl	%eax, %esi
	vmovapd	.LC3(%rip), %ymm0
	movl	%esi, %edi
	shrl	$2, %esi
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
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
	movq	-520(%rbp), %rsi
	movslq	%ecx, %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rsi,%rax,8)
	leal	1(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
	leal	2(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
	leal	3(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
	leal	4(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
	leal	5(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L15:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L97
	movq	-56(%rbp), %rsi
	testl	%r15d, %r15d
	movl	$1, %edi
	cmovg	%r15d, %edi
	movq	%rsi, -528(%rbp)
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
	movq	-528(%rbp), %rax
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L58
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L59
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L18:
	movq	-528(%rbp), %rcx
	subl	%edx, %edi
	movl	%edi, %esi
	vmovapd	.LC5(%rip), %ymm0
	shrl	$2, %esi
	leaq	(%rcx,%rdx,8), %rcx
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
	movq	-528(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L17:
	movl	-72(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$3, %eax
	movl	%eax, -576(%rbp)
	testl	%edx, %edx
	jne	.L98
	cmpl	$3, -576(%rbp)
	jle	.L99
.L23:
	leal	-3(%rbx), %eax
	movl	%eax, -632(%rbp)
	cmpl	$3, %eax
	jle	.L90
	leal	(%rbx,%rbx), %edx
	movslq	%ebx, %r11
	movq	-520(%rbp), %rsi
	movq	$0, -496(%rbp)
	leal	(%rdx,%rbx), %eax
	movq	%r11, -592(%rbp)
	movslq	%eax, %r15
	addl	%eax, %eax
	movq	%r11, -504(%rbp)
	leaq	24(,%r15,8), %rcx
	cltq
	movq	%r15, -488(%rbp)
	leaq	(%rsi,%rcx), %rdi
	subq	$24, %rcx
	movq	%rax, -400(%rbp)
	salq	$3, %rax
	movq	%rdi, -536(%rbp)
	movq	%rsi, %rdi
	leaq	56(%rsi,%r15,8), %rsi
	addq	%rcx, %rdi
	movq	%rcx, -456(%rbp)
	movq	%rsi, -544(%rbp)
	movq	-528(%rbp), %rsi
	leaq	0(,%r11,8), %r14
	movq	%rdi, -560(%rbp)
	movq	%rax, -448(%rbp)
	leal	-7(%rbx), %eax
	movl	%eax, -628(%rbp)
	addq	$4, %rax
	movq	%rsi, %rdi
	movq	%r14, -600(%rbp)
	addq	%rcx, %rdi
	movq	%r14, -464(%rbp)
	leaq	0(%r13,%r14), %rcx
	movq	%rdi, -568(%rbp)
	movq	%rcx, -480(%rbp)
	movslq	%edx, %rcx
	movq	%rcx, -512(%rbp)
	leal	0(,%rbx,4), %edx
	salq	$3, %rcx
	movq	%rcx, -424(%rbp)
	movslq	%edx, %rcx
	addl	%ebx, %edx
	subl	$6, %ebx
	movq	%rcx, -408(%rbp)
	salq	$3, %rcx
	movl	%ebx, -552(%rbp)
	leaq	80(%r13), %rbx
	movq	%rcx, -432(%rbp)
	movslq	%edx, %rcx
	movq	%rbx, -624(%rbp)
	leaq	56(%rsi), %rbx
	movq	%rcx, -416(%rbp)
	salq	$3, %rcx
	movq	%rbx, -616(%rbp)
	leaq	24(%rsi), %rbx
	movq	%rcx, -440(%rbp)
	movq	$0, -472(%rbp)
	movl	$3, -80(%rbp)
	movq	%rbx, -608(%rbp)
	movq	%rax, -640(%rbp)
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-424(%rbp), %rsi
	movq	-432(%rbp), %rdi
	movq	-440(%rbp), %r14
	movq	-456(%rbp), %r10
	movq	-616(%rbp), %r9
	leaq	(%rsi,%r13), %rcx
	leaq	(%rdi,%r13), %rsi
	movq	-448(%rbp), %r15
	leaq	(%r14,%r13), %rdi
	movq	-536(%rbp), %r14
	addl	$1, -80(%rbp)
	leaq	(%r10,%r13), %rdx
	addq	%r10, %r9
	movq	-624(%rbp), %rbx
	leaq	(%r15,%r13), %r8
	movq	-544(%rbp), %r15
	cmpq	%r9, %r14
	movq	-608(%rbp), %r9
	setnb	%r11b
	movq	-472(%rbp), %r12
	addq	%r10, %r9
	leaq	(%r12,%r13), %rax
	cmpq	%r9, %r15
	setbe	%r9b
	orl	%r9d, %r11d
	movq	%rbx, %r9
	addq	%r10, %r9
	cmpq	%r9, %r14
	setnb	%r10b
	cmpq	%rdx, %r15
	setbe	%r9b
	orl	%r10d, %r9d
	andl	%r11d, %r9d
	cmpl	$4, -552(%rbp)
	seta	%r10b
	andl	%r10d, %r9d
	movq	%rbx, %r10
	addq	%r12, %r10
	cmpq	%r10, %r14
	setnb	%r11b
	cmpq	%rax, %r15
	setbe	%r10b
	orl	%r10d, %r11d
	movq	-464(%rbp), %r10
	andl	%r11d, %r9d
	addq	%rbx, %r10
	cmpq	%r10, %r14
	setnb	%r10b
	cmpq	-480(%rbp), %r15
	setbe	%r11b
	orl	%r10d, %r11d
	movq	-424(%rbp), %r10
	andl	%r11d, %r9d
	addq	%rbx, %r10
	cmpq	%r10, %r14
	setnb	%r10b
	cmpq	%rcx, %r15
	setbe	%r11b
	orl	%r10d, %r11d
	andl	%r9d, %r11d
	movq	-432(%rbp), %r9
	addq	%rbx, %r9
	cmpq	%r9, %r14
	setnb	%r10b
	cmpq	%rsi, %r15
	setbe	%r9b
	orl	%r10d, %r9d
	movq	-440(%rbp), %r10
	andl	%r11d, %r9d
	addq	%rbx, %r10
	cmpq	%r10, %r14
	setnb	%r10b
	cmpq	%rdi, %r15
	setbe	%r11b
	orl	%r11d, %r10d
	testb	%r10b, %r9b
	je	.L37
	addq	-448(%rbp), %rbx
	cmpq	%rbx, %r14
	setnb	%r10b
	cmpq	%r8, %r15
	setbe	%r9b
	orb	%r9b, %r10b
	je	.L37
	movq	%rax, %r11
	shrq	$3, %r11
	negq	%r11
	andl	$3, %r11d
	leal	3(%r11), %ebx
	cmpl	%ebx, -628(%rbp)
	jb	.L60
	movl	$3, %r12d
	movl	%r12d, -548(%rbp)
	testl	%r11d, %r11d
	je	.L26
	movq	-456(%rbp), %r10
	movq	-480(%rbp), %r9
	movq	-520(%rbp), %r14
	movq	-528(%rbp), %r15
.L27:
	vmovsd	(%rax), %xmm0
	addl	$1, %r12d
	addq	$8, %rdx
	addq	$8, %rax
	vaddsd	16(%rdx), %xmm0, %xmm0
	addq	$8, %r9
	addq	$8, %rcx
	vaddsd	-8(%r9), %xmm0, %xmm0
	addq	$8, %rsi
	addq	$8, %rdi
	vaddsd	-8(%rcx), %xmm0, %xmm0
	addq	$8, %r8
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
	vmulsd	24(%r15,%r10), %xmm0, %xmm0
	vmovsd	%xmm0, 24(%r14,%r10)
	addq	$8, %r10
	cmpl	%ebx, %r12d
	jne	.L27
	movl	%r12d, -548(%rbp)
.L26:
	movq	-488(%rbp), %rbx
	movl	%r11d, %eax
	movq	-528(%rbp), %rcx
	movl	-552(%rbp), %edi
	movq	-408(%rbp), %r10
	leaq	3(%rax,%rbx), %rdx
	movq	-416(%rbp), %r9
	leaq	0(,%rdx,8), %rsi
	addq	%rsi, %rcx
	subl	%r11d, %edi
	movq	%rsi, -72(%rbp)
	movq	-512(%rbp), %r11
	movq	%rcx, -88(%rbp)
	movq	-472(%rbp), %rcx
	leaq	0(,%rax,8), %rdx
	movl	%edi, -572(%rbp)
	shrl	$2, %edi
	movl	%edi, -76(%rbp)
	leaq	0(%r13,%rsi), %rdi
	movq	-504(%rbp), %rsi
	movq	%rdi, -96(%rbp)
	addq	%rdx, %rcx
	leaq	0(%r13,%rcx), %rdi
	movq	-464(%rbp), %rcx
	movq	%rdi, -104(%rbp)
	addq	%rdx, %rcx
	leaq	0(%r13,%rcx), %rdi
	movq	-424(%rbp), %rcx
	movq	%rdi, -112(%rbp)
	addq	%rdx, %rcx
	leaq	0(%r13,%rcx), %rdi
	movq	-456(%rbp), %rcx
	movq	%rdi, -120(%rbp)
	addq	%rdx, %rcx
	leaq	0(%r13,%rcx), %rdi
	movq	-432(%rbp), %rcx
	movq	%rdi, -128(%rbp)
	addq	%rdx, %rcx
	leaq	0(%r13,%rcx), %rdi
	movq	-440(%rbp), %rcx
	movq	%rdi, -136(%rbp)
	addq	%rdx, %rcx
	addq	-448(%rbp), %rdx
	leaq	0(%r13,%rcx), %rdi
	movq	%rdi, -144(%rbp)
	leaq	0(%r13,%rdx), %rdi
	movq	%rdi, -152(%rbp)
	movq	-496(%rbp), %rdi
	leaq	1(%rax,%rdi), %rdx
	leaq	0(%r13,%rdx,8), %rcx
	leaq	1(%rax,%rsi), %rdx
	movq	%rcx, -160(%rbp)
	leaq	0(%r13,%rdx,8), %rcx
	leaq	1(%rax,%r11), %rdx
	movq	%rcx, -168(%rbp)
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -176(%rbp)
	leaq	1(%rax,%rbx), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -184(%rbp)
	leaq	1(%rax,%r10), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -192(%rbp)
	leaq	1(%rax,%r9), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -200(%rbp)
	movq	-400(%rbp), %r8
	leaq	1(%rax,%r8), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -208(%rbp)
	leaq	2(%rax,%rdi), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -216(%rbp)
	leaq	2(%rax,%rsi), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -224(%rbp)
	leaq	2(%rax,%r11), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -232(%rbp)
	leaq	2(%rax,%rbx), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -240(%rbp)
	leaq	2(%rax,%r10), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -248(%rbp)
	leaq	2(%rax,%r9), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -256(%rbp)
	leaq	2(%rax,%r8), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -264(%rbp)
	leaq	3(%rax,%rdi), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -272(%rbp)
	leaq	3(%rax,%rsi), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -280(%rbp)
	leaq	3(%rax,%r11), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -288(%rbp)
	leaq	3(%rax,%r10), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -296(%rbp)
	leaq	3(%rax,%r9), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -304(%rbp)
	leaq	3(%rax,%r8), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -312(%rbp)
	leaq	4(%rax,%rdi), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -320(%rbp)
	leaq	4(%rax,%rsi), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rdx, -328(%rbp)
	leaq	4(%rax,%r11), %rdx
	leaq	0(%r13,%rdx,8), %rcx
	leaq	4(%rax,%rbx), %rdx
	movq	%rcx, -336(%rbp)
	leaq	0(%r13,%rdx,8), %rcx
	leaq	4(%rax,%r10), %rdx
	movq	%rcx, -344(%rbp)
	leaq	0(%r13,%rdx,8), %rcx
	leaq	4(%rax,%r9), %rdx
	movq	%rcx, -352(%rbp)
	leaq	0(%r13,%rdx,8), %rcx
	leaq	4(%rax,%r8), %rdx
	movq	%rcx, -360(%rbp)
	movq	%r11, %r8
	leaq	0(%r13,%rdx,8), %rcx
	leaq	5(%rax,%rdi), %rdx
	movq	%rcx, -368(%rbp)
	movq	%rsi, %rcx
	leaq	0(%r13,%rdx,8), %r15
	leaq	5(%rax,%rsi), %rdx
	movq	%rbx, %rsi
	leaq	0(%r13,%rdx,8), %r14
	leaq	5(%rax,%r11), %rdx
	leaq	0(%r13,%rdx,8), %r11
	leaq	5(%rax,%rbx), %rdx
	movq	%r11, -376(%rbp)
	leaq	0(%r13,%rdx,8), %rbx
	leaq	5(%rax,%r10), %rdx
	movq	%rbx, -392(%rbp)
	leaq	0(%r13,%rdx,8), %r12
	leaq	5(%rax,%r9), %rdx
	leaq	0(%r13,%rdx,8), %rbx
	movq	-400(%rbp), %rdx
	leaq	5(%rax,%rdx), %rdx
	leaq	0(%r13,%rdx,8), %r11
	leaq	6(%rax,%rdi), %rdx
	leaq	0(%r13,%rdx,8), %r10
	leaq	6(%rax,%rcx), %rdx
	movq	-416(%rbp), %rcx
	leaq	0(%r13,%rdx,8), %r9
	leaq	6(%rax,%r8), %rdx
	leaq	0(%r13,%rdx,8), %r8
	leaq	6(%rax,%rsi), %rdx
	movq	-408(%rbp), %rsi
	leaq	0(%r13,%rdx,8), %rdi
	leaq	6(%rax,%rsi), %rdx
	leaq	0(%r13,%rdx,8), %rsi
	leaq	6(%rax,%rcx), %rdx
	leaq	0(%r13,%rdx,8), %rcx
	movq	-400(%rbp), %rdx
	leaq	6(%rax,%rdx), %rax
	leaq	0(%r13,%rax,8), %rdx
	movq	-72(%rbp), %rax
	movl	$0, -72(%rbp)
	addq	-520(%rbp), %rax
	movq	%rax, -384(%rbp)
	xorl	%eax, %eax
	movq	%r13, -584(%rbp)
	movq	-392(%rbp), %r13
	movq	%rdx, -392(%rbp)
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L28:
	movq	-96(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	movq	-104(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-112(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-120(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-128(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
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
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-328(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm2
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	movq	-336(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	movq	-344(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm2
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	movq	-352(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	movq	-360(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm2
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	movq	-368(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%r15,%rax), %xmm2
	vinsertf128	$0x1, 16(%r15,%rax), %ymm2, %ymm0
	movq	-376(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%r14,%rax), %xmm1
	vinsertf128	$0x1, 16(%r14,%rax), %ymm1, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%rdx,%rax), %xmm2
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	0(%r13,%rax), %xmm1
	vinsertf128	$0x1, 16(%r13,%rax), %ymm1, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%r12,%rax), %xmm2
	vinsertf128	$0x1, 16(%r12,%rax), %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%rbx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm1, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%r11,%rax), %xmm2
	vinsertf128	$0x1, 16(%r11,%rax), %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%r10,%rax), %xmm1
	vinsertf128	$0x1, 16(%r10,%rax), %ymm1, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%r9,%rax), %xmm2
	vinsertf128	$0x1, 16(%r9,%rax), %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%r8,%rax), %xmm1
	vinsertf128	$0x1, 16(%r8,%rax), %ymm1, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%rdi,%rax), %xmm2
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%rsi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm1, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%rcx,%rax), %xmm2
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm2, %ymm0
	movq	-392(%rbp), %rdx
	addl	$1, -72(%rbp)
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	movq	-88(%rbp), %rdx
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vmulpd	%ymm0, %ymm1, %ymm0
	movq	-384(%rbp), %rdx
	vmovups	%xmm0, (%rdx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rax)
	movl	-72(%rbp), %edx
	addq	$32, %rax
	cmpl	%edx, -76(%rbp)
	ja	.L28
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-572(%rbp), %ebx
	movl	-548(%rbp), %r10d
	movq	-584(%rbp), %r13
	movl	%ebx, %eax
	andl	$-4, %eax
	addl	%eax, %r10d
	cmpl	%eax, %ebx
	je	.L32
.L25:
	movq	-488(%rbp), %rax
	movslq	%r10d, %r10
	movl	-632(%rbp), %r11d
	movq	-560(%rbp), %rbx
	movq	-568(%rbp), %r12
	addq	%r10, %rax
	leaq	0(%r13,%rax,8), %r9
	movq	-504(%rbp), %rax
	addq	%r10, %rax
	leaq	0(%r13,%rax,8), %r8
	movq	-512(%rbp), %rax
	addq	%r10, %rax
	leaq	0(%r13,%rax,8), %rdi
	movq	-408(%rbp), %rax
	addq	%r10, %rax
	leaq	0(%r13,%rax,8), %rsi
	movq	-416(%rbp), %rax
	addq	%r10, %rax
	leaq	0(%r13,%rax,8), %rcx
	movq	-400(%rbp), %rax
	addq	%r10, %rax
	leaq	0(%r13,%rax,8), %rdx
	movq	-496(%rbp), %rax
	addq	%r10, %rax
	leaq	-24(%r13,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L30:
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
	vmulsd	(%r12,%r10,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx,%r10,8)
	addq	$1, %r10
	cmpl	%r10d, %r11d
	jg	.L30
.L32:
	movq	-600(%rbp), %rax
	movq	-592(%rbp), %rbx
	addq	%rax, -536(%rbp)
	addq	%rbx, -488(%rbp)
	addq	%rbx, -496(%rbp)
	addq	%rbx, -504(%rbp)
	addq	%rax, -560(%rbp)
	addq	%rax, -544(%rbp)
	addq	%rax, -568(%rbp)
	addq	%rax, -480(%rbp)
	addq	%rax, -472(%rbp)
	addq	%rax, -464(%rbp)
	addq	%rax, -424(%rbp)
	addq	%rax, -456(%rbp)
	addq	%rax, -432(%rbp)
	addq	%rax, -440(%rbp)
	addq	%rax, -448(%rbp)
	addq	%rbx, -512(%rbp)
	addq	%rbx, -408(%rbp)
	addq	%rbx, -416(%rbp)
	addq	%rbx, -400(%rbp)
	movl	-80(%rbp), %ebx
	cmpl	%ebx, -576(%rbp)
	jg	.L33
.L90:
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L91
	movq	%r13, %rdi
	call	dummy
	movq	-520(%rbp), %rdi
	call	dummy
	movq	-528(%rbp), %rdi
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
	movq	%rax, -520(%rbp)
	movq	%rax, %r11
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L37:
	movq	-464(%rbp), %rbx
	movl	$3, %r10d
	movq	-560(%rbp), %r11
	movq	-640(%rbp), %r12
	leaq	0(%r13,%rbx), %r9
	movq	-568(%rbp), %rbx
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	(%rax), %xmm0
	addq	$8, %rdx
	addq	$8, %rax
	addq	$8, %r9
	vaddsd	16(%rdx), %xmm0, %xmm0
	addq	$8, %rcx
	addq	$8, %rsi
	vaddsd	-8(%r9), %xmm0, %xmm0
	addq	$8, %rdi
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
	movq	$0, -528(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L98:
	movq	%r13, %rdi
	vzeroupper
	call	dummy
	movq	-520(%rbp), %rdi
	call	dummy
	movq	-528(%rbp), %rdi
	call	dummy
	cmpl	$3, -576(%rbp)
	jg	.L23
	jmp	.L24
.L52:
	movl	$1, %edi
	jmp	.L5
.L62:
	movq	$0, -528(%rbp)
	xorl	%eax, %eax
	jmp	.L45
.L3:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L41
	movq	-56(%rbp), %rax
	movq	%rax, -520(%rbp)
.L10:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -528(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -528(%rbp)
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
	movq	$0, -528(%rbp)
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
