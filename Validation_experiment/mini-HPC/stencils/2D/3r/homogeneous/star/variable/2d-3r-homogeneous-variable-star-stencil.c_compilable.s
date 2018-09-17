	.file	"2d-3r-homogeneous-variable-star-stencil.c_compilable.c"
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
	subq	$384, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r14
	movq	%rax, -72(%rbp)
	call	strtol
	movl	%r14d, %r15d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r15d
	movq	%rax, %rbx
	movslq	%r15d, %r13
	leaq	0(,%r13,8), %r12
	movq	%r12, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r13
	testl	%r15d, %r15d
	jle	.L3
	movq	%r13, %rax
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
	vmovsd	%xmm0, 0(%r13)
	cmpl	$1, %eax
	je	.L52
	vmovsd	%xmm0, 8(%r13)
	cmpl	$3, %eax
	jne	.L53
	vmovsd	%xmm0, 16(%r13)
	movl	$3, %edi
.L5:
	movl	%r15d, %esi
	vmovapd	.LC1(%rip), %ymm0
	leaq	0(%r13,%rax,8), %rdx
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
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L8
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
.L8:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L97
.L41:
	movq	$0, -56(%rbp)
	movq	$0, -136(%rbp)
	testl	%r15d, %r15d
	jle	.L10
	movq	-136(%rbp), %r9
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
	movl	%esi, %edi
	movq	-136(%rbp), %rdx
	vmovapd	.LC3(%rip), %ymm0
	subl	%eax, %edi
	movl	%edi, %esi
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
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
	je	.L98
	vzeroupper
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movq	-136(%rbp), %rsi
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
	movq	%r12, %rdx
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
	movq	%rdx, -272(%rbp)
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
	movq	-272(%rbp), %rax
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
	movq	-272(%rbp), %rcx
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
	movq	-272(%rbp), %rsi
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
	subl	$3, %eax
	movl	%eax, -356(%rbp)
	testl	%edx, %edx
	jne	.L100
	cmpl	$3, -356(%rbp)
	jle	.L101
