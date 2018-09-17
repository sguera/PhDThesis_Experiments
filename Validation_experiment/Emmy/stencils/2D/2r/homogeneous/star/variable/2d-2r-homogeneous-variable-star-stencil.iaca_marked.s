	.file	"2d-2r-homogeneous-variable-star-stencil.c_compilable.c"
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
	subq	$288, %rsp
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
.L41:
	movq	$0, -56(%rbp)
	movq	$0, -80(%rbp)
	testl	%r15d, %r15d
	jle	.L10
	movq	-80(%rbp), %r9
	leal	-1(%r15), %r12d
.L40:
	testl	%r15d, %r15d
	movl	$1, %esi
	movq	%r9, %rax
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
	vmovsd	%xmm0, (%r9)
	cmpl	$1, %eax
	je	.L56
	vmovsd	%xmm0, 8(%r9)
	cmpl	$3, %eax
	jne	.L57
	vmovsd	%xmm0, 16(%r9)
	movl	$3, %ecx
.L12:
	movq	-80(%rbp), %rdx
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
	movq	-80(%rbp), %rsi
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
	movq	-56(%rbp), %rcx
	testl	%r15d, %r15d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r15d, %edi
	movq	%rcx, -88(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
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
	movq	-88(%rbp), %rax
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
	movq	-88(%rbp), %rcx
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
	movq	-88(%rbp), %rcx
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
	subl	$2, %eax
	movl	%eax, -232(%rbp)
	testl	%edx, %edx
	jne	.L100
	cmpl	$2, -232(%rbp)
	jle	.L101
.L23:
	leal	-2(%rbx), %eax
	movl	%eax, -304(%rbp)
	cmpl	$2, %eax
	jle	.L92
	movq	-80(%rbp), %rdi
	leal	(%rbx,%rbx), %eax
	movslq	%ebx, %rsi
	movl	%ebx, -264(%rbp)
	leaq	0(,%rsi,8), %r15
	movslq	%eax, %r13
	movl	%eax, -208(%rbp)
	leaq	16(,%r13,8), %rcx
	movl	%ebx, -212(%rbp)
	movq	%r14, -152(%rbp)
	leaq	(%rdi,%rcx), %rdx
	movq	%rsi, -104(%rbp)
	movq	%rdx, -176(%rbp)
	leaq	-16(%rcx), %rdx
	leaq	(%rdi,%rdx), %r9
	movq	%rdx, -72(%rbp)
	leaq	32(%rdi,%rcx), %rcx
	movq	-88(%rbp), %rdi
	movq	%r9, -192(%rbp)
	movq	%rcx, -184(%rbp)
	leaq	(%r14,%r15), %r9
	movq	%r9, -136(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdi, %rcx
	movl	$3, -220(%rbp)
	addq	%rdx, %rcx
	movq	$0, -120(%rbp)
	movq	%rcx, -200(%rbp)
	leal	(%rax,%rbx), %ecx
	leal	-5(%rbx), %eax
	movslq	%ecx, %rdx
	movl	%ecx, -96(%rbp)
	movq	%rdx, -112(%rbp)
	movq	%rsi, %rdx
	salq	$4, %rdx
	movl	%eax, -300(%rbp)
	addq	$3, %rax
	addq	%r9, %rdx
	movq	%rax, -312(%rbp)
	movq	%r15, %rax
	movq	%rdx, %r9
	movq	%rdx, -144(%rbp)
	leal	0(,%rbx,4), %edx
	subl	$4, %ebx
	addq	%r15, %r9
	movl	$2, -216(%rbp)
	movl	%ebx, -204(%rbp)
	leaq	64(%r14), %rbx
	movslq	%edx, %r8
	movq	%r14, %r15
	movq	%rbx, -280(%rbp)
	leaq	48(%rdi), %rbx
	movq	%rax, %r14
	movq	%rbx, -288(%rbp)
	leaq	16(%rdi), %rbx
	movq	%r8, -128(%rbp)
	movq	%r9, -160(%rbp)
	movl	%edx, -164(%rbp)
	movl	$4, -260(%rbp)
	movl	$2, -168(%rbp)
	movq	%rbx, -296(%rbp)
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-144(%rbp), %rdi
	movq	-176(%rbp), %rbx
	addl	$1, -168(%rbp)
	movq	-136(%rbp), %r8
	leaq	48(%rdi), %rax
	movq	-72(%rbp), %r11
	cmpq	%rax, %rbx
	leaq	16(%rdi), %rax
	movq	-184(%rbp), %rdi
	setnb	%sil
	leaq	(%r15,%r11), %rdx
	cmpq	%rax, %rdi
	setbe	%al
	orl	%eax, %esi
	leaq	48(%r8), %rax
	cmpq	%rax, %rbx
	leaq	16(%r8), %rax
	setnb	%cl
	cmpq	%rax, %rdi
	setbe	%al
	orl	%ecx, %eax
	andl	%esi, %eax
	cmpl	$5, -204(%rbp)
	movq	-152(%rbp), %rsi
	seta	%cl
	andl	%ecx, %eax
	leaq	48(%rsi), %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	addq	$16, %rsi
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %ecx
	movq	-160(%rbp), %rsi
	andl	%ecx, %eax
	leaq	48(%rsi), %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	addq	$16, %rsi
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %ecx
	andl	%ecx, %eax
	movq	-280(%rbp), %rcx
	addq	%r11, %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	cmpq	%rdx, %rdi
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L37
	movq	-288(%rbp), %rax
	addq	%r11, %rax
	cmpq	%rax, %rbx
	movq	-296(%rbp), %rax
	setnb	%cl
	addq	%r11, %rax
	cmpq	%rax, %rdi
	setbe	%al
	orb	%al, %cl
	je	.L37
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	%eax, -300(%rbp)
	jb	.L60
	movl	$2, -92(%rbp)
	testl	%edx, %edx
	je	.L26
	movl	-208(%rbp), %ebx
	movl	$3, -92(%rbp)
	movl	-212(%rbp), %r12d
	leal	1(%rbx), %ecx
	leal	2(%rbx), %eax
	movslq	%ecx, %rcx
	leaq	(%r15,%rcx,8), %r9
	cltq
	leal	3(%rbx), %ecx
	vmovsd	(%r9), %xmm0
	leal	2(%r12), %r10d
	movslq	%ecx, %rcx
	leaq	(%r15,%rax,8), %rsi
	movslq	%r10d, %r10
	leaq	(%r15,%rcx,8), %r8
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	leal	4(%rbx), %r11d
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movslq	%r11d, %r11
	movl	-96(%rbp), %r10d
	leaq	(%r15,%r11,8), %rdi
	addl	$2, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movq	-72(%rbp), %r10
	vaddsd	(%r15,%r10), %xmm0, %xmm0
	movslq	-216(%rbp), %r10
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-164(%rbp), %r10d
	addl	$2, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movq	-88(%rbp), %r10
	vmulsd	(%r10,%rax,8), %xmm0, %xmm0
	movq	-80(%rbp), %r10
	vmovsd	%xmm0, (%r10,%rax,8)
	cmpl	$1, %edx
	je	.L26
	vmovsd	(%r8), %xmm0
	leal	3(%r12), %r10d
	movl	$4, -92(%rbp)
	vaddsd	(%rsi), %xmm0, %xmm0
	leal	5(%rbx), %eax
	movslq	%r10d, %r10
	vaddsd	(%rdi), %xmm0, %xmm0
	cltq
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	leaq	(%r15,%rax,8), %rax
	movl	-96(%rbp), %r10d
	addl	$3, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	movslq	-220(%rbp), %r9
	vaddsd	(%rax), %xmm0, %xmm0
	movq	-80(%rbp), %r10
	vaddsd	(%r15,%r9,8), %xmm0, %xmm0
	movl	-164(%rbp), %r9d
	addl	$3, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r15,%r9,8), %xmm0, %xmm0
	movq	-88(%rbp), %r9
	vmulsd	(%r9,%rcx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%rcx,8)
	cmpl	$3, %edx
	jne	.L26
	movl	-96(%rbp), %r10d
	movl	$5, -92(%rbp)
	vmovsd	(%r8), %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	leal	4(%r12), %eax
	cltq
	movl	-164(%rbp), %r9d
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%r10), %eax
	cltq
	movq	-80(%rbp), %r10
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	6(%rbx), %eax
	cltq
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movslq	-260(%rbp), %rax
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%r9), %eax
	movq	-88(%rbp), %r9
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	(%r9,%r11,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%r11,8)
.L26:
	movl	-204(%rbp), %esi
	movl	%edx, %eax
	movq	%r15, -256(%rbp)
	movq	-104(%rbp), %rdi
	leaq	2(%rax,%r13), %rcx
	movq	-88(%rbp), %rbx
	salq	$3, %rcx
	subl	%edx, %esi
	leaq	1(%rax,%r13), %rdx
	movl	%esi, -224(%rbp)
	shrl	$2, %esi
	leaq	(%r15,%rdx,8), %r11
	movl	%esi, -228(%rbp)
	leaq	3(%rax,%r13), %rdx
	leaq	(%r15,%rdx,8), %r10
	leaq	2(%rax,%rdi), %rdx
	movq	-112(%rbp), %rdi
	leaq	(%r15,%rdx,8), %r9
	leaq	(%rbx,%rcx), %r12
	leaq	(%r15,%rcx), %rbx
	addq	-80(%rbp), %rcx
	leaq	2(%rax,%rdi), %rdx
	movq	-72(%rbp), %rdi
	leaq	(%r15,%rdx,8), %r8
	leaq	(%rdi,%rax,8), %rdx
	leaq	(%r15,%rdx), %rdi
	movq	%rdi, -240(%rbp)
	movq	-120(%rbp), %rdi
	leaq	4(%rax,%r13), %rdx
	leaq	(%r15,%rdx,8), %rdx
	movq	%rdx, -248(%rbp)
	leaq	2(%rax,%rdi), %rdx
	leaq	(%r15,%rdx,8), %rdi
	movq	-128(%rbp), %rdx
	leaq	2(%rax,%rdx), %rax
	xorl	%edx, %edx
	leaq	(%r15,%rax,8), %rsi
	movq	-248(%rbp), %r15
	xorl	%eax, %eax
	movq	%r14, -248(%rbp)
	movq	-240(%rbp), %r14
	movq	%r13, -240(%rbp)
	movl	-228(%rbp), %r13d
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L28:
	vmovupd	(%rbx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm1, %ymm1
	addl	$1, %edx
	vmovupd	(%r11,%rax), %xmm0
	vinsertf128	$0x1, 16(%r11,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r10,%rax), %xmm0
	vinsertf128	$0x1, 16(%r10,%rax), %ymm0, %ymm0
	vmovupd	(%rdi,%rax), %xmm2
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r9,%rax), %xmm0
	vinsertf128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r8,%rax), %xmm0
	vinsertf128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm2, %ymm0
	vaddpd	(%r14,%rax), %ymm1, %ymm1
	vaddpd	(%r15,%rax), %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%rsi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%r12,%rax), %xmm0
	vinsertf128	$0x1, 16(%r12,%rax), %ymm0, %ymm0
	vmulpd	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %r13d
	ja	.L28
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-224(%rbp), %ebx
	movl	-92(%rbp), %edx
	movq	-256(%rbp), %r15
	movq	-248(%rbp), %r14
	movl	%ebx, %eax
	movq	-240(%rbp), %r13
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %ebx
	je	.L32
