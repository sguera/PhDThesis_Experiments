	.file	"2d-1r-heterogeneous-constant-star-stencil.c_compilable.c"
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
	movl	%ecx, -216(%rbp)
	leaq	-80(%rbp), %rdi
	call	posix_memalign
	movl	-216(%rbp), %ecx
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
	movq	%rax, -208(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -80(%rbp)
	leal	-1(%r12), %eax
	movl	%eax, -316(%rbp)
	testl	%edx, %edx
	jne	.L78
	cmpl	$1, -316(%rbp)
	jle	.L79
.L14:
	leal	-1(%r13), %eax
	movl	%eax, -240(%rbp)
	cmpl	$1, %eax
	jle	.L71
	leaq	-112(%rbp), %rdx
	movslq	%r13d, %rcx
	movq	%r15, -216(%rbp)
	leaq	0(,%rcx,8), %r14
	movq	%rcx, -328(%rbp)
	leaq	40(%r15,%r14), %rax
	movq	%rcx, -288(%rbp)
	movq	%rax, -272(%rbp)
	leal	-2(%r13), %eax
	movl	%eax, -264(%rbp)
	leaq	1(%rcx,%rax), %rax
	leaq	(%r15,%rax,8), %r11
	movl	%r13d, -320(%rbp)
	leal	(%r13,%r13), %eax
	movq	%r14, -232(%rbp)
	movl	%eax, -224(%rbp)
	leaq	-144(%rbp), %rcx
	cltq
	movq	%rax, -432(%rbp)
	leaq	-176(%rbp), %rsi
	salq	$3, %rax
	movq	%rax, -256(%rbp)
	leal	-3(%r13), %eax
	movl	%eax, -420(%rbp)
	leaq	8(,%rax,8), %rax
	movq	%rax, -440(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -376(%rbp)
	leaq	8(%rbx), %r9
	addq	$8, %rax
	movq	%rax, -344(%rbp)
	leaq	8(%rcx), %rax
	movq	%rax, -352(%rbp)
	leaq	8(%rdx), %rax
	movq	%rax, -360(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rsi, -384(%rbp)
	leaq	48(%rbx), %r10
	addq	$8, %rsi
	addq	$8, %rax
	movq	%r9, -280(%rbp)
	leaq	40(%rbx), %r9
	leaq	8(%r15,%r14), %rdi
	movq	%r11, %r15
	movq	$0, -248(%rbp)
	leaq	(%rbx,%r14), %r12
	movq	$0, -296(%rbp)
	movl	$0, -220(%rbp)
	movl	$1, -260(%rbp)
	movq	%rcx, -392(%rbp)
	movq	%rdx, -400(%rbp)
	movq	%r9, -408(%rbp)
	movq	%r10, -416(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%rax, -368(%rbp)
	.p2align 4,,10
	.p2align 3
.L23:
	addl	$1, -260(%rbp)
	cmpq	-336(%rbp), %rdi
	movq	-272(%rbp), %r10
	movq	-408(%rbp), %rsi
	movq	-248(%rbp), %r9
	setnb	%cl
	cmpq	-384(%rbp), %r15
	movq	-280(%rbp), %r11
	setbe	%al
	orl	%eax, %ecx
	cmpq	-344(%rbp), %rdi
	setnb	%dl
	cmpq	-376(%rbp), %r15
	setbe	%al
	orl	%edx, %eax
	andl	%ecx, %eax
	cmpl	$5, -264(%rbp)
	seta	%dl
	andl	%edx, %eax
	cmpq	-352(%rbp), %rdi
	setnb	%cl
	cmpq	-392(%rbp), %r15
	setbe	%dl
	orl	%edx, %ecx
	andl	%ecx, %eax
	cmpq	-360(%rbp), %rdi
	setnb	%dl
	cmpq	-400(%rbp), %r15
	setbe	%cl
	orl	%edx, %ecx
	andl	%eax, %ecx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %r15
	setbe	%dl
	cmpq	-368(%rbp), %rdi
	setnb	%al
	orl	%edx, %eax
	movq	-416(%rbp), %rdx
	addq	-232(%rbp), %rdx
	andl	%ecx, %eax
	cmpq	%rdx, %rdi
	setnb	%dl
	cmpq	%r10, %r12
	setnb	%cl
	orl	%ecx, %edx
	movq	%r11, %rcx
	andl	%edx, %eax
	movq	%rsi, %rdx
	addq	%r9, %rdx
	cmpq	%rdx, %rdi
	setnb	%dl
	addq	%r9, %rcx
	cmpq	%rcx, %r10
	setbe	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L48
	movq	%rsi, %rax
	movq	-256(%rbp), %rsi
	addq	%rsi, %rax
	cmpq	%rax, %rdi
	movq	%r11, %rax
	setnb	%dl
	addq	%rsi, %rax
	cmpq	%rax, %r10
	setbe	%al
	orb	%al, %dl
	je	.L48
	movq	-232(%rbp), %rdx
	addq	%r11, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-420(%rbp), %eax
	ja	.L43
	movl	$1, -236(%rbp)
	testl	%edx, %edx
	je	.L17
	leal	1(%r13), %esi
	vmovsd	(%r12), %xmm1
	movl	$2, -236(%rbp)
	leal	2(%r13), %eax
	movslq	%esi, %rsi
	movl	-220(%rbp), %r11d
	leaq	(%rbx,%rsi,8), %r8
	cltq
	movl	-224(%rbp), %r10d
	vmovsd	(%r8), %xmm2
	leaq	(%rbx,%rax,8), %rcx
	vmulsd	-208(%rbp), %xmm2, %xmm2
	vmulsd	-176(%rbp), %xmm1, %xmm0
	leal	1(%r11), %r9d
	movslq	%r9d, %r9
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rcx), %xmm2
	vmulsd	-144(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%r9,8), %xmm0
	leal	1(%r10), %r9d
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movslq	%r9d, %r9
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%r9,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-216(%rbp), %r9
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r9,%rsi,8)
	cmpl	$1, %edx
	je	.L17
	vmovsd	(%rcx), %xmm1
	leal	3(%r13), %esi
	movl	$3, -236(%rbp)
	vmovsd	(%r8), %xmm0
	leal	2(%r11), %r8d
	movslq	%esi, %rsi
	vmulsd	-176(%rbp), %xmm0, %xmm0
	movslq	%r8d, %r8
	vmulsd	-208(%rbp), %xmm1, %xmm3
	leaq	(%rbx,%rsi,8), %r9
	vmovsd	(%r9), %xmm2
	vaddsd	%xmm0, %xmm3, %xmm1
	vmulsd	-144(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%r8,8), %xmm0
	leal	2(%r10), %r8d
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movslq	%r8d, %r8
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%r8,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-216(%rbp), %r8
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rax,8)
	cmpl	$3, %edx
	jne	.L17
	vmovsd	(%r9), %xmm1
	leal	4(%r13), %eax
	movl	$4, -236(%rbp)
	vmulsd	-208(%rbp), %xmm1, %xmm1
	cltq
	vmovsd	(%rcx), %xmm0
	vmulsd	-176(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm3
	vmovsd	(%rbx,%rax,8), %xmm0
	leal	3(%r11), %eax
	vmulsd	-144(%rbp), %xmm0, %xmm0
	cltq
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%rbx,%rax,8), %xmm0
	leal	3(%r10), %eax
	vmulsd	-112(%rbp), %xmm0, %xmm0
	cltq
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rax,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rsi,8)
.L17:
	movl	-264(%rbp), %esi
	movl	%edx, %eax
	movq	%rdi, -312(%rbp)
	movq	-296(%rbp), %r8
	movq	-232(%rbp), %r9
	vbroadcastsd	-208(%rbp), %ymm7
	subl	%edx, %esi
	movq	-288(%rbp), %rdx
	movl	%esi, -300(%rbp)
	shrl	$2, %esi
	vbroadcastsd	-176(%rbp), %ymm6
	movl	%esi, -304(%rbp)
	leaq	(%r9,%rax,8), %rsi
	movl	-304(%rbp), %edi
	vbroadcastsd	-144(%rbp), %ymm5
	addq	%rbx, %rsi
	leaq	1(%rax,%rdx), %rcx
	vbroadcastsd	-112(%rbp), %ymm4
	leaq	2(%rax,%rdx), %rdx
	salq	$3, %rcx
	vbroadcastsd	-80(%rbp), %ymm3
	leaq	(%rbx,%rdx,8), %r10
	leaq	1(%rax,%r8), %rdx
	leaq	(%rbx,%rdx,8), %r9
	movq	-432(%rbp), %rdx
	leaq	(%rbx,%rcx), %r11
	addq	-216(%rbp), %rcx
	leaq	1(%r8,%rdx), %rdx
	addq	%rdx, %rax
	xorl	%edx, %edx
	leaq	(%rbx,%rax,8), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L19:
	vmulpd	(%r11,%rax), %ymm7, %ymm2
	vmovupd	(%rsi,%rax), %xmm1
	addl	$1, %edx
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	vmulpd	%ymm6, %ymm1, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%r10,%rax), %xmm2
	vinsertf128	$0x1, 16(%r10,%rax), %ymm2, %ymm2
	vmulpd	%ymm5, %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%r9,%rax), %xmm0
	vinsertf128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vmulpd	%ymm4, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%r8,%rax), %xmm0
	vinsertf128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %edi
	ja	.L19
	movl	-300(%rbp), %esi
	movl	-236(%rbp), %r11d
	movq	-312(%rbp), %rdi
	movl	%esi, %eax
	andl	$-4, %eax
	addl	%eax, %r11d
	cmpl	%eax, %esi
	je	.L22
