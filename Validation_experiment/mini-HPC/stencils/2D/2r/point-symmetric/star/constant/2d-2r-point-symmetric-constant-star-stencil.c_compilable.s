	.file	"2d-2r-point-symmetric-constant-star-stencil.c_compilable.c"
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
	subq	$480, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movl	%ebx, %r13d
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	imull	%eax, %r13d
	movq	%rax, %r12
	movslq	%r13d, %r15
	leaq	0(,%r15,8), %r8
	movq	%r8, %rdx
	movq	%r8, -216(%rbp)
	call	posix_memalign
	movq	-216(%rbp), %r8
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
	movq	$0, -224(%rbp)
	xorl	%eax, %eax
.L31:
	vmovsd	.LC2(%rip), %xmm0
	movq	-224(%rbp), %rdi
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
	movl	%eax, -352(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$2, -352(%rbp)
	jle	.L81
.L14:
	leal	-2(%rbx), %eax
	movl	%eax, -512(%rbp)
	cmpl	$2, %eax
	jle	.L73
	leal	(%rbx,%rbx), %ecx
	movq	-224(%rbp), %rdi
	movslq	%ebx, %r8
	movl	%ebx, -384(%rbp)
	movslq	%ecx, %r14
	movq	%r8, -392(%rbp)
	leaq	0(,%r8,8), %r12
	leaq	16(,%r14,8), %rax
	movq	%r8, -240(%rbp)
	leaq	16(%r15), %r8
	leaq	(%rdi,%rax), %r13
	leaq	-16(%rax), %rsi
	movq	%r8, -488(%rbp)
	leaq	32(%rdi,%rax), %rax
	leaq	(%rdi,%rsi), %rdx
	movq	%rsi, -216(%rbp)
	movq	%rax, -296(%rbp)
	leal	-4(%rbx), %eax
	leaq	48(%r15), %r8
	movl	%eax, -324(%rbp)
	leaq	2(%r14,%rax), %rax
	leaq	-144(%rbp), %rsi
	leaq	(%rdi,%rax,8), %rax
	movq	%rdx, -336(%rbp)
	leal	(%rcx,%rbx), %edx
	movslq	%edx, %rdi
	movq	%rax, -304(%rbp)
	leal	0(,%rbx,4), %eax
	movslq	%eax, %r9
	movl	%eax, -284(%rbp)
	leaq	0(,%rdi,8), %rax
	movq	%rax, -312(%rbp)
	leaq	0(,%r9,8), %rax
	movq	%rax, -320(%rbp)
	leaq	(%r12,%r15), %rax
	movq	%r8, -496(%rbp)
	leaq	64(%r15), %r8
	movq	%rdi, -248(%rbp)
	leaq	-176(%rbp), %rdi
	movl	%ecx, -228(%rbp)
	leaq	-112(%rbp), %rcx
	movl	%edx, -280(%rbp)
	leal	-5(%rbx), %edx
	movl	%ebx, -276(%rbp)
	leaq	-208(%rbp), %rbx
	movq	%r8, -504(%rbp)
	leaq	48(%rax), %r8
	addq	$16, %rax
	movl	%edx, -508(%rbp)
	addq	%r14, %rdx
	movq	%r9, -264(%rbp)
	movq	$0, -272(%rbp)
	movl	$3, -340(%rbp)
	movl	$2, -328(%rbp)
	movl	$4, -380(%rbp)
	movq	$0, -256(%rbp)
	movl	$2, -288(%rbp)
	movq	%rbx, -440(%rbp)
	movq	%rdi, -448(%rbp)
	movq	%rsi, -464(%rbp)
	movq	%rcx, -480(%rbp)
	movq	%r8, -472(%rbp)
	movq	%rax, -456(%rbp)
	leaq	8(%rdi), %rax
	movq	%rax, -400(%rbp)
	leaq	8(%rbx), %rax
	movq	%rax, -408(%rbp)
	leaq	8(%rsi), %rax
	movq	%rax, -416(%rbp)
	leaq	8(%rcx), %rax
	movq	%rax, -424(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -432(%rbp)
	leaq	8(%r15,%rdx,8), %rax
	movq	%rax, -520(%rbp)
	movq	%r14, %rax
	movq	%r13, %r14
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-304(%rbp), %rbx
	movq	-448(%rbp), %rax
	addl	$1, -288(%rbp)
	cmpq	-400(%rbp), %r14
	setnb	%sil
	cmpq	%rax, %rbx
	movq	-216(%rbp), %rdi
	movq	-296(%rbp), %r11
	setbe	%al
	movq	-272(%rbp), %r10
	movq	-312(%rbp), %r9
	orl	%eax, %esi
	cmpq	-408(%rbp), %r14
	leaq	(%r15,%rdi), %rdx
	setnb	%cl
	cmpq	-440(%rbp), %rbx
	setbe	%al
	orl	%ecx, %eax
	andl	%esi, %eax
	cmpl	$5, -324(%rbp)
	seta	%cl
	andl	%ecx, %eax
	cmpq	-416(%rbp), %r14
	setnb	%sil
	cmpq	-464(%rbp), %rbx
	setbe	%cl
	orl	%ecx, %esi
	andl	%esi, %eax
	cmpq	-424(%rbp), %r14
	setnb	%cl
	cmpq	-480(%rbp), %rbx
	setbe	%sil
	orl	%ecx, %esi
	andl	%eax, %esi
	cmpq	-432(%rbp), %r14
	leaq	-80(%rbp), %rax
	setnb	%cl
	cmpq	%rax, %rbx
	movq	-496(%rbp), %rbx
	setbe	%al
	orl	%ecx, %eax
	movq	-504(%rbp), %rcx
	andl	%esi, %eax
	addq	%rdi, %rcx
	movq	-488(%rbp), %rdi
	cmpq	%rcx, %r14
	setnb	%cl
	cmpq	%rdx, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	-456(%rbp), %rsi
	andl	%ecx, %eax
	movq	-472(%rbp), %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r10, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %eax
	movq	%rbx, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r9, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %eax
	movq	%rbx, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r10, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L28
	movq	%rbx, %rax
	movq	-320(%rbp), %rbx
	addq	%rbx, %rax
	cmpq	%rax, %r14
	setnb	%cl
	addq	%rbx, %rdi
	cmpq	%rdi, %r11
	setbe	%al
	orb	%al, %cl
	je	.L28
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-508(%rbp), %eax
	ja	.L45
	movl	$2, -232(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	$3, -232(%rbp)
	movl	-228(%rbp), %ebx
	leal	1(%rbx), %ecx
	leal	4(%rbx), %esi
	movslq	%ecx, %rcx
	leal	2(%rbx), %eax
	leaq	(%r15,%rcx,8), %r10
	leal	3(%rbx), %ecx
	movslq	%esi, %rbx
	movl	-276(%rbp), %esi
	cltq
	movslq	%ecx, %rcx
	vmovsd	(%r10), %xmm2
	leaq	(%r15,%rbx,8), %r8
	leal	2(%rsi), %r11d
	leaq	(%r15,%rax,8), %rdi
	movl	-280(%rbp), %esi
	leaq	(%r15,%rcx,8), %r9
	vmovsd	(%rdi), %xmm0
	vmulsd	-208(%rbp), %xmm0, %xmm0
	movslq	%r11d, %r11
	vaddsd	(%r9), %xmm2, %xmm2
	vmulsd	-176(%rbp), %xmm2, %xmm2
	addl	$2, %esi
	movslq	%esi, %rsi
	vmovsd	(%r15,%r11,8), %xmm3
	movq	-216(%rbp), %r11
	vaddsd	(%r15,%rsi,8), %xmm3, %xmm3
	vmulsd	-144(%rbp), %xmm3, %xmm3
	vmovsd	(%r15,%r11), %xmm1
	vaddsd	(%r8), %xmm1, %xmm1
	movl	-284(%rbp), %r11d
	movslq	-328(%rbp), %rsi
	vaddsd	%xmm0, %xmm2, %xmm0
	addl	$2, %r11d
	movslq	%r11d, %r11
	vaddsd	%xmm0, %xmm3, %xmm2
	vmulsd	-112(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%r11,8), %xmm0
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-224(%rbp), %r11
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%rax,8)
	cmpl	$1, %edx
	je	.L17
	movl	-228(%rbp), %eax
	vmovsd	(%rdi), %xmm0
	movl	$4, -232(%rbp)
	movl	-276(%rbp), %r11d
	vaddsd	(%r8), %xmm0, %xmm0
	vmulsd	-176(%rbp), %xmm0, %xmm2
	addl	$5, %eax
	vmovsd	(%r9), %xmm0
	vmulsd	-208(%rbp), %xmm0, %xmm0
	cltq
	addl	$3, %r11d
	leaq	(%r15,%rax,8), %rsi
	movl	-280(%rbp), %eax
	movslq	%r11d, %r11
	vmovsd	(%r15,%r11,8), %xmm1
	movq	-224(%rbp), %r11
	addl	$3, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm1, %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm2, %xmm0
	movslq	-340(%rbp), %rax
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r10), %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movl	-284(%rbp), %r10d
	addl	$3, %r10d
	movslq	%r10d, %r10
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%r10,8), %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%rcx,8)
	cmpl	$3, %edx
	jne	.L17
	movl	-276(%rbp), %r11d
	movl	-280(%rbp), %r10d
	movl	$5, -232(%rbp)
	vmovsd	(%r9), %xmm1
	vmovsd	(%r8), %xmm0
	vaddsd	(%rsi), %xmm1, %xmm1
	vmulsd	-208(%rbp), %xmm0, %xmm0
	leal	4(%r11), %ecx
	vmulsd	-176(%rbp), %xmm1, %xmm1
	leal	4(%r10), %eax
	movslq	%ecx, %rcx
	movl	-284(%rbp), %r10d
	cltq
	vmovsd	(%r15,%rcx,8), %xmm3
	movq	-224(%rbp), %r11
	vaddsd	(%r15,%rax,8), %xmm3, %xmm3
	movl	-228(%rbp), %eax
	leal	4(%r10), %ecx
	vmulsd	-144(%rbp), %xmm3, %xmm3
	movslq	%ecx, %rcx
	addl	$6, %eax
	vaddsd	%xmm0, %xmm1, %xmm0
	cltq
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r15,%rax,8), %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movslq	-380(%rbp), %rax
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%rcx,8), %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%rbx,8)
.L17:
	movl	%edx, %eax
	movl	-324(%rbp), %edi
	movq	%r15, -376(%rbp)
	leaq	2(%rax,%r13), %rcx
	vbroadcastsd	-112(%rbp), %ymm4
	vbroadcastsd	-208(%rbp), %ymm7
	subl	%edx, %edi
	salq	$3, %rcx
	leaq	1(%rax,%r13), %rdx
	vbroadcastsd	-176(%rbp), %ymm6
	leaq	(%r15,%rcx), %rbx
	leaq	(%r15,%rdx,8), %rsi
	movl	%edi, -344(%rbp)
	shrl	$2, %edi
	leaq	3(%rax,%r13), %rdx
	movq	%rbx, -360(%rbp)
	vbroadcastsd	-144(%rbp), %ymm5
	leaq	(%r15,%rdx,8), %rbx
	movq	-240(%rbp), %rdx
	movq	%rsi, -368(%rbp)
	movl	%edi, -348(%rbp)
	vbroadcastsd	-80(%rbp), %ymm3
	leaq	2(%rax,%rdx), %rdx
	addq	-224(%rbp), %rcx
	leaq	(%r15,%rdx,8), %r11
	movq	-248(%rbp), %rdx
	leaq	2(%rax,%rdx), %rdx
	leaq	(%r15,%rdx,8), %r10
	movq	-216(%rbp), %rdx
	leaq	(%rdx,%rax,8), %rsi
	leaq	4(%rax,%r13), %rdx
	leaq	(%r15,%rdx,8), %r9
	movq	-256(%rbp), %rdx
	addq	%r15, %rsi
	leaq	2(%rax,%rdx), %rdx
	leaq	(%r15,%rdx,8), %r8
	movq	-264(%rbp), %rdx
	leaq	2(%rax,%rdx), %rax
	xorl	%edx, %edx
	leaq	(%r15,%rax,8), %rdi
	movq	-368(%rbp), %r15
	xorl	%eax, %eax
	movq	%r14, -368(%rbp)
	movq	-360(%rbp), %r14
	movq	%r12, -360(%rbp)
	movl	-348(%rbp), %r12d
	.p2align 4,,10
	.p2align 3
