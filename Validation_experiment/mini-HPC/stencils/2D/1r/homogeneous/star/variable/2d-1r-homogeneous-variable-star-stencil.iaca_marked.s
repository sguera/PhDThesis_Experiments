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
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rsi, %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	subq	$224, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movl	%eax, %r8d
	movq	%rax, -72(%rbp)
	imull	%ebx, %r8d
	movslq	%r8d, %r14
	movl	%r8d, -80(%rbp)
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	movl	-80(%rbp), %r8d
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r15
	testl	%r8d, %r8d
	jle	.L3
	movq	%r15, %rax
	movl	$5, %ecx
	leal	-1(%r8), %r12d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r12d
	jb	.L48
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L50
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L51
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %edi
.L5:
	movl	%r8d, %esi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r15,%rax,8), %rdx
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
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r15,%rdx,8)
	cmpl	%eax, %r8d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
.L8:
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movl	%r8d, -80(%rbp)
	call	posix_memalign
	movl	-80(%rbp), %r8d
	testl	%eax, %eax
	je	.L95
.L39:
	movq	$0, -56(%rbp)
	xorl	%r13d, %r13d
	testl	%r8d, %r8d
	jle	.L10
	leal	-1(%r8), %r12d
.L38:
	testl	%r8d, %r8d
	movl	$1, %esi
	movq	%r13, %rax
	movl	$0, %ecx
	cmovg	%r8d, %esi
	shrq	$3, %rax
	movl	$5, %edi
	negq	%rax
	andl	$3, %eax
	testl	%r8d, %r8d
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
	vmovsd	%xmm0, 0(%r13)
	cmpl	$1, %eax
	je	.L54
	vmovsd	%xmm0, 8(%r13)
	cmpl	$3, %eax
	jne	.L55
	vmovsd	%xmm0, 16(%r13)
	movl	$3, %ecx
.L12:
	movl	%esi, %edi
	vmovapd	.LC3(%rip), %ymm0
	leaq	0(%r13,%rax,8), %rdx
	subl	%eax, %edi
	xorl	%eax, %eax
	movl	%edi, %esi
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
	movslq	%ecx, %rax
	vmovsd	%xmm0, 0(%r13,%rax,8)
	leal	1(%rcx), %eax
	cmpl	%eax, %r8d
	jle	.L15
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
	leal	2(%rcx), %eax
	cmpl	%eax, %r8d
	jle	.L15
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
	leal	3(%rcx), %eax
	cmpl	%eax, %r8d
	jle	.L15
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
	leal	4(%rcx), %eax
	cmpl	%eax, %r8d
	jle	.L15
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
	leal	5(%rcx), %eax
	cmpl	%eax, %r8d
	jle	.L15
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
.L15:
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movl	%r8d, -80(%rbp)
	call	posix_memalign
	movl	-80(%rbp), %r8d
	testl	%eax, %eax
	jne	.L97
	movq	-56(%rbp), %r14
	testl	%r8d, %r8d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r8d, %edi
	movq	%r14, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r8d, %r8d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r12d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r12d
	jb	.L43
	testl	%edx, %edx
	je	.L18
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%r14)
	cmpl	$1, %edx
	je	.L56
	vmovsd	%xmm0, 8(%r14)
	cmpl	$3, %edx
	jne	.L57
	vmovsd	%xmm0, 16(%r14)
	movl	$3, %eax
.L18:
	subl	%edx, %edi
	vmovapd	.LC5(%rip), %ymm0
	leaq	(%r14,%rdx,8), %rcx
	xorl	%edx, %edx
	movl	%edi, %esi
	shrl	$2, %esi
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
.L43:
	vmovsd	.LC4(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r8d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r14,%rdx,8)
	cmpl	%eax, %r8d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%r14,%rax,8)
