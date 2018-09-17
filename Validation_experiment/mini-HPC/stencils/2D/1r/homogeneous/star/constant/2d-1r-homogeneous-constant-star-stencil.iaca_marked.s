	.file	"2d-1r-homogeneous-constant-star-stencil.c_compilable.c"
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
	subq	$224, %rsp
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
	movl	%ecx, -88(%rbp)
	call	posix_memalign
	movl	-88(%rbp), %ecx
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
	movq	%rax, -80(%rbp)
	leal	-1(%r13), %eax
	movl	%eax, -172(%rbp)
	testl	%edx, %edx
	jne	.L78
	cmpl	$1, -172(%rbp)
	jle	.L79
.L14:
	leal	-1(%r12), %eax
	movl	%eax, -96(%rbp)
	cmpl	$1, %eax
	jle	.L71
	movslq	%r12d, %rax
	leal	-2(%r12), %edx
	movl	%r12d, -176(%rbp)
	xorl	%r14d, %r14d
	leaq	0(,%rax,8), %r13
	movl	%edx, -164(%rbp)
	addq	%rax, %rdx
	leaq	8(%r15,%r13), %rdi
	movq	%r13, -88(%rbp)
	leaq	(%rbx,%r13), %r8
	movq	%rdi, -128(%rbp)
	leaq	40(%r15,%r13), %rdi
	movq	%rdi, -136(%rbp)
	leal	(%r12,%r12), %edi
	movl	%edi, -108(%rbp)
	movslq	%edi, %rdi
	movq	%rdi, -240(%rbp)
	salq	$3, %rdi
	movq	%rdi, -120(%rbp)
	movq	%rax, %rdi
	movq	%rdi, -152(%rbp)
	leaq	8(%rbx), %rdi
	movq	%rdi, -144(%rbp)
	leaq	40(%rbx), %rdi
	movq	%rdi, -208(%rbp)
	leaq	8(%r15,%rdx,8), %rdi
	movq	%rdi, -200(%rbp)
	leaq	48(%rbx), %rdi
	movq	%rdi, -216(%rbp)
	leaq	-80(%rbp), %rdi
	addq	$8, %rdi
	movq	%rax, -184(%rbp)
	leal	-3(%r12), %eax
	movq	$0, -104(%rbp)
	movq	$0, -160(%rbp)
	movl	$1, -112(%rbp)
	movq	%rdi, -192(%rbp)
	movq	%r13, -224(%rbp)
	movl	%eax, -228(%rbp)
	leaq	8(,%rax,8), %rax
	movq	%rax, -248(%rbp)
	movl	%r12d, %eax
	.p2align 4,,10
	.p2align 3
