	.file	"3d-1r-point-symmetric-constant-star-stencil.c_compilable.c"
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
	subq	$544, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	call	strtol
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	movl	%eax, %r14d
	movq	%rax, -184(%rbp)
	imull	%r13d, %r14d
	imull	%ebx, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -192(%rbp)
	call	posix_memalign
	movq	-192(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %r12
	testl	%r14d, %r14d
	jle	.L3
	leal	-1(%r14), %r15d
	movq	%r12, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	xorl	%esi, %esi
	cmpl	%edx, %r15d
	jb	.L4
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r12)
	cmpl	$1, %eax
	je	.L43
	vmovsd	%xmm0, 8(%r12)
	cmpl	$3, %eax
	jne	.L44
	vmovsd	%xmm0, 16(%r12)
	movl	$3, %esi
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r12,%rax,8), %rdx
	movl	%r14d, %r8d
	subl	%eax, %r8d
	xorl	%eax, %eax
	movl	%r8d, %edi
	shrl	$2, %edi
	.p2align 4,,10
	.p2align 3
.L7:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%eax, %edi
	ja	.L7
	movl	%r8d, %eax
	andl	$-4, %eax
	addl	%eax, %esi
	cmpl	%eax, %r8d
	je	.L81
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%esi, %rax
	vmovsd	%xmm0, (%r12,%rax,8)
	leal	1(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r12,%rax,8)
	leal	2(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r12,%rax,8)
	leal	3(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r12,%rax,8)
	leal	4(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	addl	$5, %esi
	vmovsd	%xmm0, (%r12,%rax,8)
	cmpl	%esi, %r14d
	jle	.L8
	movslq	%esi, %rsi
	vmovsd	%xmm0, (%r12,%rsi,8)
.L8:
	leaq	-80(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L82
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %esi
	cmovle	%eax, %r15d
	cmovg	%r14d, %esi
	cmpl	$4, %r15d
	ja	.L83
	movq	$0, -264(%rbp)
	xorl	%eax, %eax
.L31:
	movq	-264(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L35
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L35
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L35:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -176(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -80(%rbp)
	leal	-1(%r13), %eax
	movl	%eax, -516(%rbp)
	testl	%edx, %edx
	jne	.L84
	cmpl	$1, -516(%rbp)
	jle	.L79
	movq	-184(%rbp), %rdi
	leal	-1(%rbx), %eax
	movl	%ebx, -380(%rbp)
	movl	%eax, -492(%rbp)
	movl	%edi, %eax
	imull	%ebx, %eax
	movl	%eax, -520(%rbp)
	cmpl	$2, %edi
	jle	.L79
.L40:
	cmpl	$1, -492(%rbp)
	jle	.L76
	movl	-520(%rbp), %eax
	leal	(%rbx,%rbx), %ecx
	movl	%ebx, -536(%rbp)
	movl	%ecx, -532(%rbp)
	leal	-2(%rbx), %r11d
	movslq	%ecx, %rcx
	movq	%rcx, -528(%rbp)
	leaq	40(%r12), %rcx
	movq	%rcx, -448(%rbp)
	leaq	48(%r12), %rcx
	leal	(%rax,%rax), %edi
	movq	%rcx, -456(%rbp)
	movl	%edi, -512(%rbp)
	leal	-3(%rbx), %r10d
	movslq	%ebx, %rdi
	leaq	5(%rdi), %rcx
	movl	%eax, -496(%rbp)
	movq	%rcx, -576(%rbp)
	leaq	8(%r12), %rcx
	movq	%rcx, -296(%rbp)
	leaq	1(%rdi), %r15
	movl	%eax, %ecx
	leal	(%rax,%rbx), %eax
	subl	%ecx, %ebx
	movq	%r15, -568(%rbp)
	movl	%eax, -560(%rbp)
	movq	-184(%rbp), %rax
	leaq	-144(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	movq	%rdi, -376(%rbp)
	leaq	-112(%rbp), %r14
	movl	%ebx, -556(%rbp)
	leaq	0(,%rdi,8), %r13
	movq	%rsi, -424(%rbp)
	subl	$1, %eax
	movq	%rdx, -432(%rbp)
	movl	%eax, -384(%rbp)
	movl	%r11d, %eax
	addq	%r15, %rax
	movq	%r14, -440(%rbp)
	movq	%r13, %r15
	movq	%rax, -544(%rbp)
	movl	%r10d, %eax
	addq	%rdi, %rax
	movl	%r11d, -316(%rbp)
	movq	%rax, -552(%rbp)
	leaq	8(%rdx), %rax
	movq	%rax, -392(%rbp)
	leaq	8(%rsi), %rax
	movq	%rax, -400(%rbp)
	leaq	8(%r14), %rax
	movq	%rax, -408(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movl	%r10d, -484(%rbp)
	movl	$0, -508(%rbp)
	movl	$1, -504(%rbp)
	movq	%rax, -416(%rbp)
	.p2align 4,,10
	.p2align 3
.L27:
	movslq	-496(%rbp), %rbx
	movq	-568(%rbp), %rax
	movq	-264(%rbp), %rsi
	movq	-376(%rbp), %rcx
	addl	$1, -504(%rbp)
	movq	%rbx, -328(%rbp)
	addq	%rbx, %rax
	leaq	(%rsi,%rax,8), %r13
	movq	%rcx, %rax
	addq	%rbx, %rax
	leaq	0(,%rax,8), %rdx
	movq	%rax, -304(%rbp)
	movq	%rsi, %rax
	addq	%rdx, %rax
	movq	%rdx, -184(%rbp)
	movq	%rax, -312(%rbp)
	movq	-576(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%rsi,%rax,8), %rax
	movq	%rax, -224(%rbp)
	movq	-544(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%rsi,%rax,8), %rax
	movq	-296(%rbp), %rsi
	movq	%rax, -232(%rbp)
	movq	-552(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%rsi,%rax,8), %rax
	movq	-528(%rbp), %rsi
	movq	%rax, -368(%rbp)
	movl	-536(%rbp), %eax
	addl	%ebx, %eax
	movl	%eax, -320(%rbp)
	movl	-556(%rbp), %eax
	addl	%ebx, %eax
	movl	%eax, -200(%rbp)
	movl	-560(%rbp), %eax
	addl	%ebx, %eax
	movl	%eax, -204(%rbp)
	movl	-532(%rbp), %eax
	addl	%ebx, %eax
	movl	%eax, -208(%rbp)
	leaq	0(,%rbx,8), %rax
	movq	%rax, -240(%rbp)
	movq	%rbx, %rax
	addq	%rsi, %rax
	movq	%rax, -480(%rbp)
	salq	$3, %rax
	movq	%rax, -248(%rbp)
	movslq	-508(%rbp), %rax
	leaq	(%rcx,%rax), %rdx
	subq	%rbx, %rax
	movq	%rdx, -464(%rbp)
	salq	$3, %rdx
	movq	%rdx, -256(%rbp)
	movslq	-512(%rbp), %rdx
	movq	%rcx, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movl	$0, -212(%rbp)
	movq	$0, -192(%rbp)
	leaq	(%rcx,%rdx), %r14
	movq	%rdx, %rcx
	movq	%r14, -472(%rbp)
	salq	$3, %r14
	subq	%rbx, %rcx
	movq	%r14, -272(%rbp)
	movq	%rax, %r14
	movl	$1, -216(%rbp)
	leal	1(%rbx), %eax
	movl	%eax, -488(%rbp)
	leal	2(%rbx), %eax
	movq	%rcx, %rbx
	movl	%eax, -500(%rbp)
	movq	%r15, %rax
	movq	%r13, %r15
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L28:
	movq	-232(%rbp), %rdi
	movq	-432(%rbp), %rsi
	addl	$1, -216(%rbp)
	cmpq	-392(%rbp), %r15
	movq	-184(%rbp), %r9
	movq	-224(%rbp), %r10
	movq	-296(%rbp), %r11
	setnb	%cl
	cmpq	%rsi, %rdi
	movq	-256(%rbp), %r8
	leaq	(%r12,%r9), %rax
	setbe	%dl
	orl	%ecx, %edx
	cmpq	-400(%rbp), %r15
	setnb	%sil
	cmpq	-424(%rbp), %rdi
	setbe	%cl
	orl	%esi, %ecx
	andl	%edx, %ecx
	cmpl	$5, -316(%rbp)
	seta	%dl
	andl	%edx, %ecx
	cmpq	-408(%rbp), %r15
	setnb	%dl
	cmpq	-440(%rbp), %rdi
	setbe	%sil
	orl	%esi, %edx
	andl	%edx, %ecx
	cmpq	-416(%rbp), %r15
	leaq	-80(%rbp), %rdx
	setnb	%sil
	cmpq	%rdx, %rdi
	movq	-448(%rbp), %rdi
	setbe	%dl
	orl	%esi, %edx
	andl	%ecx, %edx
	movq	-456(%rbp), %rcx
	addq	%r9, %rcx
	movq	-240(%rbp), %r9
	cmpq	%rcx, %r15
	setnb	%cl
	cmpq	%rax, %r10
	setbe	%sil
	orl	%esi, %ecx
	movq	%r11, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r15
	setnb	%cl
	addq	%r9, %rsi
	movq	-248(%rbp), %r9
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %ecx
	movq	%r11, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r15
	setnb	%cl
	addq	%r9, %rsi
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %ecx
	movq	%r11, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r15
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L52
	movq	-272(%rbp), %rsi
	addq	%rsi, %rdi
	cmpq	%rdi, %r15
	setnb	%cl
	addq	%rsi, %r11
	cmpq	%r11, %r10
	setbe	%dl
	orb	%dl, %cl
	je	.L52
	movq	-296(%rbp), %rdx
	addq	-184(%rbp), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-484(%rbp), %eax
	ja	.L47
	movl	$1, -196(%rbp)
	testl	%edx, %edx
	je	.L17
	movslq	-320(%rbp), %r8
	movl	$2, -196(%rbp)
	movl	-200(%rbp), %r10d
	leal	1(%r8), %esi
	vmovsd	(%r12,%r8,8), %xmm1
	movq	%r8, %r11
	leal	2(%r8), %eax
	movslq	%esi, %rsi
	movl	-204(%rbp), %r8d
	leaq	(%r12,%rsi,8), %rdi
	cltq
	leaq	(%r12,%rax,8), %rcx
	vmovsd	(%rdi), %xmm2
	vaddsd	(%rcx), %xmm1, %xmm1
	leal	1(%r10), %r9d
	vmulsd	-144(%rbp), %xmm1, %xmm1
	addl	$1, %r8d
	movslq	%r9d, %r9
	vmulsd	-176(%rbp), %xmm2, %xmm0
	movslq	%r8d, %r8
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r12,%r9,8), %xmm0
	vaddsd	(%r12,%r8,8), %xmm0, %xmm0
	movl	-488(%rbp), %r8d
	addl	-212(%rbp), %r8d
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movslq	%r8d, %r9
	movl	-208(%rbp), %r8d
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r12,%r9,8), %xmm0
	addl	$1, %r8d
	movq	-264(%rbp), %r9
	movslq	%r8d, %r8
	vaddsd	(%r12,%r8,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r9,%rsi,8)
	cmpl	$1, %edx
	je	.L17
	leal	3(%r11), %esi
	movl	-204(%rbp), %r8d
	addl	$2, %r10d
	movl	$3, -196(%rbp)
	movslq	%esi, %rsi
	vmovsd	(%rdi), %xmm1
	movslq	%r10d, %r10
	leaq	(%r12,%rsi,8), %r9
	vmovsd	(%rcx), %xmm0
	vaddsd	(%r9), %xmm1, %xmm1
	vmulsd	-176(%rbp), %xmm0, %xmm0
	addl	$2, %r8d
	vmulsd	-144(%rbp), %xmm1, %xmm1
	movslq	%r8d, %r8
	movl	-208(%rbp), %edi
	vmovsd	(%r12,%r10,8), %xmm2
	movl	-500(%rbp), %r10d
	vaddsd	(%r12,%r8,8), %xmm2, %xmm2
	addl	-212(%rbp), %r10d
	vaddsd	%xmm0, %xmm1, %xmm0
	addl	$2, %edi
	movslq	%edi, %rdi
	vmulsd	-112(%rbp), %xmm2, %xmm2
	movslq	%r10d, %r8
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r12,%r8,8), %xmm0
	vaddsd	(%r12,%rdi,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-264(%rbp), %r8
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rax,8)
	cmpl	$3, %edx
	jne	.L17
	leal	4(%r11), %eax
	movl	-204(%rbp), %r8d
	movl	$4, -196(%rbp)
	cltq
	movl	-200(%rbp), %r10d
	vmovsd	(%r12,%rax,8), %xmm3
	vmovsd	(%r9), %xmm0
	vaddsd	(%rcx), %xmm3, %xmm3
	leal	3(%r8), %eax
	leal	3(%r10), %ecx
	cltq
	movl	-212(%rbp), %edi
	vmulsd	-176(%rbp), %xmm0, %xmm0
	movslq	%ecx, %rcx
	vmulsd	-144(%rbp), %xmm3, %xmm3
	movq	-264(%rbp), %r8
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r12,%rcx,8), %xmm0
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	movl	-496(%rbp), %eax
	vmulsd	-112(%rbp), %xmm0, %xmm0
	leal	3(%rdi,%rax), %ecx
	movl	-208(%rbp), %edi
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r12,%rcx,8), %xmm0
	leal	3(%rdi), %eax
	cltq
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rsi,8)
.L17:
	movl	-316(%rbp), %edi
	movl	%edx, %eax
	movq	%r12, -360(%rbp)
	movq	-184(%rbp), %r11
	movq	-328(%rbp), %r9
	vbroadcastsd	-176(%rbp), %ymm6
	subl	%edx, %edi
	movq	-304(%rbp), %rdx
	movl	%edi, -332(%rbp)
	shrl	$2, %edi
	vbroadcastsd	-144(%rbp), %ymm5
	movl	%edi, -336(%rbp)
	movq	-192(%rbp), %rdi
	vbroadcastsd	-112(%rbp), %ymm4
	leaq	1(%rax,%rdx), %rcx
	vbroadcastsd	-80(%rbp), %ymm3
	leaq	2(%rax,%rdx), %rdx
	salq	$3, %rcx
	leaq	(%r12,%rcx), %rsi
	addq	-264(%rbp), %rcx
	movq	%rsi, -344(%rbp)
	leaq	(%r11,%rax,8), %rsi
	leaq	(%r12,%rdx,8), %r11
	movq	-464(%rbp), %rdx
	addq	%r12, %rsi
	leaq	1(%rdi,%rdx), %rdx
	addq	%rax, %rdx
	leaq	(%r12,%rdx,8), %r10
	movq	-472(%rbp), %rdx
	leaq	1(%rdi,%rdx), %rdx
	addq	%rax, %rdx
	leaq	(%r12,%rdx,8), %rdx
	movq	%rdx, -352(%rbp)
	leaq	1(%r9,%rdi), %rdx
	movq	-480(%rbp), %r9
	addq	%rax, %rdx
	leaq	(%r12,%rdx,8), %r8
	leaq	1(%rdi,%r9), %rdx
	movq	-352(%rbp), %r9
	addq	%rdx, %rax
	xorl	%edx, %edx
	leaq	(%r12,%rax,8), %rdi
	movq	-344(%rbp), %r12
	xorl	%eax, %eax
	movq	%rbx, -344(%rbp)
	movl	-336(%rbp), %ebx
	.p2align 4,,10
	.p2align 3
