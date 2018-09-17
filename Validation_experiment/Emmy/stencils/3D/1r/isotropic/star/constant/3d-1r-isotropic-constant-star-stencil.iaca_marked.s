	.file	"3d-1r-isotropic-constant-star-stencil.c_compilable.c"
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
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	movl	%r13d, %r14d
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %r12
	imull	%ebx, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -120(%rbp)
	call	posix_memalign
	movq	-120(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %r15
	testl	%r14d, %r14d
	jle	.L3
	leal	-1(%r14), %r9d
	movq	%r15, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	xorl	%esi, %esi
	cmpl	%edx, %r9d
	jb	.L4
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L43
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L44
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %esi
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r15,%rax,8), %rdx
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
	je	.L79
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%esi, %rax
	vmovsd	%xmm0, (%r15,%rax,8)
	leal	1(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
	leal	2(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
	leal	3(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
	leal	4(%rsi), %eax
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	addl	$5, %esi
	vmovsd	%xmm0, (%r15,%rax,8)
	cmpl	%esi, %r14d
	jle	.L8
	movslq	%esi, %rsi
	vmovsd	%xmm0, (%r15,%rsi,8)
.L8:
	leaq	-80(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	movl	%r9d, -120(%rbp)
	call	posix_memalign
	movl	-120(%rbp), %r9d
	testl	%eax, %eax
	je	.L80
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %esi
	cmovg	%r9d, %eax
	cmovg	%r14d, %esi
	cmpl	$4, %eax
	ja	.L81
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
.L31:
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L35
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L35
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L35:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -112(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -80(%rbp)
	leal	-1(%r13), %eax
	movl	%eax, -436(%rbp)
	testl	%edx, %edx
	jne	.L82
	cmpl	$1, -436(%rbp)
	jle	.L77
	leal	-1(%rbx), %eax
	movl	%ebx, -228(%rbp)
	movl	%eax, -156(%rbp)
	movl	%ebx, %eax
	imull	%r12d, %eax
	movl	%eax, -440(%rbp)
	cmpl	$2, %r12d
	jle	.L77
.L40:
	cmpl	$1, -156(%rbp)
	jle	.L74
	movl	-440(%rbp), %esi
	movslq	%ebx, %rcx
	movl	%ebx, %edx
	movq	%r15, %r13
	leaq	1(%rcx), %rdi
	movq	%rcx, -296(%rbp)
	leal	-3(%rdx), %r8d
	movl	$0, -144(%rbp)
	leaq	8(%r15), %r9
	movq	%rdi, -480(%rbp)
	leal	(%rsi,%rsi), %eax
	movq	%r9, -240(%rbp)
	movl	%eax, -148(%rbp)
	leal	(%rsi,%rbx), %eax
	addl	%ebx, %ebx
	movl	%eax, -448(%rbp)
	leal	-1(%r12), %r9d
	movl	%esi, %r12d
	movl	%eax, -432(%rbp)
	leaq	40(%r15), %rax
	movq	%rax, -336(%rbp)
	leaq	48(%r15), %rax
	movq	%rax, -344(%rbp)
	leaq	5(%rcx), %rax
	movq	%rax, -488(%rbp)
	leal	-2(%rdx), %eax
	subl	%esi, %edx
	movl	%eax, -232(%rbp)
	addq	%rdi, %rax
	movq	%rax, -456(%rbp)
	movl	%r8d, %eax
	addq	%rcx, %rax
	movl	%ebx, -444(%rbp)
	movslq	%ebx, %rbx
	movq	%rax, -464(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movl	%edx, -468(%rbp)
	movq	%rbx, -408(%rbp)
	leaq	-112(%rbp), %rbx
	leaq	0(,%rcx,8), %r14
	movq	%rax, -312(%rbp)
	leaq	8(%rbx), %rax
	movq	%rbx, -328(%rbp)
	movl	$1, -428(%rbp)
	movl	%r8d, -380(%rbp)
	movl	%r9d, -272(%rbp)
	movq	%rax, -320(%rbp)
	movq	%r14, -352(%rbp)
	.p2align 4,,10
	.p2align 3
.L27:
	movq	-480(%rbp), %rax
	movslq	%r12d, %rsi
	xorl	%r15d, %r15d
	movl	%r12d, %r14d
	movq	-128(%rbp), %rcx
	movq	%rsi, -304(%rbp)
	movl	-468(%rbp), %edi
	addl	$1, -428(%rbp)
	addq	%rsi, %rax
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, -168(%rbp)
	movq	-488(%rbp), %rax
	addq	%rsi, %rax
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, -176(%rbp)
	movq	-456(%rbp), %rax
	addq	%rsi, %rax
	leaq	(%rcx,%rax,8), %rax
	movq	-240(%rbp), %rcx
	movq	%rax, -184(%rbp)
	movq	-464(%rbp), %rax
	addq	%rsi, %rax
	leaq	(%rcx,%rax,8), %rax
	movq	-296(%rbp), %rcx
	movq	%rax, -288(%rbp)
	movq	%rsi, %rax
	movq	%rcx, %rbx
	addq	%rsi, %rbx
	leaq	0(,%rbx,8), %rsi
	movq	%rbx, -248(%rbp)
	leal	(%rdi,%r12), %ebx
	movq	%rsi, -136(%rbp)
	movl	%ebx, -256(%rbp)
	movl	-448(%rbp), %ebx
	leal	(%r12,%rbx), %esi
	movl	%esi, -260(%rbp)
	movl	-444(%rbp), %esi
	leaq	0(,%rax,8), %rbx
	addq	-408(%rbp), %rax
	movq	%rbx, -192(%rbp)
	movslq	-148(%rbp), %rbx
	leal	(%r12,%rsi), %edi
	movslq	-144(%rbp), %rsi
	movq	%rax, -376(%rbp)
	salq	$3, %rax
	movq	%rax, -200(%rbp)
	movq	%rcx, %rax
	movl	%edi, -264(%rbp)
	addq	%rsi, %rax
	movq	%rsi, -416(%rbp)
	movq	%rax, -360(%rbp)
	salq	$3, %rax
	movq	%rax, -208(%rbp)
	movq	%rcx, %rax
	addq	%rbx, %rax
	movq	%rbx, -424(%rbp)
	movq	%rax, -368(%rbp)
	salq	$3, %rax
	movq	%rax, -224(%rbp)
	movl	-432(%rbp), %eax
	movq	%rcx, -280(%rbp)
	movq	$0, -216(%rbp)
	movl	$1, -160(%rbp)
	leal	1(%rax), %ecx
	movl	%eax, -252(%rbp)
	movl	%ecx, -384(%rbp)
	leal	2(%rax), %ecx
	addl	$3, %eax
	movl	%ecx, -388(%rbp)
	leal	1(%r12), %ecx
	movl	%eax, -396(%rbp)
	leal	2(%r12), %eax
	movl	%ecx, -392(%rbp)
	movl	%eax, -400(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movl	-228(%rbp), %eax
	movq	-168(%rbp), %r11
	movq	-312(%rbp), %rcx
	addl	$1, -160(%rbp)
	movq	-136(%rbp), %rbx
	leal	(%r15,%rax), %edi
	movq	-176(%rbp), %r10
	addl	%edi, %eax
	movl	%edi, -120(%rbp)
	movq	-184(%rbp), %rdi
	cmpq	%rcx, %r11
	leaq	-80(%rbp), %rcx
	setnb	%sil
	movl	%eax, -140(%rbp)
	movq	-192(%rbp), %r8
	leaq	0(%r13,%rbx), %rax
	movq	-208(%rbp), %r9
	cmpq	%rcx, %rdi
	setbe	%dl
	orl	%edx, %esi
	cmpq	-320(%rbp), %r11
	setnb	%cl
	cmpq	-328(%rbp), %rdi
	movq	-240(%rbp), %rdi
	setbe	%dl
	orl	%ecx, %edx
	andl	%esi, %edx
	cmpl	$5, -232(%rbp)
	seta	%cl
	andl	%ecx, %edx
	movq	-344(%rbp), %rcx
	addq	%rbx, %rcx
	movq	-336(%rbp), %rbx
	cmpq	%rcx, %r11
	setnb	%cl
	cmpq	%rax, %r10
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r11
	setnb	%cl
	addq	%r8, %rsi
	movq	-200(%rbp), %r8
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r11
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r11
	setnb	%cl
	addq	%r9, %rsi
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L26
	movq	-224(%rbp), %rsi
	addq	%rsi, %rbx
	cmpq	%rbx, %r11
	setnb	%cl
	addq	%rsi, %rdi
	cmpq	%rdi, %r10
	setbe	%dl
	orb	%dl, %cl
	je	.L26
	movq	-240(%rbp), %rdx
	addq	-136(%rbp), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-380(%rbp), %eax
	ja	.L47
	movl	$1, -152(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	-388(%rbp), %esi
	movl	$2, -152(%rbp)
	movl	-256(%rbp), %r10d
	movl	-260(%rbp), %r11d
	movl	-264(%rbp), %r12d
	leal	(%rsi,%r15), %ecx
	movl	-384(%rbp), %eax
	leal	1(%r10), %r9d
	movslq	%ecx, %rcx
	leal	1(%r11), %esi
	movslq	%r9d, %r9
	vmovsd	0(%r13,%r9,8), %xmm3
	leaq	0(%r13,%rcx,8), %rdi
	movslq	%esi, %rsi
	vaddsd	0(%r13,%rsi,8), %xmm3, %xmm3
	addl	%r15d, %eax
	movslq	-252(%rbp), %rsi
	cltq
	leaq	0(%r13,%rax,8), %r8
	vmovsd	0(%r13,%rsi,8), %xmm0
	movq	%rsi, %rbx
	movl	-392(%rbp), %esi
	vaddsd	(%rdi), %xmm0, %xmm0
	leal	(%rsi,%r15), %r9d
	vaddsd	%xmm0, %xmm3, %xmm2
	leal	1(%r12), %esi
	movslq	%r9d, %r9
	movslq	%esi, %rsi
	vmovsd	0(%r13,%r9,8), %xmm0
	vaddsd	0(%r13,%rsi,8), %xmm0, %xmm0
	movq	-128(%rbp), %rsi
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%rax,8)
	cmpl	$1, %edx
	je	.L17
	movl	$3, -152(%rbp)
	leal	2(%r10), %esi
	leal	2(%r11), %eax
	movslq	%esi, %rsi
	cltq
	vmovsd	0(%r13,%rsi,8), %xmm1
	vaddsd	0(%r13,%rax,8), %xmm1, %xmm1
	movl	-396(%rbp), %eax
	addl	%r15d, %eax
	cltq
	vmovsd	0(%r13,%rax,8), %xmm0
	movl	-400(%rbp), %eax
	vaddsd	(%r8), %xmm0, %xmm0
	leal	(%rax,%r15), %esi
	vaddsd	%xmm0, %xmm1, %xmm2
	leal	2(%r12), %eax
	movslq	%esi, %rsi
	cltq
	vmovsd	0(%r13,%rsi,8), %xmm0
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%rdi), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movq	-128(%rbp), %rdi
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi,%rcx,8)
	cmpl	$3, %edx
	jne	.L17
	movl	$4, -152(%rbp)
	leal	2(%rbx), %esi
	leal	4(%rbx), %ecx
	movslq	%esi, %rsi
	vmovsd	0(%r13,%rsi,8), %xmm1
	leal	3(%r10), %esi
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm1, %xmm1
	leal	3(%r11), %ecx
	movslq	%esi, %rsi
	vmovsd	0(%r13,%rsi,8), %xmm0
	leal	3(%r15,%r14), %esi
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	leal	3(%r12), %ecx
	movslq	%esi, %rsi
	leal	3(%rbx), %eax
	movslq	%ecx, %rcx
	cltq
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	0(%r13,%rsi,8), %xmm0
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	0(%r13,%rax,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi,%rax,8)
.L17:
	movl	-232(%rbp), %ebx
	movl	%edx, %eax
	movq	-248(%rbp), %rdi
	vbroadcastsd	-112(%rbp), %ymm4
	vbroadcastsd	-80(%rbp), %ymm3
	subl	%edx, %ebx
	movq	-136(%rbp), %rdx
	leaq	1(%rax,%rdi), %rcx
	movl	%ebx, -268(%rbp)
	shrl	$2, %ebx
	salq	$3, %rcx
	leaq	0(%r13,%rcx), %r12
	addq	-128(%rbp), %rcx
	leaq	(%rdx,%rax,8), %rsi
	leaq	2(%rax,%rdi), %rdx
	movq	-216(%rbp), %rdi
	addq	%r13, %rsi
	leaq	0(%r13,%rdx,8), %r11
	movq	-360(%rbp), %rdx
	leaq	1(%rdi,%rdx), %rdx
	addq	%rax, %rdx
	leaq	0(%r13,%rdx,8), %r10
	movq	-368(%rbp), %rdx
	leaq	1(%rdi,%rdx), %rdx
	addq	%rax, %rdx
	leaq	0(%r13,%rdx,8), %r9
	movq	-304(%rbp), %rdx
	leaq	1(%rdx,%rdi), %rdx
	addq	%rax, %rdx
	leaq	0(%r13,%rdx,8), %r8
	movq	-376(%rbp), %rdx
	leaq	1(%rdi,%rdx), %rdx
	addq	%rdx, %rax
	xorl	%edx, %edx
	leaq	0(%r13,%rax,8), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	vmovupd	(%r11,%rax), %xmm1
	vinsertf128	$0x1, 16(%r11,%rax), %ymm1, %ymm0
	addl	$1, %edx
	vmovupd	(%rsi,%rax), %xmm2
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm2, %ymm2
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%r10,%rax), %xmm2
	vinsertf128	$0x1, 16(%r10,%rax), %ymm2, %ymm2
	vmovupd	(%r9,%rax), %xmm0
	vinsertf128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%r8,%rax), %xmm0
	vinsertf128	$0x1, 16(%r8,%rax), %ymm0, %ymm1
	vmovupd	(%rdi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm1
	vmulpd	(%r12,%rax), %ymm4, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %ebx
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-268(%rbp), %esi
	movl	-152(%rbp), %ebx
	movl	%esi, %eax
	andl	$-4, %eax
	addl	%eax, %ebx
	cmpl	%eax, %esi
	je	.L22
.L16:
	movl	-120(%rbp), %r9d
	leal	1(%rbx), %eax
	movl	-144(%rbp), %r10d
	leal	(%rbx,%r9), %edx
	leal	(%r14,%rdx), %edi
	leal	(%r10,%rdx), %esi
	addl	-148(%rbp), %edx
	movslq	%edi, %rdi
	movslq	%esi, %rsi
	vmovsd	0(%r13,%rsi,8), %xmm3
	leal	(%rax,%r9), %ecx
	leal	(%r14,%rcx), %r8d
	leal	(%r15,%rbx), %esi
	movslq	%edx, %rdx
	movslq	%r8d, %r8
	vaddsd	0(%r13,%rdx,8), %xmm3, %xmm3
	leal	-1(%rbx,%r9), %edx
	addl	%r14d, %esi
	leaq	0(%r13,%r8,8), %r11
	addl	%r14d, %edx
	movslq	%esi, %rsi
	movslq	%edx, %rdx
	vmovsd	0(%r13,%rdx,8), %xmm0
	movl	-140(%rbp), %edx
	vaddsd	(%r11), %xmm0, %xmm0
	addl	%ebx, %edx
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	0(%r13,%rsi,8), %xmm0
	addl	%r14d, %edx
	movq	-128(%rbp), %rsi
	movslq	%edx, %rdx
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	0(%r13,%rdi,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%rdi,8)
	cmpl	-156(%rbp), %eax
	jge	.L22
	addl	%ecx, %r10d
	addl	-148(%rbp), %ecx
	movslq	%r10d, %r10
	vmovsd	0(%r13,%rdi,8), %xmm0
	leal	2(%rbx), %edx
	vmovsd	0(%r13,%r10,8), %xmm3
	leal	(%rdx,%r9), %esi
	leal	(%r14,%rsi), %r9d
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm3, %xmm3
	leal	(%rax,%r15), %ecx
	movslq	%r9d, %r9
	addl	-140(%rbp), %eax
	leaq	0(%r13,%r9,8), %r12
	addl	%r14d, %ecx
	vaddsd	(%r12), %xmm0, %xmm0
	movslq	%ecx, %rcx
	addl	%r14d, %eax
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	0(%r13,%rcx,8), %xmm0
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	movq	-128(%rbp), %rax
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r11), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rax,%r8,8)
	cmpl	-156(%rbp), %edx
	jge	.L22
	movl	-144(%rbp), %r10d
	movl	-120(%rbp), %edi
	leal	3(%rbx), %eax
	vmovsd	0(%r13,%r8,8), %xmm0
	addl	%esi, %r10d
	addl	-148(%rbp), %esi
	movslq	%r10d, %r10
	leal	(%rax,%rdi), %ecx
	vmovsd	0(%r13,%r10,8), %xmm1
	leal	(%r14,%rcx), %edi
	movslq	%esi, %rsi
	movslq	%edi, %rdi
	vaddsd	0(%r13,%rsi,8), %xmm1, %xmm1
	leal	(%r15,%rdx), %esi
	addl	-140(%rbp), %edx
	leaq	0(%r13,%rdi,8), %r11
	addl	%r14d, %esi
	vaddsd	(%r11), %xmm0, %xmm0
	movslq	%esi, %rsi
	addl	%r14d, %edx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	0(%r13,%rsi,8), %xmm0
	movslq	%edx, %rdx
	movq	-128(%rbp), %rsi
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r12), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%r9,8)
	cmpl	%eax, -156(%rbp)
	jle	.L22
	movl	-144(%rbp), %r10d
	movl	-120(%rbp), %esi
	leal	4(%rbx), %edx
	vmovsd	0(%r13,%r9,8), %xmm0
	addl	%ecx, %r10d
	addl	-148(%rbp), %ecx
	addl	%edx, %esi
	movslq	%r10d, %r10
	vmovsd	0(%r13,%r10,8), %xmm1
	leal	(%r14,%rsi), %r8d
	movslq	%r8d, %r8
	leaq	0(%r13,%r8,8), %r12
	movslq	%ecx, %rcx
	vaddsd	0(%r13,%rcx,8), %xmm1, %xmm1
	leal	(%r15,%rax), %ecx
	addl	-140(%rbp), %eax
	addl	%r14d, %ecx
	vaddsd	(%r12), %xmm0, %xmm0
	movslq	%ecx, %rcx
	addl	%r14d, %eax
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	0(%r13,%rcx,8), %xmm0
	cltq
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	movq	-128(%rbp), %rax
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r11), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rax,%rdi,8)
	cmpl	%edx, -156(%rbp)
	jle	.L22
	movl	-144(%rbp), %r10d
	movl	-120(%rbp), %ecx
	leal	5(%rbx), %eax
	vmovsd	0(%r13,%rdi,8), %xmm0
	movl	-140(%rbp), %edi
	addl	%esi, %r10d
	addl	-148(%rbp), %esi
	addl	%eax, %ecx
	movslq	%r10d, %r10
	leal	(%r14,%rcx), %r9d
	vmovsd	0(%r13,%r10,8), %xmm1
	movslq	%r9d, %r9
	leaq	0(%r13,%r9,8), %r11
	movslq	%esi, %rsi
	vaddsd	0(%r13,%rsi,8), %xmm1, %xmm1
	leal	(%r15,%rdx), %esi
	addl	%edi, %edx
	vaddsd	(%r11), %xmm0, %xmm0
	addl	%r14d, %esi
	addl	%r14d, %edx
	movslq	%esi, %rsi
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	0(%r13,%rsi,8), %xmm0
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r12), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movq	-128(%rbp), %r12
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r8,8)
	cmpl	%eax, -156(%rbp)
	jle	.L22
	movl	-120(%rbp), %esi
	movl	-144(%rbp), %r10d
	vmovsd	0(%r13,%r8,8), %xmm1
	leal	6(%rbx,%rsi), %edx
	addl	%r14d, %edx
	movslq	%edx, %rdx
	vaddsd	0(%r13,%rdx,8), %xmm1, %xmm1
	leal	(%r10,%rcx), %edx
	addl	-148(%rbp), %ecx
	movslq	%edx, %rdx
	vmovsd	0(%r13,%rdx,8), %xmm0
	leal	(%r15,%rax), %edx
	addl	%edi, %eax
	addl	%r14d, %edx
	addl	%r14d, %eax
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	cltq
	vaddsd	0(%r13,%rcx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	0(%r13,%rdx,8), %xmm0
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r11), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r9,8)
.L22:
	movq	-352(%rbp), %rax
	movl	-228(%rbp), %ebx
	movq	-296(%rbp), %rdi
	addq	%rax, -168(%rbp)
	addq	%rax, -176(%rbp)
	addq	%rax, -184(%rbp)
	addq	%rdi, -216(%rbp)
	addq	%rdi, -280(%rbp)
	addq	%rax, -288(%rbp)
	addq	%rdi, -248(%rbp)
	addq	%rax, -136(%rbp)
	addl	%ebx, -252(%rbp)
	addl	%ebx, -256(%rbp)
	addl	%ebx, -260(%rbp)
	addl	%ebx, -264(%rbp)
	addq	%rax, -192(%rbp)
	addq	%rax, -200(%rbp)
	addq	%rax, -208(%rbp)
	addq	%rax, -224(%rbp)
	movl	-120(%rbp), %r15d
	movl	-272(%rbp), %ecx
	cmpl	%ecx, -160(%rbp)
	jne	.L28
	movl	-440(%rbp), %eax
	movl	%r14d, %r12d
	addl	%eax, -144(%rbp)
	addl	%eax, -148(%rbp)
	addl	%eax, -432(%rbp)
	addl	%eax, %r12d
	movl	-428(%rbp), %ecx
	cmpl	%ecx, -436(%rbp)
	jg	.L27
	movq	%r13, %r15
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L75
	movq	%r15, %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	leaq	-112(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L75:
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
.L43:
	.cfi_restore_state
	movl	$1, %esi
	jmp	.L5
.L81:
	xorl	%edx, %edx
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
.L9:
	movq	-128(%rbp), %rcx
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
.L26:
	movq	-280(%rbp), %rsi
	movq	-216(%rbp), %rbx
	movq	-408(%rbp), %rcx
	movq	-304(%rbp), %r15
	movq	-424(%rbp), %r8
	movq	-416(%rbp), %rdi
	movq	-168(%rbp), %rdx
	addq	%rbx, %rcx
	subq	%rsi, %rbx
	movq	-288(%rbp), %r9
	subq	%rsi, %rcx
	movq	%rbx, %rsi
	subq	%r15, %r8
	subq	%r15, %rdi
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	8(%rax,%r8,8), %xmm1
	addq	$8, %rdx
	vaddsd	8(%rax,%rdi,8), %xmm1, %xmm1
	vmovsd	16(%rax), %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovsd	8(%rax,%rsi,8), %xmm0
	vaddsd	8(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovsd	-112(%rbp), %xmm0
	vmulsd	-80(%rbp), %xmm1, %xmm1
	vmulsd	(%rax), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rdx)
	cmpq	%r9, %rax
	jne	.L21
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L47:
	movl	$1, %ebx
	jmp	.L16
.L80:
	movq	-80(%rbp), %rcx
	testl	%r14d, %r14d
	movl	$1, %esi
	movl	%r9d, %r8d
	cmovg	%r14d, %esi
	movl	$5, %edi
	movq	%rcx, -128(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r8d
	cmpl	$5, %ecx
	cmovb	%edi, %ecx
	cmpl	%ecx, %r8d
	jb	.L31
	testl	%edx, %edx
	je	.L9
	movq	-128(%rbp), %rax
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
.L82:
	movq	%r15, %rdi
	vzeroupper
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$1, -436(%rbp)
	jle	.L15
	leal	-1(%rbx), %eax
	movl	%ebx, -228(%rbp)
	movl	%eax, -156(%rbp)
	movl	%ebx, %eax
	imull	%r12d, %eax
	movl	%eax, -440(%rbp)
	cmpl	$2, %r12d
	jg	.L40
	jmp	.L15
.L79:
	vzeroupper
	jmp	.L8
.L77:
	vzeroupper
	jmp	.L75
.L45:
	movl	$1, %eax
	jmp	.L9
.L3:
	leaq	-80(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -128(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.L35
.L46:
	movl	$2, %eax
	jmp	.L9
.L44:
	movl	$2, %esi
	jmp	.L5
.L74:
	vzeroupper
	jmp	.L15
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