.L23:
	leal	-3(%rbx), %eax
	movl	%eax, -116(%rbp)
	cmpl	$3, %eax
	jle	.L92
	leal	(%rbx,%rbx), %edx
	movslq	%ebx, %r9
	movq	-136(%rbp), %rdi
	movl	%ebx, -372(%rbp)
	leal	(%rdx,%rbx), %ecx
	leaq	0(,%r9,8), %rax
	movl	%ebx, -256(%rbp)
	movslq	%ecx, %r15
	movq	%rax, -80(%rbp)
	leaq	24(,%r15,8), %rax
	leaq	0(,%r15,8), %r11
	movq	%r9, -368(%rbp)
	leaq	(%rdi,%rax), %r14
	leaq	-24(%rdi,%rax), %rax
	movq	%r11, -128(%rbp)
	movq	%rax, -288(%rbp)
	leaq	56(%rdi,%r15,8), %rax
	movq	%rax, -280(%rbp)
	movslq	%edx, %rax
	leaq	0(,%rax,8), %rsi
	movq	%rax, -160(%rbp)
	leal	0(,%rbx,4), %eax
	leaq	0(%r13,%rsi), %rdi
	movslq	%eax, %r10
	movl	%eax, -252(%rbp)
	addq	%rdi, %rsi
	movq	%rdi, -208(%rbp)
	movq	%r9, %rdi
	movq	%r10, -168(%rbp)
	movq	%rsi, %r10
	movq	%rsi, -216(%rbp)
	leaq	0(,%r9,4), %rsi
	subq	%rsi, %rdi
	movl	%ecx, -120(%rbp)
	leaq	(%r10,%rdi,8), %rsi
	movq	-272(%rbp), %r10
	movl	%edx, -152(%rbp)
	movq	%rsi, -224(%rbp)
	leaq	48(%r10), %rdi
	leaq	24(%r10), %rsi
	movq	%r9, -176(%rbp)
	movq	%rdi, -144(%rbp)
	leal	(%rax,%rbx), %edi
	movq	%rsi, -296(%rbp)
	movslq	%edi, %r8
	leal	(%rcx,%rcx), %esi
	movslq	%esi, %r12
	leaq	0(,%r8,8), %rax
	movq	%r8, -184(%rbp)
	movq	%rax, -240(%rbp)
	leaq	0(,%r12,8), %rax
	movq	%rax, -248(%rbp)
	leal	-7(%rbx), %eax
	subl	$6, %ebx
	movq	%r12, -200(%rbp)
	movl	%edi, -260(%rbp)
	movl	%esi, -264(%rbp)
	movq	%r13, -232(%rbp)
	movl	$4, -308(%rbp)
	movl	$3, -304(%rbp)
	movl	$5, -360(%rbp)
	movq	$0, -192(%rbp)
	movq	$3, -72(%rbp)
	movl	%eax, -376(%rbp)
	addq	$4, %rax
	movq	-80(%rbp), %r12
	movl	%ebx, -300(%rbp)
	leaq	24(%r13), %rbx
	movq	%rbx, -384(%rbp)
	leaq	56(%r13), %rbx
	movq	%rbx, -392(%rbp)
	leaq	80(%r13), %rbx
	movq	%rbx, -400(%rbp)
	leaq	56(%r10), %rbx
	movq	%rax, -424(%rbp)
	movq	%rbx, -408(%rbp)
	leaq	16(%r13), %rbx
	movq	%rbx, -416(%rbp)
	movq	%r15, %rbx
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-216(%rbp), %rcx
	movq	-280(%rbp), %rdi
	movq	-128(%rbp), %r10
	movq	-392(%rbp), %r8
	leaq	56(%rcx), %rax
	movq	-240(%rbp), %r15
	movq	-384(%rbp), %r9
	cmpq	%rax, %r14
	leaq	24(%rcx), %rax
	movq	-208(%rbp), %rcx
	leaq	0(%r13,%r10), %rdx
	setnb	%sil
	cmpq	%rax, %rdi
	setbe	%al
	orl	%eax, %esi
	leaq	56(%rcx), %rax
	cmpq	%rax, %r14
	setnb	%al
	addq	$24, %rcx
	cmpq	%rcx, %rdi
	setbe	%cl
	orl	%eax, %ecx
	andl	%esi, %ecx
	cmpl	$5, -300(%rbp)
	movq	-224(%rbp), %rsi
	seta	%al
	andl	%eax, %ecx
	leaq	56(%rsi), %rax
	cmpq	%rax, %r14
	setnb	%al
	addq	$24, %rsi
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %eax
	movq	-232(%rbp), %rsi
	andl	%eax, %ecx
	leaq	56(%rsi), %rax
	cmpq	%rax, %r14
	setnb	%al
	addq	$24, %rsi
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %eax
	andl	%eax, %ecx
	movq	-400(%rbp), %rax
	addq	%r10, %rax
	cmpq	%rax, %r14
	setnb	%al
	cmpq	%rdx, %rdi
	setbe	%sil
	orl	%esi, %eax
	movq	%r9, %rsi
	andl	%eax, %ecx
	movq	%r8, %rax
	addq	%r15, %rax
	cmpq	%rax, %r14
	setnb	%al
	addq	%r15, %rsi
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %eax
	movq	%r9, %rsi
	andl	%ecx, %eax
	movq	%r8, %rcx
	movq	-248(%rbp), %r8
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %rdi
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L37
	movq	-408(%rbp), %rax
	movq	-72(%rbp), %rsi
	leaq	(%rax,%rsi,8), %rax
	cmpq	%rax, %r14
	setnb	%cl
	cmpq	%rdi, -144(%rbp)
	setnb	%al
	orb	%al, %cl
	je	.L37
	movq	-416(%rbp), %rdx
	addq	-128(%rbp), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	%eax, -376(%rbp)
	jb	.L60
	movl	$3, -148(%rbp)
	testl	%edx, %edx
	je	.L26
	movl	$4, -148(%rbp)
	movl	-120(%rbp), %r11d
	leal	1(%r11), %edi
	leal	2(%r11), %ecx
	movslq	%edi, %rdi
	movslq	%ecx, %rcx
	leal	3(%r11), %eax
	leaq	0(%r13,%rdi,8), %r10
	leal	5(%r11), %edi
	cltq
	movslq	%edi, %rdi
	leaq	0(%r13,%rcx,8), %r15
	leal	4(%r11), %ecx
	leaq	0(%r13,%rdi,8), %r8
	movq	%rdi, -80(%rbp)
	leal	6(%r11), %edi
	movl	-152(%rbp), %r11d
	movslq	%ecx, %rcx
	leaq	0(%r13,%rax,8), %rsi
	movslq	%edi, %rdi
	addl	$3, %r11d
	leaq	0(%r13,%rcx,8), %r9
	vmovsd	(%rsi), %xmm0
	vaddsd	(%r15), %xmm0, %xmm0
	movslq	%r11d, %r11
	vaddsd	(%r9), %xmm0, %xmm0
	leaq	0(%r13,%rdi,8), %rdi
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-252(%rbp), %r11d
	addl	$3, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-256(%rbp), %r11d
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	addl	$3, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-260(%rbp), %r11d
	addl	$3, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movq	-128(%rbp), %r11
	vaddsd	0(%r13,%r11), %xmm0, %xmm0
	movslq	-304(%rbp), %r11
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-264(%rbp), %r11d
	addl	$3, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movq	-144(%rbp), %r11
	vmulsd	(%r11), %xmm0, %xmm0
	movq	-136(%rbp), %r11
	vmovsd	%xmm0, (%r11,%rax,8)
	cmpl	$1, %edx
	je	.L26
	movl	-120(%rbp), %r11d
	vmovsd	(%r9), %xmm0
	movl	$5, -148(%rbp)
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	leal	7(%r11), %eax
	movl	-152(%rbp), %r11d
	cltq
	addl	$4, %r11d
	leaq	0(%r13,%rax,8), %rax
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-252(%rbp), %r11d
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-256(%rbp), %r11d
	vaddsd	(%r15), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	movl	-260(%rbp), %r11d
	addl	$4, %r11d
	movslq	%r11d, %r11
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	movslq	-308(%rbp), %r10
	vaddsd	(%rax), %xmm0, %xmm0
	movq	-272(%rbp), %r11
	vaddsd	0(%r13,%r10,8), %xmm0, %xmm0
	movl	-264(%rbp), %r10d
	addl	$4, %r10d
	movslq	%r10d, %r10
	vaddsd	0(%r13,%r10,8), %xmm0, %xmm0
	movq	-72(%rbp), %r10
	addl	$4, %r10d
	vmulsd	(%r11,%r10,8), %xmm0, %xmm0
	movq	-136(%rbp), %r10
	vmovsd	%xmm0, (%r10,%rcx,8)
	cmpl	$3, %edx
	jne	.L26
	vmovsd	(%r9), %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	movl	$6, -148(%rbp)
	vaddsd	(%rdi), %xmm0, %xmm0
	movl	-152(%rbp), %edi
	movl	-120(%rbp), %r11d
	movl	-264(%rbp), %r10d
	leal	5(%rdi), %ecx
	movl	-252(%rbp), %edi
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	leal	5(%rdi), %ecx
	movq	-80(%rbp), %rdi
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	movl	-256(%rbp), %eax
	movl	-72(%rbp), %esi
	addl	$5, %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	movl	-260(%rbp), %eax
	addl	$5, %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	8(%r11), %eax
	movq	-272(%rbp), %r11
	cltq
	vaddsd	(%r15), %xmm0, %xmm0
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	movslq	-360(%rbp), %rax
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	5(%r10), %eax
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leal	5(%rsi), %eax
	cltq
	vmulsd	(%r11,%rax,8), %xmm0, %xmm0
	movq	-136(%rbp), %rax
	vmovsd	%xmm0, (%rax,%rdi,8)
