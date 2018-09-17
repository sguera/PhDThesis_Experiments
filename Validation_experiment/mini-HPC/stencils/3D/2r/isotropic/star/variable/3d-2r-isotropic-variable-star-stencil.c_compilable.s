	.file	"3d-2r-isotropic-variable-star-stencil.c_compilable.c"
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
	subq	$512, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	%r13d, %r14d
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %r12
	imull	%ebx, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -72(%rbp)
	call	posix_memalign
	movq	-72(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -376(%rbp)
	testl	%r14d, %r14d
	jle	.L3
	movq	%rdi, %rax
	movl	$5, %esi
	leal	-1(%r14), %r15d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %r15d
	jb	.L46
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rdi)
	cmpl	$1, %eax
	je	.L48
	vmovsd	%xmm0, 8(%rdi)
	cmpl	$3, %eax
	jne	.L49
	vmovsd	%xmm0, 16(%rdi)
	movl	$3, %r8d
.L5:
	movl	%r14d, %edi
	movq	-376(%rbp), %rdx
	vmovapd	.LC1(%rip), %ymm0
	subl	%eax, %edi
	movl	%edi, %esi
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
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
	je	.L91
	vzeroupper
	movq	-376(%rbp), %rdi
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L8:
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L92
	testl	%r14d, %r14d
	movl	$1, %eax
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	cmpl	$4, %r15d
	ja	.L93
	movq	$0, -448(%rbp)
	xorl	%eax, %eax
.L36:
	vmovsd	.LC2(%rip), %xmm0
	movq	-448(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L40
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L40
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L40
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L40
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L40
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L40:
	leal	(%r14,%r14,2), %r14d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movslq	%r14d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r15
	movq	%r15, -384(%rbp)
	testl	%r14d, %r14d
	jle	.L14
	movq	%r15, %rax
	movl	$5, %esi
	leal	-1(%r14), %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %ecx
	jb	.L52
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L16
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L54
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L55
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %edi
.L16:
	movl	%r14d, %esi
	movq	-384(%rbp), %rdx
	vmovapd	.LC5(%rip), %ymm0
	subl	%eax, %esi
	movl	%esi, %ecx
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
	shrl	$2, %ecx
	.p2align 4,,10
	.p2align 3
.L18:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%eax, %ecx
	ja	.L18
	movl	%esi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rdi), %eax
	cmpl	%edx, %esi
	je	.L14
