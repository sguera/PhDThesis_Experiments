	.file	"3d-1r-point-symmetric-variable-star-stencil.c_compilable.c"
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
	subq	$384, %rsp
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
	movq	%rax, %r15
	movq	%rax, -72(%rbp)
	call	strtol
	movl	%r15d, %r14d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %r12
	imull	%ebx, %r14d
	movslq	%r14d, %rcx
	leaq	0(,%rcx,8), %r13
	movq	%r13, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r9
	testl	%r14d, %r14d
	jle	.L3
	movq	%r9, %rax
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
	vmovsd	%xmm0, (%r9)
	cmpl	$1, %eax
	je	.L48
	vmovsd	%xmm0, 8(%r9)
	cmpl	$3, %eax
	jne	.L49
	vmovsd	%xmm0, 16(%r9)
	movl	$3, %r8d
.L5:
	movl	%r14d, %edi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r9,%rax,8), %rdx
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
	je	.L89
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r9,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r9,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r9,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r9,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r9,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r9,%rax,8)
.L8:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movq	%r9, -80(%rbp)
	call	posix_memalign
	movq	-80(%rbp), %r9
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
	movq	$0, -176(%rbp)
	xorl	%eax, %eax
.L36:
	vmovsd	.LC2(%rip), %xmm0
	movq	-176(%rbp), %rdi
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
	sall	$2, %r14d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movq	%r9, -80(%rbp)
	movslq	%r14d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	movq	-80(%rbp), %r9
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r13
	testl	%r14d, %r14d
	jle	.L14
	movq	%r13, %rax
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
	vmovsd	%xmm0, 0(%r13)
	cmpl	$1, %eax
	je	.L54
	vmovsd	%xmm0, 8(%r13)
	cmpl	$3, %eax
	jne	.L55
	vmovsd	%xmm0, 16(%r13)
	movl	$3, %edi
.L16:
	movl	%r14d, %esi
	vmovapd	.LC5(%rip), %ymm0
	leaq	0(%r13,%rax,8), %rdx
	subl	%eax, %esi
	xorl	%eax, %eax
	movl	%esi, %ecx
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
	movslq	%eax, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L14
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-1(%r12), %eax
	movl	%eax, -328(%rbp)
	testl	%edx, %edx
	jne	.L92
	cmpl	$1, -328(%rbp)
	jle	.L87
	movq	-72(%rbp), %rdi
	leal	-1(%rbx), %eax
	movl	%ebx, -244(%rbp)
	movl	%eax, -204(%rbp)
	leal	0(,%rbx,4), %eax
	movl	%eax, -208(%rbp)
	imull	%edi, %eax
	movl	%eax, -340(%rbp)
	movq	%rdi, %rax
	imull	%ebx, %edi
	movl	%edi, -344(%rbp)
	cmpl	$2, %eax
	jle	.L87
