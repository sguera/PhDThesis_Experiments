	.file	"2d-2r-isotropic-variable-star-stencil.c_compilable.c"
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
	subq	$288, %rsp
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
	leaq	-56(%rbp), %rdi
	imull	%eax, %r13d
	movq	%rax, %r12
	movslq	%r13d, %r14
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r15
	testl	%r13d, %r13d
	jle	.L3
	movq	%r15, %rax
	movl	$5, %ecx
	leal	-1(%r13), %r8d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r8d
	jb	.L43
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L45
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L46
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
	je	.L85
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
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movl	%r8d, -68(%rbp)
	call	posix_memalign
	movl	-68(%rbp), %r8d
	testl	%eax, %eax
	je	.L86
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovg	%r8d, %eax
	cmovg	%r13d, %edi
	cmpl	$4, %eax
	ja	.L87
	movq	$0, -120(%rbp)
	xorl	%eax, %eax
.L35:
	vmovsd	.LC2(%rip), %xmm0
	movq	-120(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L39
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L39
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L39
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L39
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L39
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L39:
	leal	0(%r13,%r13,2), %r13d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movslq	%r13d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r11
	movq	%r11, -80(%rbp)
	testl	%r13d, %r13d
	jle	.L14
	movq	%r11, %rax
	movl	$5, %esi
	leal	-1(%r13), %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %ecx
	jb	.L49
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L16
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%r11)
	cmpl	$1, %eax
	je	.L51
	vmovsd	%xmm0, 8(%r11)
	cmpl	$3, %eax
	jne	.L52
	vmovsd	%xmm0, 16(%r11)
	movl	$3, %edi
.L16:
	movl	%r13d, %esi
	movq	-80(%rbp), %rdx
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
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-2(%r12), %eax
	movl	%eax, -192(%rbp)
	testl	%edx, %edx
	jne	.L88
	cmpl	$2, -192(%rbp)
	jle	.L89