.L23:
	movq	-104(%rbp), %r9
	leaq	-80(%rbp), %rdi
	addl	$1, -112(%rbp)
	movq	-200(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movq	-136(%rbp), %r13
	movq	-208(%rbp), %r11
	addq	%r9, %rdx
	movq	-144(%rbp), %r10
	cmpq	%rdx, %rdi
	movq	-128(%rbp), %rdi
	setnb	%cl
	cmpq	%rsi, %rdi
	setnb	%dl
	orl	%ecx, %edx
	cmpl	$5, -164(%rbp)
	seta	%cl
	andl	%ecx, %edx
	movq	-216(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rdi
	setnb	%cl
	cmpq	%r13, %r8
	setnb	%sil
	orl	%esi, %ecx
	movq	%r10, %rsi
	andl	%ecx, %edx
	movq	%r11, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %rdi
	setnb	%cl
	addq	%r9, %rsi
	cmpq	%rsi, %r13
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %dl
	je	.L48
	movq	-120(%rbp), %rsi
	movq	%r11, %rdx
	addq	%rsi, %rdx
	cmpq	%rdx, %rdi
	movq	%r10, %rdx
	setnb	%cl
	addq	%rsi, %rdx
	cmpq	%rdx, %r13
	setbe	%dl
	orb	%dl, %cl
	je	.L48
	movq	-88(%rbp), %rcx
	addq	%r10, %rcx
	shrq	$3, %rcx
	negq	%rcx
	andl	$3, %ecx
	leal	3(%rcx), %edx
	cmpl	-228(%rbp), %edx
	ja	.L43
	movl	$1, -92(%rbp)
	testl	%ecx, %ecx
	je	.L17
	leal	1(%rax), %edi
	leal	2(%rax), %edx
	movl	-108(%rbp), %r12d
	movl	$2, -92(%rbp)
	movslq	%edi, %rdi
	movslq	%edx, %rdx
	leal	1(%r14), %r9d
	movslq	%r9d, %r9
	leaq	(%rbx,%rdi,8), %r10
	leaq	(%rbx,%rdx,8), %rsi
	vmovsd	(%r10), %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	leal	1(%r12), %r9d
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r15,%rdi,8)
	cmpl	$1, %ecx
	je	.L17
	leal	3(%rax), %r9d
	leal	2(%r14), %edi
	vmovsd	(%rsi), %xmm0
	movl	$3, -92(%rbp)
	movslq	%r9d, %r9
	movslq	%edi, %rdi
	vaddsd	(%r10), %xmm0, %xmm0
	leaq	(%rbx,%r9,8), %r11
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%rbx,%rdi,8), %xmm0, %xmm0
	leal	2(%r12), %edi
	movslq	%edi, %rdi
	vaddsd	(%rbx,%rdi,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r15,%rdx,8)
	cmpl	$3, %ecx
	jne	.L17
	leal	4(%rax), %edx
	vmovsd	(%rsi), %xmm0
	vaddsd	(%r11), %xmm0, %xmm0
	movl	$4, -92(%rbp)
	movslq	%edx, %rdx
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	leal	3(%r14), %edx
	movslq	%edx, %rdx
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	leal	3(%r12), %edx
	movslq	%edx, %rdx
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r15,%r9,8)
.L17:
	movl	-164(%rbp), %esi
	movl	%ecx, %edx
	movq	-88(%rbp), %r11
	movq	-160(%rbp), %r10
	vbroadcastsd	-80(%rbp), %ymm1
	subl	%ecx, %esi
	movq	-152(%rbp), %rcx
	leaq	(%r11,%rdx,8), %r9
	movl	%esi, %edi
	movl	%esi, -168(%rbp)
	addq	%rbx, %r9
	leaq	1(%rdx,%rcx), %rsi
	leaq	2(%rdx,%rcx), %rcx
	shrl	$2, %edi
	leaq	(%rbx,%rcx,8), %r12
	leaq	1(%rdx,%r10), %rcx
	salq	$3, %rsi
	leaq	(%rbx,%rcx,8), %r11
	movq	-240(%rbp), %rcx
	leaq	(%rbx,%rsi), %r13
	addq	%r15, %rsi
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
	vmovupd	(%r9,%rdx), %ymm0
	vaddpd	0(%r13,%rdx), %ymm0, %ymm0
	addl	$1, %ecx
	vaddpd	(%r12,%rdx), %ymm0, %ymm0
	vaddpd	(%r11,%rdx), %ymm0, %ymm0
	vaddpd	(%r10,%rdx), %ymm0, %ymm0
	vmulpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%rsi,%rdx)
	addq	$32, %rdx
	cmpl	%ecx, %edi
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-168(%rbp), %esi
	movl	-92(%rbp), %edi
	movl	%esi, %edx
	andl	$-4, %edx
	addl	%edx, %edi
	cmpl	%edx, %esi
	je	.L22
