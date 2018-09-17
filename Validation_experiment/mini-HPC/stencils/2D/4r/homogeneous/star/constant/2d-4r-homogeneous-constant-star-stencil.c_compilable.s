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
	call	strtol
	movl	%r12d, %r13d
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
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
	movq	%r15, %rax
	movl	$5, %ecx
	leal	-1(%r13), %r14d
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
	movl	%r13d, %esi
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
	movq	%r8, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
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
	movq	$0, -168(%rbp)
	xorl	%eax, %eax
.L31:
	vmovsd	.LC2(%rip), %xmm0
	movq	-168(%rbp), %rdi
	movslq	%eax, %rdx
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
	movl	%eax, -368(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$4, -368(%rbp)
	jle	.L81
.L14:
	leal	-4(%rbx), %eax
	movl	%eax, -156(%rbp)
	cmpl	$4, %eax
	jle	.L73
	movslq	%ebx, %rax
	movq	-168(%rbp), %r14
	leal	(%rbx,%rbx), %edx
	movl	%ebx, -408(%rbp)
	leaq	0(,%rax,8), %rsi
	movq	%rax, -416(%rbp)
	leal	(%rdx,%rbx), %ecx
	movslq	%edx, %r11
	movq	%rsi, -424(%rbp)
	leal	0(,%rbx,4), %esi
	movslq	%esi, %r12
	leal	(%rsi,%rbx), %r9d
	movq	%r11, -192(%rbp)
	leaq	32(,%r12,8), %rax
	movslq	%r9d, %r8
	movl	%edx, -256(%rbp)
	leaq	-32(%rax), %r10
	leaq	(%r14,%rax), %r13
	movq	%r8, -184(%rbp)
	leaq	(%r14,%r10), %rdi
	leal	(%rcx,%rcx), %r8d
	movl	%esi, -160(%rbp)
	movq	%rdi, -352(%rbp)
	leaq	32(%r14,%rax), %rdi
	movslq	%r8d, %r11
	leal	0(,%rbx,8), %eax
	movq	%rdi, -280(%rbp)
	movslq	%ecx, %rdi
	movq	%rdi, -176(%rbp)
	movl	%eax, %edi
	subl	%ebx, %edi
	movq	%r11, -200(%rbp)
	movq	-200(%rbp), %rsi
	movslq	%edi, %r11
	movl	%edi, -268(%rbp)
	movq	-176(%rbp), %rdi
	movq	%r11, -208(%rbp)
	movslq	%eax, %r11
	leaq	0(,%rdi,8), %rdx
	movq	-192(%rbp), %rdi
	movl	%r8d, -260(%rbp)
	movl	%eax, -332(%rbp)
	movq	-184(%rbp), %r8
	leal	-8(%rbx), %eax
	salq	$3, %rdi
	movl	%eax, -336(%rbp)
	addq	%r12, %rax
	movq	%rdi, -304(%rbp)
	leaq	0(,%rsi,8), %rdi
	movq	-208(%rbp), %rsi
	leaq	32(%r14,%rax,8), %rax
	movl	%ecx, -240(%rbp)
	leal	-9(%rbx), %ecx
	movq	%r15, %r14
	salq	$3, %rsi
	movq	%rdx, -288(%rbp)
	leaq	0(,%r8,8), %rdx
	movq	%rsi, -320(%rbp)
	leaq	0(,%r11,8), %rsi
	movq	%rdx, -296(%rbp)
	leaq	(%r11,%r15), %rdx
	movq	%r11, -432(%rbp)
	movq	%r10, -152(%rbp)
	movl	%r9d, -252(%rbp)
	movq	%rdi, -312(%rbp)
	movq	%rsi, -328(%rbp)
	movl	%ecx, -484(%rbp)
	addq	%r12, %rcx
	movq	%rax, -464(%rbp)
	leaq	96(%r15), %rax
	movq	%rax, -480(%rbp)
	leaq	64(%rdx), %rax
	movl	%ebx, -264(%rbp)
	movq	-416(%rbp), %rbx
	movq	%rax, -472(%rbp)
	leaq	32(%rdx), %rax
	movq	%rax, -448(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rbx, -216(%rbp)
	leaq	32(%r15), %rbx
	movq	%rbx, -344(%rbp)
	leaq	64(%r15), %rbx
	movq	%rax, -440(%rbp)
	leaq	8(%r15,%rcx,8), %rax
	movq	%r11, -232(%rbp)
	movq	$0, -248(%rbp)
	movl	$5, -360(%rbp)
	movl	$4, -356(%rbp)
	movl	$6, -404(%rbp)
	movq	$0, -224(%rbp)
	movl	$4, -272(%rbp)
	movq	%rbx, -456(%rbp)
	movq	%rax, -496(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-248(%rbp), %r10
	movq	-464(%rbp), %rdx
	leaq	-80(%rbp), %rdi
	addl	$1, -272(%rbp)
	movq	-152(%rbp), %rbx
	addq	%r10, %rdx
	movq	-280(%rbp), %r11
	movq	-288(%rbp), %r8
	cmpq	%rdx, %rdi
	leaq	(%r14,%rbx), %rax
	movq	-344(%rbp), %rdi
	movq	-296(%rbp), %r15
	setnb	%cl
	cmpq	-440(%rbp), %r13
	setnb	%dl
	orl	%ecx, %edx
	cmpl	$4, -336(%rbp)
	seta	%cl
	andl	%ecx, %edx
	movq	-480(%rbp), %rcx
	addq	%rbx, %rcx
	movq	-456(%rbp), %rbx
	cmpq	%rcx, %r13
	setnb	%cl
	cmpq	%rax, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r8, %rsi
	movq	-304(%rbp), %r8
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r15, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r15, %rsi
	movq	-312(%rbp), %r15
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r8, %rsi
	movq	-320(%rbp), %r8
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r15, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r15, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	-448(%rbp), %rsi
	andl	%ecx, %edx
	movq	-472(%rbp), %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r10, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r10, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L28
	movq	-328(%rbp), %rsi
	addq	%rsi, %rbx
	cmpq	%rbx, %r13
	setnb	%cl
	addq	%rsi, %rdi
	cmpq	%rdi, %r11
	setbe	%dl
	orb	%dl, %cl
	je	.L28
	movq	-344(%rbp), %rdx
	addq	-152(%rbp), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-484(%rbp), %eax
	ja	.L45
	movl	$4, -236(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	-160(%rbp), %r9d
	leal	5(%r9), %esi
	leal	4(%r9), %eax
	movslq	%esi, %rdi
	leal	2(%r9), %esi
	leal	3(%r9), %ecx
	cltq
	movslq	%esi, %rsi
	movq	%rdi, -88(%rbp)
	leaq	(%r14,%rdi,8), %r8
	movslq	%ecx, %rcx
	leaq	(%r14,%rsi,8), %r15
	leal	6(%r9), %esi
	movslq	%esi, %rsi
	leaq	(%r14,%rax,8), %rbx
	leaq	(%r14,%rcx,8), %rcx
	movq	%rsi, -96(%rbp)
	leaq	(%r14,%rsi,8), %rdi
	leal	1(%r9), %esi
	vmovsd	(%rcx), %xmm0
	movslq	%esi, %rsi
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	leaq	(%r14,%rsi,8), %r11
	leal	7(%r9), %esi
	addl	$8, %r9d
	movslq	%r9d, %r9
	movslq	%esi, %rsi
	leaq	(%r14,%r9,8), %r10
	movl	-240(%rbp), %r9d
	leaq	(%r14,%rsi,8), %rsi
	addl	$4, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r14,%r9,8), %xmm0, %xmm0
	movl	-252(%rbp), %r9d
	addl	$4, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r14,%r9,8), %xmm0, %xmm0
	movl	-256(%rbp), %r9d
	vaddsd	(%r15), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	addl	$4, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r14,%r9,8), %xmm0, %xmm0
	movl	-260(%rbp), %r9d
	addl	$4, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r14,%r9,8), %xmm0, %xmm0
	movl	-264(%rbp), %r9d
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	addl	$4, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r14,%r9,8), %xmm0, %xmm0
	movl	-268(%rbp), %r9d
	addl	$4, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r14,%r9,8), %xmm0, %xmm0
	movq	-152(%rbp), %r9
	vaddsd	(%r14,%r9), %xmm0, %xmm0
	movslq	-356(%rbp), %r9
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r14,%r9,8), %xmm0, %xmm0
	movl	-332(%rbp), %r9d
	addl	$4, %r9d
	movslq	%r9d, %r9
	vaddsd	(%r14,%r9,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-168(%rbp), %r9
	vmovsd	%xmm0, (%r9,%rax,8)
	movl	$5, -236(%rbp)
	cmpl	$1, %edx
	je	.L17
	movl	-160(%rbp), %r9d
	vmovsd	(%r8), %xmm0
	movq	%rcx, -104(%rbp)
	movl	$6, -236(%rbp)
	vaddsd	(%rbx), %xmm0, %xmm0
	leal	9(%r9), %eax
	vaddsd	(%rdi), %xmm0, %xmm0
	cltq
	leaq	(%r14,%rax,8), %r9
	movl	-240(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movl	-252(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movl	-256(%rbp), %eax
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	addl	$5, %eax
	movq	-88(%rbp), %rcx
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movl	-260(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movl	-264(%rbp), %eax
	vaddsd	(%r15), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	addl	$5, %eax
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movl	-268(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movslq	-360(%rbp), %rax
	vaddsd	(%r11), %xmm0, %xmm0
	movl	-332(%rbp), %r11d
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	leal	5(%r11), %eax
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-168(%rbp), %rax
	vmovsd	%xmm0, (%rax,%rcx,8)
	cmpl	$3, %edx
	jne	.L17
	movl	-240(%rbp), %eax
	vmovsd	(%r8), %xmm0
	movl	$7, -236(%rbp)
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	addl	$6, %eax
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rsi
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movl	-252(%rbp), %eax
	addl	$6, %eax
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movl	-256(%rbp), %eax
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	addl	$6, %eax
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movl	-260(%rbp), %eax
	addl	$6, %eax
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movl	-264(%rbp), %eax
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	addl	$6, %eax
	movl	-160(%rbp), %r9d
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movl	-268(%rbp), %eax
	addl	$6, %eax
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	leal	10(%r9), %eax
	cltq
	vaddsd	(%r15), %xmm0, %xmm0
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movslq	-404(%rbp), %rax
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	leal	6(%r11), %eax
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-168(%rbp), %rax
	vmovsd	%xmm0, (%rax,%rsi,8)
.L17:
	movl	%edx, %eax
	movl	-336(%rbp), %edi
	movq	%r14, -392(%rbp)
	leaq	4(%rax,%r12), %rcx
	movq	%r13, -400(%rbp)
	vbroadcastsd	-80(%rbp), %ymm1
	subl	%edx, %edi
	salq	$3, %rcx
	leaq	3(%rax,%r12), %rdx
	leaq	(%r14,%rcx), %rbx
	leaq	(%r14,%rdx,8), %r15
	movl	%edi, -364(%rbp)
	shrl	$2, %edi
	leaq	5(%rax,%r12), %rdx
	movq	%rbx, -96(%rbp)
	addq	-168(%rbp), %rcx
	leaq	(%r14,%rdx,8), %rbx
	movl	%edi, -88(%rbp)
	movq	%rbx, -104(%rbp)
	movq	-176(%rbp), %rbx
	leaq	4(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rbx
	movq	%rbx, -112(%rbp)
	movq	-184(%rbp), %rbx
	leaq	4(%rax,%rbx), %rdx
	leaq	(%r14,%rdx,8), %rbx
	leaq	2(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdi
	leaq	6(%rax,%r12), %rdx
	movq	%rbx, -120(%rbp)
	movq	%rdi, -128(%rbp)
	movq	-192(%rbp), %rdi
	leaq	(%r14,%rdx,8), %rbx
	movq	%rbx, -136(%rbp)
	leaq	4(%rax,%rdi), %rdx
	movq	-200(%rbp), %rdi
	leaq	(%r14,%rdx,8), %rbx
	leaq	4(%rax,%rdi), %rdx
	movq	%rbx, -376(%rbp)
	leaq	(%r14,%rdx,8), %rdi
	leaq	1(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rsi
	leaq	7(%rax,%r12), %rdx
	movq	%rdi, -384(%rbp)
	movq	-384(%rbp), %r13
	leaq	(%r14,%rdx,8), %rbx
	movq	-216(%rbp), %rdx
	movq	%rsi, -144(%rbp)
	movq	%r12, -384(%rbp)
	leaq	4(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %r11
	movq	-208(%rbp), %rdx
	leaq	4(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %r10
	movq	-152(%rbp), %rdx
	leaq	(%rdx,%rax,8), %rsi
	leaq	8(%rax,%r12), %rdx
	movq	-376(%rbp), %r12
	leaq	(%r14,%rdx,8), %r9
	movq	-224(%rbp), %rdx
	addq	%r14, %rsi
	leaq	4(%rax,%rdx), %rdx
	leaq	(%r14,%rdx,8), %r8
	movq	-232(%rbp), %rdx
	leaq	4(%rax,%rdx), %rax
	xorl	%edx, %edx
	leaq	(%r14,%rax,8), %rdi
	movq	-144(%rbp), %r14
	xorl	%eax, %eax
	movq	%rcx, -144(%rbp)
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-96(%rbp), %rcx
	vmovupd	(%r15,%rax), %ymm0
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
	vaddpd	(%r12,%rax), %ymm0, %ymm0
	vaddpd	0(%r13,%rax), %ymm0, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%rsi,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	movq	-144(%rbp), %rcx
	vmulpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, -88(%rbp)
	ja	.L19
	movl	-364(%rbp), %ebx
	movl	-236(%rbp), %edx
	movq	-392(%rbp), %r14
	movq	-400(%rbp), %r13
	movl	%ebx, %eax
	movq	-384(%rbp), %r12
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %ebx
	je	.L23
.L16:
	movslq	%edx, %rdx
	movq	-176(%rbp), %rbx
	movq	-184(%rbp), %r11
	movq	-192(%rbp), %r10
	movq	-200(%rbp), %r9
	leaq	(%rdx,%r12), %rax
	movq	-216(%rbp), %r8
	movq	-208(%rbp), %rdi
	leaq	(%r14,%rax,8), %rax
	subq	%r12, %rbx
	movq	-224(%rbp), %rsi
	subq	%r12, %r11
	subq	%r12, %r10
	subq	%r12, %r9
	movq	-232(%rbp), %rcx
	movq	-352(%rbp), %r15
	subq	%r12, %r8
	subq	%r12, %rdi
	subq	%r12, %rsi
	subq	%r12, %rcx
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
	vmulsd	-80(%rbp), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, (%r15,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, -156(%rbp)
	jg	.L21
.L23:
	movq	-424(%rbp), %rax
	addq	%rax, -352(%rbp)
	addq	%rax, -280(%rbp)
	movq	-432(%rbp), %rbx
	addq	%rax, %r13
	movq	-416(%rbp), %rax
	addq	%rbx, -152(%rbp)
	addq	%rax, -176(%rbp)
	addq	%rax, -184(%rbp)
	addq	%rax, %r12
	addq	%rax, -192(%rbp)
	addq	%rax, -200(%rbp)
	addq	%rax, -216(%rbp)
	addq	%rax, -208(%rbp)
	addq	%rax, -224(%rbp)
	addq	%rax, -232(%rbp)
	movl	-408(%rbp), %eax
	addl	%eax, -160(%rbp)
	addl	%eax, -240(%rbp)
	addl	%eax, -252(%rbp)
	addl	%eax, -256(%rbp)
	addq	%rbx, -248(%rbp)
	addq	%rbx, -288(%rbp)
	addq	%rbx, -296(%rbp)
	addq	%rbx, -304(%rbp)
	addq	%rbx, -312(%rbp)
	addq	%rbx, -320(%rbp)
	addq	%rbx, -328(%rbp)
	movl	-272(%rbp), %ebx
	addl	%eax, -260(%rbp)
	addl	%eax, -264(%rbp)
	addl	%eax, -268(%rbp)
	addl	%eax, -404(%rbp)
	addl	%eax, -332(%rbp)
	addl	%eax, -356(%rbp)
	addl	%eax, -360(%rbp)
	cmpl	%ebx, -368(%rbp)
	jg	.L24
	movq	%r14, %r15
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L74
	movq	%r15, %rdi
	call	dummy
	movq	-168(%rbp), %rdi
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
	movq	-176(%rbp), %rbx
	movq	-184(%rbp), %r11
	movq	-192(%rbp), %r10
	movq	-200(%rbp), %r9
	movq	-216(%rbp), %r8
	movq	-208(%rbp), %rdi
	subq	%r12, %rbx
	subq	%r12, %r11
	movq	-224(%rbp), %rsi
	subq	%r12, %r10
	subq	%r12, %r9
	movq	-232(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-496(%rbp), %r15
	subq	%r12, %r8
	subq	%r12, %rdi
	addq	-152(%rbp), %rdx
	addq	-248(%rbp), %r15
	subq	%r12, %rsi
	subq	%r12, %rcx
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	24(%rax), %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	addq	$8, %rdx
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
	vmulsd	-80(%rbp), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, 24(%rdx)
	cmpq	%r15, %rax
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
	movq	%rsi, -168(%rbp)
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
	vmovsd	.LC2(%rip), %xmm0
	movq	-168(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L43
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L44
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	movq	-168(%rbp), %rcx
	vmovapd	.LC3(%rip), %ymm0
	movl	%edi, %esi
	leaq	(%rcx,%rdx,8), %rcx
	shrl	$2, %esi
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
	movq	-168(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$4, -368(%rbp)
	jg	.L14
	jmp	.L15
.L41:
	movl	$1, %edi
	jmp	.L5
.L79:
	movq	$0, -168(%rbp)
	xorl	%edx, %edx
	jmp	.L9
.L43:
	movl	$1, %eax
	jmp	.L9
.L77:
	vzeroupper
	jmp	.L8
.L3:
	movq	%r8, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	call	posix_memalign
	movq	$0, -168(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -168(%rbp)
	jmp	.L35
.L73:
	vzeroupper
	jmp	.L15
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