.L16:
	leal	0(%r13,%r11), %ecx
	movl	-220(%rbp), %r9d
	leal	-1(%r11,%r13), %edx
	movslq	%ecx, %rcx
	movq	-216(%rbp), %r8
	vmovsd	(%rbx,%rcx,8), %xmm1
	leal	1(%r11), %eax
	movslq	%edx, %rdx
	vmovsd	(%rbx,%rdx,8), %xmm2
	leal	(%rax,%r13), %esi
	vmulsd	-176(%rbp), %xmm2, %xmm2
	movslq	%esi, %rsi
	vmulsd	-208(%rbp), %xmm1, %xmm0
	leaq	(%rbx,%rsi,8), %r10
	leal	(%r9,%r11), %edx
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r10), %xmm2
	vmulsd	-144(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%rdx,8), %xmm0
	movl	-224(%rbp), %edx
	vmulsd	-112(%rbp), %xmm0, %xmm0
	addl	%r11d, %edx
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rdx,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rcx,8)
	cmpl	%eax, -240(%rbp)
	jle	.L22
	vmovsd	(%rbx,%rcx,8), %xmm3
	vmovsd	(%r10), %xmm0
	leal	2(%r11), %edx
	leal	0(%r13,%rdx), %r8d
	movl	-220(%rbp), %ecx
	vmulsd	-208(%rbp), %xmm0, %xmm0
	movslq	%r8d, %r8
	vmulsd	-176(%rbp), %xmm3, %xmm3
	leaq	(%rbx,%r8,8), %r9
	vmovsd	(%r9), %xmm2
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	addl	-224(%rbp), %eax
	vaddsd	%xmm0, %xmm3, %xmm1
	vmulsd	-144(%rbp), %xmm2, %xmm0
	cltq
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%rcx,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rax,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-216(%rbp), %rax
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rax,%rsi,8)
	cmpl	%edx, -240(%rbp)
	jle	.L22
	vmovsd	(%rbx,%rsi,8), %xmm3
	vmovsd	(%r9), %xmm0
	leal	3(%r11), %eax
	leal	0(%r13,%rax), %ecx
	movl	-220(%rbp), %r9d
	vmulsd	-208(%rbp), %xmm0, %xmm0
	movslq	%ecx, %rcx
	vmulsd	-176(%rbp), %xmm3, %xmm3
	leaq	(%rbx,%rcx,8), %r10
	vmovsd	(%r10), %xmm2
	leal	(%r9,%rdx), %esi
	movslq	%esi, %rsi
	addl	-224(%rbp), %edx
	vaddsd	%xmm0, %xmm3, %xmm1
	vmulsd	-144(%rbp), %xmm2, %xmm0
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%rsi,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rdx,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-216(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r8,8)
	cmpl	%eax, -240(%rbp)
	jle	.L22
	vmovsd	(%rbx,%r8,8), %xmm3
	vmovsd	(%r10), %xmm0
	leal	4(%r11), %edx
	leal	0(%r13,%rdx), %esi
	movl	-220(%rbp), %r8d
	vmulsd	-208(%rbp), %xmm0, %xmm0
	movslq	%esi, %rsi
	vmulsd	-176(%rbp), %xmm3, %xmm3
	leaq	(%rbx,%rsi,8), %r9
	vmovsd	(%r9), %xmm2
	addl	%eax, %r8d
	movslq	%r8d, %r8
	addl	-224(%rbp), %eax
	vaddsd	%xmm0, %xmm3, %xmm1
	vmulsd	-144(%rbp), %xmm2, %xmm0
	cltq
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%r8,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rax,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-216(%rbp), %rax
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rax,%rcx,8)
	cmpl	%edx, -240(%rbp)
	jle	.L22
	vmovsd	(%rbx,%rcx,8), %xmm3
	vmovsd	(%r9), %xmm0
	leal	5(%r11), %eax
	leal	0(%r13,%rax), %r8d
	movl	-220(%rbp), %r9d
	vmulsd	-208(%rbp), %xmm0, %xmm0
	movslq	%r8d, %r8
	vmulsd	-176(%rbp), %xmm3, %xmm3
	leaq	(%rbx,%r8,8), %r10
	vmovsd	(%r10), %xmm2
	leal	(%r9,%rdx), %ecx
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm3, %xmm1
	vmulsd	-144(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%rcx,8), %xmm0
	movl	-224(%rbp), %ecx
	vmulsd	-112(%rbp), %xmm0, %xmm0
	addl	%ecx, %edx
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rdx,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-216(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%rsi,8)
	cmpl	%eax, -240(%rbp)
	jle	.L22
	vmovsd	(%rbx,%rsi,8), %xmm1
	vmovsd	(%r10), %xmm0
	leal	6(%r11,%r13), %edx
	vmulsd	-176(%rbp), %xmm1, %xmm1
	movslq	%edx, %rdx
	vmulsd	-208(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm3
	vmovsd	(%rbx,%rdx,8), %xmm0
	leal	(%r9,%rax), %edx
	addl	%ecx, %eax
	vmulsd	-144(%rbp), %xmm0, %xmm0
	movslq	%edx, %rdx
	cltq
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%rbx,%rdx,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movq	-216(%rbp), %rdx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rax,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r8,8)
.L22:
	movl	-320(%rbp), %eax
	addq	%r14, %rdi
	addq	%r14, %r12
	addq	%r14, %r15
	movq	-328(%rbp), %rsi
	addq	%r14, -272(%rbp)
	addl	%eax, -220(%rbp)
	addl	%eax, %r13d
	movl	-260(%rbp), %ecx
	addl	%eax, -224(%rbp)
	addq	%rsi, -288(%rbp)
	addq	%r14, -232(%rbp)
	addq	%rsi, -296(%rbp)
	addq	%r14, -248(%rbp)
	addq	%r14, -256(%rbp)
	cmpl	%ecx, -316(%rbp)
	jg	.L23
	movq	-216(%rbp), %r15
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L72
	movq	%rbx, %rdi
	call	dummy
	movq	%r15, %rdi
	call	dummy
	leaq	-208(%rbp), %rdi
	call	dummy
	leaq	-176(%rbp), %rdi
	call	dummy
	leaq	-144(%rbp), %rdi
	call	dummy
	leaq	-112(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L72:
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
	.p2align 4,,10
	.p2align 3
.L48:
	.cfi_restore_state
	movq	-232(%rbp), %rcx
	xorl	%eax, %eax
	movq	-216(%rbp), %rsi
	movq	-256(%rbp), %rdx
	movq	-440(%rbp), %r8
	addq	%rcx, %rsi
	movq	-248(%rbp), %rcx
	addq	%rbx, %rdx
	addq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	-208(%rbp), %xmm1
	vmovsd	-176(%rbp), %xmm2
	vmulsd	8(%r12,%rax), %xmm1, %xmm0
	vmulsd	(%r12,%rax), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%r12,%rax), %xmm2
	vmulsd	-144(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rcx,%rax), %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%rdx,%rax), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rsi,%rax)
	addq	$8, %rax
	cmpq	%r8, %rax
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
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$1, -316(%rbp)
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
	.align 8
.LC7:
	.long	795717946
	.long	1072287406
	.align 8
.LC8:
	.long	3996871656
	.long	1071323785
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
