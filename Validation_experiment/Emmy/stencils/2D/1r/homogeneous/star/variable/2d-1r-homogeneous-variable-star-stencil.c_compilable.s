	.file	"2d-1r-homogeneous-variable-star-stencil.c_compilable.c"
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
	subq	$224, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	movl	%eax, %r14d
	movq	%rax, -80(%rbp)
	imull	%r13d, %r14d
	movslq	%r14d, %r15
	salq	$3, %r15
	movq	%r15, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rbx
	testl	%r14d, %r14d
	jle	.L3
	leal	-1(%r14), %r12d
	movq	%rbx, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %r12d
	jb	.L48
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rbx)
	cmpl	$1, %eax
	je	.L50
	vmovsd	%xmm0, 8(%rbx)
	cmpl	$3, %eax
	jne	.L51
	vmovsd	%xmm0, 16(%rbx)
	movl	$3, %r8d
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%rbx,%rax,8), %rdx
	movl	%r14d, %edi
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
	je	.L94
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rbx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rbx,%rax,8)
.L8:
	leaq	-56(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L95
.L39:
	movq	$0, -56(%rbp)
	movq	$0, -72(%rbp)
	testl	%r14d, %r14d
	jle	.L10
	movq	-72(%rbp), %rcx
	leal	-1(%r14), %r12d
.L38:
	testl	%r14d, %r14d
	movl	$1, %edi
	movq	%rcx, %rax
	cmovg	%r14d, %edi
	shrq	$3, %rax
	movl	$0, %esi
	negq	%rax
	movl	$5, %r8d
	andl	$3, %eax
	testl	%r14d, %r14d
	leal	3(%rax), %edx
	cmovg	%r12d, %esi
	cmpl	$5, %edx
	cmovb	%r8d, %edx
	cmpl	%edx, %esi
	movl	$0, %esi
	jb	.L11
	testl	%eax, %eax
	je	.L12
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx)
	cmpl	$1, %eax
	je	.L54
	vmovsd	%xmm0, 8(%rcx)
	cmpl	$3, %eax
	jne	.L55
	vmovsd	%xmm0, 16(%rcx)
	movl	$3, %esi
.L12:
	movq	-72(%rbp), %rdx
	subl	%eax, %edi
	vmovapd	.LC3(%rip), %ymm0
	movl	%edi, %r8d
	shrl	$2, %edi
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L14:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%eax, %edi
	ja	.L14
	movl	%r8d, %eax
	andl	$-4, %eax
	addl	%eax, %esi
	cmpl	%eax, %r8d
	je	.L96
	vzeroupper
.L11:
	movq	-72(%rbp), %rdx
	movslq	%esi, %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdx,%rax,8)
	leal	1(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdx,%rax,8)
	leal	2(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdx,%rax,8)
	leal	3(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdx,%rax,8)
	leal	4(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdx,%rax,8)
	leal	5(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdx,%rax,8)
