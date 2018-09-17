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
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, %rbx
	subq	$544, %rsp
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	call	strtol
	movl	%r13d, %r14d
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movq	%rax, %r12
	movl	$10, %edx
	call	strtol
	imull	%r12d, %r14d
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	movq	%rax, %rbx
	imull	%eax, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -184(%rbp)
	call	posix_memalign
	movq	-184(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %r10
	testl	%r14d, %r14d
	jle	.L3
	movq	%r10, %rax
	movl	$5, %esi
	leal	-1(%r14), %r15d
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
	vmovsd	%xmm0, (%r10)
	cmpl	$1, %eax
	je	.L43
	vmovsd	%xmm0, 8(%r10)
	cmpl	$3, %eax
	jne	.L44
	vmovsd	%xmm0, 16(%r10)
	movl	$3, %esi
.L5:
	movl	%r14d, %r8d
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r10,%rax,8), %rdx
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
	vmovsd	%xmm0, (%r10,%rax,8)
	leal	1(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r10,%rax,8)
	leal	2(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r10,%rax,8)
	leal	3(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r10,%rax,8)
	leal	4(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	addl	$5, %esi
	vmovsd	%xmm0, (%r10,%rax,8)
	cmpl	%esi, %r14d
	jle	.L8
	movslq	%esi, %rsi
	vmovsd	%xmm0, (%r10,%rsi,8)
.L8:
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	movq	%r10, -184(%rbp)
	call	posix_memalign
	movq	-184(%rbp), %r10
	testl	%eax, %eax
	je	.L82
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %esi
	cmovle	%eax, %r15d
	cmovg	%r14d, %esi
	cmpl	$4, %r15d
	ja	.L83
	movq	$0, -296(%rbp)
	xorl	%eax, %eax
.L31:
	vmovsd	.LC2(%rip), %xmm0
	movq	-296(%rbp), %rdi
	movslq	%eax, %rdx
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
	movl	%eax, -508(%rbp)
	testl	%edx, %edx
	jne	.L84
	cmpl	$1, -508(%rbp)
	jle	.L79
	leal	-1(%rbx), %eax
	movl	%ebx, -372(%rbp)
	movl	%eax, -484(%rbp)
	movl	%ebx, %eax
	imull	%r12d, %eax
	movl	%eax, -512(%rbp)
	cmpl	$2, %r12d
	jle	.L79
.L40:
	cmpl	$1, -484(%rbp)
	jle	.L76
	movl	-512(%rbp), %eax
	leal	(%rbx,%rbx), %esi
	leal	-2(%rbx), %r9d
	movl	%ebx, -528(%rbp)
	movl	%esi, -524(%rbp)
	movslq	%esi, %rsi
	leal	-3(%rbx), %r8d
	leaq	-144(%rbp), %rcx
	leal	(%rax,%rax), %edi
	movq	%rsi, -520(%rbp)
	leaq	40(%r10), %rsi
	movl	%edi, -504(%rbp)
	movslq	%ebx, %rdi
	leaq	-112(%rbp), %r15
	leaq	-176(%rbp), %rdx
	movq	%rsi, -424(%rbp)
	leaq	48(%r10), %rsi
	leaq	1(%rdi), %r14
	movq	%rsi, -432(%rbp)
	leaq	5(%rdi), %rsi
	leaq	0(,%rdi,8), %r11
	movq	%rsi, -568(%rbp)
	leaq	8(%r10), %rsi
	movl	%eax, -488(%rbp)
	movq	%rsi, -288(%rbp)
	movl	%eax, %esi
	leal	(%rax,%rbx), %eax
	movl	%eax, -552(%rbp)
	leal	-1(%r12), %eax
	subl	%esi, %ebx
	movl	%eax, -376(%rbp)
	movl	%r9d, %eax
	addq	%r14, %rax
	movl	%ebx, -548(%rbp)
	movq	%rax, -536(%rbp)
	movl	%r8d, %eax
	addq	%rdi, %rax
	movq	%rdi, -368(%rbp)
	movq	%rax, -544(%rbp)
	leaq	8(%rcx), %rax
	movq	%rax, -384(%rbp)
	leaq	8(%rdx), %rax
	movq	%rax, -392(%rbp)
	leaq	8(%r15), %rax
	movq	%rax, -400(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, -440(%rbp)
	movl	$0, -500(%rbp)
	movl	$1, -496(%rbp)
	movq	%rcx, -448(%rbp)
	movq	%r14, -560(%rbp)
	movl	%r9d, -316(%rbp)
	movl	%r8d, -476(%rbp)
	movq	%rax, -408(%rbp)
	movq	%r15, -416(%rbp)
	movq	%r11, %r15
	.p2align 4,,10
	.p2align 3
.L27:
	movslq	-488(%rbp), %rdi
	movq	-560(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	-368(%rbp), %rbx
	addq	%rdi, %rax
	addl	$1, -496(%rbp)
	leaq	(%rdx,%rax,8), %r13
	movq	%rbx, %rax
	movq	%rdi, -328(%rbp)
	addq	%rdi, %rax
	leaq	0(,%rax,8), %rcx
	movq	%rax, -304(%rbp)
	movq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rcx, -184(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rax, -312(%rbp)
	movq	-568(%rbp), %rax
	addq	%rdi, %rax
	leaq	(%rdx,%rax,8), %rax
	movq	%rax, -224(%rbp)
	movq	-536(%rbp), %rax
	addq	%rdi, %rax
	leaq	(%rdx,%rax,8), %rax
	movq	-288(%rbp), %rdx
	movq	%rax, -232(%rbp)
	movq	-544(%rbp), %rax
	addq	%rdi, %rax
	leaq	(%rdx,%rax,8), %rax
	movq	%rax, -360(%rbp)
	movl	-528(%rbp), %eax
	addl	%edi, %eax
	movl	%eax, -320(%rbp)
	movl	-548(%rbp), %eax
	addl	%edi, %eax
	movl	%eax, -200(%rbp)
	movl	-552(%rbp), %eax
	addl	%edi, %eax
	movl	%eax, -204(%rbp)
	movl	-524(%rbp), %eax
	addl	%edi, %eax
	movl	%eax, -208(%rbp)
	leaq	0(,%rdi,8), %rax
	movq	%rax, -240(%rbp)
	movq	%rdi, %rax
	addq	%rcx, %rax
	movq	%rax, -472(%rbp)
	salq	$3, %rax
	movq	%rax, -248(%rbp)
	movslq	-500(%rbp), %rax
	leaq	(%rbx,%rax), %rdx
	subq	%rdi, %rax
	movq	%rdx, -456(%rbp)
	salq	$3, %rdx
	movq	%rdx, -256(%rbp)
	movslq	-504(%rbp), %rdx
	movq	%rbx, -272(%rbp)
	leaq	(%rbx,%rdx), %r14
	movq	%rdx, %rbx
	movq	%rcx, -280(%rbp)
	movq	%r14, -464(%rbp)
	salq	$3, %r14
	subq	%rdi, %rbx
	movq	%r14, -264(%rbp)
	movq	%rax, %r14
	leal	1(%rdi), %eax
	movl	%eax, -480(%rbp)
	leal	2(%rdi), %eax
	movl	$0, -212(%rbp)
	movq	$0, -192(%rbp)
	movl	$1, -216(%rbp)
	movl	%eax, -492(%rbp)
	movq	%r14, %rax
	movq	%r15, %r14
	movq	%r13, %r15
	movq	%rbx, %r13
	movq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L28:
	movq	-232(%rbp), %rdi
	movq	-448(%rbp), %rdx
	addl	$1, -216(%rbp)
	cmpq	-384(%rbp), %r15
	setnb	%cl
	cmpq	%rdx, %rdi
	movq	-184(%rbp), %r11
	movq	-224(%rbp), %r9
	setbe	%dl
	movq	-240(%rbp), %r8
	orl	%ecx, %edx
	cmpq	-392(%rbp), %r15
	leaq	(%r10,%r11), %rax
	setnb	%sil
	cmpq	-440(%rbp), %rdi
	setbe	%cl
	orl	%esi, %ecx
	andl	%edx, %ecx
	cmpl	$5, -316(%rbp)
	seta	%dl
	andl	%edx, %ecx
	cmpq	-400(%rbp), %r15
	setnb	%dl
	cmpq	-416(%rbp), %rdi
	setbe	%sil
	orl	%esi, %edx
	andl	%edx, %ecx
	cmpq	-408(%rbp), %r15
	leaq	-80(%rbp), %rdx
	setnb	%sil
	cmpq	%rdx, %rdi
	movq	-424(%rbp), %rdi
	setbe	%dl
	orl	%esi, %edx
	andl	%ecx, %edx
	movq	-432(%rbp), %rcx
	addq	%r11, %rcx
	movq	-288(%rbp), %r11
	cmpq	%rcx, %r15
	setnb	%cl
	cmpq	%rax, %r9
	setbe	%sil
	orl	%esi, %ecx
	movq	%r11, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r15
	setnb	%cl
	addq	%r8, %rsi
	movq	-248(%rbp), %r8
	cmpq	%rsi, %r9
	setbe	%sil
	orl	%esi, %ecx
	movq	%r11, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r15
	setnb	%cl
	addq	%r8, %rsi
	movq	-256(%rbp), %r8
	cmpq	%rsi, %r9
	setbe	%sil
	orl	%esi, %ecx
	movq	%r11, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r15
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %r9
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L52
	movq	-264(%rbp), %rsi
	addq	%rsi, %rdi
	cmpq	%rdi, %r15
	setnb	%cl
	addq	%rsi, %r11
	cmpq	%r11, %r9
	setbe	%dl
	orb	%dl, %cl
	je	.L52
	movq	-288(%rbp), %rcx
	addq	-184(%rbp), %rcx
	shrq	$3, %rcx
	negq	%rcx
	andl	$3, %ecx
	leal	3(%rcx), %eax
	cmpl	-476(%rbp), %eax
	ja	.L47
	movl	$1, -196(%rbp)
	testl	%ecx, %ecx
	je	.L17
	movslq	-320(%rbp), %rdi
	movl	-200(%rbp), %r11d
	movl	$2, -196(%rbp)
	leal	1(%rdi), %edx
	leal	2(%rdi), %eax
	vmovsd	(%r10,%rdi,8), %xmm1
	movq	%rdi, %r12
	movslq	%edx, %rdx
	cltq
	movl	-204(%rbp), %edi
	leal	1(%r11), %r9d
	leaq	(%r10,%rdx,8), %r8
	leaq	(%r10,%rax,8), %rsi
	movslq	%r9d, %r9
	vmovsd	(%r8), %xmm2
	vaddsd	(%rsi), %xmm1, %xmm1
	addl	$1, %edi
	vmulsd	-144(%rbp), %xmm1, %xmm1
	movslq	%edi, %rdi
	vmulsd	-176(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r10,%r9,8), %xmm0
	vaddsd	(%r10,%rdi,8), %xmm0, %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movl	-208(%rbp), %edi
	movl	-480(%rbp), %r9d
	addl	-212(%rbp), %r9d
	addl	$1, %edi
	movslq	%r9d, %r9
	movslq	%edi, %rdi
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r10,%r9,8), %xmm0
	vaddsd	(%r10,%rdi,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-296(%rbp), %r9
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r9,%rdx,8)
	cmpl	$1, %ecx
	je	.L17
	leal	3(%r12), %edi
	movl	-204(%rbp), %edx
	vmovsd	(%rsi), %xmm0
	addl	$2, %r11d
	movslq	%edi, %rdi
	vmovsd	(%r8), %xmm1
	movslq	%r11d, %r11
	movl	-492(%rbp), %r8d
	leaq	(%r10,%rdi,8), %r9
	addl	$2, %edx
	vmovsd	(%r10,%r11,8), %xmm2
	addl	-212(%rbp), %r8d
	vaddsd	(%r9), %xmm1, %xmm1
	vmulsd	-176(%rbp), %xmm0, %xmm0
	movslq	%edx, %rdx
	movslq	%r8d, %r8
	vmulsd	-144(%rbp), %xmm1, %xmm1
	vaddsd	(%r10,%rdx,8), %xmm2, %xmm2
	movl	$3, -196(%rbp)
	vmulsd	-112(%rbp), %xmm2, %xmm2
	movl	-208(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r10,%r8,8), %xmm0
	vaddsd	(%r10,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-296(%rbp), %r8
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rax,8)
	cmpl	$3, %ecx
	jne	.L17
	leal	4(%r12), %eax
	vmovsd	(%r9), %xmm0
	vmulsd	-176(%rbp), %xmm0, %xmm0
	movl	$4, -196(%rbp)
	cltq
	movl	-200(%rbp), %r11d
	vmovsd	(%r10,%rax,8), %xmm3
	vaddsd	(%rsi), %xmm3, %xmm3
	movl	-204(%rbp), %eax
	leal	3(%r11), %edx
	vmulsd	-144(%rbp), %xmm3, %xmm3
	movslq	%edx, %rdx
	movl	-488(%rbp), %esi
	addl	$3, %eax
	cltq
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r10,%rdx,8), %xmm0
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movl	-212(%rbp), %edx
	movl	-208(%rbp), %eax
	leal	3(%rdx,%rsi), %edx
	addl	$3, %eax
	movslq	%edx, %rdx
	cltq
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r10,%rdx,8), %xmm0
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rdi,8)
.L17:
	movl	-316(%rbp), %esi
	movq	-304(%rbp), %rdx
	movl	%ecx, %eax
	movq	%r10, -352(%rbp)
	movq	-192(%rbp), %r8
	vbroadcastsd	-112(%rbp), %ymm4
	subl	%ecx, %esi
	movq	-184(%rbp), %rcx
	vbroadcastsd	-176(%rbp), %ymm6
	movl	%esi, -332(%rbp)
	shrl	$2, %esi
	vbroadcastsd	-80(%rbp), %ymm3
	vbroadcastsd	-144(%rbp), %ymm5
	movl	%esi, -336(%rbp)
	leaq	1(%rax,%rdx), %rsi
	salq	$3, %rsi
	leaq	(%r10,%rsi), %rdi
	addq	-296(%rbp), %rsi
	movq	%rdi, -344(%rbp)
	leaq	(%rcx,%rax,8), %rdi
	leaq	2(%rax,%rdx), %rcx
	movq	-456(%rbp), %rdx
	leaq	(%r10,%rcx,8), %r12
	addq	%r10, %rdi
	leaq	1(%r8,%rdx), %rcx
	addq	%rax, %rcx
	leaq	(%r10,%rcx,8), %rdx
	movq	-464(%rbp), %rcx
	leaq	1(%r8,%rcx), %rcx
	addq	%rax, %rcx
	leaq	(%r10,%rcx,8), %r11
	movq	-328(%rbp), %rcx
	leaq	1(%rcx,%r8), %rcx
	addq	%rax, %rcx
	leaq	(%r10,%rcx,8), %r9
	movq	-472(%rbp), %rcx
	leaq	1(%r8,%rcx), %rcx
	addq	%rcx, %rax
	xorl	%ecx, %ecx
	leaq	(%r10,%rax,8), %r8
	movq	-344(%rbp), %r10
	xorl	%eax, %eax
	movq	%rbx, -344(%rbp)
	movl	-336(%rbp), %ebx
	.p2align 4,,10
	.p2align 3
