	.file	"2d-1r-point-symmetric-constant-star-stencil.c_compilable.c"
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
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, %rbx
	subq	$288, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	movl	%r12d, %r14d
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %r13
	movslq	%r14d, %rcx
	leaq	0(,%rcx,8), %r15
	movq	%r15, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %rbx
	testl	%r14d, %r14d
	jle	.L3
	movq	%rbx, %rax
	movl	$5, %esi
	leal	-1(%r14), %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %ecx
	jb	.L37
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rbx)
	cmpl	$1, %eax
	je	.L39
	vmovsd	%xmm0, 8(%rbx)
	cmpl	$3, %eax
	jne	.L40
	vmovsd	%xmm0, 16(%rbx)
	movl	$3, %r8d
.L5:
	movl	%r14d, %edi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%rbx,%rax,8), %rdx
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
	je	.L75
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rbx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rbx,%rax,8)
.L8:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	movl	%ecx, -148(%rbp)
	call	posix_memalign
	movl	-148(%rbp), %ecx
	testl	%eax, %eax
	je	.L76
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %edi
	cmovg	%ecx, %eax
	cmovg	%r14d, %edi
	cmpl	$4, %eax
	ja	.L77
	xorl	%r15d, %r15d
	xorl	%eax, %eax
.L29:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r15,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L33
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
.L33:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -144(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -80(%rbp)
	leal	-1(%r13), %eax
	movl	%eax, -248(%rbp)
	testl	%edx, %edx
	jne	.L78
	cmpl	$1, -248(%rbp)
	jle	.L79
.L14:
	leal	-1(%r12), %eax
	movl	%eax, -172(%rbp)
	cmpl	$1, %eax
	jle	.L71
	movslq	%r12d, %rsi
	leaq	-144(%rbp), %rdi
	leaq	8(%rbx), %rcx
	movl	%r12d, -260(%rbp)
	leaq	0(,%rsi,8), %r13
	movq	%rdi, -296(%rbp)
	addq	$8, %rdi
	leaq	40(%r15,%r13), %rax
	movq	%rsi, -256(%rbp)
	leaq	8(%r15,%r13), %r14
	movq	%rax, -208(%rbp)
	leal	-2(%r12), %eax
	leaq	(%rbx,%r13), %r8
	movl	%eax, -200(%rbp)
	leaq	1(%rsi,%rax), %rax
	leaq	(%r15,%rax,8), %rax
	movq	%rsi, -232(%rbp)
	leaq	-112(%rbp), %rsi
	movq	%rax, -216(%rbp)
	leal	(%r12,%r12), %eax
	movl	%eax, -148(%rbp)
	cltq
	movq	%rcx, -224(%rbp)
	leaq	40(%rbx), %rcx
	movq	%rdi, -280(%rbp)
	leaq	-80(%rbp), %rdi
	movq	%rax, -328(%rbp)
	addq	$8, %rdi
	salq	$3, %rax
	movq	%rsi, -304(%rbp)
	addq	$8, %rsi
	movq	%rcx, -312(%rbp)
	leaq	48(%rbx), %rcx
	movq	%rax, -192(%rbp)
	leal	-3(%r12), %eax
	movq	%r13, -168(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -240(%rbp)
	movl	$0, -176(%rbp)
	movl	$1, -196(%rbp)
	movq	%rcx, -320(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdi, -288(%rbp)
	movl	%eax, -264(%rbp)
	leaq	8(,%rax,8), %rax
	movq	%rax, -336(%rbp)
	movl	%r12d, %eax
	movq	%r15, -160(%rbp)
	movq	%r13, %r15
	.p2align 4,,10
	.p2align 3
.L23:
	movq	-216(%rbp), %r11
	movq	-304(%rbp), %rsi
	addl	$1, -196(%rbp)
	cmpq	-272(%rbp), %r14
	setnb	%dil
	cmpq	%rsi, %r11
	movq	-208(%rbp), %r10
	movq	-184(%rbp), %r9
	setbe	%dl
	orl	%edx, %edi
	cmpq	-280(%rbp), %r14
	setnb	%sil
	cmpq	-296(%rbp), %r11
	setbe	%cl
	orl	%esi, %ecx
	andl	%edi, %ecx
	cmpl	$5, -200(%rbp)
	leaq	-80(%rbp), %rdi
	seta	%dl
	andl	%edx, %ecx
	cmpq	-288(%rbp), %r14
	setnb	%dl
	cmpq	%rdi, %r11
	movq	-312(%rbp), %rdi
	movq	-224(%rbp), %r11
	setbe	%sil
	orl	%esi, %edx
	andl	%edx, %ecx
	movq	-320(%rbp), %rdx
	addq	-168(%rbp), %rdx
	cmpq	%rdx, %r14
	setnb	%dl
	cmpq	%r10, %r8
	setnb	%sil
	orl	%esi, %edx
	movq	%r11, %rsi
	andl	%ecx, %edx
	movq	%rdi, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r9, %rsi
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L48
	movq	-192(%rbp), %rsi
	movq	%r11, %rdx
	addq	%rsi, %rdi
	cmpq	%rdi, %r14
	setnb	%cl
	addq	%rsi, %rdx
	cmpq	%rdx, %r10
	setbe	%dl
	orb	%dl, %cl
	je	.L48
	movq	-168(%rbp), %rcx
	addq	%r11, %rcx
	shrq	$3, %rcx
	negq	%rcx
	andl	$3, %ecx
	leal	3(%rcx), %edx
	cmpl	-264(%rbp), %edx
	ja	.L43
	movl	$1, -152(%rbp)
	testl	%ecx, %ecx
	je	.L17
	leal	1(%rax), %edi
	leal	2(%rax), %edx
	movl	-176(%rbp), %r13d
	movl	-148(%rbp), %r9d
	movslq	%edi, %rdi
	movslq	%edx, %rdx
	vmovsd	(%r8), %xmm0
	movl	$2, -152(%rbp)
	leaq	(%rbx,%rdi,8), %r10
	leaq	(%rbx,%rdx,8), %rsi
	addl	$1, %r9d
	vaddsd	(%rsi), %xmm0, %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm2
	leal	1(%r13), %r11d
	movslq	%r9d, %r9
	vmovsd	(%r10), %xmm0
	vmulsd	-144(%rbp), %xmm0, %xmm0
	movslq	%r11d, %r11
	vmovsd	(%rbx,%r11,8), %xmm1
	vaddsd	(%rbx,%r9,8), %xmm1, %xmm1
	vmulsd	-80(%rbp), %xmm1, %xmm1
	movq	-160(%rbp), %r11
	vaddsd	%xmm0, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%rdi,8)
	cmpl	$1, %ecx
	je	.L17
	leal	3(%rax), %r9d
	movl	-148(%rbp), %edi
	vmovsd	(%rsi), %xmm0
	leal	2(%r13), %r12d
	movslq	%r9d, %r9
	vmovsd	(%r10), %xmm2
	movslq	%r12d, %r12
	movq	-160(%rbp), %r10
	leaq	(%rbx,%r9,8), %r11
	addl	$2, %edi
	vmovsd	(%rbx,%r12,8), %xmm1
	movl	$3, -152(%rbp)
	vaddsd	(%r11), %xmm2, %xmm2
	vmulsd	-144(%rbp), %xmm0, %xmm0
	movslq	%edi, %rdi
	vmulsd	-112(%rbp), %xmm2, %xmm2
	vaddsd	(%rbx,%rdi,8), %xmm1, %xmm1
	vmulsd	-80(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%rdx,8)
	cmpl	$3, %ecx
	jne	.L17
	leal	4(%rax), %edx
	vmovsd	(%r11), %xmm0
	vmulsd	-144(%rbp), %xmm0, %xmm0
	movl	$4, -152(%rbp)
	movslq	%edx, %rdx
	movl	-148(%rbp), %edi
	vmovsd	(%rbx,%rdx,8), %xmm2
	vaddsd	(%rsi), %xmm2, %xmm2
	leal	3(%r13), %esi
	vmulsd	-112(%rbp), %xmm2, %xmm2
	leal	3(%rdi), %edx
	movslq	%esi, %rsi
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rsi,8), %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%r9,8)
.L17:
	movl	-200(%rbp), %esi
	movl	%ecx, %edx
	movq	-240(%rbp), %r10
	movq	-168(%rbp), %r9
	vbroadcastsd	-112(%rbp), %ymm3
	subl	%ecx, %esi
	movq	-232(%rbp), %rcx
	vbroadcastsd	-144(%rbp), %ymm4
	movl	%esi, %edi
	movl	%esi, -244(%rbp)
	leaq	(%r9,%rdx,8), %r9
	vbroadcastsd	-80(%rbp), %ymm2
	leaq	1(%rdx,%rcx), %rsi
	leaq	2(%rdx,%rcx), %rcx
	shrl	$2, %edi
	addq	%rbx, %r9
	leaq	(%rbx,%rcx,8), %r12
	leaq	1(%rdx,%r10), %rcx
	salq	$3, %rsi
	leaq	(%rbx,%rcx,8), %r11
	movq	-328(%rbp), %rcx
	leaq	(%rbx,%rsi), %r13
	addq	-160(%rbp), %rsi
	leaq	1(%r10,%rcx), %rcx
	addq	%rcx, %rdx
	xorl	%ecx, %ecx
	leaq	(%rbx,%rdx,8), %r10
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	vmovupd	(%r12,%rdx), %ymm1
	vaddpd	(%r9,%rdx), %ymm1, %ymm1
	addl	$1, %ecx
	vmulpd	0(%r13,%rdx), %ymm4, %ymm0
	vmulpd	%ymm3, %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r10,%rdx), %ymm0
	vaddpd	(%r11,%rdx), %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, (%rsi,%rdx)
	addq	$32, %rdx
	cmpl	%ecx, %edi
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-244(%rbp), %esi
	movl	-152(%rbp), %edi
	movl	%esi, %edx
	andl	$-4, %edx
	addl	%edx, %edi
	cmpl	%edx, %esi
	je	.L22
