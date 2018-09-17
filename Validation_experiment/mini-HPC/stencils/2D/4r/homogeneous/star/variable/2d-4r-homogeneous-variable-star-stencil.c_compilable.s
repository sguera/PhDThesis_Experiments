	.file	"2d-4r-homogeneous-variable-star-stencil.c_compilable.c"
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
	movq	%rax, %r15
	movq	%rax, -72(%rbp)
	call	strtol
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r15d
	movq	%rax, %rbx
	movslq	%r15d, %r13
	salq	$3, %r13
	movq	%r13, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r12
	testl	%r15d, %r15d
	jle	.L3
	movq	%r12, %rax
	movl	$5, %ecx
	leal	-1(%r15), %r14d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r14d
	jb	.L50
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r12)
	cmpl	$1, %eax
	je	.L52
	vmovsd	%xmm0, 8(%r12)
	cmpl	$3, %eax
	jne	.L53
	vmovsd	%xmm0, 16(%r12)
	movl	$3, %edi
.L5:
	movl	%r15d, %esi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r12,%rax,8), %rdx
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
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r12,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r12,%rax,8)
.L8:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L97
.L41:
	movq	$0, -56(%rbp)
	movq	$0, -168(%rbp)
	testl	%r15d, %r15d
	jle	.L10
	movq	-168(%rbp), %r9
	leal	-1(%r15), %r14d
.L40:
	testl	%r15d, %r15d
	movl	$1, %esi
	movq	%r9, %rax
	movl	$0, %ecx
	cmovg	%r15d, %esi
	shrq	$3, %rax
	movl	$5, %edi
	negq	%rax
	andl	$3, %eax
	testl	%r15d, %r15d
	leal	3(%rax), %edx
	cmovg	%r14d, %ecx
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
	movq	-168(%rbp), %rdx
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
	je	.L98
	vzeroupper
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movq	-168(%rbp), %rsi
	movslq	%ecx, %rax
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
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L99
	movq	-56(%rbp), %rdx
	testl	%r15d, %r15d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r15d, %edi
	movq	%rdx, -344(%rbp)
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r15d, %r15d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r14d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r14d
	jb	.L45
	testl	%edx, %edx
	je	.L18
	vmovsd	.LC4(%rip), %xmm0
	movq	-344(%rbp), %rax
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
	movq	-344(%rbp), %rcx
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
	movq	-344(%rbp), %rsi
	movslq	%eax, %rdx
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
	subl	$4, %eax
	movl	%eax, -428(%rbp)
	testl	%edx, %edx
	jne	.L100
	cmpl	$4, -428(%rbp)
	jle	.L101