.L15:
	vmovsd	.LC4(%rip), %xmm0
	movq	-384(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%r14d, %edx
	jge	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-2(%r13), %eax
	movl	%eax, -440(%rbp)
	testl	%edx, %edx
	jne	.L94
	cmpl	$2, -440(%rbp)
	jle	.L89
	leal	-2(%rbx), %eax
	movl	%eax, -112(%rbp)
	leal	(%rbx,%rbx,2), %eax
	movl	%eax, %edi
	imull	%r12d, %edi
	movl	%edi, -452(%rbp)
	movl	%r12d, %edi
	imull	%ebx, %edi
	movl	%edi, -456(%rbp)
	cmpl	$4, %r12d
	jle	.L89
.L45:
	cmpl	$2, -112(%rbp)
	jle	.L86
	movl	-452(%rbp), %edi
	movl	-456(%rbp), %esi
	leal	-4(%rbx), %edx
	movl	$0, -432(%rbp)
	leaq	(%rdx,%rdx,2), %rcx
	movl	%edx, -200(%rbp)
	addl	%edi, %edi
	movl	%esi, -424(%rbp)
	movl	%edi, -416(%rbp)
	leal	(%rsi,%rsi), %edi
	movl	%edi, -420(%rbp)
	leal	(%rsi,%rsi,2), %edi
	movl	%edi, -428(%rbp)
	leal	0(,%rsi,4), %edi
	movl	%edi, -436(%rbp)
	movslq	%eax, %rdi
	addl	%eax, %eax
	movslq	%eax, %r15
	movslq	%ebx, %rax
	movq	%rdi, -312(%rbp)
	salq	$3, %rdi
	movq	%rax, -304(%rbp)
	leaq	0(,%rax,8), %r8
	leal	(%rbx,%rbx), %eax
	movslq	%eax, %r10
	leal	(%rbx,%rbx,2), %eax
	movq	%rdi, -320(%rbp)
	movq	%rdx, %rdi
	cltq
	andl	$-4, %edi
	movq	%r15, -464(%rbp)
	movq	%rax, -480(%rbp)
	leal	0(,%rbx,4), %eax
	cltq
	movl	%edi, -404(%rbp)
	movq	%rax, -488(%rbp)
	leal	-5(%rbx), %eax
	movl	%edx, %ebx
	movl	%eax, -328(%rbp)
	shrl	$2, %ebx
	leaq	(%rax,%rax,2), %rax
	movl	%ebx, -108(%rbp)
	addq	%r15, %rax
	leal	2(%rdi), %ebx
	movl	%ebx, -408(%rbp)
	movq	-376(%rbp), %rbx
	movq	%rax, -536(%rbp)
	movq	-384(%rbp), %rax
	leaq	16(%rbx), %rsi
	addq	$48, %rbx
	movq	%r10, -472(%rbp)
	addq	$72, %rax
	movq	%rbx, -344(%rbp)
	leaq	2(%r10), %rbx
	movq	%rax, -544(%rbp)
	leal	-2(%r12), %eax
	movq	%rbx, -520(%rbp)
	leaq	6(%r15), %rbx
	movl	%eax, -324(%rbp)
	leaq	6(%r15,%rcx), %rax
	movq	%rbx, -512(%rbp)
	leaq	6(%r10), %rbx
	movq	%rax, -496(%rbp)
	leaq	2(%rdx,%r10), %rax
	movl	$2, -412(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%rbx, -528(%rbp)
	movq	%rax, -504(%rbp)
	movq	%r8, -352(%rbp)
	.p2align 4,,10
	.p2align 3
.L32:
	movslq	-416(%rbp), %rsi
	movq	-496(%rbp), %rax
	movq	-384(%rbp), %r15
	movslq	-420(%rbp), %rbx
	addq	%rsi, %rax
	movq	-472(%rbp), %r10
	movq	-448(%rbp), %rcx
	movq	%rsi, -392(%rbp)
	leaq	(%r15,%rax,8), %rax
	movq	-304(%rbp), %r8
	movq	-480(%rbp), %r9
	movq	%rbx, -400(%rbp)
	movq	%rax, -208(%rbp)
	movq	-520(%rbp), %rax
	movq	-488(%rbp), %r14
	addl	$1, -412(%rbp)
	addq	%rbx, %rax
	leaq	(%rcx,%rax,8), %r12
	movq	%r10, %rax
	addq	%rbx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, -264(%rbp)
	movq	-512(%rbp), %rdx
	addq	%rsi, %rdx
	leaq	(%r15,%rdx,8), %rdx
	movq	%rdx, -176(%rbp)
	movq	-504(%rbp), %rdx
	addq	%rbx, %rdx
	leaq	(%rcx,%rdx,8), %rdx
	movq	%rdx, -216(%rbp)
	movq	-376(%rbp), %rdx
	leaq	(%rdx,%rax), %r15
	movq	-528(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%rcx,%rax,8), %rax
	movslq	-424(%rbp), %rcx
	movq	%rax, -88(%rbp)
	leaq	(%rdx,%rbx,8), %rax
	movq	%rax, -120(%rbp)
	movq	-536(%rbp), %rax
	addq	%rsi, %rax
	movq	-544(%rbp), %rsi
	leaq	(%rsi,%rax,8), %rax
	movq	%rax, -296(%rbp)
	movq	%r8, %rax
	addq	%rbx, %rax
	salq	$3, %rax
	movq	%rax, -128(%rbp)
	movq	%rbx, %rax
	addq	%r9, %rax
	salq	$3, %rax
	movq	%rax, -136(%rbp)
	movq	%rbx, %rax
	addq	%r14, %rax
	salq	$3, %rax
	movq	%rax, -144(%rbp)
	leaq	(%r10,%rcx), %rax
	subq	%rbx, %rcx
	salq	$3, %rax
	movq	%rax, -152(%rbp)
	movslq	-428(%rbp), %rsi
	movq	%r10, -232(%rbp)
	leaq	(%r10,%rsi), %rax
	subq	%rbx, %rsi
	movq	%r14, -256(%rbp)
	salq	$3, %rax
	movq	%r9, -240(%rbp)
	movq	%rax, -160(%rbp)
	movslq	-432(%rbp), %rax
	movq	%r8, -224(%rbp)
	leaq	(%r10,%rax), %rdx
	movq	%rcx, -360(%rbp)
	leaq	0(,%rdx,8), %rdi
	movslq	-436(%rbp), %rdx
	movq	$0, -248(%rbp)
	movq	%rdi, -168(%rbp)
	movl	$2, -196(%rbp)
	leaq	(%r10,%rdx), %rdi
	movq	%rsi, %r10
	movq	%rbx, %rsi
	salq	$3, %rdi
	subq	%rsi, %rax
	movq	%rdx, %rbx
	movq	%rdi, -184(%rbp)
	movq	-464(%rbp), %rdi
	subq	%rsi, %rbx
	movq	%rax, -368(%rbp)
	movq	%rdi, -272(%rbp)
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-120(%rbp), %rcx
	movq	-336(%rbp), %rax
	movq	-128(%rbp), %r13
	movq	-136(%rbp), %rsi
	addq	$16, %rcx
	movq	-144(%rbp), %rdi
	movq	-160(%rbp), %r8
	movq	%rcx, -72(%rbp)
	movq	%rax, %rcx
	addq	%rax, %r13
	addq	%rax, %rsi
	movq	-168(%rbp), %rdx
	movq	-184(%rbp), %r9
	addq	%rax, %rdi
	addq	%rcx, %r8
	addq	-152(%rbp), %rax
	movq	-216(%rbp), %r11
	movq	%r13, -96(%rbp)
	addq	%rcx, %rdx
	addq	%rcx, %r9
	movq	-88(%rbp), %r14
	movq	%rax, -80(%rbp)
	addl	$1, -196(%rbp)
	cmpq	%r11, -176(%rbp)
	leaq	64(%r15), %rax
	setnb	%r11b
	cmpq	-208(%rbp), %r12
	movq	%rdx, -192(%rbp)
	setnb	%cl
	orl	%r11d, %ecx
	cmpl	$3, -200(%rbp)
	seta	%r11b
	andl	%ecx, %r11d
	cmpq	%rax, %r12
	setnb	%al
	cmpq	%r14, %r15
	setnb	%dl
	orl	%eax, %edx
	andl	%edx, %r11d
	movq	-120(%rbp), %rdx
	movl	%r11d, %ecx
	movq	%r14, %r11
	leaq	48(%rdx), %rax
	cmpq	%rax, %r12
	setnb	%al
	cmpq	-72(%rbp), %r14
	setbe	%r14b
	orl	%eax, %r14d
	andl	%r14d, %ecx
	movq	-128(%rbp), %r14
	movl	%ecx, %edx
	movq	-344(%rbp), %rcx
	addq	%rcx, %r14
	cmpq	%r14, %r12
	movl	%edx, %r14d
	setnb	%al
	cmpq	%r13, %r11
	movq	-136(%rbp), %r11
	setbe	%r13b
	orl	%eax, %r13d
	addq	%rcx, %r11
	andl	%r13d, %r14d
	cmpq	%r11, %r12
	setnb	%dl
	cmpq	%rsi, -88(%rbp)
	movl	%r14d, %r13d
	movq	%rcx, %r14
	setbe	%r11b
	orl	%edx, %r11d
	andl	%r11d, %r13d
	movq	-144(%rbp), %r11
	addq	%rcx, %r11
	cmpq	%r11, %r12
	setnb	%dl
	cmpq	%rdi, -88(%rbp)
	setbe	%cl
	orl	%edx, %ecx
	andl	%ecx, %r13d
	movl	%r13d, %r11d
	movq	-152(%rbp), %r13
	movl	%r11d, %ecx
	addq	%r14, %r13
	cmpq	%r13, %r12
	movq	-88(%rbp), %r13
	setnb	%dl
	cmpq	-80(%rbp), %r13
	setbe	%al
	orl	%edx, %eax
	andl	%eax, %ecx
	movq	-160(%rbp), %rax
	addq	%r14, %rax
	cmpq	%rax, %r12
	setnb	%dl
	cmpq	%r8, %r13
	setbe	%al
	orl	%edx, %eax
	movq	-168(%rbp), %rdx
	andl	%ecx, %eax
	addq	%r14, %rdx
	cmpq	%rdx, %r12
	setnb	%dl
	cmpq	-192(%rbp), %r13
	setbe	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L58
	addq	-184(%rbp), %r14
	cmpq	%r14, %r12
	setnb	%dl
	cmpq	%r9, %r13
	setbe	%al
	orb	%al, %dl
	je	.L58
	cmpl	$2, -328(%rbp)
	jbe	.L56
	leaq	16(%r15), %rax
	movq	%rsi, -104(%rbp)
	leaq	8(%r15), %r14
	xorl	%ecx, %ecx
	movq	%rax, -280(%rbp)
	leaq	24(%r15), %r13
	leaq	32(%r15), %r11
	xorl	%eax, %eax
	movq	%r10, -288(%rbp)
	movq	-176(%rbp), %rdx
	movq	-192(%rbp), %r10
	movq	%rbx, -192(%rbp)
	movq	-280(%rbp), %rbx
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-80(%rbp), %rsi
	vmovupd	(%rdx), %ymm1
	addl	$1, %ecx
	addq	$96, %rdx
	vmovupd	0(%r13,%rax), %ymm4
	vmovupd	(%r8,%rax), %ymm3
	vaddpd	(%r14,%rax), %ymm4, %ymm4
	vaddpd	(%rsi,%rax), %ymm3, %ymm3
	movq	-104(%rbp), %rsi
	vmovupd	-32(%rdx), %ymm0
	vmovupd	-64(%rdx), %ymm2
	vaddpd	%ymm3, %ymm4, %ymm4
	vmovupd	(%rsi,%rax), %ymm3
	movq	-96(%rbp), %rsi
	vpermpd	$164, %ymm0, %ymm5
	vperm2f128	$48, %ymm2, %ymm1, %ymm6
	vaddpd	(%rsi,%rax), %ymm3, %ymm3
	movq	-72(%rbp), %rsi
	vaddpd	%ymm3, %ymm4, %ymm3
	vperm2f128	$2, %ymm2, %ymm1, %ymm4
	vshufpd	$5, %ymm4, %ymm6, %ymm4
	vblendpd	$8, %ymm5, %ymm4, %ymm4
	vmulpd	%ymm4, %ymm3, %ymm4
	vpermpd	$78, %ymm1, %ymm3
	vshufpd	$2, %ymm3, %ymm6, %ymm3
	vperm2f128	$33, %ymm0, %ymm3, %ymm5
	vpalignr	$8, %ymm2, %ymm1, %ymm1
	vblendpd	$8, %ymm5, %ymm3, %ymm3
	vmovupd	(%r11,%rax), %ymm5
	vpermpd	$83, %ymm1, %ymm1
	vaddpd	(%r15,%rax), %ymm5, %ymm6
	vmulpd	(%rbx,%rax), %ymm3, %ymm3
	vinsertf128	$1, %xmm0, %ymm1, %ymm1
	vblendpd	$7, %ymm1, %ymm0, %ymm0
	vaddpd	%ymm3, %ymm4, %ymm3
	vmovupd	(%r9,%rax), %ymm4
	vaddpd	(%r10,%rax), %ymm4, %ymm4
	vaddpd	%ymm4, %ymm6, %ymm5
	vmovupd	(%rdi,%rax), %ymm4
	vaddpd	(%rsi,%rax), %ymm4, %ymm4
	vaddpd	%ymm4, %ymm5, %ymm4
	vmulpd	%ymm0, %ymm4, %ymm0
	vaddpd	%ymm0, %ymm3, %ymm0
	vmovupd	%ymm0, (%r12,%rax)
	addq	$32, %rax
	cmpl	%ecx, -108(%rbp)
	ja	.L24
	movq	-288(%rbp), %r10
	movq	-192(%rbp), %rbx
	movl	-200(%rbp), %edi
	cmpl	%edi, -404(%rbp)
	je	.L28
	movl	-408(%rbp), %edx
.L23:
	movslq	%edx, %rcx
	leal	(%rdx,%rdx,2), %edx
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %rax
	movslq	%edx, %rdx
	addq	-272(%rbp), %rax
	movq	-232(%rbp), %r11
	addq	%rdx, %rax
	movq	-376(%rbp), %rsi
	movq	-240(%rbp), %r9
	leaq	(%rdi,%rax,8), %rdx
	movq	-400(%rbp), %rax
	movq	-224(%rbp), %r8
	movq	-248(%rbp), %rdi
	subq	%r11, %r9
	movq	-360(%rbp), %r13
	addq	%r11, %rax
	subq	%r11, %r8
	movq	-368(%rbp), %r14
	addq	%rcx, %rax
	subq	%r11, %rdi
	leaq	-16(%rsi,%rax,8), %rax
	movq	-256(%rbp), %rsi
	subq	%r11, %rsi
	movq	-264(%rbp), %r11
	.p2align 4,,10
	.p2align 3
.L26:
	vmovsd	16(%rax,%r10,8), %xmm1
	vaddsd	16(%rax,%r13,8), %xmm1, %xmm2
	addq	$24, %rdx
	vmovsd	24(%rax), %xmm1
	vaddsd	8(%rax), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rax,%r9,8), %xmm0
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	16(%rax), %xmm1
	vmulsd	-16(%rdx), %xmm0, %xmm0
	vmulsd	-24(%rdx), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	16(%rax,%rbx,8), %xmm2
	vaddsd	16(%rax,%r14,8), %xmm2, %xmm3
	vmovsd	32(%rax), %xmm2
	vaddsd	(%rax), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	16(%rax,%rdi,8), %xmm0
	vaddsd	16(%rax,%rsi,8), %xmm0, %xmm0
	addq	$8, %rax
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%rcx,8)
	addq	$1, %rcx
	cmpl	%ecx, -112(%rbp)
	jg	.L26
