	.file	"3d-1r-homogeneous-constant-star-stencil.c_compilable.c"
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
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	movq	%rsi, %r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$416, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	movl	%r12d, %r14d
	call	strtol
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %r13
	imull	%ebx, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -88(%rbp)
	call	posix_memalign
	movq	-88(%rbp), %rcx
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
	movq	%r10, -88(%rbp)
	call	posix_memalign
	movq	-88(%rbp), %r10
	testl	%eax, %eax
	je	.L80
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %esi
	cmovle	%eax, %r15d
	cmovg	%r14d, %esi
	cmpl	$4, %r15d
	ja	.L81
	movq	$0, -88(%rbp)
	xorl	%eax, %eax
.L31:
	vmovsd	.LC2(%rip), %xmm0
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
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
	movq	%rax, -80(%rbp)
	leal	-1(%r13), %eax
	movl	%eax, -408(%rbp)
	testl	%edx, %edx
	jne	.L82
	cmpl	$1, -408(%rbp)
	jle	.L77
	leal	-1(%rbx), %eax
	movl	%ebx, -180(%rbp)
	movl	%eax, -116(%rbp)
	movl	%ebx, %eax
	imull	%r12d, %eax
	movl	%eax, -412(%rbp)
	cmpl	$2, %r12d
	jle	.L77
