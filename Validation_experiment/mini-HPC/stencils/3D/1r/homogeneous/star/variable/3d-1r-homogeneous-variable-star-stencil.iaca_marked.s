	.file	"3d-1r-homogeneous-variable-star-stencil.c_compilable.c"
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
	subq	$416, %rsp
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r14
	movq	%rax, -80(%rbp)
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r15
	call	strtol
	movl	%r14d, %ecx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%r15d, %ecx
	movq	%rax, -72(%rbp)
	imull	%eax, %ecx
	movslq	%ecx, %r12
	movq	%r12, %r14
	salq	$3, %r12
	movq	%r12, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rbx
	testl	%r14d, %r14d
	jle	.L3
	movq	%rbx, %rax
	movl	$5, %esi
	leal	-1(%r14), %r13d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %r13d
	jb	.L53
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rbx)
	cmpl	$1, %eax
	je	.L55
	vmovsd	%xmm0, 8(%rbx)
	cmpl	$3, %eax
	jne	.L56
	vmovsd	%xmm0, 16(%rbx)
	movl	$3, %r8d
.L5:
	movl	%r14d, %edi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%rbx,%rax,8), %rdx
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
	je	.L101
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
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L102
.L42:
	movq	$0, -56(%rbp)
	movq	$0, -176(%rbp)
	testl	%r14d, %r14d
	jle	.L10
	movq	-176(%rbp), %rcx
	leal	-1(%r14), %r13d