.L25:
	movq	-104(%rbp), %r8
	movslq	%edx, %rdx
	movq	-112(%rbp), %rdi
	leaq	(%rdx,%r13), %rax
	movq	-120(%rbp), %rsi
	leaq	(%r15,%rax,8), %rax
	movq	-128(%rbp), %rcx
	movl	-304(%rbp), %r9d
	subq	%r13, %r8
	movq	-192(%rbp), %r10
	subq	%r13, %rdi
	movq	-200(%rbp), %r11
	subq	%r13, %rsi
	subq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L30:
	vmovsd	(%rax), %xmm0
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	(%r11,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %r9d
	jg	.L30
.L32:
	movq	-272(%rbp), %rax
	addq	%r14, -176(%rbp)
	addq	%rax, -104(%rbp)
	addq	%rax, -112(%rbp)
	addq	%rax, -120(%rbp)
	addq	%rax, %r13
	addq	%rax, -128(%rbp)
	addq	%r14, -192(%rbp)
	movl	-264(%rbp), %eax
	addq	%r14, -184(%rbp)
	addq	%r14, -200(%rbp)
	addq	%r14, -136(%rbp)
	addq	%r14, -144(%rbp)
	addq	%r14, -152(%rbp)
	addq	%r14, -160(%rbp)
	addq	%r14, -72(%rbp)
	addl	%eax, -208(%rbp)
	addl	%eax, -212(%rbp)
	addl	%eax, -96(%rbp)
	addl	%eax, -260(%rbp)
	addl	%eax, -164(%rbp)
	addl	%eax, -216(%rbp)
	addl	%eax, -220(%rbp)
	movl	-168(%rbp), %ebx
	cmpl	%ebx, -232(%rbp)
	jg	.L33
	movq	%r15, %r14
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L93
	movq	%r14, %rdi
	call	dummy
	movq	-80(%rbp), %rdi
	call	dummy
	movq	-88(%rbp), %rdi
	call	dummy
.L93:
	addq	$288, %rsp
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
	movq	%rax, -80(%rbp)
	movq	%rax, %r9
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L37:
	movq	-192(%rbp), %rcx
	movl	$2, %eax
	movq	-200(%rbp), %rsi
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %r8
	movq	-152(%rbp), %r9
	movq	-160(%rbp), %r10
	movq	-312(%rbp), %r11
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	8(%rdx), %xmm0
	addq	$8, %rdx
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	vaddsd	(%r8,%rax,8), %xmm0, %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	(%r9,%rax,8), %xmm0, %xmm0
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	vmulsd	(%rsi,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	addq	$1, %rax
	cmpq	%r11, %rax
	jne	.L31
	jmp	.L32
.L60:
	movl	$2, %edx
	jmp	.L25
.L99:
	testl	%r15d, %r15d
	jle	.L102
	movl	%r15d, %edi
	cmpl	$4, %r12d
	jbe	.L64
	xorl	%edx, %edx
	movq	$0, -88(%rbp)
	xorl	%eax, %eax
	jmp	.L18
.L100:
	movq	%r14, %rdi
	vzeroupper
	call	dummy
	movq	-80(%rbp), %rdi
	call	dummy
	movq	-88(%rbp), %rdi
	call	dummy
	cmpl	$2, -232(%rbp)
	jg	.L23
	jmp	.L24
.L52:
	movl	$1, %edi
	jmp	.L5
.L64:
	movq	$0, -88(%rbp)
	xorl	%eax, %eax
	jmp	.L45
.L3:
	leaq	-56(%rbp), %rdi
	movq	%r13, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L41
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
.L10:
	leaq	-56(%rbp), %rdi
	movq	%r13, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -88(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L17
.L96:
	vzeroupper
	jmp	.L8
.L58:
	movl	$1, %eax
	jmp	.L18
.L98:
	vzeroupper
	jmp	.L15
.L56:
	movl	$1, %ecx
	jmp	.L12
.L57:
	movl	$2, %ecx
	jmp	.L12
.L53:
	movl	$2, %edi
	jmp	.L5
.L92:
	vzeroupper
	jmp	.L24
.L59:
	movl	$2, %eax
	jmp	.L18
.L101:
	vzeroupper
	jmp	.L93
.L50:
	xorl	%eax, %eax
	jmp	.L4
.L102:
	movq	$0, -88(%rbp)
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