.L45:
	cmpl	$1, -204(%rbp)
	jle	.L84
	movl	-344(%rbp), %r8d
	movslq	%ebx, %r15
	leal	-2(%rbx), %ecx
	leal	-3(%rbx), %esi
	movslq	-208(%rbp), %rdx
	addl	%ebx, %ebx
	movq	%r13, -80(%rbp)
	movq	%r9, %r14
	leal	(%r8,%r8), %eax
	movslq	%ebx, %rdi
	movl	%r8d, -100(%rbp)
	movl	%eax, -164(%rbp)
	leaq	0(,%r15,8), %rax
	movq	%rax, -256(%rbp)
	leaq	0(,%rdx,8), %rax
	movq	%rax, -264(%rbp)
	movq	%rcx, %rax
	andl	$-4, %eax
	movq	%rdi, -352(%rbp)
	movl	%ecx, %edi
	movl	%eax, -296(%rbp)
	addl	$1, %eax
	shrl	$2, %edi
	movl	%eax, -304(%rbp)
	movl	-244(%rbp), %eax
	movq	%r15, -216(%rbp)
	addl	%eax, %eax
	movl	%ecx, -168(%rbp)
	cltq
	movl	%esi, -292(%rbp)
	movq	%rax, -336(%rbp)
	movl	-340(%rbp), %eax
	movl	%edi, -300(%rbp)
	movl	%eax, -124(%rbp)
	leaq	8(%r9), %rax
	movq	%rax, -272(%rbp)
	leaq	40(%r9), %rax
	movq	%rax, -280(%rbp)
	leaq	1(%r15), %rax
	movq	%rax, -392(%rbp)
	leaq	4(%rdx), %rax
	movq	%rax, -408(%rbp)
	leaq	5(%r15), %rax
	movq	%rax, -400(%rbp)
	leaq	(%rdx,%rsi,4), %rax
	movq	%rax, -376(%rbp)
	leaq	64(%r13), %rax
	movq	%rax, -384(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, -144(%rbp)
	movl	$1, -324(%rbp)
	subl	$1, %eax
	movl	%eax, -248(%rbp)
	leaq	(%r15,%rcx), %rax
	movq	%rax, -368(%rbp)
	leaq	4(%rdx,%rcx,4), %rax
	movq	%rax, -360(%rbp)
	.p2align 4,,10
	.p2align 3
.L32:
	movslq	-100(%rbp), %rdx
	movq	-392(%rbp), %rax
	movq	$0, -88(%rbp)
	movslq	-124(%rbp), %rcx
	movq	-80(%rbp), %rdi
	movl	$0, -104(%rbp)
	movq	-216(%rbp), %rbx
	movq	-176(%rbp), %r10
	addq	%rdx, %rax
	movq	$0, -184(%rbp)
	addl	$1, -324(%rbp)
	movl	-208(%rbp), %r15d
	leaq	(%rbx,%rdx), %rsi
	leaq	(%r10,%rax,8), %r13
	movq	-360(%rbp), %rax
	movq	%rbx, -192(%rbp)
	movl	$1, -140(%rbp)
	leaq	(%r14,%rsi,8), %r8
	movq	-400(%rbp), %rsi
	addq	%rcx, %rax
	leaq	(%rdi,%rax,8), %rax
	addq	%rdx, %rsi
	movq	%rax, -152(%rbp)
	leaq	(%r10,%rsi,8), %rsi
	movq	-408(%rbp), %rax
	movq	%rsi, -160(%rbp)
	movq	-384(%rbp), %rsi
	addq	%rcx, %rax
	addq	-376(%rbp), %rcx
	leaq	(%rsi,%rcx,8), %rsi
	leaq	(%rdi,%rax,8), %rax
	movq	%rsi, -200(%rbp)
	movq	-352(%rbp), %rsi
	leaq	(%rdx,%rsi), %rcx
	leaq	0(,%rcx,8), %rsi
	movslq	-144(%rbp), %rcx
	movq	%rsi, -112(%rbp)
	leaq	(%rbx,%rcx), %rsi
	subq	%rdx, %rcx
	salq	$3, %rsi
	movq	%rsi, -120(%rbp)
	movslq	-164(%rbp), %rsi
	leaq	(%rbx,%rsi), %rdi
	subq	%rdx, %rsi
	salq	$3, %rdi
	movq	%rdi, -136(%rbp)
	movq	-368(%rbp), %rdi
	leaq	(%rdi,%rdx), %r9
	leaq	(%r14,%rdx,8), %rdi
	leaq	8(%rdi), %rbx
	addq	$40, %rdi
	movq	%rbx, -240(%rbp)
	leaq	8(%r10,%r9,8), %rbx
	movq	%rbx, -232(%rbp)
	movq	%rdi, -224(%rbp)
	movq	%rsi, -312(%rbp)
	movq	%rcx, -320(%rbp)
	movq	%rax, -96(%rbp)
	.p2align 4,,10
	.p2align 3
.L33:
	movl	-244(%rbp), %eax
	movl	-104(%rbp), %edi
	leaq	48(%r8), %rdx
	movq	-88(%rbp), %rcx
	movq	-272(%rbp), %rbx
	addl	%eax, %edi
	movq	-240(%rbp), %rsi
	movq	-120(%rbp), %r9
	addl	%edi, %eax
	movl	%edi, -72(%rbp)
	movq	-112(%rbp), %rdi
	movl	%eax, -128(%rbp)
	addq	%rcx, %rsi
	addq	%rbx, %r9
	movq	-160(%rbp), %rax
	addq	%rbx, %rdi
	addl	$1, -140(%rbp)
	addq	-136(%rbp), %rbx
	cmpq	%rdx, %r13
	setnb	%r12b
	cmpq	%rax, %r8
	movq	%rbx, %r10
	movq	-224(%rbp), %rdx
	setnb	%bl
	orl	%r12d, %ebx
	cmpl	$3, -168(%rbp)
	seta	%r12b
	andl	%ebx, %r12d
	movq	-232(%rbp), %rbx
	addq	%rcx, %rbx
	cmpq	%rbx, -96(%rbp)
	movl	%r12d, %ebx
	movq	%rax, %r12
	setnb	%cl
	cmpq	-152(%rbp), %r13
	setnb	%r11b
	addq	-88(%rbp), %rdx
	orl	%ecx, %r11d
	andl	%r11d, %ebx
	cmpq	%rdx, %r13
	setnb	%cl
	cmpq	%rsi, %rax
	movq	-280(%rbp), %rax
	setbe	%dl
	orl	%ecx, %edx
	andl	%edx, %ebx
	movq	-112(%rbp), %rdx
	movl	%ebx, %r11d
	addq	%rax, %rdx
	cmpq	%rdx, %r13
	setnb	%cl
	cmpq	%rdi, %r12
	setbe	%dl
	orl	%ecx, %edx
	movq	-120(%rbp), %rcx
	andl	%r11d, %edx
	addq	%rax, %rcx
	cmpq	%rcx, %r13
	setnb	%cl
	cmpq	%r9, %r12
	setbe	%r11b
	orl	%r11d, %ecx
	testb	%cl, %dl
	je	.L31
	addq	-136(%rbp), %rax
	cmpq	%rax, %r13
	setnb	%cl
	cmpq	%r10, %r12
	setbe	%dl
	orb	%dl, %cl
	je	.L31
	cmpl	$2, -292(%rbp)
	jbe	.L56
	movl	-300(%rbp), %r12d
	movq	-96(%rbp), %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	leaq	8(%r8), %rbx
	leaq	16(%r8), %r11
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L24:
	vmovupd	32(%rax,%rdx,4), %ymm0
	vmovupd	64(%rax,%rdx,4), %ymm5
	addl	$1, %ecx
	vmovupd	96(%rax,%rdx,4), %ymm4
	vmovupd	(%rax,%rdx,4), %ymm1
	vunpcklpd	%ymm0, %ymm1, %ymm3
	vunpckhpd	%ymm0, %ymm1, %ymm1
	vunpckhpd	%ymm4, %ymm5, %ymm0
	vunpcklpd	%ymm4, %ymm5, %ymm2
	vpermpd	$216, %ymm1, %ymm1
	vmovupd	(%r11,%rdx), %ymm5
	vpermpd	$216, %ymm0, %ymm0
	vaddpd	(%r8,%rdx), %ymm5, %ymm6
	vunpcklpd	%ymm0, %ymm1, %ymm4
	vpermpd	$216, %ymm3, %ymm3
	vpermpd	$216, %ymm2, %ymm2
	vpermpd	$216, %ymm4, %ymm4
	vunpckhpd	%ymm0, %ymm1, %ymm0
	vpermpd	$216, %ymm0, %ymm0
	vmulpd	%ymm4, %ymm6, %ymm5
	vunpcklpd	%ymm2, %ymm3, %ymm4
	vunpckhpd	%ymm2, %ymm3, %ymm2
	vmovupd	(%rdi,%rdx), %ymm3
	vpermpd	$216, %ymm4, %ymm4
	vpermpd	$216, %ymm2, %ymm2
	vaddpd	(%rsi,%rdx), %ymm3, %ymm3
	vmulpd	(%rbx,%rdx), %ymm4, %ymm4
	vmulpd	%ymm0, %ymm3, %ymm0
	vaddpd	%ymm4, %ymm5, %ymm4
	vmovupd	(%r10,%rdx), %ymm5
	vaddpd	(%r9,%rdx), %ymm5, %ymm5
	vmulpd	%ymm2, %ymm5, %ymm2
	vaddpd	%ymm2, %ymm4, %ymm2
	vaddpd	%ymm0, %ymm2, %ymm0
	vmovupd	%ymm0, 0(%r13,%rdx)
	addq	$32, %rdx
	cmpl	%ecx, %r12d
	ja	.L24
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	%rax, -96(%rbp)
	movl	-168(%rbp), %edi
	cmpl	%edi, -296(%rbp)
	je	.L27
	movl	-304(%rbp), %esi
.L23:
	movl	-72(%rbp), %r12d
	movl	-100(%rbp), %eax
	leal	1(%rsi), %edx
	leal	0(,%rsi,4), %r9d
	leal	(%rdx,%r12), %edi
	leal	(%rsi,%r12), %ecx
	leal	(%rax,%rdi), %r11d
	leal	(%rax,%rcx), %r10d
	movslq	%r11d, %rbx
	movslq	%r10d, %r10
	leaq	(%r14,%rbx,8), %r11
	movq	%r11, -72(%rbp)
	leal	-1(%rsi,%r12), %r11d
	addl	%eax, %r11d
	movl	%r12d, -72(%rbp)
	movl	-124(%rbp), %r12d
	movslq	%r11d, %r11
	movq	-80(%rbp), %rax
	vmovsd	(%r14,%r11,8), %xmm3
	leaq	(%r14,%rbx,8), %r11
	vaddsd	(%r11), %xmm3, %xmm3
	leal	1(%r9,%r15), %r11d
	addl	%r12d, %r11d
	movslq	%r11d, %r11
	vmulsd	(%rax,%r11,8), %xmm3, %xmm3
	leal	(%r15,%r9), %r11d
	addl	%r12d, %r11d
	movslq	%r11d, %r11
	vmovsd	(%rax,%r11,8), %xmm0
	vmulsd	(%r14,%r10,8), %xmm0, %xmm0
	movl	-144(%rbp), %r11d
	addl	%ecx, %r11d
	addl	-164(%rbp), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r14,%r11,8), %xmm0
	vaddsd	(%r14,%rcx,8), %xmm0, %xmm0
	leal	2(%r9,%r15), %ecx
	addl	%r12d, %ecx
	movslq	%ecx, %rcx
	vmulsd	(%rax,%rcx,8), %xmm0, %xmm0
	movl	-104(%rbp), %ecx
	movl	-100(%rbp), %eax
	leal	(%rcx,%rsi), %r11d
	movl	-128(%rbp), %ecx
	addl	%eax, %r11d
	addl	%esi, %ecx
	movslq	%r11d, %r11
	addl	%eax, %ecx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r14,%r11,8), %xmm0
	movq	-80(%rbp), %rax
	movslq	%ecx, %rcx
	vaddsd	(%r14,%rcx,8), %xmm0, %xmm0
	leal	3(%r9,%r15), %ecx
	movq	-176(%rbp), %r9
	addl	%r12d, %ecx
	movslq	%ecx, %rcx
	vmulsd	(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r9,%r10,8)
	cmpl	-204(%rbp), %edx
	jge	.L27
	movl	-72(%rbp), %r9d
	movl	-100(%rbp), %eax
	leal	2(%rsi), %ecx
	leal	0(,%rdx,4), %r11d
	vmovsd	(%r14,%r10,8), %xmm3
	leal	1(%r11,%r15), %r10d
	addl	-124(%rbp), %r10d
	addl	%ecx, %r9d
	movslq	%r10d, %r10
	leal	(%rax,%r9), %r12d
	movslq	%r12d, %r12
	leaq	(%r14,%r12,8), %rax
	vaddsd	(%rax), %xmm3, %xmm3
	movq	%rax, -288(%rbp)
	movq	-80(%rbp), %rax
	vmulsd	(%rax,%r10,8), %xmm3, %xmm3
	leal	(%r15,%r11), %r10d
	addl	-124(%rbp), %r10d
	movslq	%r10d, %r10
	vmovsd	(%rax,%r10,8), %xmm0
	leaq	(%r14,%rbx,8), %r10
	vmulsd	(%r10), %xmm0, %xmm0
	movl	-144(%rbp), %r10d
	addl	%edi, %r10d
	addl	-164(%rbp), %edi
	movslq	%r10d, %r10
	movslq	%edi, %rdi
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r14,%r10,8), %xmm0
	movl	-124(%rbp), %r10d
	vaddsd	(%r14,%rdi,8), %xmm0, %xmm0
	leal	2(%r11,%r15), %edi
	addl	%r10d, %edi
	movslq	%edi, %rdi
	vmulsd	(%rax,%rdi,8), %xmm0, %xmm0
	movl	-104(%rbp), %edi
	movl	-100(%rbp), %eax
	addl	%edx, %edi
	addl	-128(%rbp), %edx
	addl	%eax, %edi
	addl	%eax, %edx
	movslq	%edx, %rdx
	movslq	%edi, %rdi
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r14,%rdi,8), %xmm0
	vaddsd	(%r14,%rdx,8), %xmm0, %xmm0
	leal	3(%r11,%r15), %edx
	movq	-80(%rbp), %r11
	addl	%r10d, %edx
	movslq	%edx, %rdx
	vmulsd	(%r11,%rdx,8), %xmm0, %xmm0
	movq	-176(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%rbx,8)
	cmpl	%ecx, -204(%rbp)
	jle	.L27
	movl	-72(%rbp), %edi
	leal	0(,%rcx,4), %edx
	leal	3(%rsi,%rdi), %esi
	addl	%eax, %esi
	movslq	%esi, %rsi
	vmovsd	(%r14,%rsi,8), %xmm3
	leal	1(%rdx,%r15), %esi
	vaddsd	(%r14,%rbx,8), %xmm3, %xmm3
	movq	%r11, %rbx
	addl	%r10d, %esi
	movslq	%esi, %rsi
	vmulsd	(%r11,%rsi,8), %xmm3, %xmm3
	leal	(%r15,%rdx), %esi
	addl	%r10d, %esi
	movslq	%esi, %rsi
	vmovsd	(%r11,%rsi,8), %xmm0
	movq	-288(%rbp), %rsi
	movl	-164(%rbp), %r11d
	vmulsd	(%rsi), %xmm0, %xmm0
	leal	(%r11,%r9), %esi
	addl	-144(%rbp), %r9d
	movslq	%esi, %rsi
	movslq	%r9d, %r9
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r14,%rsi,8), %xmm0
	leal	2(%rdx,%r15), %esi
	addl	%r10d, %esi
	vaddsd	(%r14,%r9,8), %xmm0, %xmm0
	leal	3(%rdx,%r15), %edx
	movslq	%esi, %rsi
	addl	%r10d, %edx
	vmulsd	(%rbx,%rsi,8), %xmm0, %xmm0
	movl	-128(%rbp), %esi
	movslq	%edx, %rdx
	addl	%ecx, %esi
	addl	-104(%rbp), %ecx
	addl	%eax, %esi
	addl	%eax, %ecx
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r14,%rsi,8), %xmm0
	vaddsd	(%r14,%rcx,8), %xmm0, %xmm0
	vmulsd	(%rbx,%rdx,8), %xmm0, %xmm0
	movq	-176(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r12,8)
