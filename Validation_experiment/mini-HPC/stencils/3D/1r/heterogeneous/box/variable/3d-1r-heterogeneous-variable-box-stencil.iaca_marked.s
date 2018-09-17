	.file	"3d-1r-heterogeneous-variable-box-stencil.c_compilable.c"
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$10, %edx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	movq	%rsi, %r13
	pushq	%r12
	pushq	%r10
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset 12, -48
	.cfi_offset 10, -56
	.cfi_offset 3, -64
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
	movl	%ebx, %r14d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %r13
	imull	%r12d, %r14d
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
	movq	%rdi, -208(%rbp)
	testl	%r14d, %r14d
	jle	.L3
	movq	%rdi, %rax
	movl	$5, %esi
	leal	-1(%r14), %r15d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%r15d, %edx
	ja	.L39
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rdi)
	cmpl	$1, %eax
	je	.L41
	vmovsd	%xmm0, 8(%rdi)
	cmpl	$3, %eax
	jne	.L42
	vmovsd	%xmm0, 16(%rdi)
	movl	$3, %r8d
.L5:
	movl	%r14d, %edi
	movq	-208(%rbp), %rdx
	vmovapd	.LC1(%rip), %ymm0
	subl	%eax, %edi
	movl	%edi, %esi
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
	shrl	$2, %esi
	.p2align 4,,10
	.p2align 3
.L7:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%esi, %eax
	jb	.L7
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%r8), %eax
	cmpl	%edi, %edx
	je	.L76
	vzeroupper
	movq	-208(%rbp), %rsi
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
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L77
	testl	%r14d, %r14d
	movl	$1, %eax
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	cmpl	$4, %r15d
	ja	.L78
	movq	$0, -200(%rbp)
	xorl	%eax, %eax
.L29:
	vmovsd	.LC2(%rip), %xmm0
	movq	-200(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L33
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L33:
	leal	(%r14,%r14,2), %eax
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	leal	(%rax,%rax,8), %r14d
	movslq	%r14d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %rsi
	movq	%rsi, -256(%rbp)
	testl	%r14d, %r14d
	jle	.L14
	movq	%rsi, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	leal	-1(%r14), %ecx
	cmpl	%ecx, %edx
	ja	.L45
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L16
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rsi)
	cmpl	$1, %eax
	je	.L47
	vmovsd	%xmm0, 8(%rsi)
	cmpl	$3, %eax
	jne	.L48
	vmovsd	%xmm0, 16(%rsi)
	movl	$3, %edi
.L16:
	movl	%r14d, %esi
	movq	-256(%rbp), %rdx
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
	cmpl	%ecx, %eax
	jb	.L18
	movl	%esi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rdi), %eax
	cmpl	%esi, %edx
	je	.L79
	vzeroupper
	movq	-256(%rbp), %rcx