.L28:
	movq	-352(%rbp), %rax
	movq	-304(%rbp), %rdi
	movq	-320(%rbp), %rsi
	addq	%rdi, -224(%rbp)
	addq	%rsi, -208(%rbp)
	addq	%rax, %r12
	addq	%rax, %r15
	addq	%rsi, -176(%rbp)
	addq	%rdi, -232(%rbp)
	addq	%rdi, -240(%rbp)
	addq	%rdi, -248(%rbp)
	addq	%rdi, -256(%rbp)
	movq	-312(%rbp), %rdi
	addq	%rsi, -296(%rbp)
	addq	%rax, -264(%rbp)
	addq	%rax, -216(%rbp)
	addq	%rax, -88(%rbp)
	addq	%rax, -120(%rbp)
	addq	%rdi, -272(%rbp)
	addq	%rax, -128(%rbp)
	addq	%rax, -136(%rbp)
	movl	-324(%rbp), %esi
	addq	%rax, -144(%rbp)
	addq	%rax, -152(%rbp)
	addq	%rax, -160(%rbp)
	addq	%rax, -168(%rbp)
	addq	%rax, -184(%rbp)
	cmpl	%esi, -196(%rbp)
	jne	.L33
	movl	-456(%rbp), %eax
	movl	-452(%rbp), %ebx
	addl	%eax, -420(%rbp)
	addl	%ebx, -416(%rbp)
	movl	-412(%rbp), %ebx
	addl	%eax, -424(%rbp)
	addl	%eax, -428(%rbp)
	addl	%eax, -432(%rbp)
	addl	%eax, -436(%rbp)
	cmpl	%ebx, -440(%rbp)
	jg	.L32
