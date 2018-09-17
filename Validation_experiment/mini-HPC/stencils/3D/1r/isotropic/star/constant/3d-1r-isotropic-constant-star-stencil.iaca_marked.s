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
	movq	%rax, %rbx
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	call	strtol
	movl	%r13d, %r14d
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
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
	je	.L79
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
	movq	%r10, -120(%rbp)
	call	posix_memalign
	movq	-120(%rbp), %r10
	testl	%eax, %eax
	je	.L80
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %esi
	cmovle	%eax, %r15d
	cmovg	%r14d, %esi
	cmpl	$4, %r15d
	ja	.L81
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
.L31:
	vmovsd	.LC2(%rip), %xmm0
	movq	-128(%rbp), %rdi
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
	movl	-440(%rbp), %eax
	leal	(%rbx,%rbx), %esi
	movslq	%ebx, %rcx
	movl	%ebx, %edx
	leaq	1(%rcx), %r14
	leal	-3(%rdx), %r15d
	movl	%esi, -444(%rbp)
	leal	(%rax,%rax), %edi
	leaq	8(%r10), %r9
	movq	%rcx, -296(%rbp)
	movl	%edi, -148(%rbp)
	leal	(%rax,%rbx), %edi
	movslq	%esi, %rbx
	leaq	-112(%rbp), %rsi
	movl	%edi, -448(%rbp)
	leaq	0(,%rcx,8), %r8
	movq	%rbx, -408(%rbp)
	movl	%eax, %ebx
	movl	%edi, -432(%rbp)
	movl	%eax, %edi
	leaq	40(%r10), %rax
	movq	%rax, -336(%rbp)
	leaq	48(%r10), %rax
	movq	%rax, -344(%rbp)
	leaq	5(%rcx), %rax
	movq	%rax, -488(%rbp)
	leal	-2(%rdx), %eax
	subl	%ebx, %edx
	movl	%eax, -232(%rbp)
	addq	%r14, %rax
	movq	%rax, -456(%rbp)
	movl	%r15d, %eax
	addq	%rcx, %rax
	movl	%edx, -468(%rbp)
	movq	%rax, -464(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%r9, -240(%rbp)
	leal	-1(%r12), %r9d
	movq	%rax, -312(%rbp)
	leaq	8(%rsi), %rax
	movl	$0, -144(%rbp)
	movl	$1, -428(%rbp)
	movq	%rsi, -328(%rbp)
	movq	%r14, -480(%rbp)
	movl	%r9d, -272(%rbp)
	movq	%rax, -320(%rbp)
	movq	%r8, -352(%rbp)
	movl	%r15d, -380(%rbp)
	movq	%r10, %r15
	.p2align 4,,10
	.p2align 3
.L27:
	movq	-480(%rbp), %rax
	movslq	%edi, %rsi
	xorl	%r8d, %r8d
	movl	%edi, %r13d
	movq	-128(%rbp), %rcx
	movq	%rsi, -304(%rbp)
	movl	%r8d, %r14d
	addq	%rsi, %rax
	addl	$1, -428(%rbp)
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
	movq	%rsi, -136(%rbp)
	movl	-468(%rbp), %esi
	addl	%edi, %esi
	movl	%esi, -256(%rbp)
	movl	-448(%rbp), %esi
	addl	%edi, %esi
	movl	%esi, -260(%rbp)
	movl	-444(%rbp), %esi
	leal	(%rdi,%rsi), %ebx
	movslq	-144(%rbp), %rsi
	movl	%ebx, -264(%rbp)
	leaq	0(,%rax,8), %rbx
	addq	-408(%rbp), %rax
	movq	%rax, -376(%rbp)
	salq	$3, %rax
	movq	%rax, -200(%rbp)
	movq	%rcx, %rax
	addq	%rsi, %rax
	movq	%rsi, -416(%rbp)
	movslq	-148(%rbp), %rsi
	movq	%rax, -360(%rbp)
	salq	$3, %rax
	movq	%rax, -208(%rbp)
	movq	%rcx, %rax
	addq	%rsi, %rax
	movq	%rbx, -192(%rbp)
	movq	%rsi, -424(%rbp)
	movq	%rax, -368(%rbp)
	salq	$3, %rax
	movq	%rax, -224(%rbp)
	movl	-432(%rbp), %eax
	movq	%rcx, -280(%rbp)
	leal	1(%rax), %ecx
	movl	%eax, -252(%rbp)
	movl	%ecx, -384(%rbp)
	leal	2(%rax), %ecx
	addl	$3, %eax
	movl	%ecx, -388(%rbp)
	leal	1(%rdi), %ecx
	movl	%eax, -396(%rbp)
	leal	2(%rdi), %eax
	movq	$0, -216(%rbp)
	movl	$1, -160(%rbp)
	movl	%ecx, -392(%rbp)
	movl	%eax, -400(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movl	-228(%rbp), %eax
	movq	-168(%rbp), %r10
	movq	-312(%rbp), %rcx
	addl	$1, -160(%rbp)
	leal	(%r14,%rax), %edi
	movq	-136(%rbp), %rbx
	movq	-176(%rbp), %r11
	addl	%edi, %eax
	movl	%edi, -120(%rbp)
	movq	-184(%rbp), %rdi
	cmpq	%rcx, %r10
	leaq	-80(%rbp), %rcx
	setnb	%sil
	movl	%eax, -140(%rbp)
	leaq	(%r15,%rbx), %rax
	cmpq	%rcx, %rdi
	movq	-192(%rbp), %r9
	movq	-208(%rbp), %r8
	setbe	%dl
	orl	%edx, %esi
	cmpq	-320(%rbp), %r10
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
	cmpq	%rcx, %r10
	setnb	%cl
	cmpq	%rax, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r10
	setnb	%cl
	addq	%r9, %rsi
	movq	-200(%rbp), %r9
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r10
	setnb	%cl
	addq	%r9, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %edx
	movq	%rbx, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r10
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L26
	movq	-224(%rbp), %rsi
	addq	%rsi, %rbx
	cmpq	%rbx, %r10
	setnb	%cl
	addq	%rsi, %rdi
	cmpq	%rdi, %r11
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
	movl	-256(%rbp), %r10d
	movl	$2, -152(%rbp)
	movl	-260(%rbp), %r11d
	movl	-264(%rbp), %r12d
	leal	(%rsi,%r14), %ecx
	leal	1(%r10), %r9d
	movl	-384(%rbp), %eax
	leal	1(%r11), %esi
	movslq	%r9d, %r9
	movslq	%ecx, %rcx
	movslq	%esi, %rsi
	vmovsd	(%r15,%r9,8), %xmm3
	leaq	(%r15,%rcx,8), %rdi
	addl	%r14d, %eax
	vaddsd	(%r15,%rsi,8), %xmm3, %xmm3
	movslq	-252(%rbp), %rsi
	cltq
	leaq	(%r15,%rax,8), %r8
	vmovsd	(%r15,%rsi,8), %xmm0
	movq	%rsi, %rbx
	movl	-392(%rbp), %esi
	vaddsd	(%rdi), %xmm0, %xmm0
	leal	(%rsi,%r14), %r9d
	leal	1(%r12), %esi
	movslq	%esi, %rsi
	movslq	%r9d, %r9
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r15,%r9,8), %xmm0
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	movq	-128(%rbp), %rsi
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%rax,8)
	cmpl	$1, %edx
	je	.L17
	leal	2(%r10), %esi
	leal	2(%r11), %eax
	movl	%r10d, %r9d
	movl	$3, -152(%rbp)
	movslq	%esi, %rsi
	cltq
	vmovsd	(%r15,%rsi,8), %xmm1
	vaddsd	(%r15,%rax,8), %xmm1, %xmm1
	movl	-396(%rbp), %eax
	addl	%r14d, %eax
	cltq
	vmovsd	(%r15,%rax,8), %xmm0
	movl	-400(%rbp), %eax
	vaddsd	(%r8), %xmm0, %xmm0
	leal	(%rax,%r14), %esi
	leal	2(%r12), %eax
	movslq	%esi, %rsi
	cltq
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r15,%rsi,8), %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
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
	movslq	%ecx, %rcx
	leal	3(%rbx), %eax
	vmovsd	(%r15,%rsi,8), %xmm1
	leal	3(%r9), %esi
	vaddsd	(%r15,%rcx,8), %xmm1, %xmm1
	cltq
	leal	3(%r11), %ecx
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	vmovsd	(%r15,%rsi,8), %xmm0
	leal	3(%r14,%r13), %esi
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	leal	3(%r12), %ecx
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r15,%rsi,8), %xmm0
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r15,%rax,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi,%rax,8)
.L17:
	movq	-248(%rbp), %rbx
	movl	-232(%rbp), %edi
	movl	%edx, %eax
	movq	-216(%rbp), %r8
	vbroadcastsd	-112(%rbp), %ymm3
	subl	%edx, %edi
	leaq	2(%rax,%rbx), %rdx
	leaq	1(%rax,%rbx), %rcx
	vbroadcastsd	-80(%rbp), %ymm2
	leaq	(%r15,%rdx,8), %rbx
	movl	%edi, %esi
	movl	%edi, -268(%rbp)
	salq	$3, %rcx
	movq	-360(%rbp), %rdx
	movq	-136(%rbp), %rdi
	leaq	(%r15,%rcx), %r12
	shrl	$2, %esi
	addq	-128(%rbp), %rcx
	leaq	1(%r8,%rdx), %rdx
	leaq	(%rdi,%rax,8), %rdi
	addq	%rax, %rdx
	addq	%r15, %rdi
	leaq	(%r15,%rdx,8), %r11
	movq	-368(%rbp), %rdx
	leaq	1(%r8,%rdx), %rdx
	addq	%rax, %rdx
	leaq	(%r15,%rdx,8), %r10
	movq	-304(%rbp), %rdx
	leaq	1(%rdx,%r8), %rdx
	addq	%rax, %rdx
	leaq	(%r15,%rdx,8), %r9
	movq	-376(%rbp), %rdx
	leaq	1(%r8,%rdx), %rdx
	addq	%rdx, %rax
	xorl	%edx, %edx
	leaq	(%r15,%rax,8), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	vmovupd	(%rbx,%rax), %ymm1
	vmovupd	(%r10,%rax), %ymm0
	addl	$1, %edx
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%rdi,%rax), %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r8,%rax), %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm1
	vmulpd	(%r12,%rax), %ymm3, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %esi
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-268(%rbp), %ebx
	movl	-152(%rbp), %esi
	movl	%ebx, %eax
	andl	$-4, %eax
	addl	%eax, %esi
	cmpl	%eax, %ebx
	je	.L22