.L16:
	leal	1(%rdi), %edx
	leal	-1(%rdi,%rax), %ecx
	movl	-108(%rbp), %r13d
	movslq	%ecx, %rcx
	leal	(%rdx,%rax), %r9d
	leal	(%rax,%rdi), %esi
	vmovsd	(%rbx,%rcx,8), %xmm0
	movslq	%r9d, %r9
	leal	(%r14,%rdi), %ecx
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	leaq	(%rbx,%r9,8), %r12
	vaddsd	(%rbx,%rsi,8), %xmm0, %xmm0
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	leal	0(%r13,%rdi), %ecx
	movslq	%ecx, %rcx
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r15,%rsi,8)
	cmpl	%edx, -96(%rbp)
	jle	.L22
	leal	2(%rdi), %ecx
	vmovsd	(%rbx,%rsi,8), %xmm0
	leal	(%rdx,%r14), %esi
	addl	%r13d, %edx
	leal	(%rax,%rcx), %r10d
	movslq	%esi, %rsi
	vaddsd	(%r12), %xmm0, %xmm0
	movslq	%edx, %rdx
	movslq	%r10d, %r10
	leaq	(%rbx,%r10,8), %r11
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%rbx,%rsi,8), %xmm0, %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r15,%r9,8)
	cmpl	%ecx, -96(%rbp)
	jle	.L22
	leal	3(%rdi), %edx
	vmovsd	(%rbx,%r9,8), %xmm0
	leal	(%r14,%rcx), %r9d
	addl	%r13d, %ecx
	leal	(%rax,%rdx), %esi
	movslq	%r9d, %r9
	vaddsd	(%r11), %xmm0, %xmm0
	movslq	%ecx, %rcx
	movslq	%esi, %rsi
	leaq	(%rbx,%rsi,8), %r12
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r15,%r10,8)
	cmpl	%edx, -96(%rbp)
	jle	.L22
	leal	4(%rdi), %ecx
	vmovsd	(%rbx,%r10,8), %xmm0
	leal	(%r14,%rdx), %r10d
	addl	%r13d, %edx
	leal	(%rax,%rcx), %r9d
	movslq	%r10d, %r10
	vaddsd	(%r12), %xmm0, %xmm0
	movslq	%edx, %rdx
	movslq	%r9d, %r9
	leaq	(%rbx,%r9,8), %r11
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%rbx,%r10,8), %xmm0, %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r15,%rsi,8)
	cmpl	%ecx, -96(%rbp)
	jle	.L22
	leal	5(%rdi), %edx
	vmovsd	(%rbx,%rsi,8), %xmm0
	leal	(%r14,%rcx), %esi
	addl	%r13d, %ecx
	leal	(%rax,%rdx), %r10d
	movslq	%esi, %rsi
	vaddsd	(%r11), %xmm0, %xmm0
	movslq	%ecx, %rcx
	movslq	%r10d, %r10
	leaq	(%rbx,%r10,8), %r12
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%rbx,%rsi,8), %xmm0, %xmm0
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r15,%r9,8)
	cmpl	%edx, -96(%rbp)
	jle	.L22
	leal	6(%rdi,%rax), %ecx
	vmovsd	(%rbx,%r9,8), %xmm0
	vaddsd	(%r12), %xmm0, %xmm0
	movslq	%ecx, %rcx
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	leal	(%r14,%rdx), %ecx
	addl	%r13d, %edx
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	vaddsd	(%rbx,%rcx,8), %xmm0, %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r15,%r10,8)
.L22:
	movq	-224(%rbp), %rdi
	movl	-176(%rbp), %esi
	movq	-184(%rbp), %rcx
	addl	%esi, -108(%rbp)
	addl	%esi, %eax
	addl	%esi, %r14d
	addq	%rdi, -128(%rbp)
	addq	%rdi, %r8
	addq	%rdi, -136(%rbp)
	movl	-112(%rbp), %esi
	addq	%rcx, -152(%rbp)
	addq	%rdi, -88(%rbp)
	addq	%rcx, -160(%rbp)
	addq	%rdi, -104(%rbp)
	addq	%rdi, -120(%rbp)
	cmpl	%esi, -172(%rbp)
	jg	.L23
.L71:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L72
	movq	%rbx, %rdi
	call	dummy
	movq	%r15, %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L72:
	addq	$224, %rsp
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
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rdi
	xorl	%edx, %edx
	movq	-248(%rbp), %r9
	leaq	(%rbx,%rcx), %rsi
	movq	-120(%rbp), %rcx
	addq	%r15, %rdi
	addq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%r8,%rdx), %xmm0
	vaddsd	8(%r8,%rdx), %xmm0, %xmm0
	vaddsd	16(%r8,%rdx), %xmm0, %xmm0
	vaddsd	8(%rsi,%rdx), %xmm0, %xmm0
	vaddsd	8(%rcx,%rdx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
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
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$1, -172(%rbp)
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