.L19:
	vmovupd	(%rbx,%rax), %ymm1
	vaddpd	(%r15,%rax), %ymm1, %ymm1
	addl	$1, %edx
	vmulpd	(%r14,%rax), %ymm7, %ymm0
	vmovupd	(%r10,%rax), %ymm2
	vaddpd	(%r11,%rax), %ymm2, %ymm2
	vmulpd	%ymm6, %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm1
	vmulpd	%ymm5, %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovapd	(%rsi,%rax), %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vmulpd	%ymm4, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%rdi,%rax), %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %r12d
	ja	.L19
	movl	-344(%rbp), %ebx
	movl	-232(%rbp), %edx
	movq	-376(%rbp), %r15
	movq	-368(%rbp), %r14
	movl	%ebx, %eax
	movq	-360(%rbp), %r12
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %ebx
	je	.L23
.L16:
	movslq	%edx, %rdx
	movq	-240(%rbp), %r8
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rcx
	leaq	(%rdx,%r13), %rax
	movl	-512(%rbp), %r9d
	movq	-336(%rbp), %r10
	subq	%r13, %r8
	subq	%r13, %rdi
	leaq	(%r15,%rax,8), %rax
	subq	%r13, %rsi
	subq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rax), %xmm3
	vmovsd	-8(%rax), %xmm2
	vmulsd	-208(%rbp), %xmm3, %xmm0
	vaddsd	8(%rax), %xmm2, %xmm2
	vmulsd	-176(%rbp), %xmm2, %xmm2
	vmovsd	(%rax,%r8,8), %xmm1
	vaddsd	(%rax,%rdi,8), %xmm1, %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	(%rax,%rsi,8), %xmm0
	vaddsd	(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm3, %xmm2
	vmovsd	-24(%rax), %xmm1
	vaddsd	8(%rax), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %r9d
	jg	.L21
.L23:
	movq	-392(%rbp), %rax
	addq	%r12, -336(%rbp)
	addq	%r12, %r14
	addq	%rax, -240(%rbp)
	addq	%rax, -248(%rbp)
	addq	%rax, %r13
	addq	%rax, -256(%rbp)
	addq	%rax, -264(%rbp)
	movl	-384(%rbp), %eax
	addq	%r12, -296(%rbp)
	addq	%r12, -304(%rbp)
	addq	%r12, -216(%rbp)
	addl	%eax, -228(%rbp)
	addl	%eax, -276(%rbp)
	addl	%eax, -280(%rbp)
	addl	%eax, -380(%rbp)
	addl	%eax, -284(%rbp)
	addl	%eax, -328(%rbp)
	addl	%eax, -340(%rbp)
	addq	%r12, -272(%rbp)
	movl	-288(%rbp), %esi
	addq	%r12, -312(%rbp)
	addq	%r12, -320(%rbp)
	cmpl	%esi, -352(%rbp)
	jg	.L24
.L73:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L74
	movq	%r15, %rdi
	call	dummy
	movq	-224(%rbp), %rdi
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
.L74:
	addq	$480, %rsp
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
	movq	-248(%rbp), %r8
	movq	-240(%rbp), %rdi
	movq	-264(%rbp), %rsi
	movq	-256(%rbp), %rcx
	movq	-224(%rbp), %rax
	movq	-520(%rbp), %r9
	subq	%r13, %r8
	subq	%r13, %rdi
	addq	-216(%rbp), %rax
	addq	-272(%rbp), %r9
	subq	%r13, %rsi
	subq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	24(%rdx), %xmm2
	vmovsd	-208(%rbp), %xmm0
	addq	$8, %rax
	vmulsd	16(%rdx), %xmm0, %xmm1
	vaddsd	8(%rdx), %xmm2, %xmm2
	vmulsd	-176(%rbp), %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm0
	vmovsd	16(%rdx,%r8,8), %xmm1
	vaddsd	16(%rdx,%rdi,8), %xmm1, %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm2
	vmovsd	(%rdx), %xmm1
	vaddsd	32(%rdx), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm1
	vmovsd	16(%rdx,%rsi,8), %xmm0
	vaddsd	16(%rdx,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	addq	$8, %rdx
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rax)
	cmpq	%r9, %rdx
	jne	.L22
	jmp	.L23
.L45:
	movl	$2, %edx
	jmp	.L16
.L78:
	movq	-80(%rbp), %rsi
	testl	%r13d, %r13d
	movl	$1, %edi
	cmovg	%r13d, %edi
	movq	%rsi, -224(%rbp)
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
	movq	-224(%rbp), %rax
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
	movq	-224(%rbp), %rcx
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
	movq	-224(%rbp), %rdi
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
	cmpl	$2, -352(%rbp)
	jg	.L14
	jmp	.L15
.L41:
	movl	$1, %edi
	jmp	.L5
.L79:
	movq	$0, -224(%rbp)
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
	movq	$0, -224(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -224(%rbp)
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