.L26:
	movl	-300(%rbp), %esi
	movl	%edx, %eax
	movq	-176(%rbp), %r8
	movq	%r13, -344(%rbp)
	leaq	3(%rax,%rbx), %rcx
	movq	%r14, -352(%rbp)
	subl	%edx, %esi
	salq	$3, %rcx
	movl	%esi, -312(%rbp)
	shrl	$2, %esi
	leaq	0(%r13,%rcx), %r15
	addq	-136(%rbp), %rcx
	movl	%esi, -80(%rbp)
	movq	-72(%rbp), %rsi
	leaq	3(%rax,%rsi), %rdx
	movq	-272(%rbp), %rsi
	leaq	(%rsi,%rdx,8), %rsi
	leaq	2(%rax,%rbx), %rdx
	movq	%rsi, -88(%rbp)
	leaq	0(%r13,%rdx,8), %rsi
	leaq	4(%rax,%rbx), %rdx
	movq	%rsi, -96(%rbp)
	leaq	0(%r13,%rdx,8), %rsi
	movq	%rsi, -104(%rbp)
	movq	-160(%rbp), %rsi
	leaq	3(%rax,%rsi), %rdx
	movq	-168(%rbp), %rsi
	leaq	0(%r13,%rdx,8), %rdi
	leaq	3(%rax,%rsi), %rdx
	movq	%rdi, -320(%rbp)
	movq	-200(%rbp), %rdi
	leaq	0(%r13,%rdx,8), %rsi
	leaq	1(%rax,%rbx), %rdx
	leaq	0(%r13,%rdx,8), %rdx
	movq	%rsi, -328(%rbp)
	movq	%rdx, -112(%rbp)
	leaq	5(%rax,%rbx), %rdx
	leaq	0(%r13,%rdx,8), %r9
	leaq	3(%rax,%r8), %rdx
	movq	-184(%rbp), %r8
	leaq	0(%r13,%rdx,8), %r11
	movq	%r9, -336(%rbp)
	movq	-336(%rbp), %r14
	leaq	3(%rax,%r8), %rdx
	movq	-128(%rbp), %r8
	movq	%r12, -336(%rbp)
	leaq	0(%r13,%rdx,8), %r10
	leaq	6(%rax,%rbx), %rdx
	movq	-328(%rbp), %r12
	movq	%rbx, -328(%rbp)
	leaq	(%r8,%rax,8), %rsi
	movq	-192(%rbp), %r8
	leaq	0(%r13,%rdx,8), %r9
	movq	-320(%rbp), %rbx
	addq	%r13, %rsi
	leaq	3(%rax,%r8), %rdx
	leaq	3(%rax,%rdi), %rax
	leaq	0(%r13,%rdx,8), %r8
	leaq	0(%r13,%rax,8), %rdi
	movq	-112(%rbp), %r13
	xorl	%eax, %eax
	movq	%rcx, -112(%rbp)
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L28:
	movq	-96(%rbp), %rcx
	vmovupd	(%r15,%rax), %ymm0
	addl	$1, %edx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-104(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-88(%rbp), %rcx
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	vaddpd	(%r12,%rax), %ymm0, %ymm0
	vaddpd	0(%r13,%rax), %ymm0, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%rsi,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	vmulpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-112(%rbp), %rcx
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, -80(%rbp)
	ja	.L28
	movl	-312(%rbp), %esi
	movl	-148(%rbp), %edx
	movq	-344(%rbp), %r13
	movq	-352(%rbp), %r14
	movl	%esi, %eax
	movq	-336(%rbp), %r12
	movq	-328(%rbp), %rbx
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %esi
	je	.L32
.L25:
	movslq	%edx, %rdx
	movq	-160(%rbp), %r10
	movq	-168(%rbp), %r9
	movq	-176(%rbp), %r8
	movq	-184(%rbp), %rdi
	leaq	(%rdx,%rbx), %rax
	movq	-192(%rbp), %rsi
	leaq	0(%r13,%rax,8), %rax
	subq	%rbx, %r10
	movq	-200(%rbp), %rcx
	movq	-288(%rbp), %r11
	subq	%rbx, %r9
	subq	%rbx, %r8
	subq	%rbx, %rdi
	movq	-296(%rbp), %r15
	subq	%rbx, %rsi
	subq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L30:
	vmovsd	(%rax), %xmm0
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	-24(%rax), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	(%rax,%rcx,8), %xmm0, %xmm0
	vmulsd	(%r15,%rdx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, (%r11,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, -116(%rbp)
	jg	.L30
.L32:
	movq	-368(%rbp), %rax
	addq	$1, -72(%rbp)
	addq	%r12, %r14
	addq	%rax, -160(%rbp)
	movq	-72(%rbp), %rsi
	addq	%rax, -168(%rbp)
	addq	%rax, %rbx
	addq	%rax, -176(%rbp)
	addq	%rax, -184(%rbp)
	addq	%rax, -192(%rbp)
	addq	%rax, -200(%rbp)
	addq	%r12, -288(%rbp)
	addq	%r12, -280(%rbp)
	addq	%r12, -208(%rbp)
	addq	%r12, -216(%rbp)
	addq	%r12, -224(%rbp)
	addq	%r12, -232(%rbp)
	addq	$8, -144(%rbp)
	addq	$8, -296(%rbp)
	addq	%r12, -128(%rbp)
	movl	-372(%rbp), %eax
	addq	%r12, -240(%rbp)
	addl	%eax, -120(%rbp)
	addl	%eax, -152(%rbp)
	addl	%eax, -252(%rbp)
	addl	%eax, -256(%rbp)
	addl	%eax, -260(%rbp)
	addl	%eax, -360(%rbp)
	addl	%eax, -264(%rbp)
	addl	%eax, -304(%rbp)
	addl	%eax, -308(%rbp)
	addq	%r12, -248(%rbp)
	cmpl	%esi, -356(%rbp)
	jg	.L33
.L92:
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L93
	movq	%r13, %rdi
	call	dummy
	movq	-136(%rbp), %rdi
	call	dummy
	movq	-272(%rbp), %rdi
	call	dummy
.L93:
	addq	$384, %rsp
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
	movq	%rax, -136(%rbp)
	movq	%rax, %r9
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L37:
	movq	-240(%rbp), %rdi
	movq	%rbx, -80(%rbp)
	movl	$3, %eax
	movq	-208(%rbp), %r8
	movq	-216(%rbp), %r9
	leaq	0(%r13,%rdi), %rsi
	movq	-248(%rbp), %rdi
	movq	-224(%rbp), %r10
	movq	-232(%rbp), %r11
	movq	-296(%rbp), %r15
	leaq	0(%r13,%rdi), %rcx
	movq	-424(%rbp), %rbx
	movq	-288(%rbp), %rdi
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	16(%rdx), %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	addq	$8, %rdx
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	(%r8,%rax,8), %xmm0, %xmm0
	vaddsd	(%r9,%rax,8), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	vaddsd	(%rsi,%rax,8), %xmm0, %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vaddsd	(%r11,%rax,8), %xmm0, %xmm0
	vaddsd	(%rcx,%rax,8), %xmm0, %xmm0
	vmulsd	(%r15,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdi,%rax,8)
	addq	$1, %rax
	cmpq	%rbx, %rax
	jne	.L31
	movq	-80(%rbp), %rbx
	jmp	.L32
.L60:
	movl	$3, %edx
	jmp	.L25
.L99:
	testl	%r15d, %r15d
	jle	.L102
	movl	%r15d, %edi
	cmpl	$4, %r14d
	jbe	.L64
	movq	$0, -272(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L100:
	movq	%r13, %rdi
	vzeroupper
	call	dummy
	movq	-136(%rbp), %rdi
	call	dummy
	movq	-272(%rbp), %rdi
	call	dummy
	cmpl	$3, -356(%rbp)
	jg	.L23
	jmp	.L24
.L52:
	movl	$1, %edi
	jmp	.L5
.L64:
	movq	$0, -272(%rbp)
	xorl	%eax, %eax
	jmp	.L45
.L3:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L41
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)
.L10:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -272(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)
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
.L59:
	movl	$2, %eax
	jmp	.L18
.L57:
	movl	$2, %ecx
	jmp	.L12
.L53:
	movl	$2, %edi
	jmp	.L5
.L101:
	vzeroupper
	jmp	.L93
.L50:
	xorl	%eax, %eax
	jmp	.L4
.L102:
	movq	$0, -272(%rbp)
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
