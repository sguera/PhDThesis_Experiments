	.file	"2d-2r-isotropic-constant-box-stencil.c_compilable.c"
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
	subq	$576, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	movq	%rax, -216(%rbp)
	call	strtol
	movl	%ebx, %r13d
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	imull	%eax, %r13d
	movq	%rax, %r12
	movslq	%r13d, %r15
	salq	$3, %r15
	movq	%r15, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %r14
	testl	%r13d, %r13d
	jle	.L3
	movq	%r14, %rax
	movl	$5, %ecx
	leal	-1(%r13), %ebx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %ebx
	jb	.L39
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r14)
	cmpl	$1, %eax
	je	.L41
	vmovsd	%xmm0, 8(%r14)
	cmpl	$3, %eax
	jne	.L42
	vmovsd	%xmm0, 16(%r14)
	movl	$3, %edi
.L5:
	movl	%r13d, %esi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r14,%rax,8), %rdx
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
	je	.L75
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r14,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r14,%rax,8)
.L8:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L76
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovg	%ebx, %eax
	cmovg	%r13d, %edi
	cmpl	$4, %eax
	ja	.L77
	movq	$0, -432(%rbp)
	xorl	%eax, %eax
.L31:
	vmovsd	.LC2(%rip), %xmm0
	movq	-432(%rbp), %rbx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rbx,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L35
	cltq
	vmovsd	%xmm0, (%rbx,%rax,8)
.L35:
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
	leal	-2(%r12), %eax
	movl	%eax, -440(%rbp)
	testl	%edx, %edx
	jne	.L78
	cmpl	$2, -440(%rbp)
	jle	.L79