.L21:
	leal	(%rbx,%rbx), %edi
	leal	-2(%rbx), %eax
	movl	%ebx, -208(%rbp)
	leal	(%rdi,%rbx), %ecx
	movl	%eax, -204(%rbp)
	movl	%edi, -212(%rbp)
	movl	%ecx, -216(%rbp)
	cmpl	$2, %eax
	jle	.L81
	movslq	%ebx, %rax
	leal	-4(%rbx), %esi
	movq	-80(%rbp), %r13
	movslq	%edi, %rdi
	leaq	0(,%rax,8), %r14
	movslq	%ecx, %rax
	addl	%ecx, %ecx
	movq	%rsi, %r9
	leaq	0(,%rax,8), %r12
	movslq	%ecx, %rax
	movq	-120(%rbp), %r10
	movl	%ecx, -88(%rbp)
	leaq	6(%rsi,%rsi,2), %r8
	movl	%esi, -188(%rbp)
	leaq	2(%rdi,%rsi), %rsi
	addq	%rax, %r8
	salq	$3, %rax
	leaq	16(,%rdi,8), %rdx
	leaq	(%r10,%rsi,8), %rdi
	movq	%rax, -152(%rbp)
	movl	%r9d, %eax
	andl	$-4, %r9d
	leaq	-16(%rdx), %rcx
	shrl	$2, %eax
	leaq	(%r10,%rdx), %r11
	leaq	0(%r13,%r8,8), %r8
	movq	%rcx, -104(%rbp)
	movl	%eax, -68(%rbp)
	leal	2(%r9), %eax
	movl	%eax, -292(%rbp)
	leaq	48(%r13), %rax
	movq	%rax, -248(%rbp)
	leaq	16(%r15), %rax
	movq	%rax, -200(%rbp)
	leaq	48(%r15), %rax
	movq	%rax, -240(%rbp)
	leaq	64(%r15), %rax
	movq	%rdi, -176(%rbp)
	leaq	32(%r10,%rdx), %rdi
	leal	0(,%rbx,4), %edx
	movq	%rax, -256(%rbp)
	leaq	8(%r15), %rax
	movslq	%edx, %rdx
	movq	%rdi, -184(%rbp)
	leaq	(%r15,%r14), %rdi
	leaq	0(,%rdx,8), %rcx
	movq	%rax, -272(%rbp)
	leaq	24(%r15), %rax
	movq	%rdi, -128(%rbp)
	leal	-5(%rbx), %edi
	movq	%rax, -280(%rbp)
	leaq	32(%r15), %rax
	movq	%rax, -288(%rbp)
	movl	%edi, %eax
	addq	$3, %rax
	movq	%r14, -224(%rbp)
	movq	%r12, -232(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r12, -144(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%edi, -260(%rbp)
	movl	%r9d, -264(%rbp)
	movq	%r15, -136(%rbp)
	movl	$2, -156(%rbp)
	movl	$0, -72(%rbp)
	movq	%rax, -312(%rbp)
	movl	-72(%rbp), %eax
	.p2align 4,,10
	.p2align 3
.L28:
	movl	-212(%rbp), %edi
	movl	-208(%rbp), %ecx
	movq	-136(%rbp), %rbx
	movq	-144(%rbp), %r13
	addl	%edi, %eax
	movq	-128(%rbp), %rsi
	movq	-104(%rbp), %r12
	movl	%eax, -108(%rbp)
	subl	%ecx, %eax
	movq	-184(%rbp), %r14
	leaq	16(%rbx), %r9
	addl	%eax, %edi
	movl	%eax, -84(%rbp)
	movq	-200(%rbp), %rax
	addl	%edi, %ecx
	movq	-248(%rbp), %rdx
	addq	-152(%rbp), %rdx
	movl	%edi, -112(%rbp)
	movq	%rax, %r8
	addq	-96(%rbp), %rax
	leaq	16(%rsi), %rdi
	addl	$1, -156(%rbp)
	movq	%rax, %r10
	leaq	48(%rbx), %rax
	addq	%r13, %r8
	movl	%ecx, -160(%rbp)
	cmpq	%rax, %r11
	leaq	(%r15,%r12), %rcx
	setnb	%bl
	cmpq	%r9, %r14
	setbe	%al
	orl	%eax, %ebx
	leaq	48(%rsi), %rax
	cmpq	%rax, %r11
	setnb	%sil
	cmpq	%rdi, %r14
	setbe	%al
	orl	%esi, %eax
	andl	%ebx, %eax
	cmpl	$3, -188(%rbp)
	seta	%sil
	andl	%esi, %eax
	cmpq	%rdx, -176(%rbp)
	setbe	%sil
	cmpq	-168(%rbp), %r11
	setnb	%bl
	orl	%ebx, %esi
	andl	%esi, %eax
	movq	-256(%rbp), %rsi
	addq	%r12, %rsi
	movq	-240(%rbp), %r12
	cmpq	%rsi, %r11
	setnb	%sil
	cmpq	%rcx, %r14
	setbe	%bl
	orl	%ebx, %esi
	andl	%esi, %eax
	movq	%r12, %rsi
	addq	%r13, %rsi
	cmpq	%rsi, %r11
	setnb	%sil
	cmpq	%r8, %r14
	setbe	%bl
	orl	%ebx, %esi
	testb	%sil, %al
	je	.L32
	movq	-96(%rbp), %rax
	addq	%r12, %rax
	cmpq	%rax, %r11
	setnb	%sil
	cmpq	%r10, %r14
	setbe	%al
	orb	%al, %sil
	je	.L32
	cmpl	$2, -260(%rbp)
	jbe	.L53
	movq	-104(%rbp), %rax
	movq	-200(%rbp), %r14
	xorl	%esi, %esi
	movq	-272(%rbp), %r13
	movq	-280(%rbp), %r12
	movq	-288(%rbp), %rbx
	addq	%rax, %r14
	addq	%rax, %r13
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
	vmovupd	(%rdx), %ymm1
	vmovupd	64(%rdx), %ymm0
	addl	$1, %esi
	addq	$96, %rdx
	vmovupd	(%r8,%rax), %ymm6
	vmovupd	(%r12,%rax), %ymm5
	vaddpd	(%rdi,%rax), %ymm6, %ymm3
	vaddpd	0(%r13,%rax), %ymm5, %ymm5
	vmovupd	-64(%rdx), %ymm2
	vaddpd	%ymm3, %ymm5, %ymm6
	vperm2f128	$48, %ymm2, %ymm1, %ymm4
	vpermpd	$164, %ymm0, %ymm5
	vperm2f128	$2, %ymm2, %ymm1, %ymm3
	vshufpd	$5, %ymm3, %ymm4, %ymm3
	vblendpd	$8, %ymm5, %ymm3, %ymm3
	vmulpd	%ymm3, %ymm6, %ymm5
	vpermpd	$78, %ymm1, %ymm3
	vshufpd	$2, %ymm3, %ymm4, %ymm3
	vperm2f128	$33, %ymm0, %ymm3, %ymm4
	vpalignr	$8, %ymm2, %ymm1, %ymm1
	vblendpd	$8, %ymm4, %ymm3, %ymm3
	vmovupd	(%rbx,%rax), %ymm4
	vpermpd	$83, %ymm1, %ymm1
	vmulpd	(%r14,%rax), %ymm3, %ymm3
	vinsertf128	$1, %xmm0, %ymm1, %ymm1
	vblendpd	$7, %ymm1, %ymm0, %ymm0
	vaddpd	%ymm3, %ymm5, %ymm3
	vaddpd	(%rcx,%rax), %ymm4, %ymm5
	vmovupd	(%r10,%rax), %ymm4
	vaddpd	(%r9,%rax), %ymm4, %ymm4
	vaddpd	%ymm4, %ymm5, %ymm4
	vmulpd	%ymm0, %ymm4, %ymm0
	vaddpd	%ymm0, %ymm3, %ymm0
	vmovupd	%ymm0, (%r11,%rax)
	addq	$32, %rax
	cmpl	%esi, -68(%rbp)
	ja	.L24
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-188(%rbp), %ecx
	cmpl	%ecx, -264(%rbp)
	je	.L27
	movl	-292(%rbp), %eax
.L23:
	movl	-84(%rbp), %ecx
	movl	-108(%rbp), %r14d
	leal	1(%rax), %edx
	leal	(%rax,%rax,2), %r9d
	movl	-88(%rbp), %r13d
	movq	-80(%rbp), %rbx
	leal	(%rax,%rcx), %r8d
	movl	-112(%rbp), %ecx
	leal	(%rdx,%r14), %edi
	movslq	%r8d, %r8
	leal	(%rax,%r14), %esi
	leal	-2(%rax,%r14), %r10d
	movslq	%edi, %rdi
	vmovsd	(%r15,%r8,8), %xmm1
	addl	%eax, %ecx
	leal	-1(%rax,%r14), %r8d
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	leaq	(%r15,%rdi,8), %r12
	movslq	%r8d, %r8
	movslq	%r10d, %r10
	vaddsd	(%r15,%rcx,8), %xmm1, %xmm1
	vmovsd	(%r15,%r8,8), %xmm0
	leal	1(%r13,%r9), %ecx
	vaddsd	(%r12), %xmm0, %xmm0
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	(%rbx,%rcx,8), %xmm1, %xmm2
	leal	0(%r13,%r9), %ecx
	movslq	%ecx, %rcx
	leal	2(%r13,%r9), %r9d
	vmovsd	(%rbx,%rcx,8), %xmm0
	vmulsd	(%r15,%rsi,8), %xmm0, %xmm0
	leal	2(%rax), %ecx
	movslq	%r9d, %r9
	addl	%ecx, %r14d
	movslq	%r14d, %r14
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%r10,8), %xmm2
	movl	-72(%rbp), %r10d
	vaddsd	(%r15,%r14,8), %xmm2, %xmm2
	leal	(%r10,%rax), %ebx
	movl	-160(%rbp), %r10d
	movslq	%ebx, %rbx
	addl	%eax, %r10d
	vmovsd	(%r15,%rbx,8), %xmm0
	movslq	%r10d, %r10
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	movq	-80(%rbp), %r10
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%r10,%r9,8), %xmm0, %xmm0
	movq	-120(%rbp), %r9
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r9,%rsi,8)
	cmpl	-204(%rbp), %edx
	jge	.L27
	leaq	(%r15,%r14,8), %r10
	movl	-84(%rbp), %r13d
	leal	(%rdx,%rdx,2), %r9d
	vmovsd	(%r15,%rsi,8), %xmm0
	movq	%r10, -304(%rbp)
	movl	-112(%rbp), %r10d
	leal	(%rdx,%r13), %ebx
	movq	-80(%rbp), %r13
	addl	%edx, %r10d
	movslq	%ebx, %rbx
	movslq	%r10d, %r10
	vmovsd	(%r15,%rbx,8), %xmm1
	movl	-88(%rbp), %ebx
	vaddsd	(%r15,%r10,8), %xmm1, %xmm1
	leaq	(%r15,%r14,8), %r10
	vaddsd	(%r10), %xmm0, %xmm0
	leal	1(%rbx,%r9), %r10d
	movslq	%r10d, %r10
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	0(%r13,%r10,8), %xmm1, %xmm2
	leal	(%rbx,%r9), %r10d
	movslq	%r10d, %r10
	vmovsd	0(%r13,%r10,8), %xmm0
	vmulsd	(%r12), %xmm0, %xmm0
	movl	-160(%rbp), %r13d
	movl	-108(%rbp), %r12d
	leal	3(%rax,%r12), %r10d
	movslq	%r10d, %r10
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%r8,8), %xmm2
	movl	-72(%rbp), %r8d
	vaddsd	(%r15,%r10,8), %xmm2, %xmm2
	addl	%edx, %r8d
	addl	%r13d, %edx
	movslq	%edx, %rdx
	movslq	%r8d, %r8
	vmovsd	(%r15,%r8,8), %xmm0
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	leal	2(%rbx,%r9), %edx
	movq	-80(%rbp), %r9
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%r9,%rdx,8), %xmm0, %xmm0
	movq	-120(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%rdi,8)
	cmpl	-204(%rbp), %ecx
	jge	.L27
	vmovsd	(%r15,%r10,8), %xmm3
	movl	-112(%rbp), %r8d
	leal	(%rcx,%rcx,2), %edx
	leal	4(%rax,%r12), %eax
	vaddsd	(%r15,%rdi,8), %xmm3, %xmm3
	movl	-84(%rbp), %edi
	cltq
	addl	%ecx, %r8d
	addl	%ecx, %edi
	movslq	%r8d, %r8
	movslq	%edi, %rdi
	vmovsd	(%r15,%r8,8), %xmm0
	leaq	(%r15,%r14,8), %r8
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	leal	1(%rbx,%rdx), %edi
	movslq	%edi, %rdi
	vaddsd	%xmm0, %xmm3, %xmm0
	vmulsd	(%r9,%rdi,8), %xmm0, %xmm2
	leal	(%rbx,%rdx), %edi
	movslq	%edi, %rdi
	vmovsd	(%r9,%rdi,8), %xmm0
	vmulsd	(%r8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%rax,8), %xmm2
	movl	%r13d, %eax
	vaddsd	(%r15,%rsi,8), %xmm2, %xmm2
	addl	%ecx, %eax
	addl	-72(%rbp), %ecx
	cltq
	movslq	%ecx, %rcx
	vmovsd	(%r15,%rax,8), %xmm0
	vaddsd	(%r15,%rcx,8), %xmm0, %xmm0
	leal	2(%rbx,%rdx), %eax
	cltq
	movq	-120(%rbp), %rdx
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	(%r9,%rax,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r14,8)
.L27:
	movq	-224(%rbp), %rax
	addq	%rax, -176(%rbp)
	addq	%rax, -184(%rbp)
	movq	-232(%rbp), %rcx
	addq	%rax, %r11
	addq	%rax, -128(%rbp)
	movl	-216(%rbp), %edi
	addq	%rax, -136(%rbp)
	addq	%rax, -104(%rbp)
	addq	%rax, -144(%rbp)
	addq	%rax, -96(%rbp)
	movl	-84(%rbp), %eax
	addq	%rcx, -168(%rbp)
	addq	%rcx, -152(%rbp)
	movl	-156(%rbp), %ecx
	addl	%edi, -88(%rbp)
	movl	%eax, -72(%rbp)
	cmpl	%ecx, -192(%rbp)
	jg	.L28
