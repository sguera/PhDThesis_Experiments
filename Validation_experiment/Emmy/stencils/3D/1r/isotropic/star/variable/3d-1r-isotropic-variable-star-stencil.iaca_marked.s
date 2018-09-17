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
	movq	%rax, %r12
	call	strtol
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	movl	%eax, %r14d
	movq	%rax, -72(%rbp)
	imull	%r12d, %r14d
	imull	%ebx, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -80(%rbp)
	call	posix_memalign
	movq	-80(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r13
	testl	%r14d, %r14d
	jle	.L3
	leal	-1(%r14), %r15d
	movq	%r13, %rax
	movl	$5, %esi
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
	vmovsd	%xmm0, 0(%r13)
	cmpl	$1, %eax
	je	.L48
	vmovsd	%xmm0, 8(%r13)
	cmpl	$3, %eax
	jne	.L49
	vmovsd	%xmm0, 16(%r13)
	movl	$3, %r8d
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	0(%r13,%rax,8), %rdx
	movl	%r14d, %edi
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
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
.L8:
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
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
	movq	$0, -216(%rbp)
	xorl	%eax, %eax
.L36:
	movq	-216(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
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
	leaq	-56(%rbp), %rdi
	addl	%r14d, %r14d
	movl	$32, %esi
	movslq	%r14d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r15
	movq	%r15, -184(%rbp)
	testl	%r14d, %r14d
	jle	.L14
	leal	-1(%r14), %ecx
	movq	%r15, %rax
	movl	$5, %esi
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
	movq	-184(%rbp), %rdx
	movl	%r14d, %esi
	subl	%eax, %esi
	vmovapd	.LC5(%rip), %ymm0
	movl	%esi, %ecx
	shrl	$2, %ecx
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
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
	movq	-184(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
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
	movl	%eax, -344(%rbp)
	testl	%edx, %edx
	jne	.L92
	cmpl	$1, -344(%rbp)
	jle	.L87
	movq	-72(%rbp), %rsi
	leal	-1(%rbx), %eax
	movl	%ebx, -248(%rbp)
	movl	%eax, -200(%rbp)
	leal	(%rbx,%rbx), %eax
	movl	%eax, -244(%rbp)
	imull	%esi, %eax
	movl	%eax, -356(%rbp)
	movq	%rsi, %rax
	imull	%ebx, %esi
	movl	%esi, -360(%rbp)
	cmpl	$2, %eax
	jle	.L87
.L45:
	cmpl	$1, -200(%rbp)
	jle	.L84
	movl	-360(%rbp), %r11d
	leal	-2(%rbx), %edx
	movslq	%ebx, %rdi
	movl	$0, -188(%rbp)
	movslq	-244(%rbp), %r14
	movq	%rdx, %rsi
	movl	%edx, -196(%rbp)
	leaq	(%rdx,%rdx), %rcx
	andl	$-4, %esi
	movq	%rdi, -256(%rbp)
	movl	%esi, -300(%rbp)
	leaq	0(,%rdi,8), %r15
	leal	(%r11,%r11), %eax
	movl	%r11d, -176(%rbp)
	movl	%eax, -192(%rbp)
	leaq	0(,%r14,8), %rax
	movq	%rax, -264(%rbp)
	leal	(%rbx,%rbx), %eax
	subl	$3, %ebx
	cltq
	movl	%ebx, -272(%rbp)
	movq	%rax, -368(%rbp)
	movl	%edx, %eax
	shrl	$2, %eax
	movq	%r14, -320(%rbp)
	movl	%eax, -80(%rbp)
	leal	1(%rsi), %eax
	movl	%eax, -304(%rbp)
	leaq	5(%rdi), %rsi
	movl	%ebx, %eax
	leaq	8(,%rax,8), %rax
	movq	%rsi, -400(%rbp)
	movq	-72(%rbp), %rsi
	movq	%rax, -352(%rbp)
	movl	-356(%rbp), %eax
	movl	$1, -340(%rbp)
	subl	$1, %esi
	movl	%eax, -172(%rbp)
	leaq	8(%r13), %rax
	movq	%rax, -208(%rbp)
	leaq	40(%r13), %rax
	movq	%rax, -280(%rbp)
	leaq	48(%r13), %rax
	movq	%rax, -288(%rbp)
	leaq	1(%rdi), %rax
	addq	%rax, %rdx
	movq	%rax, -392(%rbp)
	movl	%esi, -268(%rbp)
	leaq	16(%r13), %rax
	leaq	2(%r14,%rcx), %rsi
	movq	%rdx, -384(%rbp)
	movq	%r13, %r14
	movq	%rsi, -376(%rbp)
	movq	%rax, -312(%rbp)
	.p2align 4,,10
	.p2align 3
.L32:
	movslq	-176(%rbp), %rax
	movq	$0, -232(%rbp)
	movq	-392(%rbp), %rsi
	movl	$1, -136(%rbp)
	movq	-216(%rbp), %rdi
	movq	-376(%rbp), %rcx
	movq	-184(%rbp), %rbx
	addl	$1, -340(%rbp)
	leaq	(%rsi,%rax), %rdx
	leaq	(%rdi,%rdx,8), %rsi
	movslq	-172(%rbp), %rdx
	addq	%rdx, %rcx
	addq	-320(%rbp), %rdx
	leaq	(%rbx,%rcx,8), %rcx
	movq	%rcx, -152(%rbp)
	leaq	(%rbx,%rdx,8), %rdx
	movq	-256(%rbp), %rbx
	movq	%rdx, -144(%rbp)
	movq	-384(%rbp), %rdx
	movq	%rbx, -240(%rbp)
	addq	%rax, %rdx
	leaq	(%rdi,%rdx,8), %rdx
	movq	%rdx, -160(%rbp)
	movq	-400(%rbp), %rdx
	addq	%rax, %rdx
	leaq	(%rdi,%rdx,8), %rdx
	movslq	-188(%rbp), %rdi
	movq	%rdx, -96(%rbp)
	leaq	(%r14,%rax,8), %rdx
	movq	%rdx, -168(%rbp)
	leaq	(%rbx,%rax), %rdx
	salq	$3, %rdx
	leaq	(%rbx,%rdi), %rcx
	movq	%rdx, -120(%rbp)
	movq	-368(%rbp), %rdx
	subq	%rax, %rdi
	salq	$3, %rcx
	movq	%rdi, -336(%rbp)
	movq	%rcx, -112(%rbp)
	movslq	-192(%rbp), %rcx
	addq	%rax, %rdx
	salq	$3, %rdx
	movq	%rdx, -104(%rbp)
	leaq	(%rbx,%rcx), %rdx
	subq	%rax, %rcx
	salq	$3, %rdx
	movq	%rcx, -328(%rbp)
	movq	%rdx, -128(%rbp)
	movl	-244(%rbp), %edx
	movl	%edx, -88(%rbp)
	xorl	%edx, %edx
	movl	%edx, -84(%rbp)
	.p2align 4,,10
	.p2align 3
.L33:
	movl	-248(%rbp), %eax
	movl	-84(%rbp), %r13d
	movq	-104(%rbp), %r9
	movq	-112(%rbp), %r10
	movq	-168(%rbp), %rbx
	addl	%eax, %r13d
	movq	-96(%rbp), %r12
	addl	$1, -136(%rbp)
	addl	%r13d, %eax
	movl	%r13d, -72(%rbp)
	movl	%eax, -132(%rbp)
	movq	-144(%rbp), %rax
	leaq	8(%rbx), %r8
	movq	-120(%rbp), %r13
	leaq	16(%rax), %rcx
	movq	-208(%rbp), %rax
	leaq	0(%r13,%r14), %rdx
	addq	%rax, %r9
	addq	%rax, %r10
	addq	-128(%rbp), %rax
	movq	%rax, %r11
	leaq	40(%rbx), %rax
	cmpq	%rax, %rsi
	setnb	%bl
	cmpq	%r8, %r12
	setbe	%al
	orl	%eax, %ebx
	cmpq	-160(%rbp), %rcx
	setnb	%dil
	cmpq	-152(%rbp), %rsi
	setnb	%al
	orl	%edi, %eax
	andl	%ebx, %eax
	cmpl	$3, -196(%rbp)
	movq	-288(%rbp), %rbx
	seta	%dil
	addq	%r13, %rbx
	andl	%edi, %eax
	movq	%r12, %r13
	cmpq	%rbx, %rsi
	setnb	%dil
	cmpq	%rdx, %r12
	movq	-280(%rbp), %r12
	setbe	%bl
	orl	%ebx, %edi
	andl	%edi, %eax
	movq	-104(%rbp), %rdi
	addq	%r12, %rdi
	cmpq	%rdi, %rsi
	setnb	%dil
	cmpq	%r9, %r13
	setbe	%bl
	orl	%ebx, %edi
	andl	%edi, %eax
	movq	-112(%rbp), %rdi
	addq	%r12, %rdi
	cmpq	%rdi, %rsi
	setnb	%dil
	cmpq	%r10, %r13
	setbe	%bl
	orl	%ebx, %edi
	testb	%dil, %al
	je	.L31
	addq	-128(%rbp), %r12
	cmpq	%r12, %rsi
	setnb	%dil
	cmpq	%r11, %r13
	setbe	%al
	orb	%al, %dil
	je	.L31
	cmpl	$2, -272(%rbp)
	jbe	.L56
	movq	-120(%rbp), %rax
	xorl	%edi, %edi
	movq	-208(%rbp), %r12
	movq	-312(%rbp), %rbx
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
	vmovupd	(%rbx,%rax), %xmm5
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm5, %ymm0
	addl	$1, %edi
	vmovupd	(%rdx,%rax), %xmm2
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm2, %ymm2
	vaddpd	%ymm0, %ymm2, %ymm5
	vmovupd	(%r10,%rax), %xmm2
	vinsertf128	$0x1, 16(%r10,%rax), %ymm2, %ymm2
	vmovupd	(%r11,%rax), %xmm0
	vinsertf128	$0x1, 16(%r11,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm0
	vmovupd	(%r8,%rax), %xmm4
	vinsertf128	$0x1, 16(%r8,%rax), %ymm4, %ymm4
	vmovupd	(%rcx,%rax,2), %xmm1
	vinsertf128	$0x1, 16(%rcx,%rax,2), %ymm1, %ymm3
	vaddpd	%ymm0, %ymm5, %ymm2
	vmovupd	(%r9,%rax), %xmm0
	vinsertf128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm4, %ymm0
	vmovupd	32(%rcx,%rax,2), %xmm1
	vinsertf128	$0x1, 48(%rcx,%rax,2), %ymm1, %ymm1
	vaddpd	%ymm0, %ymm2, %ymm4
	vinsertf128	$1, %xmm1, %ymm3, %ymm2
	vperm2f128	$49, %ymm1, %ymm3, %ymm1
	vunpckhpd	%ymm1, %ymm2, %ymm0
	vunpcklpd	%ymm1, %ymm2, %ymm1
	vmulpd	%ymm0, %ymm4, %ymm3
	vmovupd	(%r12,%rax), %xmm4
	vinsertf128	$0x1, 16(%r12,%rax), %ymm4, %ymm4
	vmulpd	%ymm4, %ymm1, %ymm1
	vaddpd	%ymm1, %ymm3, %ymm0
	vmovups	%xmm0, (%rsi,%rax)
	vextractf128	$0x1, %ymm0, 16(%rsi,%rax)
	addq	$32, %rax
	cmpl	%edi, -80(%rbp)
	ja	.L24
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	%r13d, -72(%rbp)
	movl	-196(%rbp), %ecx
	cmpl	%ecx, -300(%rbp)
	je	.L27
	movl	-304(%rbp), %ecx
.L23:
	movl	-176(%rbp), %ebx
	leal	(%rcx,%r13), %edi
	movl	-188(%rbp), %r9d
	leal	1(%rcx), %eax
	leal	(%rax,%r13), %r8d
	leal	(%rcx,%rcx), %edx
	leal	(%rbx,%rdi), %r10d
	leal	(%rbx,%r8), %r11d
	addl	%edi, %r9d
	addl	-192(%rbp), %edi
	movslq	%r10d, %r10
	movslq	%r9d, %r9
	movslq	%r11d, %r11
	vmovsd	(%r14,%r9,8), %xmm3
	leaq	(%r14,%r11,8), %r12
	movslq	%edi, %rdi
	vaddsd	(%r14,%rdi,8), %xmm3, %xmm3
	leal	-1(%rcx,%r13), %edi
	addl	%ebx, %edi
	movq	-184(%rbp), %r13
	movslq	%edi, %rdi
	vmovsd	(%r14,%rdi,8), %xmm0
	movl	-84(%rbp), %edi
	vaddsd	(%r12), %xmm0, %xmm0
	leal	(%rdi,%rcx), %r9d
	movl	-132(%rbp), %edi
	vaddsd	%xmm0, %xmm3, %xmm2
	addl	%ebx, %r9d
	movslq	%r9d, %r9
	vmovsd	(%r14,%r9,8), %xmm0
	movl	-88(%rbp), %r9d
	addl	%ecx, %edi
	addl	%ebx, %edi
	movslq	%edi, %rdi
	vaddsd	(%r14,%rdi,8), %xmm0, %xmm0
	leal	1(%rdx,%r9), %edi
	addl	%r9d, %edx
	addl	-172(%rbp), %edi
	addl	-172(%rbp), %edx
	vaddsd	%xmm0, %xmm2, %xmm0
	movslq	%edi, %rdi
	vmulsd	0(%r13,%rdi,8), %xmm0, %xmm1
	movslq	%edx, %rdx
	vmovsd	0(%r13,%rdx,8), %xmm0
	vmulsd	(%r14,%r10,8), %xmm0, %xmm0
	movq	-216(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r10,8)
	cmpl	-200(%rbp), %eax
	jge	.L27
	movl	-72(%rbp), %r13d
	leal	2(%rcx), %edx
	vmovsd	(%r14,%r10,8), %xmm0
	movl	-84(%rbp), %r10d
	leal	(%rax,%rax), %edi
	leal	(%rdx,%r13), %r9d
	addl	%r9d, %ebx
	movslq	%ebx, %rbx
	leaq	(%r14,%rbx,8), %r13
	movq	%rbx, -296(%rbp)
	movq	%r13, -224(%rbp)
	movl	-188(%rbp), %r13d
	leal	(%r8,%r13), %ebx
	addl	-192(%rbp), %r8d
	movslq	%ebx, %rbx
	movq	-184(%rbp), %r13
	vmovsd	(%r14,%rbx,8), %xmm3
	movl	-176(%rbp), %ebx
	movslq	%r8d, %r8
	vaddsd	(%r14,%r8,8), %xmm3, %xmm3
	movq	-224(%rbp), %r8
	vaddsd	(%r8), %xmm0, %xmm0
	leal	(%rax,%r10), %r8d
	addl	-132(%rbp), %eax
	addl	%ebx, %r8d
	movslq	%r8d, %r8
	movl	-88(%rbp), %r10d
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r14,%r8,8), %xmm0
	movl	-172(%rbp), %r8d
	addl	%ebx, %eax
	cltq
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	leal	1(%rdi,%r10), %eax
	addl	%r10d, %edi
	addl	%r8d, %eax
	addl	%r8d, %edi
	cltq
	movslq	%edi, %rdi
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	0(%r13,%rax,8), %xmm0, %xmm1
	vmovsd	0(%r13,%rdi,8), %xmm0
	vmulsd	(%r12), %xmm0, %xmm0
	movq	-216(%rbp), %r12
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r11,8)
	cmpl	%edx, -200(%rbp)
	jle	.L27
	movl	-72(%rbp), %edi
	leal	(%rdx,%rdx), %eax
	leal	3(%rcx,%rdi), %ecx
	addl	%ebx, %ecx
	movslq	%ecx, %rcx
	vmovsd	(%r14,%rcx,8), %xmm1
	vaddsd	(%r14,%r11,8), %xmm1, %xmm1
	movl	-192(%rbp), %r11d
	leal	(%r11,%r9), %ecx
	addl	-188(%rbp), %r9d
	movslq	%ecx, %rcx
	vmovsd	(%r14,%rcx,8), %xmm0
	movl	-84(%rbp), %ecx
	movslq	%r9d, %r9
	vaddsd	(%r14,%r9,8), %xmm0, %xmm0
	addl	%edx, %ecx
	addl	-132(%rbp), %edx
	vaddsd	%xmm0, %xmm1, %xmm2
	addl	%ebx, %ecx
	movslq	%ecx, %rcx
	vmovsd	(%r14,%rcx,8), %xmm0
	addl	%ebx, %edx
	movq	-296(%rbp), %rbx
	movslq	%edx, %rdx
	vaddsd	(%r14,%rdx,8), %xmm0, %xmm0
	leal	1(%rax,%r10), %edx
	addl	%r10d, %eax
	addl	%r8d, %edx
	addl	%r8d, %eax
	movq	-224(%rbp), %r8
	movslq	%edx, %rdx
	cltq
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	0(%r13,%rdx,8), %xmm0, %xmm1
	vmovsd	0(%r13,%rax,8), %xmm0
	vmulsd	(%r8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%rbx,8)
.L27:
	movl	-72(%rbp), %eax
	addq	%r15, %rsi
	movq	-264(%rbp), %rcx
	movq	-256(%rbp), %rdx
	addq	%rcx, -152(%rbp)
	addq	%rcx, -144(%rbp)
	movl	%eax, -84(%rbp)
	movl	-244(%rbp), %ecx
	addq	%r15, -160(%rbp)
	addl	%ecx, -88(%rbp)
	addq	%r15, -96(%rbp)
	addq	%r15, -168(%rbp)
	addq	%rdx, -232(%rbp)
	addq	%rdx, -240(%rbp)
	addq	%r15, -120(%rbp)
	addq	%r15, -104(%rbp)
	addq	%r15, -112(%rbp)
	addq	%r15, -128(%rbp)
	movl	-268(%rbp), %ecx
	cmpl	%ecx, -136(%rbp)
	jne	.L33
	movl	-360(%rbp), %eax
	movl	-356(%rbp), %edx
	addl	%eax, -176(%rbp)
	addl	%edx, -172(%rbp)
	addl	%eax, -188(%rbp)
	addl	%eax, -192(%rbp)
	movl	-340(%rbp), %esi
	cmpl	%esi, -344(%rbp)
	jg	.L32
	movq	%r14, %r13
	vzeroupper
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L85
	movq	%r13, %rdi
	call	dummy
	movq	-216(%rbp), %rdi
	call	dummy
	movq	-184(%rbp), %rdi
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
	movl	$1, %r8d
	jmp	.L5
.L91:
	movq	$0, -216(%rbp)
	xorl	%edx, %edx
.L9:
	movq	-216(%rbp), %rcx
	subl	%edx, %edi
	movl	%edi, %esi
	vmovapd	.LC3(%rip), %ymm0
	shrl	$2, %esi
	leaq	(%rcx,%rdx,8), %rcx
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
	movq	-232(%rbp), %rdi
	xorl	%eax, %eax
	movq	-320(%rbp), %rcx
	movq	-240(%rbp), %rbx
	movq	-216(%rbp), %r11
	movq	-120(%rbp), %r10
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
	movq	%rsi, -216(%rbp)
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
	movq	-216(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
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
	movq	%r13, %rdi
	vzeroupper
	call	dummy
	movq	-216(%rbp), %rdi
	call	dummy
	movq	-184(%rbp), %rdi
	call	dummy
	cmpl	$1, -344(%rbp)
	jle	.L22
	movq	-72(%rbp), %rsi
	leal	-1(%rbx), %eax
	movl	%ebx, -248(%rbp)
	movl	%eax, -200(%rbp)
	leal	(%rbx,%rbx), %eax
	movl	%eax, -244(%rbp)
	imull	%esi, %eax
	movl	%eax, -356(%rbp)
	movq	%rsi, %rax
	imull	%ebx, %esi
	movl	%esi, -360(%rbp)
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
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -216(%rbp)
	testl	%eax, %eax
	jne	.L40
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)
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