.L27:
	movq	-256(%rbp), %rbx
	movq	-264(%rbp), %rax
	addq	%rax, -152(%rbp)
	movq	-216(%rbp), %rdi
	addq	%rax, -96(%rbp)
	addq	%rbx, %r13
	addq	%rbx, %r8
	addl	-208(%rbp), %r15d
	addq	%rax, -200(%rbp)
	movl	-72(%rbp), %eax
	addq	%rdi, -184(%rbp)
	addq	%rdi, -192(%rbp)
	movl	-248(%rbp), %edi
	addq	%rbx, -160(%rbp)
	addq	%rbx, -88(%rbp)
	addq	%rbx, -112(%rbp)
	addq	%rbx, -120(%rbp)
	addq	%rbx, -136(%rbp)
	movl	%eax, -104(%rbp)
	cmpl	%edi, -140(%rbp)
	jne	.L33
	movl	-344(%rbp), %eax
	movl	-340(%rbp), %edi
	addl	%eax, -100(%rbp)
	movl	-324(%rbp), %esi
	addl	%edi, -124(%rbp)
	addl	%eax, -144(%rbp)
	addl	%eax, -164(%rbp)
	cmpl	%esi, -328(%rbp)
	jg	.L32
	movq	-80(%rbp), %r13
	movq	%r14, %r9
	vzeroupper
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L85
	movq	%r9, %rdi
	call	dummy
	movq	-176(%rbp), %rdi
	call	dummy
	movq	%r13, %rdi
	call	dummy
