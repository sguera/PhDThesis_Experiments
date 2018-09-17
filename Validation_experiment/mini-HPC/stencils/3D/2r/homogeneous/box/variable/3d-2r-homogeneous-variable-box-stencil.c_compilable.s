	.file	"3d-2r-homogeneous-variable-box-stencil.c_compilable.c"
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$10, %edx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	movq	%rsi, %r13
	pushq	%r12
	pushq	%r10
	pushq	%rbx
	subq	$432, %rsp
	.cfi_offset 12, -48
	.cfi_offset 10, -56
	.cfi_offset 3, -64
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
	call	strtol
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movl	%eax, %ecx
	movq	%rax, -72(%rbp)
	imull	%r12d, %ecx
	imull	%ebx, %ecx
	movslq	%ecx, %r15
	movq	%r15, %r14
	salq	$3, %r15
	movq	%r15, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rcx
	movq	%rcx, -448(%rbp)
	testl	%r14d, %r14d
	jle	.L3
	movq	%rcx, %rax
	movl	$5, %esi
	leal	-1(%r14), %r13d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%r13d, %edx
	ja	.L43
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rcx)
	cmpl	$1, %eax
	je	.L45
	vmovsd	%xmm0, 8(%rcx)
	cmpl	$3, %eax
	jne	.L46
	vmovsd	%xmm0, 16(%rcx)
	movl	$3, %r8d
.L5:
	movl	%r14d, %edi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%rcx,%rax,8), %rdx
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
	cmpl	%esi, %eax
	jb	.L7
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%r8), %eax
	cmpl	%edi, %edx
	je	.L78
	vzeroupper
	movq	-448(%rbp), %rcx
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L8:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L79
.L32:
	movq	$0, -56(%rbp)
	movq	$0, -432(%rbp)
	testl	%r14d, %r14d
	jle	.L10
	movq	-432(%rbp), %rcx
	leal	-1(%r14), %r13d