.L86:
	vzeroupper
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L87
	movq	-376(%rbp), %rdi
	call	dummy
	movq	-448(%rbp), %rdi
	call	dummy
	movq	-384(%rbp), %rdi
	call	dummy
.L87:
	addq	$512, %rsp
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
.L48:
	.cfi_restore_state
	movl	$1, %r8d
	jmp	.L5
.L93:
	movq	$0, -448(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %edi
	movq	-448(%rbp), %rcx
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
	je	.L95
	vzeroupper
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L58:
	movq	-232(%rbp), %r11
	movq	-240(%rbp), %r9
	movq	%r12, %rcx
	movq	%r15, %rax
	movq	-224(%rbp), %r8
	movq	-256(%rbp), %rdi
	movq	-248(%rbp), %rsi
	subq	%r11, %r9
	movq	-176(%rbp), %rdx
	subq	%r11, %r8
	subq	%r11, %rdi
	movq	-360(%rbp), %r13
	movq	-368(%rbp), %r14
	subq	%r11, %rsi
	movq	-296(%rbp), %r11
	.p2align 4,,10
	.p2align 3
.L27:
	vmovsd	16(%rax,%r10,8), %xmm1
	addq	$24, %rdx
	addq	$8, %rcx
	vaddsd	16(%rax,%r13,8), %xmm1, %xmm2
	vmovsd	24(%rax), %xmm1
	vaddsd	8(%rax), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rax,%r9,8), %xmm0
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	-16(%rdx), %xmm1, %xmm2
	vmovsd	16(%rax), %xmm1
	vmulsd	-24(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rax,%rbx,8), %xmm2
	vaddsd	16(%rax,%r14,8), %xmm2, %xmm3
	vmovsd	32(%rax), %xmm2
	vaddsd	(%rax), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	16(%rax,%rdi,8), %xmm0
	vaddsd	16(%rax,%rsi,8), %xmm0, %xmm0
	addq	$8, %rax
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rcx)
	cmpq	%r11, %rdx
	jne	.L27
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L56:
	movl	$2, %edx
	jmp	.L23
