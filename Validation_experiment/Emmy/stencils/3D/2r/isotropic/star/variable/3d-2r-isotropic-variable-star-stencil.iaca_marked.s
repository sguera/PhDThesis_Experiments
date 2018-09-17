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
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	movq	%rsi, %r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$512, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	movl	%r12d, %r14d
	call	strtol
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
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
	movq	-56(%rbp), %rdi
	movq	%rdi, -368(%rbp)
	testl	%r14d, %r14d
	jle	.L3
	leal	-1(%r14), %r15d
	movq	%rdi, %rax
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
	vmovsd	%xmm0, (%rdi)
	cmpl	$1, %eax
	je	.L48
	vmovsd	%xmm0, 8(%rdi)
	cmpl	$3, %eax
	jne	.L49
	vmovsd	%xmm0, 16(%rdi)
	movl	$3, %r8d
.L5:
	movq	-368(%rbp), %rdx
	movl	%r14d, %edi
	subl	%eax, %edi
	vmovapd	.LC1(%rip), %ymm0
	movl	%edi, %esi
	shrl	$2, %esi
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
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
	movq	-368(%rbp), %rsi
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L8:
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
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
	movq	$0, -440(%rbp)
	xorl	%eax, %eax
.L36:
	movq	-440(%rbp), %rsi
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
	movq	-56(%rbp), %r8
	movq	%r8, -376(%rbp)
	testl	%r14d, %r14d
	jle	.L14
	leal	-1(%r14), %ecx
	movq	%r8, %rax
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
	vmovsd	%xmm0, (%r8)
	cmpl	$1, %eax
	je	.L54
	vmovsd	%xmm0, 8(%r8)
	cmpl	$3, %eax
	jne	.L55
	vmovsd	%xmm0, 16(%r8)
	movl	$3, %edi