.L16:
	movl	-120(%rbp), %r11d
	movl	-144(%rbp), %edi
	leal	1(%rsi), %eax
	movq	-128(%rbp), %r12
	leal	(%rsi,%r11), %edx
	leal	(%rax,%r11), %ecx
	leal	0(%r13,%rdx), %r8d
	addl	%edx, %edi
	addl	-148(%rbp), %edx
	movslq	%edi, %rdi
	movslq	%edx, %rdx
	leal	0(%r13,%rcx), %r9d
	movslq	%r8d, %r8
	vmovsd	(%r15,%rdi,8), %xmm3
	vaddsd	(%r15,%rdx,8), %xmm3, %xmm3
	leal	-1(%rsi,%r11), %edx
	movslq	%r9d, %r9
	addl	%r13d, %edx
	leaq	(%r15,%r9,8), %rbx
	leal	(%r14,%rsi), %edi
	movslq	%edx, %rdx
	addl	%r13d, %edi
	vmovsd	(%r15,%rdx,8), %xmm0
	movl	-140(%rbp), %edx
	movslq	%edi, %rdi
	vaddsd	(%rbx), %xmm0, %xmm0
	addl	%esi, %edx
	addl	%r13d, %edx
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r15,%rdi,8), %xmm0
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r15,%r8,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r8,8)
	cmpl	-156(%rbp), %eax
	jge	.L22
	leal	2(%rsi), %edx
	vmovsd	(%r15,%r8,8), %xmm0
	leal	(%rdx,%r11), %edi
	movl	-144(%rbp), %r11d
	leal	0(%r13,%rdi), %r10d
	addl	%ecx, %r11d
	movslq	%r10d, %r10
	addl	-148(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%r15,%r10,8), %r12
	movslq	%r11d, %r11
	vaddsd	(%r12), %xmm0, %xmm0
	vmovsd	(%r15,%r11,8), %xmm3
	vaddsd	(%r15,%rcx,8), %xmm3, %xmm3
	leal	(%rax,%r14), %ecx
	addl	-140(%rbp), %eax
	addl	%r13d, %ecx
	addl	%r13d, %eax
	cltq
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r15,%rcx,8), %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movq	-128(%rbp), %rax
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%rbx), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rax,%r9,8)
	cmpl	-156(%rbp), %edx
	jge	.L22
	movl	-120(%rbp), %r11d
	leal	3(%rsi), %eax
	vmovsd	(%r15,%r9,8), %xmm0
	leal	(%rax,%r11), %ecx
	movl	-144(%rbp), %r11d
	leal	0(%r13,%rcx), %r8d
	addl	%edi, %r11d
	movslq	%r8d, %r8
	addl	-148(%rbp), %edi
	movslq	%edi, %rdi
	leaq	(%r15,%r8,8), %rbx
	movslq	%r11d, %r11
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	(%r15,%r11,8), %xmm1
	vaddsd	(%r15,%rdi,8), %xmm1, %xmm1
	leal	(%r14,%rdx), %edi
	addl	-140(%rbp), %edx
	addl	%r13d, %edi
	addl	%r13d, %edx
	movslq	%edi, %rdi
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r15,%rdi,8), %xmm0
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r12), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movq	-128(%rbp), %r12
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r10,8)
	cmpl	%eax, -156(%rbp)
	jle	.L22
	movl	-120(%rbp), %r11d
	leal	4(%rsi), %edx
	vmovsd	(%r15,%r10,8), %xmm0
	leal	(%rdx,%r11), %edi
	movl	-144(%rbp), %r11d
	leal	0(%r13,%rdi), %r9d
	addl	%ecx, %r11d
	movslq	%r9d, %r9
	addl	-148(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%r15,%r9,8), %r12
	movslq	%r11d, %r11
	vaddsd	(%r12), %xmm0, %xmm0
	vmovsd	(%r15,%r11,8), %xmm1
	vaddsd	(%r15,%rcx,8), %xmm1, %xmm1
	leal	(%r14,%rax), %ecx
	addl	-140(%rbp), %eax
	addl	%r13d, %ecx
	addl	%r13d, %eax
	cltq
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r15,%rcx,8), %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movq	-128(%rbp), %rax
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%rbx), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rax,%r8,8)
	cmpl	%edx, -156(%rbp)
	jle	.L22
	movl	-120(%rbp), %r11d
	leal	5(%rsi), %eax
	vmovsd	(%r15,%r8,8), %xmm0
	movl	-140(%rbp), %r8d
	leal	(%rax,%r11), %ecx
	movl	-144(%rbp), %r11d
	leal	0(%r13,%rcx), %r10d
	addl	%edi, %r11d
	movslq	%r10d, %r10
	addl	-148(%rbp), %edi
	movslq	%edi, %rdi
	leaq	(%r15,%r10,8), %rbx
	movslq	%r11d, %r11
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	(%r15,%r11,8), %xmm1
	vaddsd	(%r15,%rdi,8), %xmm1, %xmm1
	leal	(%r14,%rdx), %edi
	addl	%r8d, %edx
	addl	%r13d, %edi
	addl	%r13d, %edx
	movslq	%edi, %rdi
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r15,%rdi,8), %xmm0
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%r12), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movq	-128(%rbp), %r12
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r9,8)
	cmpl	%eax, -156(%rbp)
	jle	.L22
	movl	-120(%rbp), %r11d
	vmovsd	(%r15,%r9,8), %xmm1
	leal	6(%rsi,%r11), %edx
	movl	-144(%rbp), %r11d
	addl	%r13d, %edx
	movslq	%edx, %rdx
	vaddsd	(%r15,%rdx,8), %xmm1, %xmm1
	leal	(%r11,%rcx), %edx
	addl	-148(%rbp), %ecx
	movslq	%edx, %rdx
	movslq	%ecx, %rcx
	vmovsd	(%r15,%rdx,8), %xmm0
	leal	(%r14,%rax), %edx
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	addl	%r8d, %eax
	addl	%r13d, %edx
	addl	%r13d, %eax
	movslq	%edx, %rdx
	cltq
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r15,%rdx,8), %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	(%rbx), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r10,8)
.L22:
	movq	-352(%rbp), %rax
	movq	-296(%rbp), %rbx
	addq	%rax, -168(%rbp)
	addq	%rbx, -216(%rbp)
	addq	%rbx, -280(%rbp)
	addq	%rbx, -248(%rbp)
	movl	-228(%rbp), %ebx
	addq	%rax, -176(%rbp)
	addq	%rax, -184(%rbp)
	addq	%rax, -288(%rbp)
	addq	%rax, -136(%rbp)
	addl	%ebx, -252(%rbp)
	addl	%ebx, -256(%rbp)
	addl	%ebx, -260(%rbp)
	addl	%ebx, -264(%rbp)
	addq	%rax, -192(%rbp)
	addq	%rax, -200(%rbp)
	addq	%rax, -208(%rbp)
	movl	-120(%rbp), %r14d
	addq	%rax, -224(%rbp)
	movl	-272(%rbp), %esi
	cmpl	%esi, -160(%rbp)
	jne	.L28
	movl	-440(%rbp), %eax
	movl	%r13d, %edi
	addl	%eax, -144(%rbp)
	addl	%eax, -148(%rbp)
	movl	-428(%rbp), %ecx
	addl	%eax, %edi
	addl	%eax, -432(%rbp)
	cmpl	%ecx, -436(%rbp)
	jg	.L27
	movq	%r15, %r10
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L75
	movq	%r10, %rdi
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
	movq	$0, -128(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %esi
	movq	-128(%rbp), %rcx
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
.L26:
	movq	-216(%rbp), %rsi
	movq	-408(%rbp), %rcx
	movq	-280(%rbp), %rbx
	movq	-304(%rbp), %r14
	movq	-424(%rbp), %r8
	movq	-416(%rbp), %rdi
	addq	%rsi, %rcx
	movq	-168(%rbp), %rdx
	movq	-288(%rbp), %r9
	subq	%rbx, %rcx
	subq	%rbx, %rsi
	subq	%r14, %r8
	subq	%r14, %rdi
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	8(%rax,%r8,8), %xmm1
	vmovsd	16(%rax), %xmm0
	addq	$8, %rdx
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	8(%rax,%rdi,8), %xmm1, %xmm1
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
	movl	$1, %esi
	jmp	.L16
.L80:
	movq	-80(%rbp), %rdi
	testl	%r14d, %r14d
	movl	$1, %esi
	cmovg	%r14d, %esi
	movq	%rdi, -128(%rbp)
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
	movq	-128(%rbp), %rax
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
	movq	%r10, %rdi
	movq	%r10, -120(%rbp)
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
	movq	-120(%rbp), %r10
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
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	movq	%r10, -120(%rbp)
	call	posix_memalign
	movq	$0, -128(%rbp)
	movq	-120(%rbp), %r10
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
