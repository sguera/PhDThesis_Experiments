	.file	"2d-1r-point-symmetric-constant-star-stencil.c_compilable.c"
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
	movq	%rax, %r12
	movl	%r12d, %r14d
	call	strtol
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %r13
	movslq	%r14d, %rcx
	leaq	0(,%rcx,8), %r15
	movq	%r15, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %rbx
	testl	%r14d, %r14d
	jle	.L3
	leal	-1(%r14), %ecx
	movq	%rbx, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %ecx
	jb	.L37
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rbx)
	cmpl	$1, %eax
	je	.L39
	vmovsd	%xmm0, 8(%rbx)
	cmpl	$3, %eax
	jne	.L40
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
	je	.L75
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
	movq	%r15, %rdx
	movl	$32, %esi
	movl	%ecx, -148(%rbp)
	leaq	-80(%rbp), %rdi
	call	posix_memalign
	movl	-148(%rbp), %ecx
	testl	%eax, %eax
	je	.L76
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %edi
	cmovg	%ecx, %eax
	cmovg	%r14d, %edi
	cmpl	$4, %eax
	ja	.L77
	xorl	%r15d, %r15d
	xorl	%eax, %eax
.L29:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r15,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L33
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
.L33:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -144(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -80(%rbp)
	leal	-1(%r12), %eax
	movl	%eax, -248(%rbp)
	testl	%edx, %edx
	jne	.L78
	cmpl	$1, -248(%rbp)
	jle	.L79
.L14:
	leal	-1(%r13), %eax
	movl	%eax, -172(%rbp)
	cmpl	$1, %eax
	jle	.L71
	leaq	8(%rbx), %rdx
	movslq	%r13d, %rdi
	movq	%r15, -160(%rbp)
	leaq	0(,%rdi,8), %rsi
	movq	%rdi, -256(%rbp)
	leaq	40(%r15,%rsi), %rax
	movq	%rdi, -232(%rbp)
	movq	%rax, -208(%rbp)
	leal	-2(%r13), %eax
	movl	%eax, -200(%rbp)
	leaq	1(%rdi,%rax), %rax
	leaq	(%r15,%rax,8), %rax
	movq	%rdx, -224(%rbp)
	movq	%rax, -216(%rbp)
	leal	(%r13,%r13), %eax
	leaq	-144(%rbp), %rcx
	movl	%eax, -148(%rbp)
	cltq
	movq	%rax, -328(%rbp)
	leaq	-112(%rbp), %rdi
	salq	$3, %rax
	movq	%rcx, -296(%rbp)
	leaq	40(%rbx), %rdx
	addq	$8, %rcx
	movq	%rax, -192(%rbp)
	leal	-3(%r13), %eax
	movq	%rcx, -280(%rbp)
	leaq	-80(%rbp), %rcx
	movl	%eax, -264(%rbp)
	leaq	8(,%rax,8), %rax
	addq	$8, %rcx
	movq	%rdi, -304(%rbp)
	leaq	8(%r15,%rsi), %r14
	addq	$8, %rdi
	movq	%rsi, %r15
	movq	%rdx, -312(%rbp)
	leaq	48(%rbx), %rdx
	movq	%rax, -336(%rbp)
	leaq	(%rbx,%rsi), %r12
	movl	%r13d, %eax
	movl	%r13d, -260(%rbp)
	movq	%rsi, -168(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -240(%rbp)
	movl	$0, -176(%rbp)
	movl	$1, -196(%rbp)
	movq	%rdx, -320(%rbp)
	movq	%rdi, -272(%rbp)
	movq	%rcx, -288(%rbp)
	.p2align 4,,10
	.p2align 3
.L23:
	movq	-216(%rbp), %r11
	movq	-304(%rbp), %rcx
	addl	$1, -196(%rbp)
	cmpq	-272(%rbp), %r14
	movq	-208(%rbp), %r9
	movq	-184(%rbp), %r10
	setnb	%dil
	cmpq	%rcx, %r11
	setbe	%dl
	orl	%edx, %edi
	cmpq	-280(%rbp), %r14
	setnb	%sil
	cmpq	-296(%rbp), %r11
	setbe	%cl
	orl	%esi, %ecx
	andl	%edi, %ecx
	cmpl	$5, -200(%rbp)
	leaq	-80(%rbp), %rdi
	seta	%dl
	andl	%edx, %ecx
	cmpq	-288(%rbp), %r14
	setnb	%dl
	cmpq	%rdi, %r11
	movq	-312(%rbp), %rdi
	setbe	%sil
	movq	-224(%rbp), %r11
	orl	%esi, %edx
	andl	%edx, %ecx
	movq	-320(%rbp), %rdx
	addq	-168(%rbp), %rdx
	cmpq	%rdx, %r14
	setnb	%dl
	cmpq	%r9, %r12
	setnb	%sil
	orl	%esi, %edx
	movq	%r11, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r10, %rsi
	cmpq	%rsi, %r9
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L48
	movq	-192(%rbp), %rsi
	movq	%r11, %rdx
	addq	%rsi, %rdi
	cmpq	%rdi, %r14
	setnb	%cl
	addq	%rsi, %rdx
	cmpq	%rdx, %r9
	setbe	%dl
	orb	%dl, %cl
	je	.L48
	movq	-168(%rbp), %rcx
	addq	%r11, %rcx
	shrq	$3, %rcx
	negq	%rcx
	andl	$3, %ecx
	leal	3(%rcx), %edx
	cmpl	-264(%rbp), %edx
	ja	.L43
	movl	$1, -152(%rbp)
	testl	%ecx, %ecx
	je	.L17
	leal	1(%rax), %edi
	movl	-176(%rbp), %r13d
	movl	$2, -152(%rbp)
	leal	2(%rax), %edx
	movl	-148(%rbp), %r9d
	movslq	%edi, %rdi
	leaq	(%rbx,%rdi,8), %r8
	movslq	%edx, %rdx
	vmovsd	(%r12), %xmm0
	leaq	(%rbx,%rdx,8), %rsi
	vaddsd	(%rsi), %xmm0, %xmm0
	leal	1(%r13), %r10d
	vmulsd	-112(%rbp), %xmm0, %xmm2
	addl	$1, %r9d
	movslq	%r10d, %r10
	vmovsd	(%r8), %xmm0
	movslq	%r9d, %r9
	vmulsd	-144(%rbp), %xmm0, %xmm0
	vmovsd	(%rbx,%r10,8), %xmm1
	vaddsd	(%rbx,%r9,8), %xmm1, %xmm1
	vmulsd	-80(%rbp), %xmm1, %xmm1
	movq	-160(%rbp), %r10
	vaddsd	%xmm0, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%rdi,8)
	cmpl	$1, %ecx
	je	.L17
	leal	3(%rax), %edi
	movl	-148(%rbp), %r9d
	movl	$3, -152(%rbp)
	vmovsd	(%r8), %xmm2
	leal	2(%r13), %r11d
	movslq	%edi, %rdi
	leaq	(%rbx,%rdi,8), %r10
	vmovsd	(%rsi), %xmm0
	movslq	%r11d, %r11
	vaddsd	(%r10), %xmm2, %xmm2
	vmulsd	-144(%rbp), %xmm0, %xmm0
	addl	$2, %r9d
	vmulsd	-112(%rbp), %xmm2, %xmm2
	movslq	%r9d, %r9
	vmovsd	(%rbx,%r11,8), %xmm1
	vaddsd	(%rbx,%r9,8), %xmm1, %xmm1
	vmulsd	-80(%rbp), %xmm1, %xmm1
	movq	-160(%rbp), %r8
	vaddsd	%xmm0, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rdx,8)
	cmpl	$3, %ecx
	jne	.L17
	leal	4(%rax), %edx
	vmovsd	(%r10), %xmm0
	movl	$4, -152(%rbp)
	movslq	%edx, %rdx
	movl	-148(%rbp), %r9d
	vmovsd	(%rbx,%rdx,8), %xmm2
	vmulsd	-144(%rbp), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm2, %xmm2
	leal	3(%r13), %esi
	vmulsd	-112(%rbp), %xmm2, %xmm2
	movslq	%esi, %rsi
	leal	3(%r9), %edx
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rsi,8), %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rdi,8)
.L17:
	movl	-200(%rbp), %esi
	movl	%ecx, %edx
	movq	-240(%rbp), %r8
	movq	-168(%rbp), %rdi
	vbroadcastsd	-144(%rbp), %ymm5
	subl	%ecx, %esi
	movq	-232(%rbp), %rcx
	movl	%esi, %r11d
	movl	%esi, -244(%rbp)
	vbroadcastsd	-112(%rbp), %ymm4
	leaq	(%rdi,%rdx,8), %rdi
	vbroadcastsd	-80(%rbp), %ymm3
	shrl	$2, %r11d
	addq	%rbx, %rdi
	leaq	1(%rdx,%rcx), %rsi
	leaq	2(%rdx,%rcx), %rcx
	salq	$3, %rsi
	leaq	(%rbx,%rcx,8), %r10
	leaq	1(%rdx,%r8), %rcx
	leaq	(%rbx,%rcx,8), %r9
	movq	-328(%rbp), %rcx
	leaq	(%rbx,%rsi), %r13
	addq	-160(%rbp), %rsi
	leaq	1(%r8,%rcx), %rcx
	addq	%rcx, %rdx
	xorl	%ecx, %ecx
	leaq	(%rbx,%rdx,8), %r8
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L19:
	vmovupd	(%rdi,%rdx), %xmm1
	vinsertf128	$0x1, 16(%rdi,%rdx), %ymm1, %ymm1
	addl	$1, %ecx
	vmovupd	(%r10,%rdx), %xmm0
	vinsertf128	$0x1, 16(%r10,%rdx), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmulpd	0(%r13,%rdx), %ymm5, %ymm0
	vmulpd	%ymm4, %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r9,%rdx), %xmm0
	vinsertf128	$0x1, 16(%r9,%rdx), %ymm0, %ymm2
	vmovupd	(%r8,%rdx), %xmm0
	vinsertf128	$0x1, 16(%r8,%rdx), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rsi,%rdx)
	vextractf128	$0x1, %ymm0, 16(%rsi,%rdx)
	addq	$32, %rdx
	cmpl	%ecx, %r11d
	ja	.L19
	movl	-244(%rbp), %esi
	movl	-152(%rbp), %r11d
	movl	%esi, %edx
	andl	$-4, %edx
	addl	%edx, %r11d
	cmpl	%edx, %esi
	je	.L22