.L15:
	leaq	-56(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L97
	movq	-56(%rbp), %r15
	testl	%r14d, %r14d
	movl	$1, %r8d
	movl	$5, %edi
	cmovg	%r14d, %r8d
	movq	%r15, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	leal	3(%rdx), %esi
	cmovle	%eax, %r12d
	cmpl	$5, %esi
	cmovb	%edi, %esi
	cmpl	%esi, %r12d
	jb	.L43
	testl	%edx, %edx
	je	.L18
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %edx
	je	.L56
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %edx
	jne	.L57
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %eax
.L18:
	vmovapd	.LC5(%rip), %ymm0
	leaq	(%r15,%rdx,8), %rsi
	subl	%edx, %r8d
	xorl	%edx, %edx
	movl	%r8d, %edi
	shrl	$2, %edi
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
.L43:
	vmovsd	.LC4(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r15,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
.L17:
	movl	-80(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$1, %eax
	movl	%eax, -160(%rbp)
	testl	%edx, %edx
	jne	.L98
	cmpl	$1, -160(%rbp)
	jle	.L99
.L23:
	leal	-1(%r13), %eax
	movl	%eax, -88(%rbp)
	cmpl	$1, %eax
	jle	.L90
	movq	-72(%rbp), %rax
	movslq	%r13d, %rdi
	movl	%r13d, -188(%rbp)
	leaq	0(,%rdi,8), %r14
	movq	%rdi, -176(%rbp)
	movq	%r14, -184(%rbp)
	leaq	(%rbx,%r14), %r12
	movq	%rdi, -136(%rbp)
	leaq	8(%rax,%r14), %rsi
	movq	$0, -96(%rbp)
	leaq	40(%rax,%r14), %rax
	movq	%rsi, -120(%rbp)
	movq	%rax, -128(%rbp)
	leal	(%r13,%r13), %eax
	movl	%eax, -80(%rbp)
	cltq
	movq	%rax, -240(%rbp)
	salq	$3, %rax
	movq	%rax, -112(%rbp)
	leal	-3(%r13), %eax
	movl	%eax, -192(%rbp)
	leaq	8(,%rax,8), %rax
	movq	%rax, -248(%rbp)
	leal	-2(%r13), %eax
	movl	%eax, -148(%rbp)
	leaq	8(%r15), %rax
	movq	%rax, -208(%rbp)
	leaq	8(%rbx), %rax
	movq	%rax, -200(%rbp)
	leaq	40(%rbx), %rax
	movq	%rax, -216(%rbp)
	leaq	40(%r15), %rax
	movq	%rax, -232(%rbp)
	leaq	48(%rbx), %rax
	movq	%rax, -224(%rbp)
	movq	%r14, %rax
	movq	%r15, %r14
	movl	%r13d, %r15d
	movq	$0, -144(%rbp)
	movq	%rax, %r13
	movl	$0, -100(%rbp)
	movl	$1, -104(%rbp)
	.p2align 4,,10
	.p2align 3
.L32:
	movq	-208(%rbp), %rax
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %r10
	addl	$1, -104(%rbp)
	movq	-216(%rbp), %r11
	leaq	(%rax,%r13), %rdx
	movq	-232(%rbp), %rax
	movq	-96(%rbp), %r8
	movq	-200(%rbp), %r9
	addq	%r13, %rax
	cmpq	%rax, %rdi
	setnb	%sil
	cmpq	%rdx, %r10
	setbe	%al
	orl	%eax, %esi
	movq	-224(%rbp), %rax
	addq	%r13, %rax
	cmpq	%rax, %rdi
	setnb	%cl
	cmpq	%r10, %r12
	setnb	%al
	orl	%ecx, %eax
	andl	%esi, %eax
	cmpl	$5, -148(%rbp)
	movq	%r9, %rsi
	seta	%cl
	andl	%ecx, %eax
	movq	%r11, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %rdi
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L63
	movq	-112(%rbp), %rsi
	movq	%r11, %rax
	addq	%rsi, %rax
	cmpq	%rax, %rdi
	movq	%r9, %rax
	setnb	%cl
	addq	%rsi, %rax
	cmpq	%rax, %r10
	setbe	%al
	orb	%al, %cl
	je	.L63
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-192(%rbp), %eax
	ja	.L58
	movl	$1, -84(%rbp)
	testl	%edx, %edx
	je	.L26
	movl	-100(%rbp), %r11d
	leal	1(%r15), %ecx
	movl	$2, -84(%rbp)
	movl	-80(%rbp), %r9d
	leal	2(%r15), %eax
	movslq	%ecx, %rcx
	leaq	(%rbx,%rcx,8), %rdi
	cltq
	movq	-72(%rbp), %r10
	leaq	(%rbx,%rax,8), %rsi
	vmovsd	(%rdi), %xmm0
	leal	1(%r11), %r8d
	vaddsd	(%r12), %xmm0, %xmm0
	movslq	%r8d, %r8
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	leal	1(%r9), %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	vmulsd	(%r14,%rcx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%rcx,8)
	cmpl	$1, %edx
	je	.L26
	leal	3(%r15), %ecx
	vmovsd	(%rsi), %xmm0
	movl	$3, -84(%rbp)
	vaddsd	(%rdi), %xmm0, %xmm0
	leal	2(%r11), %edi
	movslq	%ecx, %rcx
	leaq	(%rbx,%rcx,8), %r8
	movslq	%edi, %rdi
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rbx,%rdi,8), %xmm0, %xmm0
	leal	2(%r9), %edi
	movslq	%edi, %rdi
	vaddsd	(%rbx,%rdi,8), %xmm0, %xmm0
	vmulsd	(%r14,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%rax,8)
	cmpl	$3, %edx
	jne	.L26
	leal	4(%r15), %eax
	vmovsd	(%rsi), %xmm0
	movl	$4, -84(%rbp)
	cltq
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	3(%r11), %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	3(%r9), %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	vmulsd	(%r14,%rcx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%rcx,8)
.L26:
	movl	-148(%rbp), %ecx
	movl	%edx, %eax
	movq	%rbx, -168(%rbp)
	movq	-144(%rbp), %rdi
	leaq	0(%r13,%rax,8), %rsi
	addq	%rbx, %rsi
	subl	%edx, %ecx
	movq	-136(%rbp), %rdx
	movl	%ecx, -152(%rbp)
	shrl	$2, %ecx
	movl	%ecx, -156(%rbp)
	leaq	1(%rax,%rdx), %rcx
	leaq	2(%rax,%rdx), %rdx
	salq	$3, %rcx
	leaq	(%rbx,%rdx,8), %r9
	leaq	1(%rax,%rdi), %rdx
	leaq	(%rbx,%rdx,8), %r8
	movq	-240(%rbp), %rdx
	leaq	(%rbx,%rcx), %r10
	leaq	(%r14,%rcx), %r11
	addq	-72(%rbp), %rcx
	leaq	1(%rdi,%rdx), %rdx
	addq	%rdx, %rax
	xorl	%edx, %edx
	leaq	(%rbx,%rax,8), %rdi
	movl	-156(%rbp), %ebx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L28:
	vmovupd	(%r10,%rax), %xmm0
	vinsertf128	$0x1, 16(%r10,%rax), %ymm0, %ymm1
	addl	$1, %edx
	vmovupd	(%rsi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	(%r9,%rax), %xmm1
	vinsertf128	$0x1, 16(%r9,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r8,%rax), %xmm1
	vinsertf128	$0x1, 16(%r8,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rdi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmulpd	(%r11,%rax), %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %ebx
	ja	.L28
	movl	-152(%rbp), %ecx
	movl	-84(%rbp), %r11d
	movq	-168(%rbp), %rbx
	movl	%ecx, %eax
	andl	$-4, %eax
	addl	%eax, %r11d
	cmpl	%eax, %ecx
	je	.L31
.L25:
	movl	-100(%rbp), %r10d
	leal	1(%r11), %eax
	leal	-1(%r11,%r15), %edx
	movl	-80(%rbp), %edi
	leal	(%rax,%r15), %esi
	movslq	%edx, %rdx
	vmovsd	(%rbx,%rdx,8), %xmm0
	leal	(%r15,%r11), %ecx
	movslq	%esi, %rsi
	leal	(%r10,%r11), %edx
	movslq	%ecx, %rcx
	leaq	(%rbx,%rsi,8), %r9
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	movslq	%edx, %rdx
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	leal	(%rdi,%r11), %edx
	movslq	%edx, %rdx
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	(%r14,%rcx,8), %xmm0, %xmm0
	movq	-72(%rbp), %rdx
	vmovsd	%xmm0, (%rdx,%rcx,8)
	cmpl	-88(%rbp), %eax
	jge	.L31
	vmovsd	(%rbx,%rcx,8), %xmm0
	leal	(%rax,%r10), %ecx
	addl	-80(%rbp), %eax
	vaddsd	(%r9), %xmm0, %xmm0
	movslq	%ecx, %rcx
	leal	2(%r11), %edx
	leal	(%r15,%rdx), %edi
	movslq	%edi, %rdi
	cltq
	leaq	(%rbx,%rdi,8), %r8
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	vmulsd	(%r14,%rsi,8), %xmm0, %xmm0
	movq	-72(%rbp), %rax
	vmovsd	%xmm0, (%rax,%rsi,8)
	cmpl	-88(%rbp), %edx
	jge	.L31
	vmovsd	(%rbx,%rsi,8), %xmm0
	leal	(%r10,%rdx), %esi
	addl	-80(%rbp), %edx
	vaddsd	(%r8), %xmm0, %xmm0
	movslq	%esi, %rsi
	leal	3(%r11), %eax
	leal	(%r15,%rax), %ecx
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	leaq	(%rbx,%rcx,8), %r9
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%rbx,%rsi,8), %xmm0, %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	(%r14,%rdi,8), %xmm0, %xmm0
	movq	-72(%rbp), %rdx
	vmovsd	%xmm0, (%rdx,%rdi,8)
	cmpl	%eax, -88(%rbp)
	jle	.L31
	vmovsd	(%rbx,%rdi,8), %xmm0
	leal	(%r10,%rax), %edi
	addl	-80(%rbp), %eax
	vaddsd	(%r9), %xmm0, %xmm0
	movslq	%edi, %rdi
	leal	4(%r11), %edx
	leal	(%r15,%rdx), %esi
	movslq	%esi, %rsi
	cltq
	leaq	(%rbx,%rsi,8), %r8
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rbx,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	vmulsd	(%r14,%rcx,8), %xmm0, %xmm0
	movq	-72(%rbp), %rax
	vmovsd	%xmm0, (%rax,%rcx,8)
	cmpl	%edx, -88(%rbp)
	jle	.L31
	vmovsd	(%rbx,%rcx,8), %xmm0
	leal	5(%r11), %eax
	vaddsd	(%r8), %xmm0, %xmm0
	movl	%r10d, %r8d
	leal	(%r15,%rax), %edi
	leal	(%r10,%rdx), %ecx
	movslq	%edi, %rdi
	movq	-72(%rbp), %r10
	leaq	(%rbx,%rdi,8), %r9
	movslq	%ecx, %rcx
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	movl	-80(%rbp), %ecx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	(%r14,%rsi,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%rsi,8)
	cmpl	%eax, -88(%rbp)
	jle	.L31
	vmovsd	(%rbx,%rsi,8), %xmm0
	leal	6(%r11,%r15), %edx
	vaddsd	(%r9), %xmm0, %xmm0
	movslq	%edx, %rdx
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	leal	(%r8,%rax), %edx
	addl	%ecx, %eax
	movslq	%edx, %rdx
	cltq
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	vmulsd	(%r14,%rdi,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%rdi,8)
.L31:
	movq	-184(%rbp), %rax
	movl	-188(%rbp), %esi
	movq	-176(%rbp), %rdi
	addq	%rax, -120(%rbp)
	addq	%rax, %r12
	addq	%rax, %r13
	movl	-104(%rbp), %ecx
	addq	%rax, -128(%rbp)
	addl	%esi, %r15d
	addl	%esi, -100(%rbp)
	addl	%esi, -80(%rbp)
	addq	%rdi, -136(%rbp)
	addq	%rdi, -144(%rbp)
	addq	%rax, -96(%rbp)
	addq	%rax, -112(%rbp)
	cmpl	%ecx, -160(%rbp)
	jg	.L32
	movq	%r14, %r15
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L91
	movq	%rbx, %rdi
	call	dummy
	movq	-72(%rbp), %rdi
	call	dummy
	movq	%r15, %rdi
	call	dummy
.L91:
	addq	$224, %rsp
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
	movq	%rax, -72(%rbp)
	movq	%rax, %rcx
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L63:
	movq	-72(%rbp), %rcx
	xorl	%eax, %eax
	movq	-96(%rbp), %rdx
	movq	-248(%rbp), %r8
	leaq	(%rcx,%r13), %rdi
	movq	-112(%rbp), %rcx
	leaq	(%rbx,%rdx), %rsi
	leaq	(%r14,%r13), %rdx
	addq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L30:
	vmovsd	(%r12,%rax), %xmm0
	vaddsd	8(%r12,%rax), %xmm0, %xmm0
	vaddsd	16(%r12,%rax), %xmm0, %xmm0
	vaddsd	8(%rsi,%rax), %xmm0, %xmm0
	vaddsd	8(%rcx,%rax), %xmm0, %xmm0
	vmulsd	8(%rdx,%rax), %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rdi,%rax)
	addq	$8, %rax
	cmpq	%r8, %rax
	jne	.L30
	jmp	.L31
.L58:
	movl	$1, %r11d
	jmp	.L25
.L97:
	xorl	%r15d, %r15d
	testl	%r14d, %r14d
	jle	.L17
	movl	%r14d, %r8d
	cmpl	$4, %r12d
	jbe	.L62
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	jmp	.L18
.L98:
	movq	%rbx, %rdi
	vzeroupper
	call	dummy
	movq	-72(%rbp), %rdi
	call	dummy
	movq	%r15, %rdi
	call	dummy
	cmpl	$1, -160(%rbp)
	jg	.L23
	jmp	.L24
.L50:
	movl	$1, %r8d
	jmp	.L5
.L62:
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	jmp	.L43
.L3:
	leaq	-56(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L39
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
.L10:
	leaq	-56(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
	call	posix_memalign
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %r15
	jmp	.L17
.L94:
	vzeroupper
	jmp	.L8
.L56:
	movl	$1, %eax
	jmp	.L18
.L96:
	vzeroupper
	jmp	.L15
.L54:
	movl	$1, %esi
	jmp	.L12
.L55:
	movl	$2, %esi
	jmp	.L12
.L51:
	movl	$2, %r8d
	jmp	.L5
.L90:
	vzeroupper
	jmp	.L24
.L57:
	movl	$2, %eax
	jmp	.L18
.L99:
	vzeroupper
	jmp	.L91
.L48:
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