.L23:
	leal	-4(%rbx), %eax
	movl	%eax, -148(%rbp)
	cmpl	$4, %eax
	jle	.L92
	movslq	%ebx, %r10
	leal	0(,%rbx,4), %esi
	movq	-168(%rbp), %rdi
	movl	%ebx, -460(%rbp)
	movslq	%esi, %r15
	leal	(%rsi,%rbx), %r9d
	leaq	0(,%r10,8), %rax
	movl	%esi, -152(%rbp)
	movq	%rax, -448(%rbp)
	leaq	32(,%r15,8), %rax
	leaq	(%rdi,%rax), %rdx
	leaq	-32(%rdi,%rax), %rcx
	movq	%r10, -440(%rbp)
	movq	%rdx, -80(%rbp)
	leal	(%rbx,%rbx), %edx
	leaq	32(%rdi,%rax), %rax
	movq	%rcx, -360(%rbp)
	leal	(%rdx,%rbx), %ecx
	movslq	%edx, %r11
	movq	%rax, -352(%rbp)
	movslq	%ecx, %rax
	leal	(%rcx,%rcx), %r8d
	leaq	0(,%r11,8), %rsi
	leaq	(%r12,%rax,8), %rdi
	movq	%rax, -200(%rbp)
	movslq	%r9d, %rax
	movq	%rax, -208(%rbp)
	movq	%r10, %rax
	salq	$4, %rax
	movq	%rdi, -256(%rbp)
	addq	%rdi, %rax
	movq	%rsi, -288(%rbp)
	movq	%rax, %rdi
	movq	%rax, -264(%rbp)
	movq	%r10, %rax
	salq	$5, %rax
	movq	%r11, -216(%rbp)
	subq	%rax, %rdi
	movl	%ecx, -192(%rbp)
	movq	%rdi, -272(%rbp)
	movq	-344(%rbp), %rdi
	movl	%r9d, -316(%rbp)
	leaq	64(%rdi), %rax
	movl	%edx, -320(%rbp)
	movq	%rax, -488(%rbp)
	movq	%rax, -184(%rbp)
	leaq	32(%rdi), %rax
	movq	%rax, -368(%rbp)
	movslq	%r8d, %rax
	movq	%rax, %r13
	movq	%rax, -224(%rbp)
	leal	0(,%rbx,8), %eax
	movl	%eax, %edi
	movl	%eax, -332(%rbp)
	leaq	0(,%r13,8), %rsi
	subl	%ebx, %edi
	movq	%rsi, -296(%rbp)
	leal	-8(%rbx), %esi
	movslq	%edi, %r14
	movl	%edi, -336(%rbp)
	leaq	0(,%r15,8), %rdi
	movq	%r14, -176(%rbp)
	movslq	%eax, %r14
	movq	-176(%rbp), %rax
	movq	%r14, -456(%rbp)
	salq	$3, %rax
	movq	%rdi, -160(%rbp)
	movq	%rax, -304(%rbp)
	leaq	0(,%r14,8), %rax
	movl	%r8d, -324(%rbp)
	movq	%rax, -312(%rbp)
	leal	-9(%rbx), %eax
	movq	-80(%rbp), %r13
	movl	%esi, -380(%rbp)
	leaq	32(%r12), %rsi
	movq	%rsi, -376(%rbp)
	leaq	64(%r12), %rsi
	movl	%eax, -464(%rbp)
	addq	$5, %rax
	movq	%rsi, -472(%rbp)
	leaq	96(%r12), %rsi
	movl	%ebx, -328(%rbp)
	movq	%r10, -232(%rbp)
	movl	$5, -388(%rbp)
	movl	$4, -384(%rbp)
	movl	$6, -432(%rbp)
	movq	$0, -240(%rbp)
	movq	$4, -72(%rbp)
	movq	%rsi, -480(%rbp)
	movq	%rax, -496(%rbp)
	movq	%r14, -248(%rbp)
	movq	%r12, %r14
	movq	%r12, -280(%rbp)
	movq	%r15, %r12
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-264(%rbp), %rbx
	movq	-256(%rbp), %rcx
	movq	-160(%rbp), %rdi
	movq	-288(%rbp), %r8
	leaq	64(%rbx), %rax
	movq	-376(%rbp), %r9
	movq	-296(%rbp), %r10
	cmpq	%rax, %r13
	leaq	32(%rbx), %rax
	leaq	(%r14,%rdi), %rdx
	movq	-352(%rbp), %rbx
	setnb	%sil
	movq	-304(%rbp), %r15
	cmpq	%rax, %rbx
	setbe	%al
	orl	%eax, %esi
	leaq	64(%rcx), %rax
	cmpq	%rax, %r13
	setnb	%al
	addq	$32, %rcx
	cmpq	%rcx, %rbx
	setbe	%cl
	orl	%eax, %ecx
	andl	%esi, %ecx
	cmpl	$4, -380(%rbp)
	movq	-272(%rbp), %rsi
	seta	%al
	andl	%eax, %ecx
	leaq	64(%rsi), %rax
	cmpq	%rax, %r13
	setnb	%al
	addq	$32, %rsi
	cmpq	%rsi, %rbx
	setbe	%sil
	orl	%esi, %eax
	movq	-280(%rbp), %rsi
	andl	%eax, %ecx
	leaq	64(%rsi), %rax
	cmpq	%rax, %r13
	setnb	%al
	addq	$32, %rsi
	cmpq	%rsi, %rbx
	setbe	%sil
	orl	%esi, %eax
	andl	%eax, %ecx
	movq	-480(%rbp), %rax
	addq	%rdi, %rax
	movq	-472(%rbp), %rdi
	cmpq	%rax, %r13
	setnb	%al
	cmpq	%rdx, %rbx
	setbe	%sil
	orl	%esi, %eax
	movq	%r9, %rsi
	andl	%eax, %ecx
	movq	%rdi, %rax
	addq	%r8, %rax
	cmpq	%rax, %r13
	setnb	%al
	addq	%r8, %rsi
	movq	-312(%rbp), %r8
	cmpq	%rsi, %rbx
	setbe	%sil
	orl	%esi, %eax
	movq	%r9, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r10, %rsi
	cmpq	%rsi, %rbx
	setbe	%sil
	orl	%esi, %ecx
	movq	%r9, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r15, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	addq	%r15, %rsi
	cmpq	%rsi, %rbx
	setbe	%sil
	addq	%r8, %rdi
	orl	%esi, %ecx
	movq	%r9, %rsi
	andl	%ecx, %eax
	cmpq	%rdi, %r13
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %rbx
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L37
	movq	-488(%rbp), %rax
	movq	-72(%rbp), %rsi
	leaq	(%rax,%rsi,8), %rax
	cmpq	%rax, %r13
	setnb	%cl
	cmpq	%rbx, -184(%rbp)
	setnb	%al
	orb	%al, %cl
	je	.L37
	movq	-160(%rbp), %rdx
	addq	%r9, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	%eax, -464(%rbp)
	jb	.L60
	movl	$4, -188(%rbp)
	testl	%edx, %edx
	je	.L26
	movl	-152(%rbp), %r11d
	leal	3(%r11), %ecx
	leal	4(%r11), %eax
	movslq	%ecx, %rcx
	cltq
	leaq	(%r14,%rcx,8), %rbx
	leal	5(%r11), %ecx
	movslq	%ecx, %rcx
	leaq	(%r14,%rax,8), %rsi
	movq	%rcx, -80(%rbp)
	leaq	(%r14,%rcx,8), %r9
	leal	2(%r11), %ecx
	vmovsd	(%rsi), %xmm0
	movslq	%ecx, %rcx
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	leaq	(%r14,%rcx,8), %r15
	leal	6(%r11), %ecx
	movslq	%ecx, %r10
	leal	1(%r11), %ecx
	movslq	%ecx, %rcx
	movq	%r10, -88(%rbp)
	leaq	(%r14,%r10,8), %r8
	leaq	(%r14,%rcx,8), %r10
	leal	7(%r11), %ecx
	movslq	%ecx, %rcx
	leaq	(%r14,%rcx,8), %rdi
	leal	8(%r11), %ecx
	movl	-192(%rbp), %r11d
	movslq	%ecx, %rcx
	addl	$4, %r11d
	leaq	(%r14,%rcx,8), %rcx
	movslq	%r11d, %r11
	vaddsd	(%r14,%r11,8), %xmm0, %xmm0
	movl	-316(%rbp), %r11d
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	(%r14,%r11,8), %xmm0, %xmm0
	movl	-320(%rbp), %r11d
	vaddsd	(%r15), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	(%r14,%r11,8), %xmm0, %xmm0
	movl	-324(%rbp), %r11d
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	(%r14,%r11,8), %xmm0, %xmm0
	movl	-328(%rbp), %r11d
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	(%r14,%r11,8), %xmm0, %xmm0
	movl	-336(%rbp), %r11d
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	(%r14,%r11,8), %xmm0, %xmm0
	movq	-160(%rbp), %r11
	vaddsd	(%r14,%r11), %xmm0, %xmm0
	movslq	-384(%rbp), %r11
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%r14,%r11,8), %xmm0, %xmm0
	movl	-332(%rbp), %r11d
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	(%r14,%r11,8), %xmm0, %xmm0
	movq	-184(%rbp), %r11
	vmulsd	(%r11), %xmm0, %xmm0
	movq	-168(%rbp), %r11
	vmovsd	%xmm0, (%r11,%rax,8)
	movl	$5, -188(%rbp)
	cmpl	$1, %edx
	je	.L26
	movl	-152(%rbp), %r11d
	vmovsd	(%r9), %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	leal	9(%r11), %eax
	movl	-192(%rbp), %r11d
	cltq
	addl	$5, %r11d
	leaq	(%r14,%rax,8), %rax
	movslq	%r11d, %r11
	vaddsd	(%r14,%r11,8), %xmm0, %xmm0
	movl	-316(%rbp), %r11d
	addl	$5, %r11d
	movslq	%r11d, %r11
	vaddsd	(%r14,%r11,8), %xmm0, %xmm0
	movl	-320(%rbp), %r11d
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	addl	$5, %r11d
	movslq	%r11d, %r11
	vaddsd	(%r14,%r11,8), %xmm0, %xmm0
	movl	-324(%rbp), %r11d
	addl	$5, %r11d
	movslq	%r11d, %r11
	vaddsd	(%r14,%r11,8), %xmm0, %xmm0
	movl	-328(%rbp), %r11d
	vaddsd	(%r15), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	addl	$5, %r11d
	movslq	%r11d, %r11
	vaddsd	(%r14,%r11,8), %xmm0, %xmm0
	movl	-336(%rbp), %r11d
	addl	$5, %r11d
	movslq	%r11d, %r11
	vaddsd	(%r14,%r11,8), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	movslq	-388(%rbp), %r10
	vaddsd	(%rax), %xmm0, %xmm0
	movq	-344(%rbp), %r11
	vaddsd	(%r14,%r10,8), %xmm0, %xmm0
	movl	-332(%rbp), %r10d
	addl	$5, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r14,%r10,8), %xmm0, %xmm0
	movq	-72(%rbp), %r10
	addl	$5, %r10d
	vmulsd	(%r11,%r10,8), %xmm0, %xmm0
	movq	-168(%rbp), %r10
	movq	-80(%rbp), %r11
	vmovsd	%xmm0, (%r10,%r11,8)
	movl	$6, -188(%rbp)
	cmpl	$3, %edx
	jne	.L26
	vmovsd	(%r9), %xmm0
	movl	-192(%rbp), %r9d
	vaddsd	(%r8), %xmm0, %xmm0
	movl	-316(%rbp), %r10d
	vaddsd	(%rdi), %xmm0, %xmm0
	leal	6(%r9), %edi
	movl	-152(%rbp), %r11d
	movslq	%edi, %rdi
	vaddsd	(%r14,%rdi,8), %xmm0, %xmm0
	leal	6(%r10), %edi
	movl	-332(%rbp), %r10d
	movslq	%edi, %rdi
	vaddsd	(%r14,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	movl	-320(%rbp), %esi
	vaddsd	(%rcx), %xmm0, %xmm0
	movl	-72(%rbp), %edi
	leal	6(%rsi), %ecx
	movl	-324(%rbp), %esi
	movslq	%ecx, %rcx
	vaddsd	(%r14,%rcx,8), %xmm0, %xmm0
	leal	6(%rsi), %ecx
	movq	-344(%rbp), %rsi
	movslq	%ecx, %rcx
	vaddsd	(%r14,%rcx,8), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	movl	-328(%rbp), %eax
	addl	$6, %eax
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movl	-336(%rbp), %eax
	addl	$6, %eax
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	leal	10(%r11), %eax
	cltq
	vaddsd	(%r15), %xmm0, %xmm0
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movslq	-432(%rbp), %rax
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	leal	6(%r10), %eax
	movq	-168(%rbp), %r10
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	leal	6(%rdi), %eax
	cltq
	vmulsd	(%rsi,%rax,8), %xmm0, %xmm0
	movq	-88(%rbp), %rax
	vmovsd	%xmm0, (%r10,%rax,8)
	movl	$7, -188(%rbp)
.L26:
	movq	-72(%rbp), %rsi
	movl	-380(%rbp), %ebx
	movl	%edx, %eax
	movq	%r14, -416(%rbp)
	leaq	4(%rax,%r12), %rcx
	movq	-200(%rbp), %rdi
	movq	-232(%rbp), %r9
	movq	%r13, -424(%rbp)
	subl	%edx, %ebx
	leaq	4(%rax,%rsi), %rdx
	movq	-344(%rbp), %rsi
	salq	$3, %rcx
	movl	%ebx, -392(%rbp)
	shrl	$2, %ebx
	movq	-240(%rbp), %r8
	leaq	(%rsi,%rdx,8), %rsi
	leaq	3(%rax,%r12), %rdx
	movl	%ebx, -80(%rbp)
	leaq	(%r14,%rdx,8), %r15
	movq	%rsi, -88(%rbp)
	leaq	5(%rax,%r12), %rdx
	leaq	(%r14,%rcx), %rsi
	addq	-168(%rbp), %rcx
	movq	%rsi, -96(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	leaq	4(%rax,%rdi), %rdx
	movq	-208(%rbp), %rdi
	movq	%rsi, -104(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	leaq	4(%rax,%rdi), %rdx
	movq	%rsi, -112(%rbp)
	leaq	(%r14,%rdx,8), %rsi
	leaq	2(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdi
	leaq	6(%rax,%r12), %rdx
	movq	%rsi, -120(%rbp)
	movq	%rdi, -128(%rbp)
	movq	-216(%rbp), %rdi
	leaq	(%r14,%rdx,8), %rsi
	movq	%rsi, -136(%rbp)
	leaq	4(%rax,%rdi), %rdx
	movq	-224(%rbp), %rdi
	leaq	(%r14,%rdx,8), %rsi
	leaq	4(%rax,%rdi), %rdx
	movq	%rsi, -400(%rbp)
	leaq	(%r14,%rdx,8), %rdi
	leaq	1(%rax,%r12), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rdi, -408(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdx, -144(%rbp)
	leaq	7(%rax,%r12), %rdx
	movq	-408(%rbp), %r13
	leaq	(%r14,%rdx,8), %rbx
	leaq	4(%rax,%r9), %rdx
	movq	-176(%rbp), %r9
	movq	%r12, -408(%rbp)
	leaq	(%r14,%rdx,8), %r11
	leaq	4(%rax,%r9), %rdx
	movq	-160(%rbp), %r9
	leaq	(%r14,%rdx,8), %r10
	leaq	8(%rax,%r12), %rdx
	movq	-400(%rbp), %r12
	leaq	(%r9,%rax,8), %rsi
	leaq	(%r14,%rdx,8), %r9
	leaq	4(%rax,%r8), %rdx
	leaq	4(%rax,%rdi), %rax
	addq	%r14, %rsi
	leaq	(%r14,%rdx,8), %r8
	leaq	(%r14,%rax,8), %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	-144(%rbp), %r14
	movq	%rcx, -144(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
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
	movq	-88(%rbp), %rcx
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
	vmulpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-144(%rbp), %rcx
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, -80(%rbp)
	ja	.L28
	movl	-392(%rbp), %esi
	movl	-188(%rbp), %edx
	movq	-416(%rbp), %r14
	movq	-424(%rbp), %r13
	movl	%esi, %eax
	movq	-408(%rbp), %r12
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %esi
	je	.L32
.L25:
	movslq	%edx, %rdx
	movq	-200(%rbp), %rbx
	movq	-208(%rbp), %r11
	movq	%r14, -80(%rbp)
	leaq	(%rdx,%r12), %rax
	movq	-216(%rbp), %r10
	movq	-224(%rbp), %r9
	movq	-232(%rbp), %r8
	leaq	(%r14,%rax,8), %rax
	subq	%r12, %rbx
	movq	-176(%rbp), %rdi
	movq	-240(%rbp), %rsi
	subq	%r12, %r11
	subq	%r12, %r10
	subq	%r12, %r9
	movq	-248(%rbp), %rcx
	movq	-360(%rbp), %r14
	subq	%r12, %r8
	subq	%r12, %rdi
	movq	-368(%rbp), %r15
	subq	%r12, %rsi
	subq	%r12, %rcx
	.p2align 4,,10
	.p2align 3
.L30:
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
	vmulsd	(%r15,%rdx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, (%r14,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, -148(%rbp)
	jg	.L30
	movq	-80(%rbp), %r14
.L32:
	movq	-448(%rbp), %rax
	addq	%rax, -360(%rbp)
	addq	%rax, -352(%rbp)
	addq	%rax, -256(%rbp)
	addq	%rax, %r13
	addq	%rax, -264(%rbp)
	addq	%rax, -272(%rbp)
	addq	%rax, -280(%rbp)
	movq	-440(%rbp), %rax
	addq	$1, -72(%rbp)
	movq	-72(%rbp), %rsi
	addq	%rax, -200(%rbp)
	addq	%rax, %r12
	addq	%rax, -208(%rbp)
	addq	%rax, -216(%rbp)
	addq	%rax, -224(%rbp)
	addq	%rax, -232(%rbp)
	addq	$8, -184(%rbp)
	addq	$8, -368(%rbp)
	addq	%rax, -176(%rbp)
	movq	-456(%rbp), %rdi
	addq	%rax, -240(%rbp)
	addq	%rax, -248(%rbp)
	movl	-460(%rbp), %eax
	addq	%rdi, -160(%rbp)
	addl	%eax, -152(%rbp)
	addl	%eax, -192(%rbp)
	addl	%eax, -316(%rbp)
	addl	%eax, -320(%rbp)
	addl	%eax, -324(%rbp)
	addl	%eax, -328(%rbp)
	addl	%eax, -336(%rbp)
	addl	%eax, -432(%rbp)
	addl	%eax, -332(%rbp)
	addl	%eax, -384(%rbp)
	addl	%eax, -388(%rbp)
	addq	%rdi, -288(%rbp)
	addq	%rdi, -296(%rbp)
	addq	%rdi, -304(%rbp)
	addq	%rdi, -312(%rbp)
	cmpl	%esi, -428(%rbp)
	jg	.L33
	movq	%r14, %r12
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L93
	movq	%r12, %rdi
	call	dummy
	movq	-168(%rbp), %rdi
	call	dummy
	movq	-344(%rbp), %rdi
	call	dummy
.L93:
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
.L97:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	%rax, %r9
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L37:
	movq	-288(%rbp), %rsi
	movq	-312(%rbp), %rbx
	movq	%r14, -80(%rbp)
	movl	$4, %eax
	movq	%r12, -88(%rbp)
	movq	-360(%rbp), %r9
	leaq	(%r14,%rsi), %r8
	movq	-296(%rbp), %rsi
	leaq	(%r14,%rbx), %rcx
	movq	-256(%rbp), %r10
	movq	-264(%rbp), %r11
	movq	-272(%rbp), %rbx
	leaq	(%r14,%rsi), %rdi
	movq	-304(%rbp), %rsi
	movq	-368(%rbp), %r15
	movq	-496(%rbp), %r12
	addq	%r14, %rsi
	movq	-280(%rbp), %r14
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	24(%rdx), %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	addq	$8, %rdx
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	vaddsd	(%r11,%rax,8), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vaddsd	(%r8,%rax,8), %xmm0, %xmm0
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	48(%rdx), %xmm0, %xmm0
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	vaddsd	(%rsi,%rax,8), %xmm0, %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	56(%rdx), %xmm0, %xmm0
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	vaddsd	(%rcx,%rax,8), %xmm0, %xmm0
	vmulsd	(%r15,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r9,%rax,8)
	addq	$1, %rax
	cmpq	%r12, %rax
	jne	.L31
	movq	-80(%rbp), %r14
	movq	-88(%rbp), %r12
	jmp	.L32
.L60:
	movl	$4, %edx
	jmp	.L25
.L99:
	testl	%r15d, %r15d
	jle	.L102
	movl	%r15d, %edi
	cmpl	$4, %r14d
	jbe	.L64
	movq	$0, -344(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L100:
	movq	%r12, %rdi
	vzeroupper
	call	dummy
	movq	-168(%rbp), %rdi
	call	dummy
	movq	-344(%rbp), %rdi
	call	dummy
	cmpl	$4, -428(%rbp)
	jg	.L23
	jmp	.L24
.L52:
	movl	$1, %edi
	jmp	.L5
.L64:
	movq	$0, -344(%rbp)
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
	movq	%rax, -168(%rbp)
.L10:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -344(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -344(%rbp)
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
	movq	$0, -344(%rbp)
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