.L92:
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %edi
	cmovg	%r14d, %edi
	movq	%rsi, -448(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r15d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r15d
	jb	.L36
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	movq	-448(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L50
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L51
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
	jmp	.L9
.L94:
	movq	-376(%rbp), %rdi
	vzeroupper
	call	dummy
	movq	-448(%rbp), %rdi
	call	dummy
	movq	-384(%rbp), %rdi
	call	dummy
	cmpl	$2, -440(%rbp)
	jle	.L22
	leal	-2(%rbx), %eax
	movl	%ebx, %edi
	movl	%eax, -112(%rbp)
	imull	%r12d, %edi
	leal	(%rbx,%rbx,2), %eax
	movl	%eax, %esi
	imull	%r12d, %esi
	movl	%edi, -456(%rbp)
	movl	%esi, -452(%rbp)
	cmpl	$4, %r12d
	jg	.L45
	jmp	.L22
.L95:
	vzeroupper
	jmp	.L40
.L54:
	movl	$1, %edi
	jmp	.L16
.L50:
	movl	$1, %eax
	jmp	.L9
.L89:
	vzeroupper
	jmp	.L87
.L91:
	vzeroupper
	jmp	.L8
.L3:
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -448(%rbp)
	testl	%eax, %eax
	jne	.L40
	movq	-56(%rbp), %rax
	movq	%rax, -448(%rbp)
	jmp	.L40
.L51:
	movl	$2, %eax
	jmp	.L9
.L55:
	movl	$2, %edi
	jmp	.L16
.L49:
	movl	$2, %r8d
	jmp	.L5
.L52:
	xorl	%eax, %eax
	jmp	.L15
.L46:
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
