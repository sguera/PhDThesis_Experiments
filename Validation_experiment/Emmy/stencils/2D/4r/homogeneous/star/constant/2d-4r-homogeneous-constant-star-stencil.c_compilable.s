	.file	"2d-4r-homogeneous-constant-star-stencil.c_compilable.c"
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
	subq	$448, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	movl	%r12d, %r13d
	call	strtol
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r13d
	movq	%rax, %rbx
	movslq	%r13d, %r15
	leaq	0(,%r15,8), %r8
	movq	%r8, %rdx
	movq	%r8, -88(%rbp)
	call	posix_memalign
	movq	-88(%rbp), %r8
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %r15
	testl	%r13d, %r13d
	jle	.L3
	leal	-1(%r13), %r14d
	movq	%r15, %rax
	movl	$5, %ecx
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
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L41
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L42
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %edi
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r15,%rax,8), %rdx
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
	je	.L77
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r15,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
.L8:
	leaq	-80(%rbp), %rdi
	movq	%r8, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L78
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %r14d
	cmovg	%r13d, %edi
	cmpl	$4, %r14d
	ja	.L79
	movq	$0, -160(%rbp)
	xorl	%eax, %eax
.L31:
	movq	-160(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L35
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L35:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -80(%rbp)
	leal	-4(%r12), %eax
	movl	%eax, -376(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$4, -376(%rbp)
	jle	.L81
.L14:
	leal	-4(%rbx), %eax
	movl	%eax, -480(%rbp)
	cmpl	$4, %eax
	jle	.L73
	movq	-160(%rbp), %r14
	leal	(%rbx,%rbx), %edx
	movslq	%ebx, %r12
	movl	%ebx, -400(%rbp)
	leal	0(,%rbx,4), %esi
	movslq	%edx, %r8
	movl	%edx, -256(%rbp)
	leaq	0(,%r12,8), %rax
	movslq	%esi, %r11
	movl	%esi, -96(%rbp)
	movq	%rax, -416(%rbp)
	leaq	32(,%r11,8), %rax
	leal	(%rdx,%rbx), %ecx
	movq	%r8, -184(%rbp)
	leaq	(%r14,%rax), %rdi
	movl	%ecx, -240(%rbp)
	leaq	-32(%rax), %r10
	movq	%rdi, -280(%rbp)
	leaq	32(%r14,%rax), %rax
	movq	%r12, -408(%rbp)
	leal	(%rsi,%rbx), %r9d
	movq	%rax, -288(%rbp)
	movslq	%ecx, %rax
	leaq	(%r14,%r10), %rdi
	movq	%rax, -168(%rbp)
	movq	%rdi, -360(%rbp)
	leal	(%rcx,%rcx), %r8d
	movslq	%r9d, %rdi
	movq	%rdi, -176(%rbp)
	leal	-9(%rbx), %ecx
	movslq	%r8d, %r13
	leal	0(,%rbx,8), %eax
	movq	%r13, -192(%rbp)
	movl	%eax, %edi
	movl	%eax, -340(%rbp)
	subl	%ebx, %edi
	movl	%r8d, -260(%rbp)
	movq	-184(%rbp), %r8
	movslq	%edi, %r13
	movl	%edi, -268(%rbp)
	movq	-176(%rbp), %rdi
	movq	%r13, -200(%rbp)
	movslq	%eax, %r13
	movq	-168(%rbp), %rax
	movq	%r11, -208(%rbp)
	leaq	0(%r13,%r15), %rdx
	movq	%r13, -424(%rbp)
	movq	%r10, -152(%rbp)
	leaq	0(,%rax,8), %rsi
	movq	-192(%rbp), %rax
	movl	%r9d, -252(%rbp)
	movq	%rsi, -296(%rbp)
	leaq	0(,%rdi,8), %rsi
	movq	%rsi, -304(%rbp)
	leaq	0(,%r8,8), %rsi
	movq	%rsi, -312(%rbp)
	leaq	0(,%rax,8), %rsi
	movq	-200(%rbp), %rax
	movq	%rsi, -320(%rbp)
	salq	$3, %rax
	movq	%rax, -328(%rbp)
	leaq	0(,%r13,8), %rax
	movq	%rax, -336(%rbp)
	leal	-8(%rbx), %eax
	movl	%eax, -344(%rbp)
	addq	%r11, %rax
	leaq	32(%r14,%rax,8), %rax
	movl	%ecx, -476(%rbp)
	addq	%r11, %rcx
	movq	%rax, -448(%rbp)
	leaq	96(%r15), %rax
	movq	%rax, -472(%rbp)
	leaq	64(%rdx), %rax
	movq	%rax, -464(%rbp)
	leaq	32(%rdx), %rax
	movq	%rax, -440(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movl	%ebx, -264(%rbp)
	leaq	32(%r15), %rbx
	movq	%rax, -432(%rbp)
	movq	%rbx, -352(%rbp)
	leaq	8(%r15,%rcx,8), %rax
	leaq	64(%r15), %rbx
	movq	%r13, -232(%rbp)
	movq	%r12, -216(%rbp)
	movq	$0, -248(%rbp)
	movl	$5, -368(%rbp)
	movl	$4, -364(%rbp)
	movl	$6, -396(%rbp)
	movq	$0, -224(%rbp)
	movl	$4, -272(%rbp)
	movq	%rbx, -456(%rbp)
	movq	%rax, -488(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-248(%rbp), %r9
	leaq	-80(%rbp), %rdi
	movq	-448(%rbp), %rdx
	movq	-280(%rbp), %r14
	addl	$1, -272(%rbp)
	movq	-152(%rbp), %rbx
	addq	%r9, %rdx
	movq	-288(%rbp), %r11
	cmpq	%rdx, %rdi
	movq	-432(%rbp), %rdi
	setnb	%cl
	movq	-296(%rbp), %r8
	leaq	(%r15,%rbx), %rax
	cmpq	%rdi, %r14
	movq	-352(%rbp), %rdi
	setnb	%dl
	orl	%ecx, %edx
	cmpl	$4, -344(%rbp)
	seta	%cl
	andl	%ecx, %edx
	movq	-472(%rbp), %rcx
	addq	%rbx, %rcx
	movq	-456(%rbp), %rbx
	cmpq	%rcx, %r14
	setnb	%cl
	cmpq	%rax, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	movq	-304(%rbp), %r8
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	movq	-312(%rbp), %r8
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	movq	-320(%rbp), %r8
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	movq	-328(%rbp), %r8
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	-440(%rbp), %rsi
	andl	%ecx, %edx
	movq	-464(%rbp), %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r9, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r9, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L28
	movq	-336(%rbp), %rsi
	addq	%rsi, %rbx
	cmpq	%rbx, %r14
	setnb	%cl
	addq	%rsi, %rdi
	cmpq	%rdi, %r11
	setbe	%dl
	orb	%dl, %cl
	je	.L28
	movq	-352(%rbp), %rdx
	addq	-152(%rbp), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-476(%rbp), %eax
	ja	.L45
	movl	$4, -236(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	$5, -236(%rbp)
	movl	-96(%rbp), %r10d
	leal	5(%r10), %esi
	leal	4(%r10), %eax
	movslq	%esi, %r13
	leal	2(%r10), %esi
	cltq
	leal	3(%r10), %ecx
	movslq	%esi, %rsi
	leaq	(%r15,%rsi,8), %r12
	movslq	%ecx, %rcx
	leal	6(%r10), %esi
	leaq	(%r15,%rax,8), %rbx
	movslq	%esi, %r14
	leal	1(%r10), %esi
	leaq	(%r15,%rcx,8), %rcx
	movslq	%esi, %rsi
	leaq	(%r15,%rsi,8), %r11
	vmovsd	(%rcx), %xmm0
	leal	7(%r10), %esi
	vaddsd	(%rbx), %xmm0, %xmm0
	leaq	(%r15,%r13,8), %r9
	movslq	%esi, %rsi
	leaq	(%r15,%rsi,8), %rdi
	vaddsd	(%r9), %xmm0, %xmm0
	leal	8(%r10), %esi
	movl	-240(%rbp), %r10d
	leaq	(%r15,%r14,8), %r8
	movslq	%esi, %rsi
	leaq	(%r15,%rsi,8), %rsi
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-252(%rbp), %r10d
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-256(%rbp), %r10d
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-260(%rbp), %r10d
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-264(%rbp), %r10d
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-268(%rbp), %r10d
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movq	-152(%rbp), %r10
	vaddsd	(%r15,%r10), %xmm0, %xmm0
	movslq	-364(%rbp), %r10
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-340(%rbp), %r10d
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-160(%rbp), %r10
	vmovsd	%xmm0, (%r10,%rax,8)
	cmpl	$1, %edx
	je	.L17
	movl	$6, -236(%rbp)
	movl	-96(%rbp), %r10d
	vmovsd	(%r9), %xmm0
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	leal	9(%r10), %eax
	cltq
	leaq	(%r15,%rax,8), %r10
	movl	-240(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-252(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-256(%rbp), %eax
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	addl	$5, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-260(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-264(%rbp), %eax
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	addl	$5, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-268(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movslq	-368(%rbp), %rax
	vaddsd	(%r11), %xmm0, %xmm0
	movl	-340(%rbp), %r11d
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	5(%r11), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-160(%rbp), %rax
	vmovsd	%xmm0, (%rax,%r13,8)
	cmpl	$3, %edx
	jne	.L17
	movl	$7, -236(%rbp)
	movl	-240(%rbp), %eax
	vmovsd	(%r9), %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	addl	$6, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-252(%rbp), %eax
	addl	$6, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-256(%rbp), %eax
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	addl	$6, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-260(%rbp), %eax
	addl	$6, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-264(%rbp), %eax
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	movl	-96(%rbp), %r10d
	addl	$6, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-268(%rbp), %eax
	addl	$6, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	10(%r10), %eax
	cltq
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movslq	-396(%rbp), %rax
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	6(%r11), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-160(%rbp), %rax
	vmovsd	%xmm0, (%rax,%r14,8)
.L17:
	movq	-208(%rbp), %rsi
	movl	%edx, %eax
	movq	%r15, -392(%rbp)
	movl	-344(%rbp), %edi
	movq	-176(%rbp), %r9
	movq	-216(%rbp), %r8
	vbroadcastsd	-80(%rbp), %ymm2
	subl	%edx, %edi
	leaq	4(%rax,%rsi), %rdx
	movl	%edi, -372(%rbp)
	shrl	$2, %edi
	leaq	0(,%rdx,8), %rbx
	movl	%edi, -92(%rbp)
	leaq	3(%rax,%rsi), %rdx
	movq	%rbx, -88(%rbp)
	leaq	(%r15,%rdx,8), %rcx
	movq	%rcx, -112(%rbp)
	movq	-168(%rbp), %rcx
	leaq	(%r15,%rbx), %rdi
	leaq	5(%rax,%rsi), %rdx
	movq	%rdi, -104(%rbp)
	leaq	(%r15,%rdx,8), %rdi
	movq	%rdi, -120(%rbp)
	movq	-200(%rbp), %rdi
	leaq	4(%rax,%rcx), %rdx
	leaq	(%r15,%rdx,8), %rcx
	leaq	4(%rax,%r9), %rdx
	movq	-184(%rbp), %r9
	movq	%rcx, -384(%rbp)
	leaq	(%r15,%rdx,8), %r14
	movq	-152(%rbp), %rcx
	leaq	2(%rax,%rsi), %rdx
	leaq	(%r15,%rdx,8), %r13
	leaq	6(%rax,%rsi), %rdx
	leaq	(%r15,%rdx,8), %r12
	leaq	4(%rax,%r9), %rdx
	movq	-192(%rbp), %r9
	leaq	(%r15,%rdx,8), %rbx
	leaq	4(%rax,%r9), %rdx
	leaq	(%r15,%rdx,8), %r11
	leaq	1(%rax,%rsi), %rdx
	leaq	(%r15,%rdx,8), %r10
	leaq	7(%rax,%rsi), %rdx
	leaq	(%r15,%rdx,8), %r9
	leaq	4(%rax,%r8), %rdx
	leaq	(%r15,%rdx,8), %r8
	leaq	4(%rax,%rdi), %rdx
	leaq	(%r15,%rdx,8), %rdi
	leaq	(%rcx,%rax,8), %rdx
	leaq	(%r15,%rdx), %rcx
	leaq	8(%rax,%rsi), %rdx
	movq	%rcx, -128(%rbp)
	movq	-232(%rbp), %rcx
	leaq	(%r15,%rdx,8), %rsi
	movq	%rsi, -136(%rbp)
	movq	-224(%rbp), %rsi
	leaq	4(%rax,%rsi), %rdx
	leaq	4(%rax,%rcx), %rax
	leaq	(%r15,%rax,8), %rcx
	movq	-88(%rbp), %rax
	addq	-160(%rbp), %rax
	leaq	(%r15,%rdx,8), %rsi
	xorl	%edx, %edx
	movq	-384(%rbp), %r15
	movl	%edx, -88(%rbp)
	movq	%rax, -144(%rbp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-112(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	movq	-104(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm0, %ymm1
	movq	-120(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	(%r15,%rax), %xmm1
	vinsertf128	$0x1, 16(%r15,%rax), %ymm1, %ymm1
	movq	-128(%rbp), %rdx
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r14,%rax), %xmm1
	vinsertf128	$0x1, 16(%r14,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	0(%r13,%rax), %xmm1
	vinsertf128	$0x1, 16(%r13,%rax), %ymm1, %ymm1
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
	vaddpd	(%rdx,%rax), %ymm0, %ymm0
	movq	-136(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm0, %ymm1
	vmovupd	(%rsi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	movq	-144(%rbp), %rdx
	addl	$1, -88(%rbp)
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	(%rcx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rax)
	movl	-88(%rbp), %edx
	addq	$32, %rax
	cmpl	%edx, -92(%rbp)
	ja	.L19
	movl	-372(%rbp), %ebx
	movl	-236(%rbp), %edx
	movq	-392(%rbp), %r15
	movl	%ebx, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %ebx
	je	.L23
.L16:
	movq	-208(%rbp), %r14
	movslq	%edx, %rdx
	movq	-168(%rbp), %rbx
	movq	-176(%rbp), %r11
	movq	-184(%rbp), %r10
	movq	-192(%rbp), %r9
	leaq	(%rdx,%r14), %rax
	movq	-216(%rbp), %r8
	leaq	(%r15,%rax,8), %rax
	subq	%r14, %rbx
	movq	-200(%rbp), %rdi
	subq	%r14, %r11
	movq	-224(%rbp), %rsi
	subq	%r14, %r10
	movq	-232(%rbp), %rcx
	subq	%r14, %r9
	movl	-480(%rbp), %r12d
	subq	%r14, %r8
	movq	-360(%rbp), %r13
	subq	%r14, %rdi
	subq	%r14, %rsi
	subq	%r14, %rcx
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rax), %xmm0
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	-24(%rax), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	-32(%rax), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %r12d
	jg	.L21
.L23:
	movq	-424(%rbp), %rbx
	movq	-416(%rbp), %rax
	addq	%rbx, -152(%rbp)
	addq	%rax, -280(%rbp)
	addq	%rax, -360(%rbp)
	addq	%rax, -288(%rbp)
	movq	-408(%rbp), %rax
	addq	%rax, -168(%rbp)
	addq	%rax, -208(%rbp)
	addq	%rax, -176(%rbp)
	addq	%rax, -184(%rbp)
	addq	%rax, -192(%rbp)
	addq	%rax, -216(%rbp)
	addq	%rax, -200(%rbp)
	addq	%rax, -224(%rbp)
	addq	%rax, -232(%rbp)
	movl	-400(%rbp), %eax
	addl	%eax, -96(%rbp)
	addl	%eax, -240(%rbp)
	addq	%rbx, -248(%rbp)
	addq	%rbx, -296(%rbp)
	addq	%rbx, -304(%rbp)
	addq	%rbx, -312(%rbp)
	addq	%rbx, -320(%rbp)
	addq	%rbx, -328(%rbp)
	addl	%eax, -252(%rbp)
	addl	%eax, -256(%rbp)
	addl	%eax, -260(%rbp)
	addl	%eax, -264(%rbp)
	addl	%eax, -268(%rbp)
	addl	%eax, -396(%rbp)
	addl	%eax, -340(%rbp)
	addl	%eax, -364(%rbp)
	addl	%eax, -368(%rbp)
	addq	%rbx, -336(%rbp)
	movl	-272(%rbp), %ebx
	cmpl	%ebx, -376(%rbp)
	jg	.L24
.L73:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L74
	movq	%r15, %rdi
	call	dummy
	movq	-160(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L74:
	addq	$448, %rsp
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
	movq	-208(%rbp), %r14
	movq	-168(%rbp), %rbx
	movq	-176(%rbp), %r11
	movq	-184(%rbp), %r10
	movq	-192(%rbp), %r9
	movq	-216(%rbp), %r8
	subq	%r14, %rbx
	movq	-200(%rbp), %rdi
	subq	%r14, %r11
	movq	-224(%rbp), %rsi
	subq	%r14, %r10
	movq	-232(%rbp), %rcx
	subq	%r14, %r9
	movq	-160(%rbp), %rdx
	subq	%r14, %r8
	movq	-488(%rbp), %r12
	subq	%r14, %rdi
	addq	-152(%rbp), %rdx
	subq	%r14, %rsi
	addq	-248(%rbp), %r12
	subq	%r14, %rcx
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	24(%rax), %xmm0
	addq	$8, %rdx
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	32(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	48(%rax), %xmm0, %xmm0
	vaddsd	32(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	56(%rax), %xmm0, %xmm0
	vaddsd	32(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	32(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	64(%rax), %xmm0, %xmm0
	vaddsd	32(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	32(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, 24(%rdx)
	cmpq	%r12, %rax
	jne	.L22
	jmp	.L23
.L45:
	movl	$4, %edx
	jmp	.L16
.L78:
	movq	-80(%rbp), %rsi
	testl	%r13d, %r13d
	movl	$1, %edi
	cmovg	%r13d, %edi
	movq	%rsi, -160(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
	negq	%rdx
	andl	$3, %edx
	testl	%r13d, %r13d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r14d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r14d
	jb	.L31
	testl	%edx, %edx
	je	.L9
	movq	-160(%rbp), %rax
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
	movq	-160(%rbp), %rcx
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
.L80:
	movq	%r15, %rdi
	vzeroupper
	call	dummy
	movq	-160(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$4, -376(%rbp)
	jg	.L14
	jmp	.L15
.L41:
	movl	$1, %edi
	jmp	.L5
.L79:
	movq	$0, -160(%rbp)
	xorl	%edx, %edx
	jmp	.L9
.L43:
	movl	$1, %eax
	jmp	.L9
.L77:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-80(%rbp), %rdi
	movq	%r8, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -160(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -160(%rbp)
	jmp	.L35
.L44:
	movl	$2, %eax
	jmp	.L9
.L42:
	movl	$2, %edi
	jmp	.L5
.L81:
	vzeroupper
	jmp	.L74
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