.L14:
	movq	-216(%rbp), %rsi
	movl	%esi, %eax
	subl	$2, %eax
	movl	%eax, -608(%rbp)
	cmpl	$2, %eax
	jle	.L71
	leal	(%rsi,%rsi), %edx
	movslq	%esi, %r10
	movq	-432(%rbp), %r11
	movq	$0, -216(%rbp)
	movslq	%edx, %rdi
	addl	%esi, %edx
	leaq	0(,%r10,8), %r9
	movq	%r10, -488(%rbp)
	leaq	16(,%rdi,8), %rcx
	movslq	%edx, %r15
	movq	%rdi, -384(%rbp)
	leaq	-16(%rcx), %rax
	leaq	(%r14,%r15,8), %rdx
	movq	%r15, -400(%rbp)
	movq	%rax, %r13
	leaq	(%r11,%rax), %r8
	movl	%esi, %eax
	movq	%rdx, -376(%rbp)
	sall	$2, %eax
	movl	%esi, %edx
	leaq	(%r11,%rcx), %rbx
	movq	%r9, -496(%rbp)
	cltq
	subl	$4, %edx
	leaq	32(%r11,%rcx), %rcx
	movq	%rbx, %r12
	movq	%rax, -352(%rbp)
	salq	$3, %rax
	movq	%r14, %rbx
	movq	%rax, -368(%rbp)
	movq	%r15, %rax
	leaq	64(%r14), %r15
	subq	%rdi, %rax
	movl	%edx, -424(%rbp)
	leaq	2(%rdi,%rdx), %rdx
	salq	$3, %rax
	leaq	(%r11,%rdx,8), %rdx
	movq	%rcx, -408(%rbp)
	leaq	-144(%rbp), %rcx
	movq	%rax, -512(%rbp)
	leaq	0(,%rdi,8), %rax
	movq	%r14, %rdi
	subq	%rax, %rdi
	movl	%esi, %eax
	leaq	-208(%rbp), %rsi
	movq	%rdx, -416(%rbp)
	subl	$5, %eax
	movq	%rsi, -576(%rbp)
	addq	$8, %rsi
	movq	%r14, %rdx
	movl	%eax, -604(%rbp)
	leaq	(%r14,%rax,8), %rax
	subq	%r13, %rdx
	subq	%r11, %rax
	movq	%rsi, -528(%rbp)
	leaq	-112(%rbp), %r11
	leaq	8(%rcx), %rsi
	movq	%rsi, -536(%rbp)
	leaq	8(%r11), %rsi
	subq	$8, %rax
	movq	%rdx, -504(%rbp)
	addq	$64, %rdx
	movq	%rdi, -616(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rsi, -544(%rbp)
	leaq	-80(%rbp), %rsi
	movq	%rdx, -560(%rbp)
	addq	$8, %rsi
	leaq	8(%rdi), %rdx
	movq	%r9, -360(%rbp)
	movq	%r10, -392(%rbp)
	movl	$2, -224(%rbp)
	movq	%rdi, -584(%rbp)
	movq	%rcx, -592(%rbp)
	movq	%r15, -568(%rbp)
	movq	%rdx, -520(%rbp)
	movq	%rsi, -552(%rbp)
	movq	%rax, -624(%rbp)
	movq	%r11, -600(%rbp)
	movq	%r13, %r11
	movq	%r8, %r13
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-512(%rbp), %rsi
	movq	-360(%rbp), %rdx
	leaq	-80(%rbp), %r10
	leaq	(%rbx,%r11), %rax
	movq	-416(%rbp), %r15
	movq	-584(%rbp), %r14
	addq	%r11, %rsi
	addq	%rbx, %rdx
	addl	$1, -224(%rbp)
	cmpq	-520(%rbp), %r12
	movq	%rsi, -328(%rbp)
	movq	-216(%rbp), %rsi
	setnb	%r8b
	cmpq	%r14, %r15
	movq	-376(%rbp), %r14
	leaq	0(,%rsi,8), %rdi
	movq	-368(%rbp), %rsi
	movq	%rdi, -344(%rbp)
	leaq	(%rbx,%rsi), %rcx
	setbe	%sil
	orl	%esi, %r8d
	cmpq	-528(%rbp), %r12
	setnb	%dil
	cmpq	-576(%rbp), %r15
	setbe	%sil
	orl	%edi, %esi
	andl	%r8d, %esi
	cmpl	$4, -424(%rbp)
	seta	%dil
	andl	%edi, %esi
	cmpq	-536(%rbp), %r12
	setnb	%r9b
	cmpq	-592(%rbp), %r15
	setbe	%r8b
	orl	%r8d, %r9d
	andl	%r9d, %esi
	cmpq	-544(%rbp), %r12
	setnb	%dil
	cmpq	-600(%rbp), %r15
	setbe	%r9b
	orl	%edi, %r9d
	andl	%r9d, %esi
	cmpq	-552(%rbp), %r12
	setnb	%dil
	cmpq	%r10, %r15
	movq	-408(%rbp), %r10
	movq	-560(%rbp), %r15
	setbe	%r8b
	orl	%edi, %r8d
	andl	%r8d, %esi
	movl	%esi, %r9d
	leaq	64(%r14), %rsi
	cmpq	%rsi, %r12
	setnb	%dil
	cmpq	%r14, %r10
	movq	-568(%rbp), %r14
	setbe	%sil
	orl	%edi, %esi
	andl	%esi, %r9d
	leaq	(%r14,%r11), %rsi
	cmpq	%rsi, %r12
	movl	%r9d, %r8d
	setnb	%dil
	cmpq	%rax, %r10
	setbe	%sil
	orl	%edi, %esi
	movq	-360(%rbp), %rdi
	andl	%r8d, %esi
	addq	%r14, %rdi
	cmpq	%rdi, %r12
	setnb	%dil
	cmpq	%rdx, %r10
	setbe	%r8b
	orl	%r8d, %edi
	andl	%edi, %esi
	leaq	(%r15,%r11), %rdi
	movq	-504(%rbp), %r15
	cmpq	%rdi, %r12
	leaq	(%r11,%r15), %r8
	setnb	%dil
	cmpq	%r8, %r10
	setbe	%r8b
	orl	%r8d, %edi
	testb	%dil, %sil
	je	.L28
	movq	-368(%rbp), %rsi
	addq	%r14, %rsi
	cmpq	%rsi, %r12
	setnb	%dil
	cmpq	%rcx, %r10
	setbe	%sil
	orb	%sil, %dil
	je	.L28
	movq	%rax, %r9
	shrq	$3, %r9
	negq	%r9
	andl	$3, %r9d
	leal	3(%r9), %esi
	cmpl	-604(%rbp), %esi
	ja	.L45
	movl	$2, -420(%rbp)
	testl	%r9d, %r9d
	je	.L17
	movq	-616(%rbp), %rsi
	leal	-1(%r9), %r10d
	movl	$3, %r8d
	addq	$4, %r10
	leaq	(%r11,%rsi), %rdi
	movq	-376(%rbp), %rsi
.L18:
	vmovsd	8(%rdx), %xmm0
	vaddsd	(%rax), %xmm0, %xmm3
	movl	%r8d, %r14d
	addq	$8, %rax
	addq	$8, %rdx
	addq	$8, %rsi
	vaddsd	(%rsi), %xmm3, %xmm3
	addq	$8, %rdi
	vmovsd	8(%rdx), %xmm0
	vaddsd	(%rax), %xmm0, %xmm2
	addq	$8, %rcx
	vaddsd	8(%rsi), %xmm2, %xmm2
	vmovsd	-208(%rbp), %xmm0
	vaddsd	16(%rax), %xmm2, %xmm2
	vmulsd	8(%rax), %xmm0, %xmm1
	vmulsd	-176(%rbp), %xmm2, %xmm2
	vaddsd	8(%rdi), %xmm3, %xmm3
	vaddsd	8(%rcx), %xmm3, %xmm3
	vaddsd	16(%rdx), %xmm3, %xmm3
	vaddsd	16(%rsi), %xmm3, %xmm3
	vaddsd	24(%rax), %xmm3, %xmm3
	vmulsd	-144(%rbp), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	-8(%rsi), %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm1
	vaddsd	(%rdi), %xmm1, %xmm1
	vaddsd	(%rcx), %xmm1, %xmm1
	vaddsd	16(%rdi), %xmm1, %xmm1
	vaddsd	16(%rcx), %xmm1, %xmm1
	vaddsd	24(%rdx), %xmm1, %xmm1
	vaddsd	24(%rsi), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm1
	vmovsd	-8(%rcx), %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%r13,%r8,8)
	addq	$1, %r8
	cmpq	%r10, %r8
	jne	.L18
	movl	%r14d, -420(%rbp)