.L16:
	leal	1(%r11), %edx
	movl	-176(%rbp), %r13d
	leal	(%rax,%rdx), %edi
	leal	-1(%r11,%rax), %ecx
	movslq	%edi, %rdi
	leal	(%rax,%r11), %esi
	movslq	%ecx, %rcx
	vmovsd	(%rbx,%rcx,8), %xmm2
	leaq	(%rbx,%rdi,8), %r10
	movslq	%esi, %rsi
	movl	-148(%rbp), %ecx
	leal	0(%r13,%r11), %r8d
	vmovsd	(%rbx,%rsi,8), %xmm1
	movslq	%r8d, %r8
	vmulsd	-144(%rbp), %xmm1, %xmm0
	vaddsd	(%r10), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	addl	%r11d, %ecx
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%r8,8), %xmm0
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-160(%rbp), %r8
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rsi,8)
	cmpl	%edx, -172(%rbp)
	jle	.L22
	vmovsd	(%rbx,%rsi,8), %xmm2
	leal	2(%r11), %ecx
	vmovsd	(%r10), %xmm0
	leal	(%rax,%rcx), %r8d
	vmulsd	-144(%rbp), %xmm0, %xmm0
	movslq	%r8d, %r8
	leaq	(%rbx,%r8,8), %r9
	vaddsd	(%r9), %xmm2, %xmm2
	leal	0(%r13,%rdx), %esi
	vmulsd	-112(%rbp), %xmm2, %xmm2
	movslq	%esi, %rsi
	addl	-148(%rbp), %edx
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rsi,8), %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-160(%rbp), %rsi
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%rdi,8)
	cmpl	%ecx, -172(%rbp)
	jle	.L22
	vmovsd	(%rbx,%rdi,8), %xmm2
	leal	3(%r11), %edx
	vmovsd	(%r9), %xmm0
	leal	(%rax,%rdx), %esi
	vmulsd	-144(%rbp), %xmm0, %xmm0
	movslq	%esi, %rsi
	leaq	(%rbx,%rsi,8), %r10
	vaddsd	(%r10), %xmm2, %xmm2
	leal	0(%r13,%rcx), %edi
	vmulsd	-112(%rbp), %xmm2, %xmm2
	movslq	%edi, %rdi
	addl	-148(%rbp), %ecx
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rdi,8), %xmm0
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-160(%rbp), %rdi
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi,%r8,8)
	cmpl	%edx, -172(%rbp)
	jle	.L22
	vmovsd	(%rbx,%r8,8), %xmm2
	leal	4(%r11), %ecx
	vmovsd	(%r10), %xmm0
	leal	(%rax,%rcx), %edi
	vmulsd	-144(%rbp), %xmm0, %xmm0
	movslq	%edi, %rdi
	leaq	(%rbx,%rdi,8), %r9
	vaddsd	(%r9), %xmm2, %xmm2
	leal	0(%r13,%rdx), %r8d
	vmulsd	-112(%rbp), %xmm2, %xmm2
	movslq	%r8d, %r8
	addl	-148(%rbp), %edx
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%r8,8), %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-160(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%rsi,8)
	cmpl	%ecx, -172(%rbp)
	jle	.L22
	vmovsd	(%rbx,%rsi,8), %xmm2
	leal	5(%r11), %edx
	vmovsd	(%r9), %xmm0
	movl	%r13d, %r9d
	leal	(%rax,%rdx), %r8d
	leal	0(%r13,%rcx), %esi
	movslq	%r8d, %r8
	movl	-148(%rbp), %r13d
	leaq	(%rbx,%r8,8), %r10
	movslq	%esi, %rsi
	vmulsd	-144(%rbp), %xmm0, %xmm0
	vaddsd	(%r10), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	addl	%r13d, %ecx
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rsi,8), %xmm0
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-160(%rbp), %rsi
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%rdi,8)
	cmpl	%edx, -172(%rbp)
	jle	.L22
	vmovsd	(%rbx,%rdi,8), %xmm2
	leal	6(%r11,%rax), %ecx
	vmovsd	(%r10), %xmm0
	vmulsd	-144(%rbp), %xmm0, %xmm0
	movslq	%ecx, %rcx
	vaddsd	(%rbx,%rcx,8), %xmm2, %xmm2
	leal	(%r9,%rdx), %ecx
	addl	%r13d, %edx
	vmulsd	-112(%rbp), %xmm2, %xmm2
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rcx,8), %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%r8,8)
.L22:
	movl	-260(%rbp), %edi
	addq	%r15, %r14
	addq	%r15, %r12
	movq	-256(%rbp), %rsi
	addq	%r15, -208(%rbp)
	addq	%rsi, -232(%rbp)
	addq	%rsi, -240(%rbp)
	addl	%edi, %eax
	addq	%r15, -216(%rbp)
	addl	%edi, -176(%rbp)
	addl	%edi, -148(%rbp)
	addq	%r15, -168(%rbp)
	addq	%r15, -184(%rbp)
	addq	%r15, -192(%rbp)
	movl	-196(%rbp), %esi
	cmpl	%esi, -248(%rbp)
	jg	.L23
	movq	-160(%rbp), %r15
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L72
	movq	%rbx, %rdi
	call	dummy
	movq	%r15, %rdi
	call	dummy
	leaq	-144(%rbp), %rdi
	call	dummy
	leaq	-112(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L72:
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
	.p2align 4,,10
	.p2align 3
.L48:
	.cfi_restore_state
	movq	-160(%rbp), %rcx
	xorl	%edx, %edx
	movq	-168(%rbp), %rsi
	movq	-336(%rbp), %r8
	leaq	(%rcx,%rsi), %rdi
	movq	-192(%rbp), %rcx
	leaq	(%rbx,%rcx), %rsi
	movq	-184(%rbp), %rcx
	addq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%r12,%rdx), %xmm1
	vaddsd	16(%r12,%rdx), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm2
	vmovsd	-144(%rbp), %xmm1
	vmulsd	8(%r12,%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%rsi,%rdx), %xmm0
	vaddsd	8(%rcx,%rdx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rdi,%rdx)
	addq	$8, %rdx
	cmpq	%r8, %rdx
	jne	.L21
	jmp	.L22