.L19:
	vmovupd	(%rsi,%rax), %xmm1
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm1, %ymm1
	addl	$1, %edx
	vmovupd	(%r11,%rax), %xmm0
	vinsertf128	$0x1, 16(%r11,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmulpd	(%r12,%rax), %ymm6, %ymm0
	vmulpd	%ymm5, %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%r10,%rax), %xmm0
	vinsertf128	$0x1, 16(%r10,%rax), %ymm0, %ymm1
	vmovupd	(%r9,%rax), %xmm0
	vinsertf128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmulpd	%ymm4, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%r8,%rax), %xmm0
	vinsertf128	$0x1, 16(%r8,%rax), %ymm0, %ymm2
	vmovupd	(%rdi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %ebx
	ja	.L19
	movl	-332(%rbp), %edi
	movl	-196(%rbp), %edx
	movq	-360(%rbp), %r12
	movq	-344(%rbp), %rbx
	movl	%edi, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %edi
	je	.L23
.L16:
	movq	-280(%rbp), %rdi
	movslq	%edx, %rdx
	movq	-328(%rbp), %rax
	movq	-192(%rbp), %rsi
	movq	-288(%rbp), %rcx
	movq	-312(%rbp), %r8
	addq	%rdi, %rax
	subq	%rdi, %rsi
	addq	%rdx, %rax
	leaq	-8(%r12,%rax,8), %rax
	subq	%rdi, %rcx
	movl	-492(%rbp), %edi
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	8(%rax), %xmm2
	vmovsd	(%rax), %xmm1
	vmulsd	-176(%rbp), %xmm2, %xmm0
	vaddsd	16(%rax), %xmm1, %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rax,%r14,8), %xmm1
	vaddsd	8(%rax,%rbx,8), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm1
	vmovsd	8(%rax,%rsi,8), %xmm0
	vaddsd	8(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %edi
	jg	.L21
.L23:
	movq	-376(%rbp), %rax
	addq	%r13, %r15
	addq	%rax, -192(%rbp)
	addq	%rax, -280(%rbp)
	addq	%rax, -288(%rbp)
	addq	%rax, -304(%rbp)
	addq	%r13, -312(%rbp)
	movl	-380(%rbp), %eax
	addq	%r13, -224(%rbp)
	addq	%r13, -232(%rbp)
	addq	%r13, -368(%rbp)
	addq	%r13, -184(%rbp)
	addl	%eax, -320(%rbp)
	addl	%eax, -200(%rbp)
	addl	%eax, -204(%rbp)
	addl	%eax, -208(%rbp)
	addl	%eax, -212(%rbp)
	addq	%r13, -240(%rbp)
	addq	%r13, -248(%rbp)
	addq	%r13, -256(%rbp)
	addq	%r13, -272(%rbp)
	movl	-384(%rbp), %ecx
	cmpl	%ecx, -216(%rbp)
	jne	.L28
	movl	-520(%rbp), %eax
	movq	%r13, %r15
	addl	%eax, -496(%rbp)
	addl	%eax, -508(%rbp)
	addl	%eax, -512(%rbp)
	movl	-504(%rbp), %ebx
	cmpl	%ebx, -516(%rbp)
	jg	.L27
.L76:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L77
	movq	%r12, %rdi
	call	dummy
	movq	-264(%rbp), %rdi
	call	dummy
	leaq	-176(%rbp), %rdi
	call	dummy
	leaq	-144(%rbp), %rdi
	call	dummy
	leaq	-112(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L77:
	addq	$544, %rsp
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
.L43:
	.cfi_restore_state
	movl	$1, %esi
	jmp	.L5
.L83:
	movq	$0, -264(%rbp)
	xorl	%edx, %edx
.L9:
	movq	-264(%rbp), %rcx
	subl	%edx, %esi
	movl	%esi, %edi
	vmovapd	.LC3(%rip), %ymm0
	shrl	$2, %edi
	leaq	(%rcx,%rdx,8), %rcx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L11:
	addl	$1, %edx
	vmovapd	%ymm0, (%rcx)
	addq	$32, %rcx
	cmpl	%edx, %edi
	ja	.L11
	movl	%esi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %esi
	jne	.L31
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L52:
	movq	-280(%rbp), %rdi
	movq	%r15, %rdx
	movq	-192(%rbp), %rsi
	movq	-288(%rbp), %rcx
	subq	%rdi, %rsi
	subq	%rdi, %rcx
	movq	-368(%rbp), %rdi
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	(%rax), %xmm1
	addq	$8, %rdx
	vaddsd	16(%rax), %xmm1, %xmm1
	vmovsd	-176(%rbp), %xmm2
	vmulsd	-144(%rbp), %xmm1, %xmm1
	vmulsd	8(%rax), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rax,%rbx,8), %xmm1
	vaddsd	8(%rax,%r14,8), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm1
	vmovsd	8(%rax,%rsi,8), %xmm0
	vaddsd	8(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rdx)
	cmpq	%rdi, %rax
	jne	.L22
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L47:
	movl	$1, %edx
	jmp	.L16
.L82:
	movq	-80(%rbp), %rdi
	testl	%r14d, %r14d
	movl	$1, %esi
	cmovg	%r14d, %esi
	movq	%rdi, -264(%rbp)
	shrq	$3, %rdi
	movq	%rdi, %rdx
	movl	$5, %edi
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r15d
	cmpl	$5, %ecx
	cmovb	%edi, %ecx
	cmpl	%ecx, %r15d
	jb	.L31
	testl	%edx, %edx
	je	.L9
	movq	-264(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L45
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L46
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
	jmp	.L9
.L84:
	movq	%r12, %rdi
	vzeroupper
	call	dummy
	movq	-264(%rbp), %rdi
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
	cmpl	$1, -516(%rbp)
	jle	.L15
	movq	-184(%rbp), %rdi
	leal	-1(%rbx), %eax
	movl	%ebx, -380(%rbp)
	movl	%eax, -492(%rbp)
	movl	%edi, %eax
	imull	%ebx, %eax
	movl	%eax, -520(%rbp)
	cmpl	$2, %edi
	jg	.L40
	jmp	.L15
.L79:
	vzeroupper
	jmp	.L77
.L81:
	vzeroupper
	jmp	.L8
.L45:
	movl	$1, %eax
	jmp	.L9
.L3:
	leaq	-80(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -264(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -264(%rbp)
	jmp	.L35
.L46:
	movl	$2, %eax
	jmp	.L9
.L44:
	movl	$2, %esi
	jmp	.L5
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