.L16:
	leal	1(%rdi), %edx
	leal	(%rax,%rdi), %esi
	movl	-176(%rbp), %r13d
	leal	(%rax,%rdx), %r9d
	leal	-1(%rdi,%rax), %ecx
	movslq	%esi, %rsi
	movslq	%r9d, %r9
	movslq	%ecx, %rcx
	vmovsd	(%rbx,%rsi,8), %xmm1
	leal	0(%r13,%rdi), %r10d
	leaq	(%rbx,%r9,8), %r12
	vmovsd	(%rbx,%rcx,8), %xmm2
	movl	-148(%rbp), %ecx
	movslq	%r10d, %r10
	vmulsd	-144(%rbp), %xmm1, %xmm0
	vaddsd	(%r12), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%r10,8), %xmm0
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-160(%rbp), %r10
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%rsi,8)
	cmpl	%edx, -172(%rbp)
	jle	.L22
	leal	2(%rdi), %ecx
	vmovsd	(%rbx,%rsi,8), %xmm2
	vmovsd	(%r12), %xmm0
	leal	0(%r13,%rdx), %esi
	leal	(%rax,%rcx), %r10d
	vmulsd	-144(%rbp), %xmm0, %xmm0
	addl	-148(%rbp), %edx
	movslq	%esi, %rsi
	movslq	%r10d, %r10
	movslq	%edx, %rdx
	leaq	(%rbx,%r10,8), %r11
	vaddsd	(%r11), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rsi,8), %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-160(%rbp), %rsi
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%r9,8)
	cmpl	%ecx, -172(%rbp)
	jle	.L22
	leal	3(%rdi), %edx
	vmovsd	(%rbx,%r9,8), %xmm2
	vmovsd	(%r11), %xmm0
	leal	0(%r13,%rcx), %r9d
	leal	(%rax,%rdx), %esi
	vmulsd	-144(%rbp), %xmm0, %xmm0
	addl	-148(%rbp), %ecx
	movslq	%r9d, %r9
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	leaq	(%rbx,%rsi,8), %r12
	vaddsd	(%r12), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%r9,8), %xmm0
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-160(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rcx,%r10,8)
	cmpl	%edx, -172(%rbp)
	jle	.L22
	leal	4(%rdi), %ecx
	vmovsd	(%rbx,%r10,8), %xmm2
	vmovsd	(%r12), %xmm0
	leal	0(%r13,%rdx), %r10d
	leal	(%rax,%rcx), %r9d
	vmulsd	-144(%rbp), %xmm0, %xmm0
	addl	-148(%rbp), %edx
	movslq	%r10d, %r10
	movslq	%r9d, %r9
	movslq	%edx, %rdx
	leaq	(%rbx,%r9,8), %r11
	vaddsd	(%r11), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%r10,8), %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-160(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%rsi,8)
	cmpl	%ecx, -172(%rbp)
	jle	.L22
	leal	5(%rdi), %edx
	vmovsd	(%rbx,%rsi,8), %xmm2
	vmovsd	(%r11), %xmm0
	movl	%r13d, %r11d
	leal	(%rax,%rdx), %r10d
	vmulsd	-144(%rbp), %xmm0, %xmm0
	leal	0(%r13,%rcx), %esi
	movl	-148(%rbp), %r13d
	movslq	%r10d, %r10
	movslq	%esi, %rsi
	leaq	(%rbx,%r10,8), %r12
	addl	%r13d, %ecx
	vaddsd	(%r12), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rsi,8), %xmm0
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-160(%rbp), %rsi
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%r9,8)
	cmpl	%edx, -172(%rbp)
	jle	.L22
	leal	6(%rdi,%rax), %ecx
	vmovsd	(%rbx,%r9,8), %xmm2
	vmovsd	(%r12), %xmm0
	vmulsd	-144(%rbp), %xmm0, %xmm0
	movslq	%ecx, %rcx
	vaddsd	(%rbx,%rcx,8), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	leal	(%r11,%rdx), %ecx
	addl	%r13d, %edx
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rcx,8), %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%r10,8)
.L22:
	movl	-260(%rbp), %edi
	movq	-256(%rbp), %rsi
	addq	%r15, %r14
	addq	%r15, %r8
	addq	%r15, -208(%rbp)
	movl	-196(%rbp), %ecx
	addq	%r15, -216(%rbp)
	addl	%edi, %eax
	addl	%edi, -176(%rbp)
	addl	%edi, -148(%rbp)
	addq	%rsi, -232(%rbp)
	addq	%r15, -168(%rbp)
	addq	%rsi, -240(%rbp)
	addq	%r15, -184(%rbp)
	addq	%r15, -192(%rbp)
	cmpl	%ecx, -248(%rbp)
	jg	.L23
	movq	-160(%rbp), %r15
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L72
	movq	%rbx, %rdi
	call	dummy
	movq	%r15, %rdi
	call	dummy
	leaq	-144(%rbp), %rdi
	call	dummy
	leaq	-112(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L72:
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
.L48:
	.cfi_restore_state
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rdi
	xorl	%edx, %edx
	movq	-184(%rbp), %rcx
	movq	-336(%rbp), %r9
	addq	%rsi, %rdi
	movq	-192(%rbp), %rsi
	addq	%rbx, %rcx
	addq	%rbx, %rsi
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%r8,%rdx), %xmm1
	vaddsd	16(%r8,%rdx), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm2
	vmovsd	-144(%rbp), %xmm1
	vmulsd	8(%r8,%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%rsi,%rdx), %xmm0
	vaddsd	8(%rcx,%rdx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rdi,%rdx)
	addq	$8, %rdx
	cmpq	%r9, %rdx
	jne	.L21
	jmp	.L22