.L43:
	movl	$1, %r11d
	jmp	.L16
.L76:
	movq	-80(%rbp), %r15
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%r15, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	cmovle	%eax, %ecx
	movl	%ecx, %r8d
	leal	3(%rdx), %ecx
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r8d
	jb	.L29
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %edx
	je	.L41
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %edx
	jne	.L42
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %eax
.L9:
	vmovapd	.LC3(%rip), %ymm0
	leaq	(%r15,%rdx,8), %rcx
	subl	%edx, %edi
	xorl	%edx, %edx
	movl	%edi, %esi
	shrl	$2, %esi
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
	jne	.L29
	jmp	.L33
.L78:
	movq	%rbx, %rdi
	vzeroupper
	call	dummy
	movq	%r15, %rdi
	call	dummy
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$1, -248(%rbp)
	jg	.L14
	jmp	.L15
.L39:
	movl	$1, %r8d
	jmp	.L5
.L77:
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	jmp	.L9
.L41:
	movl	$1, %eax
	jmp	.L9
.L75:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-80(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
	call	posix_memalign
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jne	.L33
	movq	-80(%rbp), %r15
	jmp	.L33
.L71:
	vzeroupper
	jmp	.L15
.L42:
	movl	$2, %eax
	jmp	.L9
.L40:
	movl	$2, %r8d
	jmp	.L5
.L79:
	vzeroupper
	jmp	.L72
.L37:
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
	.align 8
.LC5:
	.long	765859228
	.long	1071838070
	.align 8
.LC6:
	.long	2226626236
	.long	1072102945
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
