	.file	"2d-1r-homogeneous-variable-box-stencil.c_compilable.c"
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
	subq	$256, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	movl	%eax, %r15d
	movq	%rax, -72(%rbp)
	imull	%ebx, %r15d
	movslq	%r15d, %r13
	salq	$3, %r13
	movq	%r13, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r14
	testl	%r15d, %r15d
	jle	.L3
	leal	-1(%r15), %r12d
	movq	%r14, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r12d
	jb	.L49
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r14)
	cmpl	$1, %eax
	je	.L51
	vmovsd	%xmm0, 8(%r14)
	cmpl	$3, %eax
	jne	.L52
	vmovsd	%xmm0, 16(%r14)
	movl	$3, %edi
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r14,%rax,8), %rdx
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
	je	.L96
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
	leaq	-56(%rbp), %rdi
	movq	%r13, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L97
.L40:
	movq	$0, -56(%rbp)
	movq	$0, -168(%rbp)
	testl	%r15d, %r15d
	jle	.L10
	movq	-168(%rbp), %r10
	leal	-1(%r15), %r12d
.L39:
	testl	%r15d, %r15d
	movl	$1, %esi
	movq	%r10, %rax
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
	vmovsd	%xmm0, (%r10)
	cmpl	$1, %eax
	je	.L55
	vmovsd	%xmm0, 8(%r10)
	cmpl	$3, %eax
	jne	.L56
	vmovsd	%xmm0, 16(%r10)
	movl	$3, %ecx
.L12:
	movq	-168(%rbp), %rdx
	movl	%esi, %edi
	subl	%eax, %edi
	vmovapd	.LC3(%rip), %ymm0
	movl	%edi, %esi
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
	je	.L98
	vzeroupper