.L17:
	movl	-424(%rbp), %esi
	movq	-384(%rbp), %rdi
	movl	%r9d, %eax
	movq	-392(%rbp), %r10
	leaq	0(,%rax,8), %rcx
	vbroadcastsd	-208(%rbp), %ymm7
	vbroadcastsd	-176(%rbp), %ymm6
	subl	%r9d, %esi
	movq	-400(%rbp), %r9
	vbroadcastsd	-144(%rbp), %ymm5
	movl	%esi, -436(%rbp)
	shrl	$2, %esi
	movl	%esi, -220(%rbp)
	leaq	2(%rax,%rdi), %rsi
	salq	$3, %rsi
	leaq	(%rbx,%rsi), %rdx
	movq	%rdx, -232(%rbp)
	leaq	1(%rax,%rdi), %rdx
	leaq	(%rbx,%rdx,8), %rdx
	movq	%rdx, -240(%rbp)
	leaq	2(%rax,%r10), %rdx
	leaq	(%rbx,%rdx,8), %r15
	leaq	2(%rax,%r9), %rdx
	leaq	(%rbx,%rdx,8), %rdx
	movq	%rdx, -248(%rbp)
	leaq	3(%rax,%rdi), %rdx
	leaq	(%rbx,%rdx,8), %rdx
	movq	%rdx, -256(%rbp)
	leaq	(%rcx,%r11), %rdx
	addq	%rbx, %rdx
	movq	%rdx, -264(%rbp)
	leaq	1(%rax,%r10), %rdx
	leaq	(%rbx,%rdx,8), %r14
	leaq	1(%rax,%r9), %rdx
	leaq	(%rbx,%rdx,8), %rdx
	movq	%rdx, -272(%rbp)
	movq	-216(%rbp), %rdx
	leaq	2(%rax,%rdx), %rdx
	leaq	(%rbx,%rdx,8), %r8
	movq	%r8, -280(%rbp)
	movq	-352(%rbp), %r8
	leaq	2(%rax,%r8), %rdx
	leaq	(%rbx,%rdx,8), %r8
	leaq	3(%rax,%r10), %rdx
	movq	%r8, -288(%rbp)
	leaq	(%rbx,%rdx,8), %r8
	leaq	3(%rax,%r9), %rdx
	movq	%r8, -296(%rbp)
	leaq	(%rbx,%rdx,8), %r8
	leaq	4(%rax,%rdi), %rdx
	leaq	(%rbx,%rdx,8), %rdi
	movq	%r8, -304(%rbp)
	movq	-328(%rbp), %r8
	movq	%rdi, -312(%rbp)
	movq	-360(%rbp), %rdi
	addq	%rcx, %r8
	leaq	(%rcx,%rdi), %rdx
	addq	%rbx, %r8
	leaq	(%rbx,%rdx), %rdi
	movq	%rdi, -320(%rbp)
	movq	-216(%rbp), %rdi
	leaq	1(%rax,%rdi), %rdx
	leaq	(%rbx,%rdx,8), %rdx
	movq	%rdx, -328(%rbp)
	movq	-352(%rbp), %rdx
	leaq	1(%rax,%rdx), %rdx
	leaq	(%rbx,%rdx,8), %rdx
	movq	%rdx, -336(%rbp)
	leaq	3(%rax,%rdi), %rdx
	leaq	(%rbx,%rdx,8), %rdi
	movq	-352(%rbp), %rdx
	movq	%rdi, -448(%rbp)
	leaq	3(%rax,%rdx), %rdx
	leaq	(%rbx,%rdx,8), %rdi
	leaq	4(%rax,%r10), %rdx
	leaq	(%rbx,%rdx,8), %r10
	leaq	4(%rax,%r9), %rdx
	movq	%rdi, -456(%rbp)
	leaq	(%rbx,%rdx,8), %r9
	movq	%r10, -464(%rbp)
	movq	-344(%rbp), %r10
	movq	-216(%rbp), %rdx
	movq	%r9, -472(%rbp)
	addq	%rcx, %r10
	addq	-368(%rbp), %rcx
	movq	%rbx, -480(%rbp)
	leaq	4(%rax,%rdx), %rdx
	movq	%r10, %rdi
	addq	%rbx, %rcx
	vbroadcastsd	-112(%rbp), %ymm4
	leaq	(%rbx,%rdx,8), %r10
	movq	-352(%rbp), %rdx
	addq	%rbx, %rdi
	movq	%rcx, -344(%rbp)
	vbroadcastsd	-80(%rbp), %ymm3
	addq	-432(%rbp), %rsi
	leaq	4(%rax,%rdx), %rax
	xorl	%edx, %edx
	leaq	(%rbx,%rax,8), %r9
	movq	-456(%rbp), %rbx
	xorl	%eax, %eax
	movq	%r12, -456(%rbp)
	movq	-464(%rbp), %r12
	movq	%r13, -464(%rbp)
	movq	-472(%rbp), %r13
	movq	%r11, -472(%rbp)
	movq	-448(%rbp), %r11
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-264(%rbp), %rcx
	vmovupd	(%r14,%rax), %ymm1
	addl	$1, %edx
	vmovupd	(%r15,%rax), %ymm2
	vaddpd	(%rcx,%rax), %ymm1, %ymm1
	movq	-272(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm1, %ymm1
	movq	-280(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm1, %ymm1
	movq	-288(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm1, %ymm1
	movq	-296(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm1, %ymm1
	movq	-304(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm1, %ymm1
	movq	-312(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm1, %ymm1
	movq	-240(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm2, %ymm2
	movq	-248(%rbp), %rcx
	vmulpd	%ymm5, %ymm1, %ymm1
	vaddpd	(%rcx,%rax), %ymm2, %ymm2
	movq	-256(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm2, %ymm2
	movq	-232(%rbp), %rcx
	vmulpd	(%rcx,%rax), %ymm7, %ymm0
	movq	-320(%rbp), %rcx
	vmulpd	%ymm6, %ymm2, %ymm2
	vaddpd	%ymm0, %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%r8,%rax), %ymm0
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-328(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-336(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	vaddpd	(%r12,%rax), %ymm0, %ymm0
	vaddpd	0(%r13,%rax), %ymm0, %ymm0
	movq	-344(%rbp), %rcx
	vmulpd	%ymm4, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%rcx,%rax), %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpl	%edx, -220(%rbp)
	ja	.L19
	movl	-436(%rbp), %edx
	movl	-420(%rbp), %r8d
	movq	-480(%rbp), %rbx
	movq	-456(%rbp), %r12
	movl	%edx, %eax
	movq	-464(%rbp), %r13
	movq	-472(%rbp), %r11
	andl	$-4, %eax
	addl	%eax, %r8d
	cmpl	%eax, %edx
	je	.L23
.L16:
	movq	-384(%rbp), %rax
	movslq	%r8d, %r8
	movl	-608(%rbp), %r9d
	addq	%r8, %rax
	leaq	(%rbx,%rax,8), %rdi
	movq	-400(%rbp), %rax
	addq	%r8, %rax
	leaq	(%rbx,%rax,8), %rsi
	movq	-216(%rbp), %rax
	addq	%r8, %rax
	leaq	(%rbx,%rax,8), %rcx
	movq	-352(%rbp), %rax
	addq	%r8, %rax
	leaq	(%rbx,%rax,8), %rdx
	movq	-392(%rbp), %rax
	addq	%r8, %rax
	leaq	-16(%rbx,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L21:
	addq	$8, %rdi
	addq	$8, %rsi
	addq	$8, %rcx
	addq	$8, %rdx
	vmovsd	-24(%rdi), %xmm0
	vaddsd	8(%rax), %xmm0, %xmm3
	addq	$8, %rax
	vmovsd	8(%rax), %xmm0
	vaddsd	-16(%rdi), %xmm0, %xmm2
	vmovsd	-208(%rbp), %xmm0
	vaddsd	-8(%rsi), %xmm2, %xmm2
	vmulsd	-8(%rdi), %xmm0, %xmm4
	vaddsd	(%rdi), %xmm2, %xmm2
	vmulsd	-176(%rbp), %xmm2, %xmm2
	vaddsd	-16(%rsi), %xmm3, %xmm3
	vaddsd	-8(%rcx), %xmm3, %xmm3
	vaddsd	-8(%rdx), %xmm3, %xmm3
	vaddsd	16(%rax), %xmm3, %xmm3
	vaddsd	(%rsi), %xmm3, %xmm3
	vaddsd	8(%rdi), %xmm3, %xmm3
	vmulsd	-144(%rbp), %xmm3, %xmm3
	vaddsd	%xmm4, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	-8(%rax), %xmm0
	vaddsd	-24(%rsi), %xmm0, %xmm1
	vaddsd	-16(%rcx), %xmm1, %xmm1
	vaddsd	-16(%rdx), %xmm1, %xmm1
	vaddsd	(%rcx), %xmm1, %xmm1
	vaddsd	(%rdx), %xmm1, %xmm1
	vaddsd	24(%rax), %xmm1, %xmm1
	vaddsd	8(%rsi), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm1
	vmovsd	-24(%rcx), %xmm0
	vaddsd	-24(%rdx), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 0(%r13,%r8,8)
	addq	$1, %r8
	cmpl	%r8d, %r9d
	jg	.L21
.L23:
	movq	-496(%rbp), %rax
	movq	-488(%rbp), %rdi
	addq	%rax, -408(%rbp)
	movl	-224(%rbp), %edx
	addq	%rax, %r12
	addq	%rax, %r13
	addq	%rax, -376(%rbp)
	addq	%rax, %r11
	addq	%rax, -416(%rbp)
	addq	%rdi, -384(%rbp)
	addq	%rdi, -392(%rbp)
	addq	%rdi, -400(%rbp)
	addq	%rdi, -216(%rbp)
	addq	%rdi, -352(%rbp)
	addq	%rax, -360(%rbp)
	addq	%rax, -368(%rbp)
	cmpl	%edx, -440(%rbp)
	jg	.L24
	movq	%rbx, %r14
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L72
	movq	%r14, %rdi
	call	dummy
	movq	-432(%rbp), %rdi
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
	addq	$576, %rsp
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
	movq	-616(%rbp), %rsi
	leaq	(%r11,%rsi), %rdi
	movq	-432(%rbp), %rsi
	leaq	(%rsi,%r11), %r8
	movq	-624(%rbp), %rsi
	leaq	(%rsi,%r12), %r9
	movq	-376(%rbp), %rsi
	.p2align 4,,10
	.p2align 3
.L22:
	addq	$8, %rax
	addq	$8, %rdx
	vmovsd	(%rdx), %xmm0
	addq	$8, %rsi
	vaddsd	-8(%rax), %xmm0, %xmm3
	vaddsd	(%rsi), %xmm3, %xmm3
	addq	$8, %rdi
	addq	$8, %rcx
	vmovsd	8(%rdx), %xmm0
	vaddsd	(%rax), %xmm0, %xmm2
	addq	$8, %r8
	vaddsd	8(%rsi), %xmm2, %xmm2
	vmovsd	-208(%rbp), %xmm0
	vaddsd	16(%rax), %xmm2, %xmm2
	vmulsd	8(%rax), %xmm0, %xmm1
	vmulsd	-176(%rbp), %xmm2, %xmm2
	vaddsd	8(%rdi), %xmm3, %xmm3
	vaddsd	8(%rcx), %xmm3, %xmm3
	vaddsd	16(%rdx), %xmm3, %xmm3
	vaddsd	16(%rsi), %xmm3, %xmm3
	vaddsd	24(%rax), %xmm3, %xmm3
	vmulsd	-144(%rbp), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	-8(%rsi), %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm1
	vaddsd	(%rdi), %xmm1, %xmm1
	vaddsd	(%rcx), %xmm1, %xmm1
	vaddsd	16(%rdi), %xmm1, %xmm1
	vaddsd	16(%rcx), %xmm1, %xmm1
	vaddsd	24(%rdx), %xmm1, %xmm1
	vaddsd	24(%rsi), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm1
	vmovsd	-8(%rcx), %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%r8)
	cmpq	%r9, %rax
	jne	.L22
	jmp	.L23
.L45:
	movl	$2, %r8d
	jmp	.L16
.L76:
	movq	-80(%rbp), %rsi
	testl	%r13d, %r13d
	movl	$1, %edi
	cmovg	%r13d, %edi
	movq	%rsi, -432(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
	negq	%rdx
	andl	$3, %edx
	testl	%r13d, %r13d
	leal	3(%rdx), %ecx
	cmovle	%eax, %ebx
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %ebx
	jb	.L31
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	movq	-432(%rbp), %rax
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
	movq	-432(%rbp), %rbx
	vmovapd	.LC3(%rip), %ymm0
	movl	%edi, %esi
	leaq	(%rbx,%rdx,8), %rcx
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
.L78:
	movq	%r14, %rdi
	vzeroupper
	call	dummy
	movq	-432(%rbp), %rdi
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
	cmpl	$2, -440(%rbp)
	jg	.L14
	jmp	.L15
.L41:
	movl	$1, %edi
	jmp	.L5
.L77:
	movq	$0, -432(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L9
.L43:
	movl	$1, %eax
	jmp	.L9
.L75:
	vzeroupper
	jmp	.L8
.L3:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	call	posix_memalign
	movq	$0, -432(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -432(%rbp)
	jmp	.L35
.L71:
	vzeroupper
	jmp	.L15
.L44:
	movl	$2, %eax
	jmp	.L9
.L42:
	movl	$2, %edi
	jmp	.L5
.L79:
	vzeroupper
	jmp	.L72
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
