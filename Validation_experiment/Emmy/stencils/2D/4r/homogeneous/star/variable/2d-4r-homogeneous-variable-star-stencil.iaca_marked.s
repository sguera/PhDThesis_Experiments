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
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rsi, %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	subq	$448, %rsp
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
	movslq	%r15d, %r14
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r12
	testl	%r15d, %r15d
	jle	.L3
	leal	-1(%r15), %r13d
	movq	%r12, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r13d
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
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r12,%rax,8), %rdx
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
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L97
.L41:
	movq	$0, -56(%rbp)
	movq	$0, -152(%rbp)
	testl	%r15d, %r15d
	jle	.L10
	movq	-152(%rbp), %r9
	leal	-1(%r15), %r13d
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
	cmovg	%r13d, %ecx
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
	movq	-152(%rbp), %rdx
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
	movq	-152(%rbp), %rdi
	movslq	%ecx, %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	1(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	2(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	3(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	4(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	5(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L15:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L99
	movq	-56(%rbp), %rcx
	testl	%r15d, %r15d
	movl	$1, %edi
	movl	%r13d, %r8d
	cmovg	%r15d, %edi
	movl	$5, %esi
	movq	%rcx, -160(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r15d, %r15d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r8d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r8d
	jb	.L45
	testl	%edx, %edx
	je	.L18
	movq	-160(%rbp), %rax
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
	movq	-160(%rbp), %rcx
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
	movq	-160(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L17:
	movl	-72(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$4, %eax
	movl	%eax, -392(%rbp)
	testl	%edx, %edx
	jne	.L100
	cmpl	$4, -392(%rbp)
	jle	.L101
.L23:
	leal	-4(%rbx), %eax
	movl	%eax, -480(%rbp)
	cmpl	$4, %eax
	jle	.L92
	movq	-152(%rbp), %rdi
	movslq	%ebx, %r15
	movl	%ebx, -416(%rbp)
	leal	0(,%rbx,4), %esi
	movq	-160(%rbp), %r10
	movq	%r15, -424(%rbp)
	leaq	0(,%r15,8), %rax
	movslq	%esi, %r11
	movl	%esi, -80(%rbp)
	leaq	32(,%r11,8), %rdx
	movq	%rax, -432(%rbp)
	leaq	(%rdi,%rdx), %rax
	movq	%r11, -192(%rbp)
	salq	$3, %r11
	movq	%rax, -344(%rbp)
	leaq	-32(%rdx), %rax
	leaq	(%rdi,%rax), %rcx
	addq	%r10, %rax
	movq	%r11, -144(%rbp)
	leaq	32(%rdi,%rdx), %rdi
	movq	%rcx, -360(%rbp)
	leal	(%rbx,%rbx), %edx
	movq	%rax, -368(%rbp)
	leal	(%rdx,%rbx), %ecx
	movq	%rdi, -352(%rbp)
	leal	(%rsi,%rbx), %r9d
	movslq	%ecx, %rax
	movl	%ecx, -176(%rbp)
	leaq	(%r12,%rax,8), %rdi
	movq	%rax, -184(%rbp)
	movslq	%r9d, %rax
	movq	%rax, -200(%rbp)
	movq	%r15, %rax
	salq	$4, %rax
	movq	%rdi, -248(%rbp)
	addq	%rdi, %rax
	movq	%r15, %rdi
	movl	%r9d, -300(%rbp)
	movq	%rax, %r8
	movq	%rax, -256(%rbp)
	movslq	%edx, %rax
	movq	%rax, -208(%rbp)
	leaq	0(,%r15,4), %rax
	subq	%rax, %rdi
	movl	%edx, -304(%rbp)
	leaq	(%r8,%rdi,8), %rax
	movq	%rax, -264(%rbp)
	leal	0(,%rbx,8), %eax
	movl	%eax, -320(%rbp)
	leal	(%rcx,%rcx), %r8d
	movl	%eax, %edi
	subl	%ebx, %edi
	movslq	%r8d, %r13
	movl	%r8d, -308(%rbp)
	movslq	%edi, %r14
	movl	%edi, -316(%rbp)
	movq	%r14, -168(%rbp)
	movslq	%eax, %r14
	movq	-168(%rbp), %rax
	leaq	0(,%r13,8), %rdi
	movq	%r13, -216(%rbp)
	movq	%r14, -440(%rbp)
	movq	%rdi, -280(%rbp)
	salq	$3, %rax
	movq	%r14, -288(%rbp)
	movq	%rax, -296(%rbp)
	leaq	0(,%r14,8), %rax
	movq	%rax, -328(%rbp)
	leal	-9(%rbx), %eax
	movl	%ebx, -312(%rbp)
	subl	$8, %ebx
	movl	%ebx, -336(%rbp)
	leaq	32(%r12), %rbx
	movq	%rbx, -376(%rbp)
	leaq	64(%r12), %rbx
	movq	%rbx, -456(%rbp)
	leaq	96(%r12), %rbx
	movq	%rbx, -472(%rbp)
	leaq	64(%r10), %rbx
	movl	%eax, -476(%rbp)
	addq	$5, %rax
	movq	%rbx, -464(%rbp)
	leaq	32(%r10), %rbx
	movq	%r15, -224(%rbp)
	movq	%r12, %r15
	movq	%r14, -240(%rbp)
	movq	%r12, -272(%rbp)
	movl	$5, -384(%rbp)
	movl	$4, -380(%rbp)
	movl	$6, -412(%rbp)
	movq	$0, -232(%rbp)
	movl	$4, -332(%rbp)
	movq	%rbx, -448(%rbp)
	movq	%rax, -488(%rbp)
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-256(%rbp), %rcx
	movq	-344(%rbp), %rbx
	movq	-352(%rbp), %rdi
	addl	$1, -332(%rbp)
	movq	-144(%rbp), %r8
	leaq	64(%rcx), %rax
	movq	-456(%rbp), %r11
	cmpq	%rax, %rbx
	movq	-280(%rbp), %r10
	leaq	32(%rcx), %rax
	movq	-248(%rbp), %rcx
	setnb	%sil
	leaq	(%r15,%r8), %rdx
	cmpq	%rax, %rdi
	movq	-376(%rbp), %r9
	setbe	%al
	movq	-296(%rbp), %r14
	orl	%eax, %esi
	leaq	64(%rcx), %rax
	cmpq	%rax, %rbx
	setnb	%al
	addq	$32, %rcx
	cmpq	%rcx, %rdi
	setbe	%cl
	orl	%eax, %ecx
	andl	%esi, %ecx
	cmpl	$4, -336(%rbp)
	movq	-264(%rbp), %rsi
	seta	%al
	andl	%eax, %ecx
	leaq	64(%rsi), %rax
	cmpq	%rax, %rbx
	setnb	%al
	addq	$32, %rsi
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %eax
	movq	-272(%rbp), %rsi
	andl	%eax, %ecx
	leaq	64(%rsi), %rax
	cmpq	%rax, %rbx
	setnb	%al
	addq	$32, %rsi
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %eax
	andl	%eax, %ecx
	movq	-472(%rbp), %rax
	addq	%r8, %rax
	cmpq	%rax, %rbx
	setnb	%al
	cmpq	%rdx, %rdi
	setbe	%sil
	orl	%esi, %eax
	movq	-448(%rbp), %rsi
	andl	%eax, %ecx
	movq	-464(%rbp), %rax
	addq	%r8, %rax
	cmpq	%rax, %rbx
	setnb	%al
	addq	%r8, %rsi
	movq	-288(%rbp), %r8
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %eax
	movq	%r9, %rsi
	andl	%ecx, %eax
	movq	%r11, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	addq	%r10, %rsi
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %ecx
	movq	%r9, %rsi
	andl	%ecx, %eax
	movq	%r11, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %ecx
	movq	%r9, %rsi
	andl	%ecx, %eax
	movq	%r11, %rcx
	addq	%r14, %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	addq	%r14, %rsi
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L37
	movq	-328(%rbp), %rsi
	addq	%rsi, %r11
	cmpq	%r11, %rbx
	setnb	%cl
	addq	%rsi, %r9
	cmpq	%r9, %rdi
	setbe	%al
	orb	%al, %cl
	je	.L37
	movq	-376(%rbp), %rdx
	addq	-144(%rbp), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	%eax, -476(%rbp)
	jb	.L60
	movl	$4, -172(%rbp)
	testl	%edx, %edx
	je	.L26
	movl	$5, -172(%rbp)
	movl	-80(%rbp), %r11d
	leal	2(%r11), %edi
	leal	3(%r11), %ecx
	movslq	%edi, %rdi
	leaq	(%r15,%rdi,8), %r13
	movslq	%ecx, %rcx
	leal	6(%r11), %edi
	leal	8(%r11), %r10d
	movslq	%edi, %r14
	leal	1(%r11), %edi
	movslq	%r10d, %r10
	leal	4(%r11), %eax
	movslq	%edi, %rdi
	leaq	(%r15,%rcx,8), %rsi
	cltq
	leal	5(%r11), %ecx
	vmovsd	(%rsi), %xmm0
	leaq	(%r15,%rdi,8), %rbx
	movslq	%ecx, %rcx
	leal	7(%r11), %edi
	leaq	(%r15,%r10,8), %r11
	movl	-176(%rbp), %r10d
	movslq	%edi, %rdi
	leaq	(%r15,%rax,8), %r12
	leaq	(%r15,%rcx,8), %r9
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	leaq	(%r15,%r14,8), %r8
	leaq	(%r15,%rdi,8), %rdi
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-300(%rbp), %r10d
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-304(%rbp), %r10d
	vaddsd	0(%r13), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-308(%rbp), %r10d
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-312(%rbp), %r10d
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-316(%rbp), %r10d
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movq	-144(%rbp), %r10
	vaddsd	(%r15,%r10), %xmm0, %xmm0
	movslq	-380(%rbp), %r10
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-320(%rbp), %r10d
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movq	-160(%rbp), %r10
	vmulsd	(%r10,%rax,8), %xmm0, %xmm0
	movq	-152(%rbp), %r10
	vmovsd	%xmm0, (%r10,%rax,8)
	cmpl	$1, %edx
	je	.L26
	movl	$6, -172(%rbp)
	movl	-80(%rbp), %eax
	vmovsd	(%r9), %xmm0
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	addl	$9, %eax
	cltq
	leaq	(%r15,%rax,8), %r10
	movl	-176(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-300(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-304(%rbp), %eax
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	addl	$5, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-308(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-312(%rbp), %eax
	vaddsd	0(%r13), %xmm0, %xmm0
	vaddsd	(%r11), %xmm0, %xmm0
	addl	$5, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-316(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movslq	-384(%rbp), %rax
	vaddsd	(%rbx), %xmm0, %xmm0
	movl	-320(%rbp), %ebx
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	5(%rbx), %eax
	movq	-160(%rbp), %rbx
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	(%rbx,%rcx,8), %xmm0, %xmm0
	movq	-152(%rbp), %rbx
	vmovsd	%xmm0, (%rbx,%rcx,8)
	cmpl	$3, %edx
	jne	.L26
	movl	$7, -172(%rbp)
	movl	-176(%rbp), %ebx
	vmovsd	(%r9), %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	leal	6(%rbx), %eax
	movl	-300(%rbp), %ebx
	cltq
	movl	-308(%rbp), %edi
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	6(%rbx), %eax
	movl	-304(%rbp), %ebx
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vaddsd	(%r12), %xmm0, %xmm0
	leal	6(%rbx), %eax
	vaddsd	(%r11), %xmm0, %xmm0
	cltq
	movl	-320(%rbp), %ebx
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	6(%rdi), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	movl	-312(%rbp), %r10d
	leal	6(%r10), %eax
	movl	-316(%rbp), %r10d
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	6(%r10), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-80(%rbp), %eax
	vaddsd	0(%r13), %xmm0, %xmm0
	addl	$10, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movslq	-412(%rbp), %rax
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	6(%rbx), %eax
	movq	-160(%rbp), %rbx
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	(%rbx,%r14,8), %xmm0, %xmm0
	movq	-152(%rbp), %rbx
	vmovsd	%xmm0, (%rbx,%r14,8)
.L26:
	movl	-336(%rbp), %ecx
	movl	%edx, %eax
	movq	%r15, -408(%rbp)
	movq	-192(%rbp), %rsi
	movq	-160(%rbp), %rbx
	movq	-200(%rbp), %r9
	subl	%edx, %ecx
	movq	-224(%rbp), %r8
	leaq	4(%rax,%rsi), %rdx
	movl	%ecx, -388(%rbp)
	shrl	$2, %ecx
	leaq	0(,%rdx,8), %rdi
	movl	%ecx, -76(%rbp)
	movq	-184(%rbp), %rcx
	leaq	3(%rax,%rsi), %rdx
	addq	%rdi, %rbx
	movq	%rdi, -72(%rbp)
	movq	%rbx, -88(%rbp)
	leaq	(%r15,%rdi), %rbx
	movq	%rbx, -96(%rbp)
	leaq	(%r15,%rdx,8), %rbx
	leaq	5(%rax,%rsi), %rdx
	movq	%rbx, -104(%rbp)
	leaq	(%r15,%rdx,8), %rbx
	leaq	4(%rax,%rcx), %rdx
	movq	%rbx, -112(%rbp)
	leaq	(%r15,%rdx,8), %rcx
	leaq	4(%rax,%r9), %rdx
	movq	-208(%rbp), %r9
	movq	%rcx, -400(%rbp)
	leaq	(%r15,%rdx,8), %r14
	movq	-168(%rbp), %rcx
	leaq	2(%rax,%rsi), %rdx
	leaq	(%r15,%rdx,8), %r13
	leaq	6(%rax,%rsi), %rdx
	leaq	(%r15,%rdx,8), %r12
	leaq	4(%rax,%r9), %rdx
	movq	-216(%rbp), %r9
	leaq	(%r15,%rdx,8), %rbx
	leaq	4(%rax,%r9), %rdx
	leaq	(%r15,%rdx,8), %r11
	leaq	1(%rax,%rsi), %rdx
	leaq	(%r15,%rdx,8), %r10
	leaq	7(%rax,%rsi), %rdx
	leaq	(%r15,%rdx,8), %r9
	leaq	4(%rax,%r8), %rdx
	leaq	(%r15,%rdx,8), %r8
	leaq	4(%rax,%rcx), %rdx
	movq	-144(%rbp), %rcx
	leaq	(%r15,%rdx,8), %rdi
	leaq	(%rcx,%rax,8), %rdx
	leaq	(%r15,%rdx), %rcx
	leaq	8(%rax,%rsi), %rdx
	movq	%rcx, -120(%rbp)
	movq	-240(%rbp), %rcx
	leaq	(%r15,%rdx,8), %rsi
	movq	%rsi, -128(%rbp)
	movq	-232(%rbp), %rsi
	leaq	4(%rax,%rsi), %rdx
	leaq	4(%rax,%rcx), %rax
	leaq	(%r15,%rax,8), %rcx
	movq	-72(%rbp), %rax
	addq	-152(%rbp), %rax
	leaq	(%r15,%rdx,8), %rsi
	xorl	%edx, %edx
	movq	-400(%rbp), %r15
	movl	%edx, -72(%rbp)
	movq	%rax, -136(%rbp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L28:
	movq	-104(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	movq	-96(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-112(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r15,%rax), %xmm0
	vinsertf128	$0x1, 16(%r15,%rax), %ymm0, %ymm0
	movq	-120(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r14,%rax), %xmm0
	vinsertf128	$0x1, 16(%r14,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	0(%r13,%rax), %xmm0
	vinsertf128	$0x1, 16(%r13,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r12,%rax), %xmm0
	vinsertf128	$0x1, 16(%r12,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rbx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r11,%rax), %xmm0
	vinsertf128	$0x1, 16(%r11,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r10,%rax), %xmm0
	vinsertf128	$0x1, 16(%r10,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r9,%rax), %xmm0
	vinsertf128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r8,%rax), %xmm0
	vinsertf128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rdi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-128(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	vmovupd	(%rsi,%rax), %xmm2
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm2, %ymm0
	movq	-88(%rbp), %rdx
	addl	$1, -72(%rbp)
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%rcx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	movq	-136(%rbp), %rdx
	vmulpd	%ymm0, %ymm1, %ymm0
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
	movl	-388(%rbp), %ebx
	movl	-172(%rbp), %edx
	movq	-408(%rbp), %r15
	movl	%ebx, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %ebx
	je	.L32
.L25:
	movq	-192(%rbp), %r14
	movslq	%edx, %rdx
	movq	-184(%rbp), %rbx
	movq	-200(%rbp), %r11
	movq	-208(%rbp), %r10
	movq	-216(%rbp), %r9
	leaq	(%rdx,%r14), %rax
	movq	-224(%rbp), %r8
	leaq	(%r15,%rax,8), %rax
	subq	%r14, %rbx
	movq	-168(%rbp), %rdi
	subq	%r14, %r11
	movq	-232(%rbp), %rsi
	subq	%r14, %r10
	movq	-240(%rbp), %rcx
	subq	%r14, %r9
	subq	%r14, %r8
	movl	-480(%rbp), %r12d
	subq	%r14, %rdi
	movq	-360(%rbp), %r13
	subq	%r14, %rsi
	subq	%r14, %rcx
	movq	-368(%rbp), %r14
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
	addq	$8, %rax
	vmulsd	(%r14,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %r12d
	jg	.L30
.L32:
	movq	-432(%rbp), %rax
	addq	%rax, -344(%rbp)
	addq	%rax, -360(%rbp)
	addq	%rax, -352(%rbp)
	addq	%rax, -368(%rbp)
	addq	%rax, -248(%rbp)
	addq	%rax, -256(%rbp)
	addq	%rax, -264(%rbp)
	addq	%rax, -272(%rbp)
	movq	-424(%rbp), %rax
	addq	%rax, -184(%rbp)
	addq	%rax, -192(%rbp)
	addq	%rax, -200(%rbp)
	addq	%rax, -208(%rbp)
	addq	%rax, -216(%rbp)
	addq	%rax, -224(%rbp)
	addq	%rax, -168(%rbp)
	addq	%rax, -232(%rbp)
	movq	-440(%rbp), %rbx
	addq	%rax, -240(%rbp)
	addq	%rbx, -144(%rbp)
	movl	-416(%rbp), %eax
	addq	%rbx, -280(%rbp)
	addl	%eax, -80(%rbp)
	addl	%eax, -176(%rbp)
	addl	%eax, -300(%rbp)
	addl	%eax, -304(%rbp)
	addl	%eax, -308(%rbp)
	addl	%eax, -312(%rbp)
	addl	%eax, -316(%rbp)
	addl	%eax, -412(%rbp)
	addl	%eax, -320(%rbp)
	addl	%eax, -380(%rbp)
	addl	%eax, -384(%rbp)
	addq	%rbx, -288(%rbp)
	addq	%rbx, -296(%rbp)
	addq	%rbx, -328(%rbp)
	movl	-332(%rbp), %ebx
	cmpl	%ebx, -392(%rbp)
	jg	.L33
	movq	%r15, %r12
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L93
	movq	%r12, %rdi
	call	dummy
	movq	-152(%rbp), %rdi
	call	dummy
	movq	-160(%rbp), %rdi
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
	movq	%rax, -152(%rbp)
	movq	%rax, %r9
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L37:
	movq	-280(%rbp), %rbx
	movl	$4, %eax
	movq	-360(%rbp), %r9
	movq	-368(%rbp), %r10
	movq	-248(%rbp), %r11
	leaq	(%r15,%rbx), %r8
	movq	-288(%rbp), %rbx
	movq	-264(%rbp), %r12
	movq	-272(%rbp), %r13
	movq	-488(%rbp), %r14
	leaq	(%r15,%rbx), %rdi
	movq	-296(%rbp), %rbx
	leaq	(%r15,%rbx), %rsi
	movq	-328(%rbp), %rbx
	leaq	(%r15,%rbx), %rcx
	movq	-256(%rbp), %rbx
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	24(%rdx), %xmm0
	addq	$8, %rdx
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	(%r11,%rax,8), %xmm0, %xmm0
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	vaddsd	(%r8,%rax,8), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	48(%rdx), %xmm0, %xmm0
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	vaddsd	(%rsi,%rax,8), %xmm0, %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	56(%rdx), %xmm0, %xmm0
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vaddsd	(%rcx,%rax,8), %xmm0, %xmm0
	vmulsd	(%r10,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r9,%rax,8)
	addq	$1, %rax
	cmpq	%r14, %rax
	jne	.L31
	jmp	.L32
.L60:
	movl	$4, %edx
	jmp	.L25
.L99:
	testl	%r15d, %r15d
	jle	.L102
	movl	%r15d, %edi
	cmpl	$4, %r13d
	jbe	.L64
	movq	$0, -160(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L100:
	movq	%r12, %rdi
	vzeroupper
	call	dummy
	movq	-152(%rbp), %rdi
	call	dummy
	movq	-160(%rbp), %rdi
	call	dummy
	cmpl	$4, -392(%rbp)
	jg	.L23
	jmp	.L24
.L52:
	movl	$1, %edi
	jmp	.L5
.L64:
	movq	$0, -160(%rbp)
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
	movq	%rax, -152(%rbp)
.L10:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -160(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)
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
	movq	$0, -160(%rbp)
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