.L15:
	vmovsd	.LC4(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%r14d, %edx
	jge	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-1(%r13), %eax
	movl	%eax, -192(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$1, -192(%rbp)
	jle	.L73
	imull	$27, %r12d, %eax
	leal	-1(%r12), %edx
	movl	%eax, %ecx
	imull	%ebx, %ecx
	movl	%ecx, -212(%rbp)
	movl	%ebx, %ecx
	imull	%r12d, %ecx
	movl	%ecx, -216(%rbp)
	cmpl	$2, %ebx
	jle	.L73
.L38:
	cmpl	$1, %edx
	jle	.L22
	movl	-216(%rbp), %edi
	movslq	%r12d, %r15
	leal	(%r12,%r12), %edx
	cltq
	movl	$0, -184(%rbp)
	movl	-212(%rbp), %esi
	leal	(%rdi,%rdi), %ecx
	movl	%edi, -188(%rbp)
	movl	%ecx, -180(%rbp)
	leaq	0(,%r15,8), %rcx
	movq	%rcx, -160(%rbp)
	movslq	%edx, %rcx
	movq	%rcx, -224(%rbp)
	leaq	0(,%rax,8), %rcx
	movq	%rcx, -152(%rbp)
	leal	-3(%r12), %ecx
	imulq	$27, %rcx, %rdx
	movl	%esi, -176(%rbp)
	imulq	$-216, %rcx, %rcx
	movl	$1, -172(%rbp)
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-256(%rbp), %rax
	subq	$216, %rcx
	movq	%rcx, -168(%rbp)
	leaq	1(%r15), %rcx
	addq	$432, %rax
	movq	%rcx, -240(%rbp)
	movq	%rax, -232(%rbp)
	leal	-1(%rbx), %eax
	movl	%eax, -80(%rbp)
	.p2align 4,,10
	.p2align 3
.L25:
	movslq	-188(%rbp), %rbx
	movq	-208(%rbp), %rdi
	movq	$0, -120(%rbp)
	movq	%r15, %r14
	movslq	-180(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movl	$1, -76(%rbp)
	leaq	(%rbx,%r15), %rax
	addl	$1, -172(%rbp)
	leaq	(%rdi,%rax,8), %rax
	movq	-200(%rbp), %rdi
	movq	%rsi, -96(%rbp)
	movq	%rax, -144(%rbp)
	movq	-240(%rbp), %rax
	movq	%rdx, -112(%rbp)
	addq	%rbx, %rax
	movq	%rbx, -72(%rbp)
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rsi,%rdx), %rdi
	movq	%rax, -136(%rbp)
	movslq	-184(%rbp), %rax
	movq	%rdi, -88(%rbp)
	movq	-232(%rbp), %rdi
	leaq	(%rsi,%rax), %rcx
	movq	%rax, %r12
	movq	%rax, -128(%rbp)
	movq	%rbx, %rax
	movq	%rcx, -104(%rbp)
	subq	%rbx, %r12
	movslq	-176(%rbp), %rcx
	movq	%rdx, %rbx
	addq	-248(%rbp), %rcx
	subq	%rax, %rbx
	leaq	(%rdi,%rcx,8), %r13
	.p2align 4,,10
	.p2align 3
.L26:
	movq	-128(%rbp), %r8
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-72(%rbp), %rcx
	subq	%r14, %r8
	subq	%r14, %rdi
	addl	$1, -76(%rbp)
	movq	-120(%rbp), %r10
	subq	%r14, %rsi
	movq	-168(%rbp), %rax
	subq	%rcx, %r8
	subq	%rcx, %rdi
	subq	%rcx, %rsi
	movq	-96(%rbp), %r9
	movq	-88(%rbp), %rcx
	subq	%r14, %r10
	movq	-136(%rbp), %r11
	movq	-144(%rbp), %rdx
	addq	%r13, %rax
	subq	%r14, %rcx
	subq	%r14, %r9
	subq	-72(%rbp), %rcx
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L23:
	vmovsd	8(%rax), %xmm1
	vmovsd	(%rax), %xmm2
	addq	$216, %rax
	addq	$8, %r11
	vmulsd	8(%rdx), %xmm2, %xmm2
	vmulsd	(%rdx,%r8,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-200(%rax), %xmm2
	vmulsd	(%rdx,%r10,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-192(%rax), %xmm1
	vmulsd	(%rdx,%rdi,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-184(%rax), %xmm2
	vmulsd	(%rdx,%r12,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-176(%rax), %xmm1
	vmulsd	(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-168(%rax), %xmm2
	vmulsd	(%rdx,%rbx,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-160(%rax), %xmm1
	vmulsd	(%rdx,%rsi,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-152(%rax), %xmm2
	vmulsd	(%rdx,%r9,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-144(%rax), %xmm1
	vmulsd	(%rdx,%rcx,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-136(%rax), %xmm2
	vmulsd	8(%rdx,%r8,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-128(%rax), %xmm1
	vmulsd	8(%rdx,%r10,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-120(%rax), %xmm2
	vmulsd	8(%rdx,%rdi,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-112(%rax), %xmm1
	vmulsd	8(%rdx,%r12,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-104(%rax), %xmm2
	vmulsd	8(%rdx,%rbx,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-96(%rax), %xmm1
	vmulsd	8(%rdx,%rsi,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-88(%rax), %xmm2
	vmulsd	8(%rdx,%r9,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-80(%rax), %xmm1
	vmulsd	8(%rdx,%rcx,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-72(%rax), %xmm2
	vmulsd	16(%rdx,%r8,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-64(%rax), %xmm1
	vmulsd	16(%rdx,%r10,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-56(%rax), %xmm2
	vmulsd	16(%rdx,%rdi,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-48(%rax), %xmm1
	vmulsd	16(%rdx,%r12,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-40(%rax), %xmm2
	vmulsd	16(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-32(%rax), %xmm1
	vmulsd	16(%rdx,%rbx,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-24(%rax), %xmm2
	vmulsd	16(%rdx,%rsi,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-16(%rax), %xmm1
	vmulsd	16(%rdx,%r9,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-8(%rax), %xmm0
	vmulsd	16(%rdx,%rcx,8), %xmm0, %xmm0
	addq	$8, %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%r11)
	cmpq	%rax, %r13
	jne	.L23
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-160(%rbp), %rdi
	addq	%r15, -128(%rbp)
	addq	%r15, %r14
	addq	%rdi, -144(%rbp)
	addq	-152(%rbp), %r13
	addq	%rdi, -136(%rbp)
	movl	-76(%rbp), %esi
	addq	%r15, -120(%rbp)
	addq	%r15, -112(%rbp)
	addq	%r15, -104(%rbp)
	addq	%r15, -96(%rbp)
	addq	%r15, -88(%rbp)
	cmpl	%esi, -80(%rbp)
	jne	.L26
	movl	-216(%rbp), %eax
	movl	-212(%rbp), %ebx
	addl	%eax, -188(%rbp)
	addl	%ebx, -176(%rbp)
	movl	-192(%rbp), %ebx
	addl	%eax, -184(%rbp)
	addl	%eax, -180(%rbp)
	cmpl	%ebx, -172(%rbp)
	jl	.L25
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L73
	movq	-208(%rbp), %rdi
	call	dummy
	movq	-200(%rbp), %rdi
	call	dummy
	movq	-256(%rbp), %rdi
	call	dummy
.L73:
	addq	$208, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L41:
	.cfi_restore_state
	movl	$1, %r8d
	jmp	.L5
.L78:
	movq	$0, -200(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %edi
	movq	-200(%rbp), %rcx
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
	cmpl	%esi, %edx
	jb	.L11
	movl	%edi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edi, %edx
	je	.L81
	vzeroupper
	jmp	.L29
.L77:
	movq	-56(%rbp), %rcx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%rcx, -200(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %ecx
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	testl	%r14d, %r14d
	cmovle	%eax, %r15d
	cmpl	%r15d, %ecx
	ja	.L29
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	movq	-200(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L43
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L44
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
	jmp	.L9
.L80:
	movq	-208(%rbp), %rdi
	call	dummy
	movq	-200(%rbp), %rdi
	call	dummy
	movq	-256(%rbp), %rdi
	call	dummy
	cmpl	$1, -192(%rbp)
	jle	.L22
	imull	$27, %r12d, %eax
	movl	%r12d, %edi
	leal	-1(%r12), %edx
	imull	%ebx, %edi
	movl	%eax, %ecx
	imull	%ebx, %ecx
	movl	%edi, -216(%rbp)
	movl	%ecx, -212(%rbp)
	cmpl	$2, %ebx
	jg	.L38
	jmp	.L22
.L81:
	vzeroupper
	jmp	.L33
.L79:
	vzeroupper
	jmp	.L14
.L47:
	movl	$1, %edi
	jmp	.L16
.L76:
	vzeroupper
	jmp	.L8
.L43:
	movl	$1, %eax
	jmp	.L9
.L3:
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -200(%rbp)
	testl	%eax, %eax
	jne	.L33
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)
	jmp	.L33
.L44:
	movl	$2, %eax
	jmp	.L9
.L48:
	movl	$2, %edi
	jmp	.L16
.L42:
	movl	$2, %r8d
	jmp	.L5
.L45:
	xorl	%eax, %eax
	movq	%rsi, %rcx
	jmp	.L15
.L39:
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