.L11:
	movq	-168(%rbp), %rsi
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
	movq	%r13, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L99
	movq	-56(%rbp), %rsi
	testl	%r15d, %r15d
	movl	$1, %edi
	movl	%r12d, %r8d
	cmovg	%r15d, %edi
	movq	%rsi, -128(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
	negq	%rdx
	andl	$3, %edx
	testl	%r15d, %r15d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r8d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r8d
	jb	.L44
	testl	%edx, %edx
	je	.L18
	movq	-128(%rbp), %rax
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L57
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L58
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L18:
	movq	-128(%rbp), %rcx
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
.L44:
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L17:
	movl	-72(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$1, %eax
	movl	%eax, -236(%rbp)
	testl	%edx, %edx
	jne	.L100
	cmpl	$1, -236(%rbp)
	jle	.L101
.L23:
	leal	-1(%rbx), %eax
	movl	%eax, -268(%rbp)
	cmpl	$1, %eax
	jle	.L92
	movq	-168(%rbp), %rsi
	leal	-3(%rbx), %edx
	movslq	%ebx, %r8
	movq	%r14, %r15
	leaq	0(,%r8,8), %rdi
	movl	%ebx, -252(%rbp)
	leaq	8(%rdi), %rax
	movq	%rdi, -184(%rbp)
	movl	%ebx, -156(%rbp)
	leaq	(%rsi,%rax), %rcx
	movq	%r8, -248(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%rsi, %rcx
	leaq	40(%rsi,%rdi), %rsi
	addq	%rdi, %rcx
	movl	%edx, -256(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rax, %rsi
	movq	-128(%rbp), %rax
	movq	%rcx, -200(%rbp)
	leaq	(%r14,%rdi), %rcx
	movq	%rcx, -88(%rbp)
	addq	%rdi, %rcx
	movq	%rcx, -96(%rbp)
	movl	%ebx, %ecx
	addq	%rax, %rsi
	addq	%rdi, %rax
	movq	%r8, -136(%rbp)
	leaq	8(,%rdx,8), %rdi
	movq	%rax, -72(%rbp)
	movq	%rdi, -288(%rbp)
	leal	-2(%rcx), %edi
	leal	(%rbx,%rbx), %eax
	movl	%edi, -204(%rbp)
	xorl	%ebx, %ebx
	leaq	48(%r14), %rdi
	movq	%rsi, -80(%rbp)
	movslq	%eax, %rsi
	movq	%rbx, %r12
	movq	%rdi, -264(%rbp)
	leal	1(%rax), %edi
	movq	%rsi, -152(%rbp)
	salq	$3, %rsi
	movl	%eax, -240(%rbp)
	movl	%edi, -272(%rbp)
	leal	2(%rax), %edi
	addl	$3, %eax
	movq	%rsi, -104(%rbp)
	movl	$0, -120(%rbp)
	movq	$0, -144(%rbp)
	movl	$1, -160(%rbp)
	movl	%edi, -276(%rbp)
	movl	%eax, -280(%rbp)
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-184(%rbp), %rax
	movq	-176(%rbp), %rbx
	movq	-192(%rbp), %rdi
	addl	$1, -160(%rbp)
	addq	%r12, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, -112(%rbp)
	movq	-72(%rbp), %rax
	addq	$40, %rax
	cmpq	%rax, %rbx
	movq	-80(%rbp), %rax
	setnb	%cl
	cmpq	%rax, %rdi
	setbe	%al
	orl	%eax, %ecx
	leaq	48(%rsi), %rax
	cmpq	%rax, %rbx
	setnb	%dl
	cmpq	%rdi, %rsi
	movq	-264(%rbp), %rsi
	setnb	%al
	orl	%edx, %eax
	andl	%ecx, %eax
	cmpl	$5, -204(%rbp)
	seta	%dl
	andl	%edx, %eax
	leaq	(%rsi,%r12), %rdx
	cmpq	%rdx, %rbx
	setnb	%dl
	cmpq	%rdi, %r14
	setnb	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L64
	movq	-104(%rbp), %rax
	addq	%rsi, %rax
	cmpq	%rax, %rbx
	setnb	%dl
	cmpq	%rdi, -96(%rbp)
	setnb	%al
	orb	%al, %dl
	je	.L64
	movq	-80(%rbp), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-256(%rbp), %eax
	ja	.L59
	movl	$1, -116(%rbp)
	testl	%edx, %edx
	je	.L26
	movl	-120(%rbp), %ebx
	movl	$2, -116(%rbp)
	movl	-156(%rbp), %r13d
	movq	-88(%rbp), %rcx
	vmovsd	(%r14), %xmm0
	leal	1(%rbx), %eax
	movl	-276(%rbp), %edi
	leal	1(%r13), %r11d
	cltq
	leaq	(%r15,%rax,8), %r10
	movl	-272(%rbp), %eax
	movslq	%r11d, %r11
	leaq	(%r15,%r11,8), %r9
	vaddsd	(%r9), %xmm0, %xmm0
	addl	%ebx, %edi
	vaddsd	(%rcx), %xmm0, %xmm0
	movslq	%edi, %rdi
	movq	-96(%rbp), %rcx
	leaq	(%r15,%rdi,8), %rdi
	addl	%ebx, %eax
	cltq
	leaq	(%r15,%rax,8), %r8
	leal	2(%rbx), %eax
	vaddsd	(%rcx), %xmm0, %xmm0
	cltq
	movq	-128(%rbp), %rcx
	leaq	(%r15,%rax,8), %rsi
	leal	2(%r13), %eax
	vaddsd	(%r10), %xmm0, %xmm0
	cltq
	vaddsd	(%r8), %xmm0, %xmm0
	movq	%rax, -216(%rbp)
	leaq	(%r15,%rax,8), %rax
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vmulsd	(%rcx,%r11,8), %xmm0, %xmm0
	movq	-168(%rbp), %rcx
	vmovsd	%xmm0, (%rcx,%r11,8)
	cmpl	$1, %edx
	je	.L26
	vmovsd	(%rax), %xmm0
	leal	3(%rbx), %r11d
	movl	$3, -116(%rbp)
	vaddsd	(%r10), %xmm0, %xmm0
	leal	3(%r13), %ebx
	movslq	%r11d, %r11
	vaddsd	(%r9), %xmm0, %xmm0
	leaq	(%r15,%r11,8), %r11
	movslq	%ebx, %r13
	vaddsd	(%r8), %xmm0, %xmm0
	leaq	(%r15,%r13,8), %rbx
	vaddsd	(%rsi), %xmm0, %xmm0
	movl	-120(%rbp), %r10d
	vaddsd	(%rdi), %xmm0, %xmm0
	movl	-280(%rbp), %edi
	vaddsd	(%r11), %xmm0, %xmm0
	movq	-216(%rbp), %r8
	vaddsd	(%rbx), %xmm0, %xmm0
	addl	%r10d, %edi
	movslq	%edi, %rdi
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	movq	-128(%rbp), %rdi
	vmulsd	(%rdi,%r8,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%r8,8)
	cmpl	$3, %edx
	jne	.L26
	vmovsd	(%rsi), %xmm0
	movl	$4, -116(%rbp)
	movl	-240(%rbp), %esi
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	leal	2(%rsi), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	3(%rsi), %eax
	cltq
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%r10), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-156(%rbp), %eax
	addl	$4, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%rsi), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	(%rdi,%r13,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%r13,8)
.L26:
	movl	-204(%rbp), %edi
	movl	%edx, %eax
	movq	%r15, -232(%rbp)
	movq	-136(%rbp), %r10
	leaq	0(,%rax,8), %rsi
	movq	-144(%rbp), %r11
	leaq	(%rsi,%r12), %r8
	movq	-152(%rbp), %r9
	addq	%r15, %r8
	subl	%edx, %edi
	movq	-112(%rbp), %rdx
	movq	-128(%rbp), %rbx
	leaq	1(%rax,%r10), %rcx
	movl	%edi, -216(%rbp)
	shrl	$2, %edi
	salq	$3, %rcx
	movl	%edi, -208(%rbp)
	leaq	(%r15,%rcx), %r13
	leaq	(%rsi,%rdx), %rdi
	addq	-104(%rbp), %rsi
	addq	%rcx, %rbx
	addq	%r15, %rdi
	addq	-168(%rbp), %rcx
	movq	%rbx, -224(%rbp)
	leaq	1(%rax,%r11), %rdx
	leaq	(%r15,%rdx,8), %r12
	addq	%r15, %rsi
	leaq	1(%rax,%r9), %rdx
	leaq	(%r15,%rdx,8), %rbx
	leaq	2(%rax,%r11), %rdx
	leaq	(%r15,%rdx,8), %r11
	leaq	2(%rax,%r10), %rdx
	leaq	2(%rax,%r9), %rax
	leaq	(%r15,%rdx,8), %r10
	xorl	%edx, %edx
	leaq	(%r15,%rax,8), %r9
	movq	-224(%rbp), %r15
	xorl	%eax, %eax
	movq	%r14, -224(%rbp)
	movl	-208(%rbp), %r14d
	.p2align 4,,10
	.p2align 3
.L28:
	vmovupd	0(%r13,%rax), %xmm0
	vinsertf128	$0x1, 16(%r13,%rax), %ymm0, %ymm1
	addl	$1, %edx
	vmovupd	(%r8,%rax), %xmm0
	vinsertf128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	(%rdi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rsi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
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
	vmulpd	(%r15,%rax), %ymm0, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %r14d
	ja	.L28
	movl	-216(%rbp), %ecx
	movl	-116(%rbp), %eax
	movq	-232(%rbp), %r15
	movq	-224(%rbp), %r14
	movl	%ecx, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %ecx
	je	.L32
.L25:
	movq	-136(%rbp), %rdi
	cltq
	movq	-144(%rbp), %rbx
	movq	-200(%rbp), %r8
	movq	-72(%rbp), %r9
	leaq	(%rax,%rdi), %rdx
	movq	-152(%rbp), %rdi
	leaq	(%r15,%rdx,8), %rsi
	leaq	(%rax,%rdi), %rdx
	movl	-268(%rbp), %edi
	leaq	(%r15,%rdx,8), %rcx
	leaq	(%rax,%rbx), %rdx
	leaq	-8(%r15,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L30:
	vmovsd	(%rsi), %xmm0
	addq	$8, %rcx
	addq	$8, %rsi
	addq	$8, %rdx
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	-16(%rsi), %xmm0, %xmm0
	vaddsd	-16(%rcx), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vmulsd	(%r9,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r8,%rax,8)
	addq	$1, %rax
	cmpl	%eax, %edi
	jg	.L30
.L32:
	movq	-184(%rbp), %rax
	movq	-248(%rbp), %rbx
	addq	%rax, -176(%rbp)
	addq	%rax, -200(%rbp)
	addq	%rax, -88(%rbp)
	addq	%rax, %r14
	addq	%rax, -192(%rbp)
	addq	%rax, -80(%rbp)
	addq	%rax, -72(%rbp)
	addq	%rax, -96(%rbp)
	addq	%rax, -104(%rbp)
	addq	%rbx, -136(%rbp)
	movl	-252(%rbp), %eax
	addq	%rbx, -144(%rbp)
	addq	%rbx, -152(%rbp)
	addl	%eax, -156(%rbp)
	addl	%eax, -120(%rbp)
	addl	%eax, -240(%rbp)
	movq	-112(%rbp), %r12
	movl	-160(%rbp), %ebx
	cmpl	%ebx, -236(%rbp)
	jg	.L33
	movq	%r15, %r14
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L93
	movq	%r14, %rdi
	call	dummy
	movq	-168(%rbp), %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
.L93:
	addq	$256, %rsp
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
.L97:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	%rax, %r10
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L64:
	movq	-288(%rbp), %rsi
	xorl	%eax, %eax
	movq	-200(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %r8
	movq	-96(%rbp), %rcx
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	(%r14,%rax), %xmm0
	vaddsd	8(%rdx,%rax), %xmm0, %xmm0
	vaddsd	(%rdx,%rax), %xmm0, %xmm0
	vaddsd	(%rcx,%rax), %xmm0, %xmm0
	vaddsd	8(%r14,%rax), %xmm0, %xmm0
	vaddsd	8(%rcx,%rax), %xmm0, %xmm0
	vaddsd	16(%r14,%rax), %xmm0, %xmm0
	vaddsd	16(%rdx,%rax), %xmm0, %xmm0
	vaddsd	16(%rcx,%rax), %xmm0, %xmm0
	vmulsd	8(%r8,%rax), %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rdi,%rax)
	addq	$8, %rax
	cmpq	%rsi, %rax
	jne	.L31
	jmp	.L32
.L59:
	movl	$1, %eax
	jmp	.L25
.L99:
	testl	%r15d, %r15d
	jle	.L102
	movl	%r15d, %edi
	cmpl	$4, %r12d
	jbe	.L63
	xorl	%edx, %edx
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
	jmp	.L18
.L100:
	movq	%r14, %rdi
	vzeroupper
	call	dummy
	movq	-168(%rbp), %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	cmpl	$1, -236(%rbp)
	jg	.L23
	jmp	.L24
.L51:
	movl	$1, %edi
	jmp	.L5
.L63:
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
	jmp	.L44
.L3:
	leaq	-56(%rbp), %rdi
	movq	%r13, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L40
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
.L10:
	leaq	-56(%rbp), %rdi
	movq	%r13, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -128(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.L17
.L96:
	vzeroupper
	jmp	.L8
.L57:
	movl	$1, %eax
	jmp	.L18
.L98:
	vzeroupper
	jmp	.L15
.L55:
	movl	$1, %ecx
	jmp	.L12
.L56:
	movl	$2, %ecx
	jmp	.L12
.L52:
	movl	$2, %edi
	jmp	.L5
.L92:
	vzeroupper
	jmp	.L24
.L58:
	movl	$2, %eax
	jmp	.L18
.L101:
	vzeroupper
	jmp	.L93
.L49:
	xorl	%eax, %eax
	jmp	.L4
.L102:
	movq	$0, -128(%rbp)
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