.L40:
	cmpl	$1, -116(%rbp)
	jle	.L74
	movl	-412(%rbp), %edi
	movslq	%ebx, %rcx
	movq	%r10, %r15
	movl	$0, -104(%rbp)
	leaq	0(,%rcx,8), %rdx
	movq	%rcx, -248(%rbp)
	leal	(%rdi,%rbx), %esi
	leal	(%rdi,%rdi), %eax
	movq	%rdx, -288(%rbp)
	movl	%edi, %r14d
	movl	%esi, -420(%rbp)
	movl	%esi, -404(%rbp)
	leaq	8(%r10), %rsi
	movq	%rsi, -200(%rbp)
	leaq	40(%r10), %rsi
	movq	%rsi, -304(%rbp)
	leaq	48(%r10), %rsi
	movq	%rsi, -312(%rbp)
	leaq	1(%rcx), %rsi
	movq	%rsi, -448(%rbp)
	leaq	5(%rcx), %rsi
	movl	%eax, -108(%rbp)
	movl	%ebx, %eax
	addl	%ebx, %ebx
	movq	%rsi, -456(%rbp)
	leal	-1(%r12), %esi
	leal	-3(%rax), %edx
	movl	%esi, -232(%rbp)
	leal	-2(%rax), %esi
	subl	%edi, %eax
	movl	%eax, -424(%rbp)
	movl	%esi, %eax
	addq	%rcx, %rax
	movl	%ebx, -416(%rbp)
	movslq	%ebx, %rbx
	movq	%rax, -432(%rbp)
	movl	%edx, %eax
	addq	%rcx, %rax
	movq	%rbx, -376(%rbp)
	movq	%rax, -440(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movl	%esi, -184(%rbp)
	movl	$1, -368(%rbp)
	movl	%edx, -340(%rbp)
	movq	%rax, -296(%rbp)
	.p2align 4,,10
	.p2align 3
.L27:
	movq	-248(%rbp), %rcx
	movslq	%r14d, %rdi
	xorl	%r8d, %r8d
	movl	%r14d, %r12d
	movq	-448(%rbp), %rax
	movq	-88(%rbp), %rsi
	movq	%rdi, -280(%rbp)
	movq	%rcx, %rbx
	movq	-432(%rbp), %rdx
	addl	$1, -368(%rbp)
	addq	%rdi, %rbx
	addq	%rdi, %rax
	movq	%rbx, -192(%rbp)
	salq	$3, %rbx
	leaq	(%rsi,%rax,8), %rax
	movq	%rbx, -96(%rbp)
	movl	-424(%rbp), %ebx
	movq	%rax, -128(%rbp)
	movq	-456(%rbp), %rax
	addl	%r14d, %ebx
	movl	%ebx, -208(%rbp)
	movl	-420(%rbp), %ebx
	addq	%rdi, %rax
	leaq	(%rsi,%rax,8), %rax
	addl	%r14d, %ebx
	movq	%rax, -144(%rbp)
	movq	%rdi, %rax
	movl	%ebx, -212(%rbp)
	movl	-416(%rbp), %ebx
	leal	(%r14,%rbx), %edi
	movq	%rcx, %rbx
	movl	%edi, -216(%rbp)
	movq	-376(%rbp), %rdi
	addq	%rax, %rdi
	movq	%rdi, -336(%rbp)
	salq	$3, %rdi
	movq	%rdi, -152(%rbp)
	movslq	-104(%rbp), %rdi
	addq	%rdi, %rbx
	movq	%rdi, -384(%rbp)
	movslq	-108(%rbp), %rdi
	movq	%rbx, -320(%rbp)
	salq	$3, %rbx
	movq	%rbx, -160(%rbp)
	movq	%rcx, %rbx
	addq	%rdi, %rcx
	movq	%rcx, -328(%rbp)
	salq	$3, %rcx
	movq	%rcx, -176(%rbp)
	movq	-440(%rbp), %rcx
	movq	%rdi, -392(%rbp)
	movq	%rax, %rdi
	leaq	(%r15,%rax,8), %rax
	addq	%rdi, %rcx
	addq	%rdi, %rdx
	movl	-404(%rbp), %edi
	leaq	(%r15,%rcx,8), %rcx
	movq	%rcx, -400(%rbp)
	leaq	8(%rsi,%rdx,8), %rcx
	movl	%edi, -204(%rbp)
	movq	%rcx, -272(%rbp)
	leaq	40(%rax), %rcx
	addq	$8, %rax
	movq	%rax, -264(%rbp)
	leal	1(%rdi), %eax
	movl	%eax, -344(%rbp)
	leal	2(%rdi), %eax
	movl	%eax, -348(%rbp)
	leal	1(%r14), %eax
	movl	%eax, -352(%rbp)
	leal	3(%rdi), %eax
	movl	%eax, -356(%rbp)
	leal	2(%r14), %eax
	movl	%eax, -360(%rbp)
	leal	3(%r14), %eax
	movl	%r8d, %r14d
	movq	%rbx, -240(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -168(%rbp)
	movl	$1, -120(%rbp)
	movq	%rcx, -256(%rbp)
	movl	%eax, -364(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movq	-136(%rbp), %rdi
	movl	-180(%rbp), %eax
	leaq	-80(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movq	-128(%rbp), %rbx
	leal	(%rax,%r14), %r13d
	addl	$1, -120(%rbp)
	movq	-96(%rbp), %rsi
	addq	%rdi, %rdx
	addl	%r13d, %eax
	movq	-144(%rbp), %r9
	movq	-152(%rbp), %r11
	cmpq	%rdx, %rcx
	movq	-296(%rbp), %rdx
	movl	%eax, -100(%rbp)
	leaq	(%r15,%rsi), %rax
	setnb	%cl
	movq	-200(%rbp), %r10
	cmpq	%rdx, %rbx
	setnb	%dl
	orl	%ecx, %edx
	cmpl	$5, -184(%rbp)
	seta	%cl
	andl	%ecx, %edx
	movq	-312(%rbp), %rcx
	addq	%rsi, %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	cmpq	%rax, %r9
	setbe	%sil
	orl	%esi, %ecx
	movq	-264(%rbp), %rsi
	andl	%ecx, %edx
	movq	-256(%rbp), %rcx
	addq	%rdi, %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	addq	%rdi, %rsi
	movq	-304(%rbp), %rdi
	cmpq	%rsi, %r9
	setbe	%sil
	orl	%esi, %ecx
	movq	%r10, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r11, %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	addq	%r11, %rsi
	movq	-160(%rbp), %r11
	cmpq	%rsi, %r9
	setbe	%sil
	orl	%esi, %ecx
	movq	%r10, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r11, %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	addq	%r11, %rsi
	cmpq	%rsi, %r9
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L26
	movq	-176(%rbp), %rsi
	addq	%rsi, %rdi
	cmpq	%rdi, %rbx
	setnb	%cl
	addq	%rsi, %r10
	cmpq	%r10, %r9
	setbe	%dl
	orb	%dl, %cl
	je	.L26
	movq	-200(%rbp), %rdx
	addq	-96(%rbp), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-340(%rbp), %eax
	ja	.L47
	movl	$1, -112(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	-344(%rbp), %eax
	movl	-348(%rbp), %ecx
	movl	$2, -112(%rbp)
	movslq	-204(%rbp), %rsi
	movl	-208(%rbp), %r10d
	addl	%r14d, %eax
	addl	%r14d, %ecx
	movl	-212(%rbp), %r11d
	movl	-216(%rbp), %r9d
	vmovsd	(%r15,%rsi,8), %xmm0
	cltq
	movslq	%ecx, %rcx
	movq	%rsi, %rbx
	leal	1(%r10), %esi
	leaq	(%r15,%rax,8), %rdi
	movslq	%esi, %rsi
	leaq	(%r15,%rcx,8), %r8
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	leal	1(%r11), %esi
	movslq	%esi, %rsi
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	movl	-352(%rbp), %esi
	addl	%r14d, %esi
	movslq	%esi, %rsi
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	leal	1(%r9), %esi
	movslq	%esi, %rsi
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-88(%rbp), %rsi
	vmovsd	%xmm0, (%rsi,%rax,8)
	cmpl	$1, %edx
	je	.L17
	movl	-356(%rbp), %eax
	vmovsd	(%r8), %xmm0
	movl	$3, -112(%rbp)
	vaddsd	(%rdi), %xmm0, %xmm0
	movq	-88(%rbp), %r8
	movl	%r10d, %edi
	addl	%r14d, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	2(%r10), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	2(%r11), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-360(%rbp), %eax
	addl	%r14d, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	2(%r9), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r8,%rcx,8)
	cmpl	$3, %edx
	jne	.L17
	leal	2(%rbx), %ecx
	leal	3(%rbx), %eax
	movl	$4, -112(%rbp)
	movslq	%ecx, %rcx
	cltq
	vmovsd	(%r15,%rcx,8), %xmm0
	leal	4(%rbx), %ecx
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movslq	%ecx, %rcx
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	leal	3(%rdi), %ecx
	movl	-364(%rbp), %edi
	movslq	%ecx, %rcx
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	leal	3(%r11), %ecx
	movslq	%ecx, %rcx
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	leal	(%rdi,%r14), %ecx
	movslq	%ecx, %rcx
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	leal	3(%r9), %ecx
	movslq	%ecx, %rcx
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r8,%rax,8)
.L17:
	movq	-192(%rbp), %rbx
	movl	-184(%rbp), %esi
	movl	%edx, %eax
	movl	%r12d, -228(%rbp)
	movq	-168(%rbp), %r8
	movq	-96(%rbp), %rdi
	subl	%edx, %esi
	leaq	2(%rax,%rbx), %rdx
	leaq	1(%rax,%rbx), %rcx
	vbroadcastsd	-80(%rbp), %ymm1
	leaq	(%r15,%rdx,8), %rbx
	movq	-320(%rbp), %rdx
	salq	$3, %rcx
	leaq	(%rdi,%rax,8), %rdi
	movl	%esi, -220(%rbp)
	shrl	$2, %esi
	addq	%r15, %rdi
	leaq	1(%r8,%rdx), %rdx
	movl	%esi, -224(%rbp)
	leaq	(%r15,%rcx), %rsi
	movl	-224(%rbp), %r12d
	addq	%rax, %rdx
	addq	-88(%rbp), %rcx
	leaq	(%r15,%rdx,8), %r11
	movq	-328(%rbp), %rdx
	leaq	1(%r8,%rdx), %rdx
	addq	%rax, %rdx
	leaq	(%r15,%rdx,8), %r10
	movq	-280(%rbp), %rdx
	leaq	1(%rdx,%r8), %rdx
	addq	%rax, %rdx
	leaq	(%r15,%rdx,8), %r9
	movq	-336(%rbp), %rdx
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
	vmovupd	(%rdi,%rax), %ymm0
	vaddpd	(%rsi,%rax), %ymm0, %ymm0
	addl	$1, %edx
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vmulpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %r12d
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-220(%rbp), %ebx
	movl	-112(%rbp), %esi
	movl	-228(%rbp), %r12d
	movl	%ebx, %eax
	andl	$-4, %eax
	addl	%eax, %esi
	cmpl	%eax, %ebx
	je	.L22
.L16:
	leal	-1(%rsi,%r13), %edi
	leal	1(%rsi), %eax
	movq	-88(%rbp), %r9
	addl	%r12d, %edi
	leal	(%rax,%r13), %ecx
	leal	(%rsi,%r13), %edx
	movslq	%edi, %rdi
	leal	(%r12,%rcx), %r8d
	leal	(%r12,%rdx), %r11d
	vmovsd	(%r15,%rdi,8), %xmm0
	movl	-104(%rbp), %edi
	movslq	%r8d, %r8
	movslq	%r11d, %r11
	leaq	(%r15,%r8,8), %rbx
	vaddsd	(%r15,%r11,8), %xmm0, %xmm0
	addl	%edx, %edi
	addl	-108(%rbp), %edx
	vaddsd	(%rbx), %xmm0, %xmm0
	movslq	%edx, %rdx
	movslq	%edi, %rdi
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	leal	(%r14,%rsi), %edx
	addl	%r12d, %edx
	movslq	%edx, %rdx
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	movl	-100(%rbp), %edx
	addl	%esi, %edx
	addl	%r12d, %edx
	movslq	%edx, %rdx
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r9,%r11,8)
	cmpl	-116(%rbp), %eax
	jge	.L22
	leal	2(%rsi), %edx
	vmovsd	(%r15,%r11,8), %xmm0
	movl	-104(%rbp), %r11d
	leal	(%rdx,%r13), %edi
	vaddsd	(%rbx), %xmm0, %xmm0
	leal	(%r12,%rdi), %r9d
	addl	%ecx, %r11d
	addl	-108(%rbp), %ecx
	movslq	%r9d, %r9
	movslq	%ecx, %rcx
	movslq	%r11d, %r11
	leaq	(%r15,%r9,8), %r10
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r15,%r11,8), %xmm0, %xmm0
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	leal	(%rax,%r14), %ecx
	addl	-100(%rbp), %eax
	addl	%r12d, %ecx
	addl	%r12d, %eax
	cltq
	movslq	%ecx, %rcx
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-88(%rbp), %rax
	vmovsd	%xmm0, (%rax,%r8,8)
	cmpl	-116(%rbp), %edx
	jge	.L22
	leal	3(%rsi), %eax
	vmovsd	(%r15,%r8,8), %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	leal	(%rax,%r13), %ecx
	movl	-104(%rbp), %r10d
	leal	(%r12,%rcx), %r11d
	leal	(%r10,%rdi), %r8d
	movslq	%r11d, %r11
	addl	-108(%rbp), %edi
	movslq	%edi, %rdi
	leaq	(%r15,%r11,8), %rbx
	movslq	%r8d, %r8
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%r15,%r8,8), %xmm0, %xmm0
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	leal	(%r14,%rdx), %edi
	addl	-100(%rbp), %edx
	addl	%r12d, %edi
	addl	%r12d, %edx
	movslq	%edx, %rdx
	movslq	%edi, %rdi
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-88(%rbp), %rdx
	vmovsd	%xmm0, (%rdx,%r9,8)
	cmpl	-116(%rbp), %eax
	jge	.L22
	leal	4(%rsi), %edx
	vmovsd	(%r15,%r9,8), %xmm0
	vaddsd	(%rbx), %xmm0, %xmm0
	leal	(%rdx,%r13), %edi
	movl	-104(%rbp), %ebx
	leal	(%r12,%rdi), %r8d
	leal	(%rbx,%rcx), %r9d
	movslq	%r8d, %r8
	addl	-108(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%r15,%r8,8), %r10
	movslq	%r9d, %r9
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r15,%r9,8), %xmm0, %xmm0
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	leal	(%r14,%rax), %ecx
	addl	-100(%rbp), %eax
	addl	%r12d, %ecx
	addl	%r12d, %eax
	cltq
	movslq	%ecx, %rcx
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-88(%rbp), %rax
	vmovsd	%xmm0, (%rax,%r11,8)
	cmpl	-116(%rbp), %edx
	jge	.L22
	leal	5(%rsi), %eax
	vmovsd	(%r15,%r11,8), %xmm0
	movl	-104(%rbp), %r11d
	leal	(%rax,%r13), %ecx
	vaddsd	(%r10), %xmm0, %xmm0
	leal	(%r12,%rcx), %r9d
	leal	(%r11,%rdi), %r10d
	movslq	%r9d, %r9
	movslq	%r10d, %r10
	leaq	(%r15,%r9,8), %rbx
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movl	-108(%rbp), %r10d
	addl	%r10d, %edi
	movslq	%edi, %rdi
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	leal	(%r14,%rdx), %edi
	addl	%r12d, %edi
	movslq	%edi, %rdi
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	movl	-100(%rbp), %edi
	addl	%edi, %edx
	addl	%r12d, %edx
	movslq	%edx, %rdx
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-88(%rbp), %rdx
	vmovsd	%xmm0, (%rdx,%r8,8)
	cmpl	-116(%rbp), %eax
	jge	.L22
	leal	6(%rsi,%r13), %edx
	vmovsd	(%r15,%r8,8), %xmm0
	vaddsd	(%rbx), %xmm0, %xmm0
	addl	%r12d, %edx
	movslq	%edx, %rdx
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	leal	(%r11,%rcx), %edx
	addl	%r10d, %ecx
	movslq	%edx, %rdx
	movslq	%ecx, %rcx
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	leal	(%r14,%rax), %edx
	addl	%edi, %eax
	addl	%r12d, %edx
	addl	%r12d, %eax
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	movslq	%edx, %rdx
	cltq
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-88(%rbp), %rdx
	vmovsd	%xmm0, (%rdx,%r9,8)