.L41:
	testl	%r14d, %r14d
	movl	$1, %edi
	movq	%rcx, %rax
	movl	$0, %esi
	cmovg	%r14d, %edi
	shrq	$3, %rax
	movl	$5, %r8d
	negq	%rax
	andl	$3, %eax
	testl	%r14d, %r14d
	leal	3(%rax), %edx
	cmovg	%r13d, %esi
	cmpl	$5, %edx
	cmovb	%r8d, %edx
	cmpl	%edx, %esi
	jb	.L57
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.L12
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx)
	cmpl	$1, %eax
	je	.L59
	vmovsd	%xmm0, 8(%rcx)
	cmpl	$3, %eax
	jne	.L60
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
	cmpl	%eax, %r8d
	ja	.L14
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rsi), %eax
	cmpl	%edx, %edi
	je	.L103
	vzeroupper
	movq	-176(%rbp), %rdi
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L15:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L104
	movq	-56(%rbp), %rdi
	testl	%r14d, %r14d
	movl	$1, %r8d
	cmovg	%r14d, %r8d
	movq	%rdi, -168(%rbp)
	shrq	$3, %rdi
	movq	%rdi, %rdx
	movl	$5, %edi
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	leal	3(%rdx), %esi
	cmovle	%eax, %r13d
	cmpl	$5, %esi
	cmovb	%edi, %esi
	cmpl	%esi, %r13d
	jb	.L46
	testl	%edx, %edx
	je	.L18
	vmovsd	.LC4(%rip), %xmm0
	movq	-168(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L61
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L62
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L18:
	subl	%edx, %r8d
	movq	-168(%rbp), %rcx
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
	cmpl	%edx, %edi
	ja	.L20
	movl	%r8d, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %r8d
	je	.L17
.L46:
	vmovsd	.LC4(%rip), %xmm0
	movq	-168(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L17:
	movl	-80(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$1, %eax
	movl	%eax, -404(%rbp)
	testl	%edx, %edx
	jne	.L105
	cmpl	$1, -404(%rbp)
	jle	.L99
	movq	-72(%rbp), %rax
	movl	%eax, %edi
	movl	%eax, -224(%rbp)
	imull	%r15d, %eax
	subl	$1, %edi
	movl	%edi, -376(%rbp)
	movl	%eax, -408(%rbp)
	cmpl	$2, %r15d
	jle	.L99
.L52:
	cmpl	$1, -376(%rbp)
	jle	.L95
	movl	$0, -396(%rbp)
	movl	-408(%rbp), %edi
	movl	$1, -392(%rbp)
	leal	(%rdi,%rdi), %eax
	movl	%edi, -384(%rbp)
	movl	%eax, -400(%rbp)
	movq	-72(%rbp), %rax
	leal	-2(%rax), %edx
	movl	%eax, %esi
	movslq	%eax, %rcx
	movl	%eax, -432(%rbp)
	addl	%esi, %esi
	movl	%edx, -204(%rbp)
	leaq	8(%rbx), %rdx
	leaq	0(,%rcx,8), %r10
	movl	%esi, -428(%rbp)
	movslq	%esi, %rsi
	movq	%r10, %r14
	movq	%rdx, -296(%rbp)
	leaq	40(%rbx), %rdx
	movq	%rsi, -424(%rbp)
	movl	-224(%rbp), %esi
	movq	%rdx, -304(%rbp)
	leaq	48(%rbx), %rdx
	movq	%rcx, -272(%rbp)
	movq	%rdx, -312(%rbp)
	leaq	1(%rcx), %rdx
	addq	$5, %rcx
	movl	%esi, -380(%rbp)
	leal	-3(%rax), %esi
	movq	%rcx, -456(%rbp)
	leal	(%rdi,%rax), %ecx
	subl	%edi, %eax
	movl	%eax, -436(%rbp)
	leal	-3(%r15), %eax
	movq	%rbx, %r15
	addq	$1, %rax
	movl	%esi, -364(%rbp)
	movq	%rax, -288(%rbp)
	movq	-168(%rbp), %rax
	movq	%rdx, -448(%rbp)
	addq	$48, %rax
	movl	%ecx, -440(%rbp)
	movq	%rax, -328(%rbp)
	movl	%esi, %eax
	addq	$2, %rax
	movq	%rax, -416(%rbp)
	.p2align 4,,10
	.p2align 3
.L37:
	movslq	-384(%rbp), %rdi
	movq	-448(%rbp), %rax
	movq	-272(%rbp), %rsi
	movq	-176(%rbp), %rdx
	addq	%rdi, %rax
	movslq	-380(%rbp), %r10
	movq	-168(%rbp), %r8
	movq	%rdi, -216(%rbp)
	leaq	(%rdx,%rax,8), %rbx
	movq	%rsi, %rax
	movq	%rdx, %r11
	addl	$1, -392(%rbp)
	addq	%rdi, %rax
	movq	%r10, %r9
	movq	%r10, -280(%rbp)
	movq	%rax, -200(%rbp)
	salq	$3, %rax
	addq	%rax, %r11
	movq	%rax, -88(%rbp)
	leaq	16(%r8,%r10,8), %rax
	movq	%rax, -96(%rbp)
	movq	-456(%rbp), %rax
	addq	%rdi, %rax
	leaq	(%rdx,%rax,8), %r12
	leaq	1(%r10), %rax
	movq	-424(%rbp), %r10
	movslq	-396(%rbp), %rdx
	leaq	(%r8,%rax,8), %r13
	movq	%rax, -336(%rbp)
	movl	-432(%rbp), %eax
	addl	%edi, %eax
	movl	%eax, -100(%rbp)
	movl	-436(%rbp), %eax
	addl	%edi, %eax
	movl	%eax, -116(%rbp)
	movl	-440(%rbp), %eax
	addl	%edi, %eax
	movl	%eax, -120(%rbp)
	movl	-428(%rbp), %eax
	addl	%edi, %eax
	movl	%eax, -124(%rbp)
	leaq	0(,%rdi,8), %rax
	movq	%rax, -136(%rbp)
	movq	%rdi, %rax
	addq	%r10, %rax
	movq	%rax, -360(%rbp)
	salq	$3, %rax
	movq	%rax, -144(%rbp)
	leaq	(%rsi,%rdx), %rax
	movq	%rax, -344(%rbp)
	salq	$3, %rax
	movq	%rax, -152(%rbp)
	movslq	-400(%rbp), %rax
	leaq	(%rsi,%rax), %r8
	subq	%rdi, %rax
	movq	%r8, -352(%rbp)
	salq	$3, %r8
	movq	%r8, -160(%rbp)
	movq	%rsi, -184(%rbp)
	movq	%rdx, %rsi
	movq	%rax, -320(%rbp)
	leal	1(%rdi), %eax
	subq	%rdi, %rsi
	movl	%eax, -368(%rbp)
	leal	2(%r9), %eax
	movl	%eax, -372(%rbp)
	leal	2(%rdi), %eax
	movl	$0, -128(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%eax, -388(%rbp)
	movq	%r13, %rax
	movq	%rbx, %r13
	movq	%r10, -192(%rbp)
	movq	%rax, %rbx
	movq	%r11, %r10
	movq	%r12, %r11
	.p2align 4,,10
	.p2align 3
.L38:
	movq	-304(%rbp), %rdi
	movq	-136(%rbp), %r8
	movq	-296(%rbp), %r9
	movq	-88(%rbp), %rcx
	movq	%rdi, %rdx
	addq	%r8, %rdx
	leaq	(%rcx,%r15), %rax
	cmpq	%rdx, %r13
	movq	%r9, %rdx
	setnb	%sil
	addq	%r8, %rdx
	movq	-144(%rbp), %r8
	cmpq	%rdx, %r11
	setbe	%dl
	orl	%edx, %esi
	movq	-312(%rbp), %rdx
	addq	%rcx, %rdx
	cmpq	%rdx, %r13
	setnb	%cl
	cmpq	%rax, %r11
	setbe	%dl
	orl	%ecx, %edx
	andl	%esi, %edx
	cmpl	$5, -204(%rbp)
	movq	%r9, %rsi
	seta	%cl
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r8, %rsi
	movq	-152(%rbp), %r8
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r9, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	-160(%rbp), %rsi
	andl	%ecx, %edx
	addq	%rsi, %rdi
	cmpq	%rdi, %r13
	setnb	%cl
	addq	%rsi, %r9
	cmpq	%r9, %r11
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L36
	movq	-328(%rbp), %rdi
	movq	-72(%rbp), %rdx
	addq	-280(%rbp), %rdx
	leaq	(%rdi,%rdx,8), %rdx
	cmpq	%rdx, %r13
	setnb	%cl
	cmpq	-96(%rbp), %r11
	setbe	%dl
	orb	%dl, %cl
	je	.L36
	movq	-96(%rbp), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	%eax, -364(%rbp)
	jb	.L63
	movl	$1, -104(%rbp)
	testl	%edx, %edx
	je	.L26
	movslq	-100(%rbp), %r8
	movl	-368(%rbp), %r9d
	movl	$2, -104(%rbp)
	addl	-128(%rbp), %r9d
	movq	-72(%rbp), %r12
	vmovsd	(%r15,%r8,8), %xmm0
	leal	1(%r8), %edi
	leal	2(%r8), %eax
	movl	-116(%rbp), %r8d
	movslq	%edi, %rdi
	cltq
	movl	%r12d, -208(%rbp)
	addl	$1, %r8d
	leaq	(%r15,%rdi,8), %rsi
	leaq	(%r15,%rax,8), %rcx
	movslq	%r8d, %r8
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%r15,%r8,8), %xmm0, %xmm0
	movl	-120(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %r8
	vaddsd	(%r15,%r8,8), %xmm0, %xmm0
	movslq	%r9d, %r8
	movl	-372(%rbp), %r9d
	vaddsd	(%r15,%r8,8), %xmm0, %xmm0
	movl	-124(%rbp), %r8d
	addl	-72(%rbp), %r9d
	addl	$1, %r8d
	movslq	%r8d, %r8
	vaddsd	(%r15,%r8,8), %xmm0, %xmm0
	movslq	%r9d, %r8
	movq	-168(%rbp), %r9
	vmulsd	(%r9,%r8,8), %xmm0, %xmm0
	movq	-176(%rbp), %r9
	vmovsd	%xmm0, (%r9,%rdi,8)
	cmpl	$1, %edx
	je	.L26
	movl	-100(%rbp), %r8d
	vmovsd	(%rcx), %xmm0
	movl	$3, -104(%rbp)
	vaddsd	(%rsi), %xmm0, %xmm0
	movl	-116(%rbp), %esi
	addl	$3, %r8d
	movl	-388(%rbp), %r12d
	addl	-128(%rbp), %r12d
	movslq	%r8d, %r8
	addl	$2, %esi
	movq	-168(%rbp), %r9
	movslq	%esi, %rsi
	leaq	(%r15,%r8,8), %rdi
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	movl	-120(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rsi
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	movslq	%r12d, %rsi
	movl	-380(%rbp), %r12d
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	movl	-124(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rsi
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	movq	-72(%rbp), %rsi
	leal	3(%r12,%rsi), %esi
	movslq	%esi, %rsi
	vmulsd	(%r9,%rsi,8), %xmm0, %xmm0
	movq	-176(%rbp), %r9
	vmovsd	%xmm0, (%r9,%rax,8)
	cmpl	$3, %edx
	jne	.L26
	movl	-100(%rbp), %eax
	movl	-116(%rbp), %esi
	movl	$4, -104(%rbp)
	vmovsd	(%rcx), %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	addl	$4, %eax
	movq	-168(%rbp), %r9
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	3(%rsi), %eax
	movl	-120(%rbp), %esi
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	3(%rsi), %eax
	movl	-128(%rbp), %esi
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-384(%rbp), %eax
	leal	3(%rsi,%rax), %eax
	movl	-124(%rbp), %esi
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	3(%rsi), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-208(%rbp), %eax
	leal	4(%rax,%r12), %eax
	cltq
	vmulsd	(%r9,%rax,8), %xmm0, %xmm0
	movq	-176(%rbp), %r9
	vmovsd	%xmm0, (%r9,%r8,8)
.L26:
	movq	-72(%rbp), %rsi
	movl	%edx, %eax
	movq	-88(%rbp), %r9
	movq	%r15, -264(%rbp)
	movq	-336(%rbp), %rcx
	movl	-204(%rbp), %edi
	movq	-344(%rbp), %r8
	movq	-216(%rbp), %r12
	subl	%edx, %edi
	leaq	1(%rsi,%rcx), %rdx
	movq	-168(%rbp), %rsi
	addq	%rax, %rdx
	movl	%edi, -208(%rbp)
	shrl	$2, %edi
	leaq	(%rsi,%rdx,8), %rcx
	movq	-200(%rbp), %rdx
	movl	%edi, -220(%rbp)
	movq	%rcx, -232(%rbp)
	movq	-112(%rbp), %rdi
	leaq	1(%rax,%rdx), %rcx
	leaq	2(%rax,%rdx), %rdx
	salq	$3, %rcx
	leaq	(%r15,%rdx,8), %rdx
	leaq	(%r15,%rcx), %rsi
	movq	%rdx, -248(%rbp)
	leaq	1(%rdi,%r8), %rdx
	addq	-176(%rbp), %rcx
	movq	%rsi, -240(%rbp)
	leaq	(%r9,%rax,8), %rsi
	addq	%rax, %rdx
	movq	-352(%rbp), %r9
	leaq	(%r15,%rdx,8), %r8
	addq	%r15, %rsi
	leaq	1(%rdi,%r9), %rdx
	movq	%r8, -256(%rbp)
	addq	%rax, %rdx
	leaq	(%r15,%rdx,8), %r9
	leaq	1(%r12,%rdi), %rdx
	movq	-360(%rbp), %r12
	addq	%rax, %rdx
	leaq	(%r15,%rdx,8), %r8
	leaq	1(%rdi,%r12), %rdx
	movq	-80(%rbp), %r12
	addq	%rdx, %rax
	xorl	%edx, %edx
	leaq	(%r15,%rax,8), %rdi
	movq	-256(%rbp), %r15
	xorl	%eax, %eax
	movq	%r13, -256(%rbp)
	movq	-240(%rbp), %r13
	movq	%r14, -240(%rbp)
	movq	-248(%rbp), %r14
	movq	%r10, -248(%rbp)
	movq	-232(%rbp), %r10
	movq	%r11, -232(%rbp)
	movl	-220(%rbp), %r11d
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L28:
	vmovupd	(%rsi,%rax), %ymm0
	vaddpd	0(%r13,%rax), %ymm0, %ymm0
	addl	$1, %edx
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vaddpd	(%r15,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	vmulpd	(%r10,%rax), %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %r11d
	ja	.L28
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-208(%rbp), %edi
	movl	-104(%rbp), %edx
	movq	%r12, -80(%rbp)
	movq	-264(%rbp), %r15
	movq	-256(%rbp), %r13
	movl	%edi, %eax
	movq	-240(%rbp), %r14
	movq	-248(%rbp), %r10
	andl	$-4, %eax
	movq	-232(%rbp), %r11
	addl	%eax, %edx
	cmpl	%eax, %edi
	je	.L32
.L25:
	movq	-184(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movslq	%edx, %rdx
	movq	-216(%rbp), %rax
	movq	-192(%rbp), %rcx
	subq	%rdi, %rsi
	movq	-320(%rbp), %r8
	addq	%rdi, %rax
	subq	%rdi, %rcx
	movl	-376(%rbp), %edi
	addq	%rdx, %rax
	leaq	-8(%r15,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L30:
	vmovsd	8(%rax), %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	8(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rcx,8), %xmm0, %xmm0
	vmulsd	(%rbx,%rdx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, (%r10,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %edi
	jg	.L30
.L98:
	movq	%r12, -80(%rbp)
.L32:
	addq	$1, -72(%rbp)
	addq	%r14, %r13
	movq	-72(%rbp), %rdi
	addq	%r14, %r10
	movq	-272(%rbp), %rax
	addq	$8, -96(%rbp)
	addq	%r14, %r11
	addq	$8, %rbx
	addq	%rax, -112(%rbp)
	addq	%rax, -184(%rbp)
	addq	%rax, -192(%rbp)
	addq	%rax, -200(%rbp)
	movl	-224(%rbp), %eax
	addq	%r14, -88(%rbp)
	addl	%eax, -100(%rbp)
	addl	%eax, -116(%rbp)
	addl	%eax, -120(%rbp)
	addl	%eax, -124(%rbp)
	addl	%eax, -128(%rbp)
	addq	%r14, -136(%rbp)
	addq	%r14, -144(%rbp)
	addq	%r14, -152(%rbp)
	addq	%r14, -160(%rbp)
	cmpq	-288(%rbp), %rdi
	jne	.L38
	movl	%eax, %edi
	movl	-392(%rbp), %ebx
	movl	-408(%rbp), %eax
	addl	%edi, -380(%rbp)
	addl	%eax, -384(%rbp)
	addl	%eax, -396(%rbp)
	addl	%eax, -400(%rbp)
	cmpl	%ebx, -404(%rbp)
	jg	.L37
	movq	%r15, %rbx
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L96
	movq	%rbx, %rdi
	call	dummy
	movq	-176(%rbp), %rdi
	call	dummy
	movq	-168(%rbp), %rdi
	call	dummy
.L96:
	addq	$416, %rsp
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
.L102:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	%rax, %rcx
	jmp	.L41
.L55:
	movl	$1, %r8d
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L36:
	movq	-184(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	$1, %edx
	movq	-192(%rbp), %rcx
	movq	-80(%rbp), %r12
	subq	%rdi, %rsi
	movq	-416(%rbp), %r8
	subq	%rdi, %rcx
	movq	-320(%rbp), %rdi
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	(%rax), %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	8(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rcx,8), %xmm0, %xmm0
	vmulsd	(%rbx,%rdx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, (%r10,%rdx,8)
	addq	$1, %rdx
	cmpq	%r8, %rdx
	jne	.L31
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L63:
	movl	$1, %edx
	movq	-80(%rbp), %r12
	jmp	.L25
.L104:
	testl	%r14d, %r14d
	jle	.L106
	movl	%r14d, %r8d
	cmpl	$4, %r13d
	jbe	.L67
	movq	$0, -168(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L105:
	movq	%rbx, %rdi
	vzeroupper
	call	dummy
	movq	-176(%rbp), %rdi
	call	dummy
	movq	-168(%rbp), %rdi
	call	dummy
	cmpl	$1, -404(%rbp)
	jle	.L24
	movq	-72(%rbp), %rax
	movl	%eax, %edi
	movl	%eax, -224(%rbp)
	imull	%r15d, %eax
	subl	$1, %edi
	movl	%edi, -376(%rbp)
	movl	%eax, -408(%rbp)
	cmpl	$2, %r15d
	jg	.L52
	jmp	.L24
.L59:
	movl	$1, %esi
	jmp	.L12
.L103:
	vzeroupper
	jmp	.L15
.L61:
	movl	$1, %eax
	jmp	.L18
.L99:
	vzeroupper
	jmp	.L96
.L101:
	vzeroupper
	jmp	.L8
.L3:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L42
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)
.L10:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -168(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
	jmp	.L17
.L67:
	movq	$0, -168(%rbp)
	xorl	%eax, %eax
	jmp	.L46
.L56:
	movl	$2, %r8d
	jmp	.L5
.L62:
	movl	$2, %eax
	jmp	.L18
.L60:
	movl	$2, %esi
	jmp	.L12
.L95:
	vzeroupper
	jmp	.L24
.L57:
	xorl	%eax, %eax
	movq	%rcx, %rdi
	jmp	.L11
.L53:
	xorl	%eax, %eax
	jmp	.L4
.L106:
	movq	$0, -168(%rbp)
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