.L85:
	addq	$384, %rsp
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
.L91:
	movq	$0, -176(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %edi
	movq	-176(%rbp), %rcx
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
	movq	-192(%rbp), %rbx
	movq	-96(%rbp), %r10
	movq	%r13, %rsi
	movq	%r8, %rdx
	movq	-184(%rbp), %rax
	movq	-336(%rbp), %rdi
	movq	%r10, %rcx
	movq	-312(%rbp), %r11
	addq	%rax, %rdi
	subq	%rbx, %rax
	subq	%rbx, %rdi
	movq	%rax, %r9
	movq	-320(%rbp), %rbx
	movq	%r10, %rax
	movq	-200(%rbp), %r10
	.p2align 4,,10
	.p2align 3
.L26:
	vmovsd	8(%rdx), %xmm2
	vmulsd	(%rcx), %xmm2, %xmm0
	addq	$32, %rcx
	addq	$8, %rsi
	vmovsd	16(%rdx), %xmm1
	vaddsd	(%rdx), %xmm1, %xmm1
	vmulsd	-24(%rcx), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rdx,%r11,8), %xmm1
	vaddsd	8(%rdx,%rbx,8), %xmm1, %xmm1
	vmulsd	-16(%rcx), %xmm1, %xmm1
	vmovsd	8(%rdx,%r9,8), %xmm0
	vaddsd	8(%rdx,%rdi,8), %xmm0, %xmm0
	vmulsd	-8(%rcx), %xmm0, %xmm0
	addq	$8, %rdx
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rsi)
	cmpq	%r10, %rcx
	jne	.L26
	movq	%rax, -96(%rbp)
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L56:
	movl	$1, %esi
	jmp	.L23
.L90:
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %edi
	cmovg	%r14d, %edi
	movq	%rsi, -176(%rbp)
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
	movq	-176(%rbp), %rax
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
	movq	%r9, %rdi
	movq	%r9, -80(%rbp)
	vzeroupper
	call	dummy
	movq	-176(%rbp), %rdi
	call	dummy
	movq	%r13, %rdi
	call	dummy
	cmpl	$1, -328(%rbp)
	movq	-80(%rbp), %r9
	jle	.L22
	movq	-72(%rbp), %rdi
	leal	-1(%rbx), %eax
	movl	%ebx, -244(%rbp)
	movl	%eax, -204(%rbp)
	leal	0(,%rbx,4), %eax
	movl	%eax, -208(%rbp)
	imull	%edi, %eax
	movl	%eax, -340(%rbp)
	movq	%rdi, %rax
	imull	%ebx, %edi
	movl	%edi, -344(%rbp)
	cmpl	$2, %eax
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
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movq	%r9, -80(%rbp)
	call	posix_memalign
	movq	-80(%rbp), %r9
	movq	$0, -176(%rbp)
	testl	%eax, %eax
	jne	.L40
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)
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
