	.file	"3d-1r-isotropic-variable-star-stencil.c_compilable.c"
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
	subq	$352, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	movl	%r12d, %r14d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %r13
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
	movq	-56(%rbp), %r8
	testl	%r14d, %r14d
	jle	.L3
	movq	%r8, %rax
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
	xorl	%r9d, %r9d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r8)
	cmpl	$1, %eax
	je	.L48
	vmovsd	%xmm0, 8(%r8)
	cmpl	$3, %eax
	jne	.L49
	vmovsd	%xmm0, 16(%r8)
	movl	$3, %r9d
.L5:
	movl	%r14d, %edi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r8,%rax,8), %rdx
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
	leal	(%rdx,%r9), %eax
	cmpl	%edx, %edi
	je	.L89
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r8,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r8,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r8,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r8,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r8,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r8,%rax,8)
.L8:
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movq	%r8, -72(%rbp)
	call	posix_memalign
	movq	-72(%rbp), %r8
	testl	%eax, %eax
	je	.L90
	testl	%r14d, %r14d
	movl	$1, %eax
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	cmpl	$4, %r15d
	ja	.L91
	movq	$0, -208(%rbp)
	xorl	%eax, %eax
.L36:
	vmovsd	.LC2(%rip), %xmm0
	movq	-208(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L40
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L40
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L40
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L40
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L40
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L40:
	addl	%r14d, %r14d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movq	%r8, -72(%rbp)
	movslq	%r14d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	movq	-72(%rbp), %r8
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r15
	movq	%r15, -128(%rbp)
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
	movq	-128(%rbp), %rdx
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
	movq	-128(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-1(%r12), %eax
	movl	%eax, -340(%rbp)
	testl	%edx, %edx
	jne	.L92
	cmpl	$1, -340(%rbp)
	jle	.L87
	leal	-1(%rbx), %eax
	movl	%ebx, -252(%rbp)
	movl	%eax, -236(%rbp)
	leal	(%rbx,%rbx), %eax
	movl	%eax, -240(%rbp)
	imull	%r13d, %eax
	movl	%eax, -344(%rbp)
	movl	%r13d, %eax
	imull	%ebx, %eax
	movl	%eax, -356(%rbp)
	cmpl	$2, %r13d
	jle	.L87
.L45:
	cmpl	$1, -236(%rbp)
	jle	.L84
	movl	-356(%rbp), %r11d
	movslq	-240(%rbp), %r15
	leal	-2(%rbx), %edx
	movslq	%ebx, %rdi
	movq	%rdx, %rsi
	leaq	(%rdx,%rdx), %rcx
	movl	%edx, -192(%rbp)
	leaq	0(,%rdi,8), %r14
	leal	(%r11,%r11), %eax
	andl	$-4, %esi
	movq	%rdi, -248(%rbp)
	movl	%eax, -188(%rbp)
	leaq	0(,%r15,8), %rax
	movq	%rax, -264(%rbp)
	leal	(%rbx,%rbx), %eax
	subl	$3, %ebx
	cltq
	movl	%esi, -296(%rbp)
	movq	%rax, -368(%rbp)
	movl	%edx, %eax
	shrl	$2, %eax
	movl	%ebx, -292(%rbp)
	movl	%eax, -76(%rbp)
	leal	1(%rsi), %eax
	leaq	5(%rdi), %rsi
	movl	%eax, -308(%rbp)
	movl	%ebx, %eax
	leaq	8(,%rax,8), %rax
	movq	%rsi, -400(%rbp)
	leal	-1(%r13), %esi
	movq	%rax, -352(%rbp)
	movl	-344(%rbp), %eax
	movl	%esi, -256(%rbp)
	leaq	2(%r15,%rcx), %rsi
	movl	%eax, -152(%rbp)
	leaq	8(%r8), %rax
	movq	%rax, -200(%rbp)
	leaq	40(%r8), %rax
	movq	%rax, -272(%rbp)
	leaq	48(%r8), %rax
	movq	%rax, -280(%rbp)
	leaq	1(%rdi), %rax
	addq	%rax, %rdx
	movq	%rax, -392(%rbp)
	leaq	16(%r8), %rax
	movl	%r11d, -180(%rbp)
	movl	$0, -184(%rbp)
	movl	$1, -312(%rbp)
	movq	%rsi, -376(%rbp)
	movq	%rdx, -384(%rbp)
	movq	%rax, -304(%rbp)
	movq	%r15, -320(%rbp)
	movq	%r14, %r15
	movq	%r8, %r14
	.p2align 4,,10
	.p2align 3
.L32:
	movslq	-180(%rbp), %rax
	movq	-392(%rbp), %rsi
	movq	$0, -224(%rbp)
	movq	-208(%rbp), %rdi
	movq	-376(%rbp), %rcx
	movl	$1, -148(%rbp)
	leaq	(%rsi,%rax), %rdx
	movq	-128(%rbp), %rbx
	addl	$1, -312(%rbp)
	leaq	(%rdi,%rdx,8), %rsi
	movslq	-152(%rbp), %rdx
	addq	%rdx, %rcx
	addq	-320(%rbp), %rdx
	leaq	(%rbx,%rdx,8), %rdx
	leaq	(%rbx,%rcx,8), %rcx
	movq	-248(%rbp), %rbx
	movq	%rdx, -144(%rbp)
	movq	-384(%rbp), %rdx
	movq	%rcx, -160(%rbp)
	addq	%rax, %rdx
	movq	%rbx, -232(%rbp)
	leaq	(%rdi,%rdx,8), %rdx
	movq	%rdx, -168(%rbp)
	movq	-400(%rbp), %rdx
	addq	%rax, %rdx
	leaq	(%rdi,%rdx,8), %rdx
	movslq	-184(%rbp), %rdi
	movq	%rdx, -88(%rbp)
	leaq	(%r14,%rax,8), %rdx
	movq	%rdx, -176(%rbp)
	leaq	(%rbx,%rax), %rdx
	leaq	(%rbx,%rdi), %rcx
	subq	%rax, %rdi
	salq	$3, %rdx
	movq	%rdi, -336(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-368(%rbp), %rdx
	addq	%rax, %rdx
	salq	$3, %rdx
	movq	%rdx, -96(%rbp)
	leaq	0(,%rcx,8), %rdx
	movslq	-188(%rbp), %rcx
	movq	%rdx, -104(%rbp)
	leaq	(%rbx,%rcx), %rdx
	subq	%rax, %rcx
	salq	$3, %rdx
	movq	%rcx, -328(%rbp)
	movq	%rdx, -120(%rbp)
	movl	-240(%rbp), %edx
	movl	%edx, -132(%rbp)
	xorl	%edx, %edx
	movl	%edx, -80(%rbp)
	.p2align 4,,10
	.p2align 3
.L33:
	movl	-252(%rbp), %eax
	movl	-80(%rbp), %r13d
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	addl	%eax, %r13d
	movq	-176(%rbp), %rbx
	movq	-88(%rbp), %r12
	addl	%r13d, %eax
	addl	$1, -148(%rbp)
	movl	%eax, -136(%rbp)
	movq	-144(%rbp), %rax
	leaq	8(%rbx), %r8
	movl	%r13d, -72(%rbp)
	movq	-112(%rbp), %r13
	leaq	16(%rax), %rdi
	movq	-200(%rbp), %rax
	leaq	0(%r13,%r14), %rdx
	addq	%rax, %r9
	addq	%rax, %r10
	addq	-120(%rbp), %rax
	movq	%rax, %r11
	leaq	40(%rbx), %rax
	cmpq	%rax, %rsi
	setnb	%bl
	cmpq	%r8, %r12
	setbe	%al
	orl	%eax, %ebx
	cmpq	-168(%rbp), %rdi
	setnb	%cl
	cmpq	-160(%rbp), %rsi
	setnb	%al
	orl	%ecx, %eax
	andl	%ebx, %eax
	cmpl	$3, -192(%rbp)
	seta	%cl
	andl	%ecx, %eax
	movq	-280(%rbp), %rcx
	addq	%r13, %rcx
	movq	%r12, %r13
	cmpq	%rcx, %rsi
	setnb	%cl
	cmpq	%rdx, %r12
	movq	-272(%rbp), %r12
	setbe	%bl
	orl	%ebx, %ecx
	andl	%ecx, %eax
	movq	-96(%rbp), %rcx
	addq	%r12, %rcx
	cmpq	%rcx, %rsi
	setnb	%cl
	cmpq	%r9, %r13
	setbe	%bl
	orl	%ebx, %ecx
	andl	%ecx, %eax
	movq	-104(%rbp), %rcx
	addq	%r12, %rcx
	cmpq	%rcx, %rsi
	setnb	%cl
	cmpq	%r10, %r13
	setbe	%bl
	orl	%ebx, %ecx
	testb	%cl, %al
	je	.L31
	addq	-120(%rbp), %r12
	cmpq	%r12, %rsi
	setnb	%cl
	cmpq	%r11, %r13
	setbe	%al
	orb	%al, %cl
	je	.L31
	cmpl	$2, -292(%rbp)
	jbe	.L56
	movq	-112(%rbp), %rax
	movq	-200(%rbp), %r12
	xorl	%ecx, %ecx
	movq	-304(%rbp), %rbx
	movl	-72(%rbp), %r13d
	addq	%rax, %r12
	addq	%rax, %rbx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L24:
	vmovupd	(%r11,%rax), %ymm4
	vmovupd	(%rbx,%rax), %ymm3
	addl	$1, %ecx
	vaddpd	(%rdx,%rax), %ymm3, %ymm3
	vaddpd	(%r10,%rax), %ymm4, %ymm2
	vmovupd	(%rdi,%rax,2), %ymm1
	vmovupd	32(%rdi,%rax,2), %ymm0
	vaddpd	%ymm2, %ymm3, %ymm4
	vmovupd	(%r9,%rax), %ymm2
	vaddpd	(%r8,%rax), %ymm2, %ymm2
	vaddpd	%ymm2, %ymm4, %ymm3
	vunpckhpd	%ymm0, %ymm1, %ymm2
	vunpcklpd	%ymm0, %ymm1, %ymm0
	vpermpd	$216, %ymm2, %ymm2
	vpermpd	$216, %ymm0, %ymm0
	vmulpd	(%r12,%rax), %ymm0, %ymm0
	vmulpd	%ymm2, %ymm3, %ymm2
	vaddpd	%ymm0, %ymm2, %ymm0
	vmovupd	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpl	%ecx, -76(%rbp)
	ja	.L24
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	%r13d, -72(%rbp)
	movl	-192(%rbp), %edi
	cmpl	%edi, -296(%rbp)
	je	.L27
	movl	-308(%rbp), %ecx
.L23:
	movl	-180(%rbp), %ebx
	movl	-184(%rbp), %r9d
	leal	1(%rcx), %eax
	leal	(%rcx,%rcx), %edx
	leal	(%rcx,%r13), %edi
	leal	(%rax,%r13), %r8d
	leal	(%rbx,%rdi), %r10d
	addl	%edi, %r9d
	addl	-188(%rbp), %edi
	movslq	%r9d, %r9
	movslq	%edi, %rdi
	leal	(%rbx,%r8), %r11d
	movslq	%r10d, %r10
	vmovsd	(%r14,%r9,8), %xmm3
	vaddsd	(%r14,%rdi,8), %xmm3, %xmm3
	movslq	%r11d, %r11
	leal	-1(%rcx,%r13), %edi
	addl	%ebx, %edi
	leaq	(%r14,%r11,8), %r12
	movq	-128(%rbp), %r13
	movslq	%edi, %rdi
	vmovsd	(%r14,%rdi,8), %xmm0
	movl	-80(%rbp), %edi
	vaddsd	(%r12), %xmm0, %xmm0
	leal	(%rdi,%rcx), %r9d
	movl	-136(%rbp), %edi
	addl	%ebx, %r9d
	addl	%ecx, %edi
	movslq	%r9d, %r9
	vaddsd	%xmm0, %xmm3, %xmm2
	addl	%ebx, %edi
	vmovsd	(%r14,%r9,8), %xmm0
	movl	-132(%rbp), %r9d
	movslq	%edi, %rdi
	vaddsd	(%r14,%rdi,8), %xmm0, %xmm0
	leal	1(%rdx,%r9), %edi
	addl	%r9d, %edx
	addl	-152(%rbp), %edi
	addl	-152(%rbp), %edx
	movslq	%edi, %rdi
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	0(%r13,%rdi,8), %xmm0, %xmm1
	vmovsd	0(%r13,%rdx,8), %xmm0
	vmulsd	(%r14,%r10,8), %xmm0, %xmm0
	movq	-208(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r10,8)
	cmpl	-236(%rbp), %eax
	jge	.L27
	movl	-72(%rbp), %r13d
	leal	2(%rcx), %edx
	vmovsd	(%r14,%r10,8), %xmm0
	leal	(%rax,%rax), %edi
	movl	-80(%rbp), %r10d
	leal	(%rdx,%r13), %r9d
	addl	%r9d, %ebx
	movslq	%ebx, %rbx
	leaq	(%r14,%rbx,8), %r13
	movq	%rbx, -288(%rbp)
	movq	%r13, -216(%rbp)
	movl	-184(%rbp), %r13d
	leal	(%r8,%r13), %ebx
	addl	-188(%rbp), %r8d
	movq	-128(%rbp), %r13
	movslq	%ebx, %rbx
	movslq	%r8d, %r8
	vmovsd	(%r14,%rbx,8), %xmm3
	vaddsd	(%r14,%r8,8), %xmm3, %xmm3
	movq	-216(%rbp), %r8
	movl	-180(%rbp), %ebx
	vaddsd	(%r8), %xmm0, %xmm0
	leal	(%rax,%r10), %r8d
	addl	-136(%rbp), %eax
	addl	%ebx, %r8d
	movl	-132(%rbp), %r10d
	addl	%ebx, %eax
	movslq	%r8d, %r8
	cltq
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r14,%r8,8), %xmm0
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movl	-152(%rbp), %r8d
	leal	1(%rdi,%r10), %eax
	addl	%r10d, %edi
	addl	%r8d, %eax
	addl	%r8d, %edi
	vaddsd	%xmm0, %xmm2, %xmm0
	cltq
	movslq	%edi, %rdi
	vmulsd	0(%r13,%rax,8), %xmm0, %xmm1
	vmovsd	0(%r13,%rdi,8), %xmm0
	vmulsd	(%r12), %xmm0, %xmm0
	movq	-208(%rbp), %r13
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 0(%r13,%r11,8)
	cmpl	%edx, -236(%rbp)
	jle	.L27
	movl	-72(%rbp), %edi
	movl	-188(%rbp), %r12d
	leal	(%rdx,%rdx), %eax
	leal	3(%rcx,%rdi), %ecx
	movq	-128(%rbp), %rdi
	addl	%ebx, %ecx
	movslq	%ecx, %rcx
	vmovsd	(%r14,%rcx,8), %xmm1
	leal	(%r12,%r9), %ecx
	vaddsd	(%r14,%r11,8), %xmm1, %xmm1
	movslq	%ecx, %rcx
	addl	-184(%rbp), %r9d
	vmovsd	(%r14,%rcx,8), %xmm0
	movl	-80(%rbp), %ecx
	movslq	%r9d, %r9
	vaddsd	(%r14,%r9,8), %xmm0, %xmm0
	addl	%edx, %ecx
	addl	-136(%rbp), %edx
	addl	%ebx, %ecx
	addl	%ebx, %edx
	movq	-288(%rbp), %rbx
	movslq	%edx, %rdx
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r14,%rcx,8), %xmm0
	vaddsd	(%r14,%rdx,8), %xmm0, %xmm0
	leal	1(%rax,%r10), %edx
	addl	%r10d, %eax
	addl	%r8d, %edx
	addl	%r8d, %eax
	movq	-216(%rbp), %r8
	movslq	%edx, %rdx
	cltq
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%rdi,%rdx,8), %xmm0, %xmm1
	vmovsd	(%rdi,%rax,8), %xmm0
	vmulsd	(%r8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 0(%r13,%rbx,8)
.L27:
	movl	-72(%rbp), %eax
	movq	-264(%rbp), %rdx
	addq	%r15, %rsi
	movq	-248(%rbp), %rdi
	addq	%rdx, -160(%rbp)
	addq	%rdx, -144(%rbp)
	movl	-240(%rbp), %edx
	addq	%r15, -168(%rbp)
	addl	%edx, -132(%rbp)
	movl	-256(%rbp), %edx
	addq	%r15, -88(%rbp)
	addq	%r15, -176(%rbp)
	addq	%rdi, -224(%rbp)
	addq	%rdi, -232(%rbp)
	addq	%r15, -112(%rbp)
	addq	%r15, -96(%rbp)
	addq	%r15, -104(%rbp)
	addq	%r15, -120(%rbp)
	movl	%eax, -80(%rbp)
	cmpl	%edx, -148(%rbp)
	jne	.L33
	movl	-356(%rbp), %eax
	movl	-344(%rbp), %edx
	addl	%eax, -180(%rbp)
	movl	-312(%rbp), %esi
	addl	%edx, -152(%rbp)
	addl	%eax, -184(%rbp)
	addl	%eax, -188(%rbp)
	cmpl	%esi, -340(%rbp)
	jg	.L32
	movq	%r14, %r8
	vzeroupper
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L85
	movq	%r8, %rdi
	call	dummy
	movq	-208(%rbp), %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
.L85:
	addq	$352, %rsp
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
	movl	$1, %r9d
	jmp	.L5
.L91:
	movq	$0, -208(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %edi
	movq	-208(%rbp), %rcx
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
	je	.L93
	vzeroupper
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L31:
	movq	-224(%rbp), %rdi
	movq	-320(%rbp), %rcx
	xorl	%eax, %eax
	movq	-232(%rbp), %rbx
	movq	-208(%rbp), %r11
	movq	-112(%rbp), %r10
	addq	%rdi, %rcx
	movq	-144(%rbp), %r9
	subq	%rbx, %rcx
	subq	%rbx, %rdi
	movl	-72(%rbp), %r13d
	movq	-336(%rbp), %rbx
	leaq	(%r11,%r10), %r8
	movq	-352(%rbp), %r10
	movq	-328(%rbp), %r11
	.p2align 4,,10
	.p2align 3
.L26:
	vmovsd	8(%rdx,%r11,8), %xmm1
	vmovsd	16(%rdx), %xmm0
	vaddsd	8(%rdx,%rbx,8), %xmm1, %xmm1
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovsd	8(%rdx,%rdi,8), %xmm0
	vaddsd	8(%rdx,%rcx,8), %xmm0, %xmm0
	addq	$8, %rdx
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovsd	(%rdx), %xmm0
	vmulsd	24(%r9,%rax,2), %xmm1, %xmm1
	vmulsd	16(%r9,%rax,2), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%r8,%rax)
	addq	$8, %rax
	cmpq	%r10, %rax
	jne	.L26
	movl	%r13d, -72(%rbp)
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L56:
	movl	$1, %ecx
	movl	-72(%rbp), %r13d
	jmp	.L23
.L90:
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %edi
	cmovg	%r14d, %edi
	movq	%rsi, -208(%rbp)
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
	movq	-208(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L50
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L51
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
	jmp	.L9
.L92:
	movq	%r8, %rdi
	movq	%r8, -72(%rbp)
	vzeroupper
	call	dummy
	movq	-208(%rbp), %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	cmpl	$1, -340(%rbp)
	movq	-72(%rbp), %r8
	jle	.L22
	leal	-1(%rbx), %eax
	movl	%ebx, -252(%rbp)
	movl	%eax, -236(%rbp)
	leal	(%rbx,%rbx), %eax
	movl	%eax, -240(%rbp)
	imull	%r13d, %eax
	movl	%eax, -344(%rbp)
	movl	%ebx, %eax
	imull	%r13d, %eax
	movl	%eax, -356(%rbp)
	cmpl	$2, %r13d
	jg	.L45
	jmp	.L22
.L89:
	vzeroupper
	jmp	.L8
.L87:
	vzeroupper
	jmp	.L85
.L93:
	vzeroupper
	jmp	.L40
.L54:
	movl	$1, %edi
	jmp	.L16
.L50:
	movl	$1, %eax
	jmp	.L9
.L3:
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movq	%r8, -72(%rbp)
	call	posix_memalign
	movq	-72(%rbp), %r8
	movq	$0, -208(%rbp)
	testl	%eax, %eax
	jne	.L40
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)
	jmp	.L40
.L51:
	movl	$2, %eax
	jmp	.L9
.L55:
	movl	$2, %edi
	jmp	.L16
.L49:
	movl	$2, %r9d
	jmp	.L5
.L84:
	vzeroupper
	jmp	.L22
.L46:
	xorl	%eax, %eax
	jmp	.L4
.L52:
	xorl	%eax, %eax
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