.L16:
	movq	-376(%rbp), %rdx
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
	movq	-376(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%r14d, %edx
	jge	.L14
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
	leal	-2(%r13), %eax
	movl	%eax, -432(%rbp)
	testl	%edx, %edx
	jne	.L94
	cmpl	$2, -432(%rbp)
	jle	.L89
	leal	-2(%rbx), %eax
	movl	%eax, -112(%rbp)
	leal	(%rbx,%rbx,2), %eax
	movl	%eax, %esi
	imull	%r12d, %esi
	movl	%esi, -444(%rbp)
	movl	%r12d, %esi
	imull	%ebx, %esi
	movl	%esi, -448(%rbp)
	cmpl	$4, %r12d
	jle	.L89
.L45:
	cmpl	$2, -112(%rbp)
	jle	.L86
	movl	-444(%rbp), %esi
	leal	-4(%rbx), %edx
	movl	$0, -424(%rbp)
	movl	-448(%rbp), %edi
	leaq	(%rdx,%rdx,2), %rcx
	movl	%edx, -192(%rbp)
	movl	$2, -404(%rbp)
	addl	%esi, %esi
	movl	%esi, -408(%rbp)
	leal	(%rdi,%rdi), %esi
	movl	%esi, -412(%rbp)
	leal	(%rdi,%rdi,2), %esi
	movl	%esi, -420(%rbp)
	leal	0(,%rdi,4), %esi
	movl	%esi, -428(%rbp)
	movslq	%eax, %rsi
	addl	%eax, %eax
	movslq	%eax, %r8
	movslq	%ebx, %rax
	movq	%rsi, -288(%rbp)
	salq	$3, %rsi
	movq	%rax, -280(%rbp)
	salq	$3, %rax
	movq	%rax, -304(%rbp)
	leal	(%rbx,%rbx), %eax
	movslq	%eax, %r15
	movq	%rsi, -296(%rbp)
	movq	%rdx, %rsi
	leal	(%rbx,%rbx,2), %eax
	andl	$-4, %esi
	movq	%r8, -456(%rbp)
	cltq
	movl	%esi, -396(%rbp)
	movq	%rax, -472(%rbp)
	leal	0(,%rbx,4), %eax
	cltq
	movq	%r15, -464(%rbp)
	movq	%rax, -480(%rbp)
	leal	-5(%rbx), %eax
	movl	%edx, %ebx
	shrl	$2, %ebx
	movl	%eax, -312(%rbp)
	movl	%ebx, -108(%rbp)
	leaq	(%rax,%rax,2), %rax
	leal	2(%rsi), %ebx
	addq	%r8, %rax
	movl	%edi, -416(%rbp)
	movl	%ebx, -400(%rbp)
	movq	-368(%rbp), %rbx
	movq	%rax, -520(%rbp)
	movq	-376(%rbp), %rax
	leaq	16(%rbx), %rsi
	addq	$48, %rbx
	movq	%rbx, -328(%rbp)
	leaq	2(%r15), %rbx
	addq	$72, %rax
	movq	%rbx, -512(%rbp)
	leaq	6(%r8), %rbx
	movq	%rax, -536(%rbp)
	leal	-2(%r12), %eax
	movq	%rbx, -504(%rbp)
	leaq	6(%r15), %rbx
	movl	%eax, -308(%rbp)
	leaq	6(%r8,%rcx), %rax
	movq	%rsi, -320(%rbp)
	movq	%rbx, -528(%rbp)
	movq	%rax, -488(%rbp)
	leaq	2(%rdx,%r15), %rax
	movq	%rax, -496(%rbp)
	.p2align 4,,10
	.p2align 3
.L32:
	movslq	-408(%rbp), %rdi
	movq	-488(%rbp), %rax
	movq	-376(%rbp), %r15
	movslq	-412(%rbp), %r9
	movq	-464(%rbp), %r11
	movq	%rdi, -384(%rbp)
	addq	%rdi, %rax
	movq	-440(%rbp), %rcx
	leaq	(%r15,%rax,8), %rax
	movq	-280(%rbp), %r8
	movq	%rax, -200(%rbp)
	movq	-512(%rbp), %rax
	movq	-472(%rbp), %r10
	movq	%r9, -392(%rbp)
	movq	-480(%rbp), %r14
	addl	$1, -404(%rbp)
	addq	%r9, %rax
	leaq	(%rcx,%rax,8), %rbx
	movq	%r11, %rax
	addq	%r9, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, -256(%rbp)
	movq	-504(%rbp), %rdx
	addq	%rdi, %rdx
	leaq	(%r15,%rdx,8), %rdx
	movq	%rdx, -176(%rbp)
	movq	-496(%rbp), %rdx
	addq	%r9, %rdx
	leaq	(%rcx,%rdx,8), %rdx
	movq	%rdx, -208(%rbp)
	movq	-368(%rbp), %rdx
	leaq	(%rdx,%rax), %r15
	movq	-528(%rbp), %rax
	addq	%r9, %rax
	leaq	(%rcx,%rax,8), %rax
	movslq	-416(%rbp), %rcx
	movq	%rax, -96(%rbp)
	leaq	(%rdx,%r9,8), %rax
	movq	%rax, -120(%rbp)
	movq	-520(%rbp), %rax
	addq	%rdi, %rax
	movq	-536(%rbp), %rdi
	leaq	(%rdi,%rax,8), %rax
	movq	%rax, -272(%rbp)
	movq	%r8, %rax
	addq	%r9, %rax
	salq	$3, %rax
	movq	%rax, -128(%rbp)
	movq	%r9, %rax
	addq	%r10, %rax
	salq	$3, %rax
	movq	%rax, -136(%rbp)
	movq	%r9, %rax
	addq	%r14, %rax
	salq	$3, %rax
	movq	%rax, -144(%rbp)
	leaq	(%r11,%rcx), %rax
	subq	%r9, %rcx
	salq	$3, %rax
	movq	%rax, -152(%rbp)
	movslq	-420(%rbp), %rsi
	movq	%r14, -248(%rbp)
	movq	%r10, -232(%rbp)
	movq	%r11, -224(%rbp)
	leaq	(%r11,%rsi), %rax
	subq	%r9, %rsi
	movq	%r8, -216(%rbp)
	salq	$3, %rax
	movq	%rsi, -336(%rbp)
	movq	%rax, -160(%rbp)
	movslq	-424(%rbp), %rax
	movq	$0, -240(%rbp)
	movl	$2, -188(%rbp)
	movq	%rcx, -344(%rbp)
	leaq	(%r11,%rax), %rdx
	subq	%r9, %rax
	leaq	0(,%rdx,8), %rdi
	movslq	-428(%rbp), %rdx
	movq	%rax, -360(%rbp)
	movq	%r15, %rax
	movq	%rdi, -168(%rbp)
	movq	%rbx, %r15
	movq	%rax, %rbx
	leaq	(%r11,%rdx), %rdi
	subq	%r9, %rdx
	salq	$3, %rdi
	movq	%rdx, -352(%rbp)
	movq	%rdi, -184(%rbp)
	movq	-456(%rbp), %rdi
	movq	%rdi, -264(%rbp)
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-320(%rbp), %rax
	movq	-128(%rbp), %r13
	movq	-136(%rbp), %rsi
	movq	-144(%rbp), %r8
	movq	-152(%rbp), %r9
	movq	-160(%rbp), %r10
	addq	%rax, %r13
	movq	-168(%rbp), %r11
	addq	%rax, %rsi
	movq	%r13, -88(%rbp)
	addq	%rax, %r8
	movq	-208(%rbp), %r12
	addq	%rax, %r9
	movq	-120(%rbp), %rcx
	addq	%rax, %r10
	movq	-96(%rbp), %r14
	addl	$1, -188(%rbp)
	addq	%rax, %r11
	addq	-184(%rbp), %rax
	cmpq	%r12, -176(%rbp)
	leaq	16(%rcx), %rdi
	movq	%rax, -104(%rbp)
	leaq	64(%rbx), %rax
	setnb	%r12b
	cmpq	-200(%rbp), %r15
	setnb	%cl
	orl	%r12d, %ecx
	cmpl	$3, -192(%rbp)
	seta	%r12b
	andl	%ecx, %r12d
	cmpq	%rax, %r15
	setnb	%al
	cmpq	%r14, %rbx
	setnb	%dl
	orl	%eax, %edx
	andl	%edx, %r12d
	movl	%r12d, %ecx
	movq	-120(%rbp), %r12
	leaq	48(%r12), %rax
	movq	%r14, %r12
	cmpq	%rax, %r15
	setnb	%al
	cmpq	%rdi, %r14
	setbe	%r14b
	orl	%eax, %r14d
	andl	%r14d, %ecx
	movq	-128(%rbp), %r14
	movl	%ecx, %edx
	movq	-328(%rbp), %rcx
	addq	%rcx, %r14
	cmpq	%r14, %r15
	movl	%edx, %r14d
	movq	-136(%rbp), %rdx
	setnb	%al
	cmpq	%r13, %r12
	setbe	%r13b
	orl	%eax, %r13d
	addq	%rcx, %rdx
	andl	%r13d, %r14d
	cmpq	%rdx, %r15
	movl	%r14d, %r13d
	movq	%rcx, %r14
	setnb	%dl
	cmpq	%rsi, %r12
	setbe	%r12b
	addq	-144(%rbp), %rcx
	orl	%edx, %r12d
	andl	%r12d, %r13d
	cmpq	%rcx, %r15
	setnb	%dl
	cmpq	%r8, -96(%rbp)
	setbe	%cl
	orl	%edx, %ecx
	andl	%ecx, %r13d
	movq	-152(%rbp), %rcx
	movl	%r13d, %r12d
	movq	-96(%rbp), %r13
	addq	%r14, %rcx
	cmpq	%rcx, %r15
	setnb	%dl
	cmpq	%r9, %r13
	setbe	%al
	orl	%edx, %eax
	movl	%r12d, %edx
	andl	%eax, %edx
	movl	%edx, %ecx
	movq	-160(%rbp), %rdx
	addq	%r14, %rdx
	cmpq	%rdx, %r15
	setnb	%dl
	cmpq	%r10, %r13
	setbe	%al
	orl	%edx, %eax
	movq	-168(%rbp), %rdx
	andl	%ecx, %eax
	addq	%r14, %rdx
	cmpq	%rdx, %r15
	setnb	%dl
	cmpq	%r11, %r13
	setbe	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L58
	addq	-184(%rbp), %r14
	movq	-104(%rbp), %rax
	cmpq	%r14, %r15
	setnb	%dl
	cmpq	%rax, %r13
	setbe	%al
	orb	%al, %dl
	je	.L58
	cmpl	$2, -312(%rbp)
	jbe	.L56
	movq	-176(%rbp), %rdx
	leaq	16(%rbx), %rcx
	movq	%r15, -80(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %r15
	leaq	8(%rbx), %r14
	movq	%rcx, -104(%rbp)
	leaq	24(%rbx), %r13
	movl	$0, -72(%rbp)
	leaq	32(%rbx), %r12
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L24:
	movq	-88(%rbp), %rcx
	addq	$96, %rdx
	vmovupd	0(%r13,%rax), %xmm4
	vinsertf128	$0x1, 16(%r13,%rax), %ymm4, %ymm3
	vmovupd	(%r14,%rax), %xmm5
	vinsertf128	$0x1, 16(%r14,%rax), %ymm5, %ymm5
	vaddpd	%ymm3, %ymm5, %ymm4
	vmovupd	(%r9,%rax), %xmm5
	vinsertf128	$0x1, 16(%r9,%rax), %ymm5, %ymm5
	vmovupd	(%r10,%rax), %xmm3
	vinsertf128	$0x1, 16(%r10,%rax), %ymm3, %ymm3
	vaddpd	%ymm3, %ymm5, %ymm3
	vmovupd	-96(%rdx), %xmm2
	vinsertf128	$0x1, -80(%rdx), %ymm2, %ymm2
	vmovupd	-64(%rdx), %xmm1
	vinsertf128	$0x1, -48(%rdx), %ymm1, %ymm1
	vperm2f128	$48, %ymm1, %ymm2, %ymm6
	vperm2f128	$2, %ymm1, %ymm2, %ymm1
	vaddpd	%ymm3, %ymm4, %ymm5
	vmovupd	(%rcx,%rax), %xmm3
	vperm2f128	$33, %ymm2, %ymm2, %ymm2
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm3, %ymm4
	vmovupd	(%rsi,%rax), %xmm3
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm3, %ymm3
	vaddpd	%ymm3, %ymm4, %ymm3
	vshufpd	$5, %ymm1, %ymm6, %ymm4
	movq	-104(%rbp), %rcx
	vshufpd	$2, %ymm1, %ymm2, %ymm1
	vmovupd	-32(%rdx), %xmm0
	vinsertf128	$0x1, -16(%rdx), %ymm0, %ymm0
	vinsertf128	$1, %xmm0, %ymm1, %ymm1
	vaddpd	%ymm3, %ymm5, %ymm3
	vpermilpd	$2, %ymm0, %ymm5
	vblendpd	$8, %ymm5, %ymm4, %ymm4
	vmulpd	%ymm4, %ymm3, %ymm4
	vshufpd	$2, %ymm2, %ymm6, %ymm3
	vperm2f128	$33, %ymm0, %ymm3, %ymm5
	vblendpd	$8, %ymm5, %ymm3, %ymm3
	vmovupd	(%r12,%rax), %xmm6
	vblendpd	$7, %ymm1, %ymm0, %ymm0
	vmovupd	(%rcx,%rax), %xmm5
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm5, %ymm5
	vmulpd	%ymm5, %ymm3, %ymm3
	vaddpd	%ymm3, %ymm4, %ymm3
	vmovupd	(%rbx,%rax), %xmm5
	vinsertf128	$0x1, 16(%r12,%rax), %ymm6, %ymm4
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm5, %ymm5
	vaddpd	%ymm4, %ymm5, %ymm6
	vmovupd	(%r11,%rax), %xmm5
	vinsertf128	$0x1, 16(%r11,%rax), %ymm5, %ymm5
	vmovupd	(%r15,%rax), %xmm4
	vinsertf128	$0x1, 16(%r15,%rax), %ymm4, %ymm4
	vaddpd	%ymm4, %ymm5, %ymm4
	vaddpd	%ymm4, %ymm6, %ymm5
	vmovupd	(%rdi,%rax), %xmm4
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm4, %ymm6
	vmovupd	(%r8,%rax), %xmm4
	vinsertf128	$0x1, 16(%r8,%rax), %ymm4, %ymm4
	vaddpd	%ymm4, %ymm6, %ymm4
	movq	-80(%rbp), %rcx
	addl	$1, -72(%rbp)
	vaddpd	%ymm4, %ymm5, %ymm4
	vmulpd	%ymm0, %ymm4, %ymm0
	vaddpd	%ymm0, %ymm3, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	movl	-72(%rbp), %ecx
	addq	$32, %rax
	cmpl	%ecx, -108(%rbp)
	ja	.L24
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-80(%rbp), %r15
	movl	-192(%rbp), %edi
	cmpl	%edi, -396(%rbp)
	je	.L28
	movl	-400(%rbp), %edx
.L23:
	movq	-384(%rbp), %rax
	movslq	%edx, %rcx
	addq	-264(%rbp), %rax
	leal	(%rdx,%rdx,2), %edx
	movq	-376(%rbp), %rdi
	movslq	%edx, %rdx
	movq	-224(%rbp), %r10
	movq	-232(%rbp), %r9
	addq	%rdx, %rax
	movq	-216(%rbp), %r8
	leaq	(%rdi,%rax,8), %rdx
	movq	-392(%rbp), %rax
	movq	-368(%rbp), %rdi
	movq	-248(%rbp), %rsi
	subq	%r10, %r9
	subq	%r10, %r8
	movq	-336(%rbp), %r11
	addq	%r10, %rax
	movq	-344(%rbp), %r12
	addq	%rcx, %rax
	movq	-352(%rbp), %r13
	leaq	-16(%rdi,%rax,8), %rax
	movq	-240(%rbp), %rdi
	subq	%r10, %rsi
	movq	-360(%rbp), %r14
	subq	%r10, %rdi
	movq	-256(%rbp), %r10
	.p2align 4,,10
	.p2align 3
.L26:
	vmovsd	16(%rax,%r11,8), %xmm1
	addq	$24, %rdx
	vaddsd	16(%rax,%r12,8), %xmm1, %xmm2
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
	vmovsd	16(%rax,%r13,8), %xmm2
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
	vmovsd	%xmm0, (%r10,%rcx,8)
	addq	$1, %rcx
	cmpl	%ecx, -112(%rbp)
	jg	.L26
.L28:
	movq	-304(%rbp), %rax
	movq	-280(%rbp), %rdi
	movq	-296(%rbp), %rsi
	addq	%rdi, -216(%rbp)
	addq	%rsi, -200(%rbp)
	addq	%rax, %r15
	addq	%rax, %rbx
	addq	%rsi, -176(%rbp)
	addq	%rdi, -224(%rbp)
	addq	%rdi, -232(%rbp)
	addq	%rdi, -240(%rbp)
	addq	%rdi, -248(%rbp)
	addq	%rsi, -272(%rbp)
	movq	-288(%rbp), %rdi
	addq	%rax, -256(%rbp)
	addq	%rax, -208(%rbp)
	addq	%rax, -96(%rbp)
	addq	%rax, -120(%rbp)
	addq	%rdi, -264(%rbp)
	addq	%rax, -128(%rbp)
	addq	%rax, -136(%rbp)
	addq	%rax, -144(%rbp)
	addq	%rax, -152(%rbp)
	addq	%rax, -160(%rbp)
	addq	%rax, -168(%rbp)
	addq	%rax, -184(%rbp)
	movl	-308(%rbp), %esi
	cmpl	%esi, -188(%rbp)
	jne	.L33
	movl	-448(%rbp), %eax
	movl	-444(%rbp), %ebx
	addl	%eax, -412(%rbp)
	addl	%ebx, -408(%rbp)
	addl	%eax, -416(%rbp)
	addl	%eax, -420(%rbp)
	addl	%eax, -424(%rbp)
	addl	%eax, -428(%rbp)
	movl	-404(%rbp), %ebx
	cmpl	%ebx, -432(%rbp)
	jg	.L32
.L86:
	vzeroupper
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L87
	movq	-368(%rbp), %rdi
	call	dummy
	movq	-440(%rbp), %rdi
	call	dummy
	movq	-376(%rbp), %rdi
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
	movq	$0, -440(%rbp)
	xorl	%edx, %edx
.L9:
	movq	-440(%rbp), %rcx
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
	je	.L95
	vzeroupper
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L58:
	movq	-224(%rbp), %r11
	movq	%r15, %rcx
	movq	%rbx, %rax
	movq	-232(%rbp), %r9
	movq	-216(%rbp), %r8
	movq	-248(%rbp), %rdi
	movq	-240(%rbp), %rsi
	subq	%r11, %r9
	movq	-176(%rbp), %rdx
	subq	%r11, %r8
	movq	-272(%rbp), %r10
	subq	%r11, %rdi
	movq	-344(%rbp), %r12
	subq	%r11, %rsi
	movq	-352(%rbp), %r13
	movq	-336(%rbp), %r11
	movq	-360(%rbp), %r14
	.p2align 4,,10
	.p2align 3
.L27:
	vmovsd	16(%rax,%r11,8), %xmm1
	addq	$24, %rdx
	addq	$8, %rcx
	vaddsd	16(%rax,%r12,8), %xmm1, %xmm2
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
	vmovsd	16(%rax,%r13,8), %xmm2
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
	cmpq	%r10, %rdx
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
	movq	%rsi, -440(%rbp)
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
	movq	-440(%rbp), %rax
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
.L94:
	movq	-368(%rbp), %rdi
	vzeroupper
	call	dummy
	movq	-440(%rbp), %rdi
	call	dummy
	movq	-376(%rbp), %rdi
	call	dummy
	cmpl	$2, -432(%rbp)
	jle	.L22
	leal	-2(%rbx), %eax
	movl	%eax, -112(%rbp)
	leal	(%rbx,%rbx,2), %eax
	movl	%eax, %esi
	imull	%r12d, %esi
	movl	%esi, -444(%rbp)
	movl	%ebx, %esi
	imull	%r12d, %esi
	movl	%esi, -448(%rbp)
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
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -440(%rbp)
	testl	%eax, %eax
	jne	.L40
	movq	-56(%rbp), %rax
	movq	%rax, -440(%rbp)
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
	movq	%rdi, %rsi
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