.L81:
	vzeroupper
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L82
	movq	%r15, %rdi
	call	dummy
	movq	-120(%rbp), %rdi
	call	dummy
	movq	-80(%rbp), %rdi
	call	dummy
.L82:
	addq	$288, %rsp
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
.L32:
	.cfi_restore_state
	movq	-120(%rbp), %rdi
	movq	-104(%rbp), %rbx
	movl	$2, %eax
	movq	-128(%rbp), %r9
	movq	-136(%rbp), %r10
	leaq	(%rdi,%rbx), %r8
	movq	-96(%rbp), %rbx
	movq	-144(%rbp), %rdi
	movq	-80(%rbp), %rdx
	addq	-152(%rbp), %rdx
	leaq	(%r15,%rbx), %rsi
	movq	-312(%rbp), %rbx
	addq	%r15, %rdi
	.p2align 4,,10
	.p2align 3
.L26:
	vmovsd	(%rdi,%rax,8), %xmm1
	vmovsd	24(%rcx), %xmm0
	addq	$24, %rdx
	addq	$8, %rcx
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%r9,%rax,8), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	32(%rdx), %xmm1, %xmm2
	vmovsd	8(%rcx), %xmm1
	vmulsd	24(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rsi,%rax,8), %xmm2
	vmovsd	24(%rcx), %xmm0
	vaddsd	(%r10,%rax,8), %xmm2, %xmm2
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	40(%rdx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rax,8)
	addq	$1, %rax
	cmpq	%rbx, %rax
	jne	.L26
	jmp	.L27
