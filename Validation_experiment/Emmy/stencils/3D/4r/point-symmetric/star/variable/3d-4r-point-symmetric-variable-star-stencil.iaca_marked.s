	.file	"3d-4r-point-symmetric-variable-star-stencil.c_compilable.c"
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
	subq	$288, %rsp
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
	movq	%rdi, -248(%rbp)
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
	movq	-248(%rbp), %rdx
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
	cmpl	%esi, %eax
	jb	.L7
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%r8), %eax
	cmpl	%edi, %edx
	je	.L76
	vzeroupper
	movq	-248(%rbp), %rsi
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
	je	.L77
	testl	%r14d, %r14d
	movl	$1, %eax
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	cmpl	$4, %r15d
	ja	.L78
	movq	$0, -240(%rbp)
	xorl	%eax, %eax
.L29:
	movq	-240(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L33
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L33:
	leal	(%r14,%r14,2), %eax
	movl	$32, %esi
	leal	(%r14,%rax,4), %r14d
	leaq	-56(%rbp), %rdi
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
	movq	-256(%rbp), %rdx
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
	cmpl	%ecx, %eax
	jb	.L18
	movl	%esi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rdi), %eax
	cmpl	%esi, %edx
	je	.L79
	vzeroupper
	movq	-256(%rbp), %rsi