.L17:
	movl	-72(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$1, %eax
	movl	%eax, -180(%rbp)
	testl	%edx, %edx
	jne	.L98
	cmpl	$1, -180(%rbp)
	jle	.L99
.L23:
	leal	-1(%rbx), %eax
	movl	%eax, -104(%rbp)
	cmpl	$1, %eax
	jle	.L90
	movslq	%ebx, %rdi
	movl	%ebx, %ecx
	movq	%r13, -72(%rbp)
	movl	$1, %r8d
	leaq	0(,%rdi,8), %rsi
	movq	%rdi, -192(%rbp)
	leaq	8(%r13,%rsi), %rax
	movq	%rsi, -88(%rbp)
	leaq	(%r15,%rsi), %r12
	movq	%rax, -136(%rbp)
	leaq	40(%r13,%rsi), %rax
	movl	%ecx, %r13d
	movq	%rax, -144(%rbp)
	leal	(%rbx,%rbx), %eax
	movl	%eax, -124(%rbp)
	cltq
	movq	%rax, -256(%rbp)
	salq	$3, %rax
	movq	%rax, -120(%rbp)
	leal	-3(%rbx), %eax
	movl	%eax, -244(%rbp)
	leaq	8(,%rax,8), %rax
	movq	%rax, -264(%rbp)
	leal	-2(%rcx), %eax
	movl	%eax, -128(%rbp)
	leaq	8(%r15), %rax
	movq	%rax, -232(%rbp)
	leaq	40(%r15), %rax
	movq	%rax, -216(%rbp)
	leaq	16(%r14), %rax
	movq	%rax, -208(%rbp)
	leaq	48(%r15), %rax
	movq	%rax, -224(%rbp)
	leaq	8(%r14), %rax
	movq	%rax, -272(%rbp)
	leaq	48(%r14), %rax
	movq	%rsi, -200(%rbp)
	movq	%rdi, -160(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -168(%rbp)
	movq	%rax, -240(%rbp)
	movl	%ebx, -184(%rbp)
	xorl	%ebx, %ebx
	movq	%r14, -80(%rbp)
	movl	%ebx, %r14d
	.p2align 4,,10
	.p2align 3
.L32:
	movq	-216(%rbp), %rbx
	movq	-112(%rbp), %rcx
	movl	%r8d, -172(%rbp)
	movq	-136(%rbp), %r11
	movq	-232(%rbp), %rdi
	movq	%rbx, %rax
	movq	-208(%rbp), %rdx
	movq	-96(%rbp), %r9
	addq	%rcx, %rax
	movq	-144(%rbp), %r10
	addq	%r9, %rdx
	cmpq	%rax, %r11
	movq	%rdi, %rax
	setnb	%sil
	addq	%rcx, %rax
	cmpq	%rax, %r10
	setbe	%al
	orl	%eax, %esi
	movq	-224(%rbp), %rax
	addq	-88(%rbp), %rax
	cmpq	%rax, %r11
	setnb	%cl
	cmpq	%r10, %r12
	setnb	%al
	orl	%ecx, %eax
	andl	%esi, %eax
	movq	-120(%rbp), %rsi
	cmpl	$5, -128(%rbp)
	seta	%cl
	addq	%rsi, %rbx
	andl	%ecx, %eax
	movq	%rbx, %rcx
	cmpq	%rcx, %r11
	setnb	%cl
	addq	%rsi, %rdi
	cmpq	%rdi, %r10
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L63
	movq	-240(%rbp), %rax
	addq	%r9, %rax
	cmpq	%rax, %r11
	setnb	%cl
	cmpq	%rdx, %r10
	setbe	%al
	orb	%al, %cl
	je	.L63
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-244(%rbp), %eax
	ja	.L58
	movl	$1, -100(%rbp)
	testl	%edx, %edx
	je	.L26
	leal	1(%r13), %ecx
	leal	2(%r13), %eax
	movl	-124(%rbp), %ebx
	movq	-80(%rbp), %r11
	movslq	%ecx, %rcx
	cltq
	leal	1(%r14), %edi
	movl	$2, -100(%rbp)
	movslq	%edi, %rdi
	leaq	(%r15,%rcx,8), %r9
	leaq	(%r15,%rax,8), %rsi
	vmovsd	(%r9), %xmm0
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	leal	1(%rbx), %edi
	movslq	%edi, %rdi
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	movq	-96(%rbp), %rdi
	vmulsd	16(%r11,%rdi), %xmm0, %xmm0
	movq	-72(%rbp), %rdi
	vmovsd	%xmm0, (%rdi,%rcx,8)
	cmpl	$1, %edx
	je	.L26
	leal	3(%r13), %edi
	leal	2(%r14), %ecx
	vmovsd	(%rsi), %xmm0
	movl	$3, -100(%rbp)
	movslq	%edi, %rdi
	movslq	%ecx, %rcx
	vaddsd	(%r9), %xmm0, %xmm0
	leaq	(%r15,%rdi,8), %r10
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	leal	2(%rbx), %ecx
	movslq	%ecx, %rcx
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	leal	2(%r8), %ecx
	vmulsd	(%r11,%rcx,8), %xmm0, %xmm0
	movq	-72(%rbp), %rcx
	vmovsd	%xmm0, (%rcx,%rax,8)
	cmpl	$3, %edx
	jne	.L26
	leal	4(%r13), %eax
	vmovsd	(%rsi), %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	movl	$4, -100(%rbp)
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	3(%r14), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	3(%rbx), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	%r8d, %eax
	addl	$3, %eax
	cltq
	vmulsd	(%r11,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rdi,8)
.L26:
	movl	-128(%rbp), %ebx
	movl	%edx, %eax
	movq	-80(%rbp), %rdi
	subl	%edx, %ebx
	movl	%ebx, %ecx
	movl	%ebx, -176(%rbp)
	leaq	1(%r8), %rbx
	movq	-168(%rbp), %r8
	leaq	(%rbx,%rax), %rdx
	movq	%rbx, -152(%rbp)
	shrl	$2, %ecx
	leaq	(%rdi,%rdx,8), %rbx
	movq	-160(%rbp), %rdx
	movq	-88(%rbp), %rdi
	leaq	1(%rax,%rdx), %rsi
	leaq	2(%rax,%rdx), %rdx
	leaq	(%r15,%rdx,8), %r10
	leaq	1(%rax,%r8), %rdx
	salq	$3, %rsi
	leaq	(%r15,%rdx,8), %r9
	movq	-256(%rbp), %rdx
	leaq	(%rdi,%rax,8), %rdi
	leaq	(%r15,%rsi), %r11
	addq	%r15, %rdi
	addq	-72(%rbp), %rsi
	leaq	1(%r8,%rdx), %rdx
	addq	%rdx, %rax
	xorl	%edx, %edx
	leaq	(%r15,%rax,8), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L28:
	vmovupd	(%rdi,%rax), %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	addl	$1, %edx
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vmulpd	(%rbx,%rax), %ymm0, %ymm0
	vmovupd	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpl	%edx, %ecx
	ja	.L28
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-176(%rbp), %edi
	movl	-100(%rbp), %ecx
	movl	%edi, %eax
	andl	$-4, %eax
	addl	%eax, %ecx
	cmpl	%eax, %edi
	je	.L31
.L25:
	leal	1(%rcx), %eax
	leal	-1(%rcx,%r13), %edx
	movl	-124(%rbp), %ebx
	movq	-80(%rbp), %r9
	movslq	%edx, %rdx
	leal	0(%r13,%rax), %edi
	leal	0(%r13,%rcx), %esi
	movl	-172(%rbp), %r11d
	vmovsd	(%r15,%rdx,8), %xmm0
	movslq	%edi, %rdi
	leal	(%r14,%rcx), %edx
	movslq	%esi, %rsi
	movslq	%edx, %rdx
	leaq	(%r15,%rdi,8), %r10
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	leal	(%rbx,%rcx), %edx
	movslq	%edx, %rdx
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	leal	(%r11,%rcx), %edx
	movslq	%edx, %rdx
	vmulsd	(%r9,%rdx,8), %xmm0, %xmm0
	movq	-72(%rbp), %rdx
	vmovsd	%xmm0, (%rdx,%rsi,8)
	cmpl	-104(%rbp), %eax
	jge	.L31
	leal	2(%rcx), %edx
	vmovsd	(%r15,%rsi,8), %xmm0
	leal	(%r14,%rax), %esi
	leal	0(%r13,%rdx), %r8d
	movslq	%esi, %rsi
	vaddsd	(%r10), %xmm0, %xmm0
	movslq	%r8d, %r8
	leaq	(%r15,%r8,8), %r9
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	leal	(%rbx,%rax), %esi
	addl	%r11d, %eax
	movslq	%esi, %rsi
	cltq
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	movq	-80(%rbp), %rsi
	vmulsd	(%rsi,%rax,8), %xmm0, %xmm0
	movq	-72(%rbp), %rax
	vmovsd	%xmm0, (%rax,%rdi,8)
	cmpl	-104(%rbp), %edx
	jge	.L31
	leal	3(%rcx), %eax
	vmovsd	(%r15,%rdi,8), %xmm0
	leal	(%r14,%rdx), %edi
	leal	0(%r13,%rax), %esi
	movslq	%edi, %rdi
	vaddsd	(%r9), %xmm0, %xmm0
	movq	-80(%rbp), %r9
	movslq	%esi, %rsi
	leaq	(%r15,%rsi,8), %r10
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	leal	(%rbx,%rdx), %edi
	addl	%r11d, %edx
	movslq	%edi, %rdi
	movslq	%edx, %rdx
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	vmulsd	(%r9,%rdx,8), %xmm0, %xmm0
	movq	-72(%rbp), %rdi
	vmovsd	%xmm0, (%rdi,%r8,8)
	cmpl	%eax, -104(%rbp)
	jle	.L31
	leal	4(%rcx), %edx
	vmovsd	(%r15,%r8,8), %xmm0
	leal	(%r14,%rax), %r8d
	leal	0(%r13,%rdx), %edi
	movslq	%r8d, %r8
	vaddsd	(%r10), %xmm0, %xmm0
	movslq	%edi, %rdi
	leaq	(%r15,%rdi,8), %r9
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%r15,%r8,8), %xmm0, %xmm0
	leal	(%rbx,%rax), %r8d
	addl	%r11d, %eax
	movslq	%r8d, %r8
	cltq
	vaddsd	(%r15,%r8,8), %xmm0, %xmm0
	movq	-80(%rbp), %r8
	vmulsd	(%r8,%rax,8), %xmm0, %xmm0
	movq	-72(%rbp), %rax
	vmovsd	%xmm0, (%rax,%rsi,8)
	cmpl	%edx, -104(%rbp)
	jle	.L31
	leal	5(%rcx), %eax
	vmovsd	(%r15,%rsi,8), %xmm0
	leal	(%r14,%rdx), %esi
	leal	0(%r13,%rax), %r8d
	movslq	%esi, %rsi
	vaddsd	(%r9), %xmm0, %xmm0
	movq	-80(%rbp), %r9
	movslq	%r8d, %r8
	leaq	(%r15,%r8,8), %r10
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	leal	(%rbx,%rdx), %esi
	addl	%r11d, %edx
	movslq	%esi, %rsi
	movslq	%edx, %rdx
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	vmulsd	(%r9,%rdx,8), %xmm0, %xmm0
	movl	%r11d, %esi
	movq	-72(%rbp), %r11
	vmovsd	%xmm0, (%r11,%rdi,8)
	cmpl	%eax, -104(%rbp)
	jle	.L31
	leal	6(%rcx,%r13), %edx
	vmovsd	(%r15,%rdi,8), %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	movslq	%edx, %rdx
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	leal	(%r14,%rax), %edx
	movslq	%edx, %rdx
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	leal	(%rbx,%rax), %edx
	addl	%esi, %eax
	movslq	%edx, %rdx
	cltq
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	vmulsd	(%r9,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r11,%r8,8)
.L31:
	movq	-200(%rbp), %rax
	movl	-184(%rbp), %ebx
	movq	-192(%rbp), %rdi
	movq	-152(%rbp), %r8
	addq	%rax, -136(%rbp)
	addq	%rax, %r12
	addl	%ebx, %r13d
	addl	%ebx, %r14d
	addq	%rax, -144(%rbp)
	addl	%ebx, -124(%rbp)
	addq	%rdi, -160(%rbp)
	addq	%rax, -88(%rbp)
	addq	%rdi, -168(%rbp)
	addq	%rax, -112(%rbp)
	addq	$8, -96(%rbp)
	addq	%rax, -120(%rbp)
	cmpl	%r8d, -180(%rbp)
	jg	.L32
	movq	-72(%rbp), %r13
	movq	-80(%rbp), %r14
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L91
	movq	%r15, %rdi
	call	dummy
	movq	%r13, %rdi
	call	dummy
	movq	%r14, %rdi
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
	movq	-56(%rbp), %r13
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L63:
	movq	-72(%rbp), %rbx
	movq	-88(%rbp), %rdi
	xorl	%eax, %eax
	movq	-264(%rbp), %r9
	movq	-272(%rbp), %rdx
	addq	%rbx, %rdi
	movq	-112(%rbp), %rbx
	addq	-96(%rbp), %rdx
	leaq	(%r15,%rbx), %rsi
	movq	-120(%rbp), %rbx
	leaq	(%r15,%rbx), %rcx
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
	cmpq	%r9, %rax
	jne	.L30
	leaq	1(%r8), %rax
	movq	%rax, -152(%rbp)
	jmp	.L31
.L58:
	leaq	1(%r8), %rax
	movl	$1, %ecx
	movq	%rax, -152(%rbp)
	jmp	.L25
.L97:
	xorl	%r14d, %r14d
	testl	%r8d, %r8d
	jle	.L17
	movl	%r8d, %edi
	cmpl	$4, %r12d
	jbe	.L62
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	jmp	.L18
.L98:
	movq	%r15, %rdi
	vzeroupper
	call	dummy
	movq	%r13, %rdi
	call	dummy
	movq	%r14, %rdi
	call	dummy
	cmpl	$1, -180(%rbp)
	jg	.L23
	jmp	.L24
.L50:
	movl	$1, %edi
	jmp	.L5
.L62:
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	jmp	.L43
.L3:
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movl	%r8d, -80(%rbp)
	call	posix_memalign
	movl	-80(%rbp), %r8d
	testl	%eax, %eax
	jne	.L39
	movq	-56(%rbp), %r13
.L10:
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	xorl	%r14d, %r14d
	call	posix_memalign
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %r14
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
	movl	$1, %ecx
	jmp	.L12
.L55:
	movl	$2, %ecx
	jmp	.L12
.L51:
	movl	$2, %edi
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