.L19:
	vmovupd	(%r12,%rax), %ymm1
	vaddpd	(%rdi,%rax), %ymm1, %ymm1
	addl	$1, %ecx
	vmulpd	(%r10,%rax), %ymm6, %ymm0
	vmulpd	%ymm5, %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%r11,%rax), %ymm0
	vaddpd	(%rdx,%rax), %ymm0, %ymm0
	vmulpd	%ymm4, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%r8,%rax), %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpl	%ecx, %ebx
	ja	.L19
	movl	-332(%rbp), %edi
	movl	-196(%rbp), %edx
	movq	-352(%rbp), %r10
	movq	-344(%rbp), %rbx
	movl	%edi, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %edi
	je	.L23
.L16:
	movq	-272(%rbp), %rdi
	movq	-328(%rbp), %rax
	movslq	%edx, %rdx
	movq	-192(%rbp), %rsi
	movq	-280(%rbp), %rcx
	addq	%rdi, %rax
	movq	-312(%rbp), %r8
	addq	%rdx, %rax
	subq	%rdi, %rsi
	subq	%rdi, %rcx
	movl	-484(%rbp), %edi
	leaq	-8(%r10,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	8(%rax), %xmm2
	vmovsd	(%rax), %xmm1
	vmulsd	-176(%rbp), %xmm2, %xmm0
	vaddsd	16(%rax), %xmm1, %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rax,%rbx,8), %xmm1
	vmovsd	8(%rax,%rsi,8), %xmm0
	vaddsd	8(%rax,%r13,8), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm1
	vaddsd	8(%rax,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	addq	$8, %rax
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %edi
	jg	.L21
.L23:
	movq	-368(%rbp), %rax
	addq	%r14, -312(%rbp)
	addq	%r14, %r15
	addq	%rax, -192(%rbp)
	addq	%rax, -272(%rbp)
	addq	%rax, -280(%rbp)
	addq	%rax, -304(%rbp)
	movl	-372(%rbp), %eax
	addq	%r14, -224(%rbp)
	addq	%r14, -232(%rbp)
	addq	%r14, -360(%rbp)
	addq	%r14, -184(%rbp)
	addl	%eax, -320(%rbp)
	addl	%eax, -200(%rbp)
	addl	%eax, -204(%rbp)
	addl	%eax, -208(%rbp)
	addl	%eax, -212(%rbp)
	addq	%r14, -240(%rbp)
	addq	%r14, -248(%rbp)
	movl	-376(%rbp), %edx
	addq	%r14, -256(%rbp)
	addq	%r14, -264(%rbp)
	cmpl	%edx, -216(%rbp)
	jne	.L28
	movl	-512(%rbp), %eax
	movq	%r14, %r15
	addl	%eax, -488(%rbp)
	addl	%eax, -500(%rbp)
	movl	-496(%rbp), %ebx
	addl	%eax, -504(%rbp)
	cmpl	%ebx, -508(%rbp)
	jg	.L27
.L76:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L77
	movq	%r10, %rdi
	call	dummy
	movq	-296(%rbp), %rdi
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
	movq	$0, -296(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %esi
	movq	-296(%rbp), %rcx
	vmovapd	.LC3(%rip), %ymm0
	movl	%esi, %edi
	leaq	(%rcx,%rdx,8), %rcx
	shrl	$2, %edi
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
	movq	-272(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	%r15, %rdx
	movq	-280(%rbp), %rcx
	subq	%rdi, %rsi
	subq	%rdi, %rcx
	movq	-360(%rbp), %rdi
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	(%rax), %xmm1
	vmovsd	-176(%rbp), %xmm2
	addq	$8, %rdx
	vmulsd	8(%rax), %xmm2, %xmm0
	vaddsd	16(%rax), %xmm1, %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rax,%r13,8), %xmm1
	vaddsd	8(%rax,%rbx,8), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm1
	vmovsd	8(%rax,%rsi,8), %xmm0
	vaddsd	8(%rax,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	addq	$8, %rax
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
	movq	%rdi, -296(%rbp)
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
	vmovsd	.LC2(%rip), %xmm0
	movq	-296(%rbp), %rax
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
	movq	%r10, %rdi
	movq	%r10, -184(%rbp)
	vzeroupper
	call	dummy
	movq	-296(%rbp), %rdi
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
	cmpl	$1, -508(%rbp)
	movq	-184(%rbp), %r10
	jle	.L15
	leal	-1(%rbx), %eax
	movl	%ebx, -372(%rbp)
	movl	%eax, -484(%rbp)
	movl	%ebx, %eax
	imull	%r12d, %eax
	movl	%eax, -512(%rbp)
	cmpl	$2, %r12d
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
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	movq	%r10, -184(%rbp)
	call	posix_memalign
	movq	-184(%rbp), %r10
	movq	$0, -296(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -296(%rbp)
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