.L43:
	movl	$1, %edi
	jmp	.L16
.L76:
	movq	-80(%rbp), %r15
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%r15, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	cmovle	%eax, %ecx
	movl	%ecx, %r8d
	leal	3(%rdx), %ecx
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r8d
	jb	.L29
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %edx
	je	.L41
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %edx
	jne	.L42
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	vmovapd	.LC3(%rip), %ymm0
	leaq	(%r15,%rdx,8), %rcx
	xorl	%edx, %edx
	movl	%edi, %esi
	shrl	$2, %esi
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
	jne	.L29
	jmp	.L33
.L78:
	movq	%rbx, %rdi
	vzeroupper
	call	dummy
	movq	%r15, %rdi
	call	dummy
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$1, -248(%rbp)
	jg	.L14
	jmp	.L15
.L39:
	movl	$1, %r8d
	jmp	.L5
.L77:
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	jmp	.L9
.L41:
	movl	$1, %eax
	jmp	.L9
.L75:
	vzeroupper
	jmp	.L8
.L3:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	xorl	%r15d, %r15d
	call	posix_memalign
	testl	%eax, %eax
	jne	.L33
	movq	-80(%rbp), %r15
	jmp	.L33
.L71:
	vzeroupper
	jmp	.L15
.L42:
	movl	$2, %eax
	jmp	.L9
.L40:
	movl	$2, %r8d
	jmp	.L5
.L79:
	vzeroupper
	jmp	.L72
.L37:
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