.L31:
	testl	%r14d, %r14d
	movl	$1, %edi
	movq	%rcx, %rax
	movl	$5, %esi
	cmovg	%r14d, %edi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	testl	%r14d, %r14d
	movl	$0, %esi
	cmovg	%r13d, %esi
	cmpl	%esi, %edx
	ja	.L47
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.L12
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx)
	cmpl	$1, %eax
	je	.L49
	vmovsd	%xmm0, 8(%rcx)
	cmpl	$3, %eax
	jne	.L50
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
	cmpl	%r8d, %eax
	jb	.L14
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rsi), %eax
	cmpl	%edi, %edx
	je	.L80
	vzeroupper
	movq	-432(%rbp), %rcx
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
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L81
	movq	-56(%rbp), %rcx
	testl	%r14d, %r14d
	movl	$1, %r8d
	movl	$5, %edi
	cmovg	%r14d, %r8d
	movq	%rcx, -440(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %esi
	cmpl	$5, %esi
	cmovb	%edi, %esi
	testl	%r14d, %r14d
	cmovle	%eax, %r13d
	cmpl	%r13d, %esi
	ja	.L36
	testl	%edx, %edx
	je	.L18
	vmovsd	.LC4(%rip), %xmm0
	movq	-440(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L51
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L52
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L18:
	subl	%edx, %r8d
	movq	-440(%rbp), %rcx
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
	cmpl	%edi, %edx
	jb	.L20
	movl	%r8d, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%r8d, %edx
	je	.L82
	vzeroupper
.L36:
	vmovsd	.LC4(%rip), %xmm0
	movq	-440(%rbp), %rcx
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
	movl	-72(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$2, %eax
	movl	%eax, -452(%rbp)
	testl	%edx, %edx
	jne	.L83
	cmpl	$2, -452(%rbp)
	jle	.L75
	movl	%ebx, %ecx
	leal	-2(%rbx), %eax
	imull	%r12d, %ecx
	movl	%ecx, -456(%rbp)
	cmpl	$4, %r12d
	jle	.L75
.L42:
	cmpl	$2, %eax
	jle	.L24
	movl	$0, -420(%rbp)
	movl	-456(%rbp), %ecx
	movl	$2, -404(%rbp)
	leal	(%rcx,%rcx), %eax
	movl	%ecx, -416(%rbp)
	movl	%eax, -424(%rbp)
	leal	(%rcx,%rcx,2), %eax
	movl	%eax, -412(%rbp)
	leal	0(,%rcx,4), %eax
	movl	%eax, -408(%rbp)
	movslq	%ebx, %rax
	movq	%rax, -392(%rbp)
	salq	$3, %rax
	movq	%rax, -400(%rbp)
	leal	(%rbx,%rbx), %eax
	cltq
	movq	%rax, -480(%rbp)
	leal	(%rbx,%rbx,2), %eax
	cltq
	movq	%rax, -472(%rbp)
	leal	0(,%rbx,4), %eax
	cltq
	movq	%rax, -464(%rbp)
	leal	-2(%r12), %eax
	movl	%eax, -296(%rbp)
	leal	-5(%rbx), %eax
	addq	$3, %rax
	movq	%rax, -288(%rbp)
	.p2align 4,,10
	.p2align 3
.L27:
	movslq	-424(%rbp), %r13
	movq	-480(%rbp), %r14
	movq	-448(%rbp), %rax
	movslq	-420(%rbp), %rsi
	leaq	(%r14,%r13), %rdi
	movq	-392(%rbp), %rbx
	movslq	-412(%rbp), %rdx
	salq	$3, %rdi
	movslq	-408(%rbp), %rcx
	addl	$1, -404(%rbp)
	addq	%rdi, %rax
	leaq	(%rsi,%rbx), %r10
	movq	%rbx, -264(%rbp)
	movq	%rax, -384(%rbp)
	movq	-440(%rbp), %rax
	movq	%r10, -344(%rbp)
	leaq	(%rdx,%rbx), %r10
	addq	%rdi, %rax
	movq	%r10, -328(%rbp)
	movq	-472(%rbp), %r10
	movq	%rax, -280(%rbp)
	movslq	-416(%rbp), %rax
	addq	-432(%rbp), %rdi
	movq	%r10, -256(%rbp)
	leaq	(%rax,%rbx), %r11
	movq	%rdi, -192(%rbp)
	movq	%r11, -336(%rbp)
	leaq	(%rcx,%rbx), %r11
	movq	%r11, -320(%rbp)
	leaq	(%r10,%rsi), %r11
	movq	%r11, -312(%rbp)
	leaq	(%r10,%rax), %r11
	movq	%r11, -304(%rbp)
	leaq	(%r10,%rdx), %r11
	movq	%r11, -248(%rbp)
	leaq	(%r10,%rcx), %r11
	movq	%r11, -240(%rbp)
	movq	-464(%rbp), %r11
	leaq	(%r11,%rsi), %r9
	leaq	(%r11,%rcx), %r8
	movq	%r11, -216(%rbp)
	movq	%r9, -232(%rbp)
	leaq	(%r11,%rax), %r9
	movq	%r9, -224(%rbp)
	leaq	(%r11,%rdx), %r9
	movq	%r9, -208(%rbp)
	movq	%r8, -200(%rbp)
	movq	%rcx, -352(%rbp)
	subq	%r13, %rcx
	movq	%rdx, -360(%rbp)
	subq	%r13, %rdx
	movq	%rax, -368(%rbp)
	subq	%r13, %rax
	movq	%rsi, -376(%rbp)
	subq	%r13, %rsi
	movq	$0, -272(%rbp)
	movl	$2, -292(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rax, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movq	-376(%rbp), %rdx
	movq	-312(%rbp), %r15
	movq	$2, -184(%rbp)
	addl	$1, -292(%rbp)
	movq	-384(%rbp), %rax
	subq	%r14, %rdx
	subq	%r14, %r15
	subq	%r13, %rdx
	subq	%r13, %r15
	movq	%rdx, -136(%rbp)
	movq	-368(%rbp), %rdx
	movq	%r15, -144(%rbp)
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -128(%rbp)
	movq	-360(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -120(%rbp)
	movq	-352(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -112(%rbp)
	movq	-344(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -104(%rbp)
	movq	-336(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -96(%rbp)
	movq	-328(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -88(%rbp)
	movq	-320(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -80(%rbp)
	movq	-304(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -72(%rbp)
	.p2align 4,,10
	.p2align 3
.L25:
	movq	-136(%rbp), %r15
	vmovsd	16(%rax), %xmm0
	movq	-272(%rbp), %r12
	movq	-264(%rbp), %rbx
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-128(%rbp), %r15
	subq	%r14, %r12
	subq	%r14, %rbx
	movq	-256(%rbp), %r11
	movq	-248(%rbp), %r9
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-120(%rbp), %r15
	vaddsd	(%rax,%r12,8), %xmm0, %xmm0
	movq	-240(%rbp), %r8
	subq	%r14, %r9
	subq	%r14, %r11
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-112(%rbp), %r15
	subq	%r13, %r9
	movq	-232(%rbp), %rdi
	movq	-224(%rbp), %rsi
	subq	%r14, %r8
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-104(%rbp), %r15
	subq	%r13, %r8
	movq	-216(%rbp), %r10
	movq	-208(%rbp), %rcx
	subq	%r14, %rdi
	subq	%r14, %rsi
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-96(%rbp), %r15
	subq	%r13, %rdi
	subq	%r13, %rsi
	movq	-200(%rbp), %rdx
	subq	%r14, %rcx
	subq	%r14, %r10
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-88(%rbp), %r15
	subq	%r13, %rcx
	vaddsd	(%rax,%rbx,8), %xmm0, %xmm0
	subq	%r14, %rdx
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-80(%rbp), %r15
	subq	%r13, %rdx
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-176(%rbp), %r15
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-168(%rbp), %r15
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-160(%rbp), %r15
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-152(%rbp), %r15
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-144(%rbp), %r15
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-72(%rbp), %r15
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-136(%rbp), %r15
	vaddsd	(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-128(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-120(%rbp), %r15
	vaddsd	8(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-112(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-104(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-96(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rbx,8), %xmm0, %xmm0
	movq	-88(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-80(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-176(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-168(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-160(%rbp), %r15
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-152(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-144(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-72(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-136(%rbp), %r15
	vaddsd	8(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-128(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-120(%rbp), %r15
	vaddsd	16(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-112(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-104(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-96(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-88(%rbp), %r15
	vaddsd	16(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-80(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-176(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-168(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-160(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-152(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-144(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-72(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-136(%rbp), %r15
	vaddsd	16(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-128(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-120(%rbp), %r15
	vaddsd	24(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-112(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-104(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-96(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-88(%rbp), %r15
	vaddsd	24(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-80(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-176(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-168(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-160(%rbp), %r15
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-152(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-144(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-72(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r8,8), %xmm0, %xmm0
	movq	-136(%rbp), %r15
	vaddsd	24(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	24(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	24(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	24(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-128(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-120(%rbp), %r15
	vaddsd	32(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-112(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-104(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-96(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-88(%rbp), %r15
	vaddsd	32(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-80(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-176(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-168(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-160(%rbp), %r15
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-152(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-144(%rbp), %rbx
	movq	-72(%rbp), %r15
	vaddsd	32(%rax,%rbx,8), %xmm0, %xmm0
	movq	-184(%rbp), %rbx
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	32(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	32(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	32(%rax,%rcx,8), %xmm0, %xmm0
	movq	-280(%rbp), %rcx
	vaddsd	32(%rax,%rdx,8), %xmm0, %xmm0
	addq	$8, %rax
	movq	-192(%rbp), %rdi
	vmulsd	(%rcx,%rbx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdi,%rbx,8)
	addq	$1, %rbx
	movq	%rbx, -184(%rbp)
	cmpq	%rbx, -288(%rbp)
	jne	.L25
	movq	-392(%rbp), %rax
	movq	-400(%rbp), %rcx
	addq	%rax, -376(%rbp)
	addq	%rcx, -384(%rbp)
	addq	%rax, %r14
	addq	%rcx, -280(%rbp)
	addq	%rax, -368(%rbp)
	addq	%rax, -272(%rbp)
	addq	%rax, -360(%rbp)
	addq	%rax, -352(%rbp)
	addq	%rax, -344(%rbp)
	addq	%rax, -336(%rbp)
	addq	%rax, -264(%rbp)
	addq	%rax, -328(%rbp)
	addq	%rax, -320(%rbp)
	addq	%rax, -312(%rbp)
	addq	%rax, -304(%rbp)
	addq	%rax, -256(%rbp)
	addq	%rax, -248(%rbp)
	addq	%rcx, -192(%rbp)
	movl	-292(%rbp), %ecx
	addq	%rax, -240(%rbp)
	addq	%rax, -232(%rbp)
	addq	%rax, -224(%rbp)
	addq	%rax, -216(%rbp)
	addq	%rax, -208(%rbp)
	addq	%rax, -200(%rbp)
	cmpl	%ecx, -296(%rbp)
	jne	.L28
	movl	-456(%rbp), %eax
	movl	-452(%rbp), %ecx
	addl	%eax, -424(%rbp)
	addl	%eax, -420(%rbp)
	addl	%eax, -416(%rbp)
	addl	%eax, -412(%rbp)
	addl	%eax, -408(%rbp)
	cmpl	%ecx, -404(%rbp)
	jl	.L27
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L75
	movq	-448(%rbp), %rdi
	call	dummy
	movq	-432(%rbp), %rdi
	call	dummy
	movq	-440(%rbp), %rdi
	call	dummy
.L75:
	addq	$432, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L79:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	%rax, %rcx
	jmp	.L31
.L45:
	movl	$1, %r8d
	jmp	.L5
.L81:
	testl	%r14d, %r14d
	jle	.L84
	movl	%r14d, %r8d
	cmpl	$4, %r13d
	jbe	.L53
	movq	$0, -440(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L83:
	movq	-448(%rbp), %rdi
	call	dummy
	movq	-432(%rbp), %rdi
	call	dummy
	movq	-440(%rbp), %rdi
	call	dummy
	cmpl	$2, -452(%rbp)
	jle	.L24
	movl	%ebx, %ecx
	leal	-2(%rbx), %eax
	imull	%r12d, %ecx
	movl	%ecx, -456(%rbp)
	cmpl	$4, %r12d
	jg	.L42
	jmp	.L24
.L49:
	movl	$1, %esi
	jmp	.L12
.L78:
	vzeroupper
	jmp	.L8
.L82:
	vzeroupper
	jmp	.L17
.L80:
	vzeroupper
	jmp	.L15
.L51:
	movl	$1, %eax
	jmp	.L18
.L3:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L32
	movq	-56(%rbp), %rax
	movq	%rax, -432(%rbp)
.L10:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -440(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -440(%rbp)
	jmp	.L17
.L53:
	movq	$0, -440(%rbp)
	xorl	%eax, %eax
	jmp	.L36
.L46:
	movl	$2, %r8d
	jmp	.L5
.L52:
	movl	$2, %eax
	jmp	.L18
.L50:
	movl	$2, %esi
	jmp	.L12
.L47:
	xorl	%eax, %eax
	jmp	.L11
.L43:
	xorl	%eax, %eax
	jmp	.L4
.L84:
	movq	$0, -440(%rbp)
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