.L53:
	movl	$2, %eax
	jmp	.L23
.L86:
	movq	-56(%rbp), %rcx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rcx, -120(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r13d, %r13d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r8d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r8d
	jb	.L35
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	movq	-120(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L47
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L48
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	movq	-120(%rbp), %rcx
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
	je	.L90
	vzeroupper
	jmp	.L35
.L88:
	movq	%r15, %rdi
	vzeroupper
	call	dummy
	movq	-120(%rbp), %rdi
	call	dummy
	movq	-80(%rbp), %rdi
	call	dummy
	cmpl	$2, -192(%rbp)
	jg	.L21
	jmp	.L22
.L45:
	movl	$1, %edi
	jmp	.L5
.L87:
	xorl	%edx, %edx
	movq	$0, -120(%rbp)
	xorl	%eax, %eax
	jmp	.L9
.L47:
	movl	$1, %eax
	jmp	.L9
.L90:
	vzeroupper
	jmp	.L39
.L51:
	movl	$1, %edi
	jmp	.L16
.L85:
	vzeroupper
	jmp	.L8
.L3:
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -120(%rbp)
	testl	%eax, %eax
	jne	.L39
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.L39
.L46:
	movl	$2, %edi
	jmp	.L5
.L48:
	movl	$2, %eax
	jmp	.L9
.L52:
	movl	$2, %edi
	jmp	.L16
.L89:
	vzeroupper
	jmp	.L82
.L43:
	xorl	%eax, %eax
	jmp	.L4
.L49:
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