.L22:
	movq	-288(%rbp), %rax
	movq	-248(%rbp), %rdi
	movl	%r13d, %r14d
	movl	-180(%rbp), %ebx
	addq	%rdi, -168(%rbp)
	addq	%rdi, -240(%rbp)
	addq	%rdi, -192(%rbp)
	movl	-232(%rbp), %edi
	addq	%rax, -128(%rbp)
	addq	%rax, -144(%rbp)
	addq	%rax, -96(%rbp)
	addl	%ebx, -204(%rbp)
	addl	%ebx, -208(%rbp)
	addl	%ebx, -212(%rbp)
	addl	%ebx, -216(%rbp)
	addq	%rax, -136(%rbp)
	addq	%rax, -152(%rbp)
	addq	%rax, -160(%rbp)
	addq	%rax, -176(%rbp)
	cmpl	%edi, -120(%rbp)
	jne	.L28
	movl	-412(%rbp), %eax
	movl	%r12d, %r14d
	addl	%eax, -104(%rbp)
	addl	%eax, -108(%rbp)
	movl	-368(%rbp), %ecx
	addl	%eax, %r14d
	addl	%eax, -404(%rbp)
	cmpl	%ecx, -408(%rbp)
	jg	.L27
	movq	%r15, %r10
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L75
	movq	%r10, %rdi
	call	dummy
	movq	-88(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L75:
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
.L43:
	.cfi_restore_state
	movl	$1, %esi
	jmp	.L5
.L81:
	movq	$0, -88(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %esi
	movq	-88(%rbp), %rcx
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
	movq	-136(%rbp), %rcx
	movq	-400(%rbp), %rbx
	movq	-240(%rbp), %rsi
	movq	-280(%rbp), %r14
	leaq	8(%rcx,%rbx), %r9
	movq	-168(%rbp), %rbx
	movq	-128(%rbp), %rdx
	movq	-376(%rbp), %rcx
	movq	-384(%rbp), %r8
	movq	-392(%rbp), %rdi
	addq	%rbx, %rcx
	subq	%rsi, %rbx
	subq	%r14, %r8
	subq	%rsi, %rcx
	subq	%r14, %rdi
	movq	%rbx, %rsi
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rax), %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	addq	$8, %rdx
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	8(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	addq	$8, %rax
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
	movq	-80(%rbp), %rcx
	testl	%r14d, %r14d
	movl	$1, %esi
	movl	$5, %edi
	cmovg	%r14d, %esi
	movq	%rcx, -88(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
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
	movq	-88(%rbp), %rax
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
	movq	%r10, -96(%rbp)
	vzeroupper
	call	dummy
	movq	-88(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$1, -408(%rbp)
	movq	-96(%rbp), %r10
	jle	.L15
	leal	-1(%rbx), %eax
	movl	%ebx, -180(%rbp)
	movl	%eax, -116(%rbp)
	movl	%ebx, %eax
	imull	%r12d, %eax
	movl	%eax, -412(%rbp)
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
	movq	%r10, -96(%rbp)
	call	posix_memalign
	movq	$0, -88(%rbp)
	movq	-96(%rbp), %r10
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