.L15:
	vmovsd	.LC4(%rip), %xmm0
	movslq	%eax, %rdx
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
	leal	-4(%r13), %eax
	movl	%eax, -232(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$4, -232(%rbp)
	jle	.L73
	imull	$13, %ebx, %eax
	leal	-4(%rbx), %edx
	movl	%eax, %esi
	imull	%r12d, %esi
	movl	%esi, -264(%rbp)
	movl	%ebx, %esi
	imull	%r12d, %esi
	movl	%esi, -260(%rbp)
	cmpl	$8, %r12d
	jle	.L73
.L38:
	cmpl	$4, %edx
	jle	.L22
	movl	-264(%rbp), %esi
	movslq	%eax, %rdx
	sall	$2, %eax
	movl	$0, -196(%rbp)
	movl	$4, -188(%rbp)
	sall	$2, %esi
	movl	%esi, -228(%rbp)
	movl	-260(%rbp), %esi
	leal	(%rsi,%rsi,2), %ecx
	movl	%esi, -204(%rbp)
	movl	%ecx, -224(%rbp)
	leal	(%rsi,%rsi,4), %ecx
	movl	%ecx, -220(%rbp)
	leal	0(,%rsi,4), %ecx
	movl	%ecx, -216(%rbp)
	leal	(%rsi,%rsi), %ecx
	movl	%ecx, -212(%rbp)
	imull	$6, %esi, %ecx
	movl	%ecx, -208(%rbp)
	imull	$7, %esi, %ecx
	movl	%ecx, -200(%rbp)
	leal	0(,%rsi,8), %ecx
	movl	%ecx, -192(%rbp)
	leaq	0(,%rdx,8), %rcx
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	leaq	0(,%rax,8), %r13
	movq	%rax, -320(%rbp)
	leal	0(,%rbx,4), %eax
	movq	%rcx, -184(%rbp)
	movq	%r13, %rdi
	cltq
	movq	%rax, -312(%rbp)
	leal	(%rbx,%rbx,2), %eax
	cltq
	movq	%rax, -304(%rbp)
	leal	(%rbx,%rbx,4), %eax
	cltq
	movq	%rax, -296(%rbp)
	leal	(%rbx,%rbx), %eax
	cltq
	movq	%rax, -288(%rbp)
	imull	$6, %ebx, %eax
	cltq
	movq	%rax, -280(%rbp)
	imull	$7, %ebx, %eax
	cltq
	movq	%rax, -272(%rbp)
	leal	0(,%rbx,8), %eax
	cltq
	movq	%rax, -168(%rbp)
	leaq	52(%rdx), %rax
	movq	%rax, -328(%rbp)
	leal	-4(%r12), %eax
	movl	%eax, -136(%rbp)
	leal	-9(%rbx), %eax
	addq	$5, %rax
	movq	%rax, -128(%rbp)
	.p2align 4,,10
	.p2align 3
.L25:
	movq	-256(%rbp), %rbx
	movslq	-228(%rbp), %rax
	addq	-328(%rbp), %rax
	movq	-312(%rbp), %r10
	movslq	-224(%rbp), %rcx
	movq	-248(%rbp), %r8
	leaq	(%rbx,%rax,8), %rax
	movslq	-216(%rbp), %rdx
	addl	$1, -188(%rbp)
	movq	%rax, -152(%rbp)
	leaq	(%rcx,%r10), %rax
	leaq	(%r8,%rax,8), %rsi
	movslq	-220(%rbp), %rax
	leaq	(%r8,%rdx,8), %r9
	addq	%r10, %rax
	leaq	(%r8,%rax,8), %rax
	movq	%rax, -144(%rbp)
	movq	-304(%rbp), %rax
	addq	%rdx, %rax
	leaq	(%r8,%rax,8), %r15
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	leaq	(%r8,%rax,8), %rax
	movq	%rax, -112(%rbp)
	movslq	-212(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r8,%rax,8), %r14
	movslq	-208(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r8,%rax,8), %rax
	movq	%rax, -104(%rbp)
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	leaq	(%r8,%rax,8), %r13
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	leaq	(%r8,%rax,8), %rax
	movq	%rax, -96(%rbp)
	movslq	-204(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r8,%rax,8), %r12
	movslq	-200(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r8,%rax,8), %rax
	movq	%rax, -88(%rbp)
	movq	-320(%rbp), %rax
	addq	%rdx, %rax
	leaq	(%r8,%rax,8), %rbx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	leaq	(%r8,%rax,8), %rax
	movq	%rax, -80(%rbp)
	movslq	-196(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r8,%rax,8), %r11
	movslq	-192(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r8,%rax,8), %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	leaq	(%r8,%rax,8), %r8
	movq	%r10, %rax
	movq	-240(%rbp), %r10
	addq	%rdx, %rax
	leaq	(%r10,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movq	%rdx, %rax
	movq	-120(%rbp), %r10
	movl	$4, -132(%rbp)
	subq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, -176(%rbp)
	.p2align 4,,10
	.p2align 3
.L26:
	movq	-176(%rbp), %rax
	movq	%rdi, -160(%rbp)
	movq	-144(%rbp), %rdi
	addl	$1, -132(%rbp)
	movq	-152(%rbp), %rdx
	leaq	(%rax,%rsi), %rcx
	movl	$4, %eax
	movq	%rdi, -120(%rbp)
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L23:
	vmovsd	(%rdx), %xmm1
	addq	$8, %rcx
	addq	$104, %rdx
	vmulsd	24(%rcx), %xmm1, %xmm2
	vmovsd	16(%rcx), %xmm4
	vaddsd	32(%rcx), %xmm4, %xmm4
	vmulsd	-96(%rdx), %xmm4, %xmm4
	movq	-120(%rbp), %rdi
	vmovsd	(%r15,%rax,8), %xmm0
	vmovsd	8(%rcx), %xmm3
	vaddsd	40(%rcx), %xmm3, %xmm3
	vaddsd	%xmm2, %xmm4, %xmm1
	vmovsd	(%rsi,%rax,8), %xmm4
	vaddsd	(%rdi,%rax,8), %xmm4, %xmm4
	movq	-112(%rbp), %rdi
	vmulsd	-88(%rdx), %xmm4, %xmm4
	vmulsd	-72(%rdx), %xmm3, %xmm3
	vmovsd	(%r14,%rax,8), %xmm2
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rdx), %xmm0, %xmm0
	movq	-104(%rbp), %rdi
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	0(%r13,%rax,8), %xmm1
	vaddsd	(%rdi,%rax,8), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm4, %xmm0
	movq	-96(%rbp), %rdi
	vmulsd	-64(%rdx), %xmm2, %xmm2
	vmovsd	(%rcx), %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	(%r12,%rax,8), %xmm0
	vaddsd	(%rdi,%rax,8), %xmm1, %xmm1
	vmulsd	-56(%rdx), %xmm1, %xmm1
	movq	-88(%rbp), %rdi
	vaddsd	%xmm2, %xmm3, %xmm2
	vaddsd	48(%rcx), %xmm4, %xmm4
	vmulsd	-48(%rdx), %xmm4, %xmm4
	vmovsd	(%rbx,%rax,8), %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	vmulsd	-40(%rdx), %xmm0, %xmm0
	movq	-80(%rbp), %rdi
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	-8(%rcx), %xmm2
	vaddsd	56(%rcx), %xmm2, %xmm2
	vmulsd	-24(%rdx), %xmm2, %xmm2
	vaddsd	(%rdi,%rax,8), %xmm3, %xmm3
	vmulsd	-32(%rdx), %xmm3, %xmm3
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	(%r11,%rax,8), %xmm1
	vaddsd	(%r10,%rax,8), %xmm1, %xmm1
	vmulsd	-16(%rdx), %xmm1, %xmm1
	movq	-72(%rbp), %rdi
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	(%r9,%rax,8), %xmm0
	vaddsd	(%r8,%rax,8), %xmm0, %xmm0
	vmulsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi,%rax,8)
	addq	$1, %rax
	cmpq	%rax, -128(%rbp)
	jne	.L23
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-160(%rbp), %rdi
	movq	-184(%rbp), %rcx
	addq	%rdi, -144(%rbp)
	addq	%rcx, -152(%rbp)
	addq	%rdi, %rsi
	movq	-168(%rbp), %rcx
	addq	%rdi, %r15
	addq	%rcx, -72(%rbp)
	addq	%rdi, %r14
	addq	%rdi, %r13
	addq	%rdi, %r12
	addq	%rdi, -112(%rbp)
	addq	%rdi, %rbx
	addq	%rdi, %r11
	addq	%rdi, -104(%rbp)
	addq	%rdi, %r10
	addq	%rdi, %r9
	addq	%rdi, -96(%rbp)
	addq	%rdi, %r8
	addq	%rdi, -88(%rbp)
	addq	%rdi, -80(%rbp)
	movl	-132(%rbp), %ecx
	cmpl	%ecx, -136(%rbp)
	jne	.L26
	movl	-260(%rbp), %eax
	movl	-264(%rbp), %esi
	addl	%eax, -224(%rbp)
	addl	%esi, -228(%rbp)
	addl	%eax, -220(%rbp)
	addl	%eax, -216(%rbp)
	addl	%eax, -212(%rbp)
	addl	%eax, -208(%rbp)
	addl	%eax, -204(%rbp)
	addl	%eax, -200(%rbp)
	addl	%eax, -196(%rbp)
	addl	%eax, -192(%rbp)
	movl	-232(%rbp), %ebx
	cmpl	%ebx, -188(%rbp)
	jl	.L25
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L73
	movq	-248(%rbp), %rdi
	call	dummy
	movq	-240(%rbp), %rdi
	call	dummy
	movq	-256(%rbp), %rdi
	call	dummy
.L73:
	addq	$288, %rsp
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
	movq	$0, -240(%rbp)
	xorl	%edx, %edx
.L9:
	movq	-240(%rbp), %rcx
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
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %edi
	cmovg	%r14d, %edi
	movq	%rsi, -240(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
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
	movq	-240(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
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
	movq	-248(%rbp), %rdi
	call	dummy
	movq	-240(%rbp), %rdi
	call	dummy
	movq	-256(%rbp), %rdi
	call	dummy
	cmpl	$4, -232(%rbp)
	jle	.L22
	imull	$13, %ebx, %eax
	leal	-4(%rbx), %edx
	movl	%eax, %esi
	imull	%r12d, %esi
	movl	%esi, -264(%rbp)
	movl	%ebx, %esi
	imull	%r12d, %esi
	movl	%esi, -260(%rbp)
	cmpl	$8, %r12d
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
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -240(%rbp)
	testl	%eax, %eax
	jne	.L33
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)
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
