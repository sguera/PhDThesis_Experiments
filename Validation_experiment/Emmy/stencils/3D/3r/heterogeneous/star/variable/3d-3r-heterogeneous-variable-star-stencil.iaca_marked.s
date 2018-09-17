	.file	"3d-3r-heterogeneous-variable-star-stencil.c_compilable.c"
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
	subq	$272, %rsp
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
	movq	%rdi, -240(%rbp)
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
	movq	-240(%rbp), %rdx
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
	movq	-240(%rbp), %rdi
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
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
	movq	$0, -232(%rbp)
	xorl	%eax, %eax
.L29:
	movq	-232(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L33
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L33:
	leal	(%r14,%r14,8), %eax
	movl	$32, %esi
	leal	(%r14,%rax,2), %r14d
	leaq	-56(%rbp), %rdi
	movslq	%r14d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %rsi
	movq	%rsi, -320(%rbp)
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
	movq	-320(%rbp), %rdx
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
	movq	-320(%rbp), %rdi
.L15:
	vmovsd	.LC4(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%r14d, %edx
	jge	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-3(%r13), %eax
	movl	%eax, -224(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$3, -224(%rbp)
	jle	.L73
	imull	$19, %ebx, %eax
	leal	-3(%rbx), %edx
	movl	%eax, %edi
	imull	%r12d, %edi
	movl	%edi, -244(%rbp)
	movl	%ebx, %edi
	imull	%r12d, %edi
	movl	%edi, -248(%rbp)
	cmpl	$6, %r12d
	jle	.L73
.L38:
	cmpl	$3, %edx
	jle	.L22
	movl	-248(%rbp), %edi
	leal	(%rbx,%rbx,2), %edx
	movl	$0, -196(%rbp)
	movl	$3, -188(%rbp)
	movslq	%edx, %rsi
	leal	(%rbx,%rbx), %edx
	movq	%rsi, -288(%rbp)
	leal	(%rdi,%rdi,2), %ecx
	movl	%edi, -204(%rbp)
	movl	%ecx, -220(%rbp)
	imull	$3, -244(%rbp), %ecx
	movl	%ecx, -216(%rbp)
	leal	(%rdi,%rdi), %ecx
	movl	%ecx, -212(%rbp)
	leal	0(,%rdi,4), %ecx
	movl	%ecx, -208(%rbp)
	leal	(%rdi,%rdi,4), %ecx
	movl	%ecx, -200(%rbp)
	imull	$6, %edi, %ecx
	movl	%ecx, -192(%rbp)
	movslq	%ebx, %rcx
	movq	%rcx, -160(%rbp)
	salq	$3, %rcx
	movq	%rcx, -176(%rbp)
	movslq	%edx, %rcx
	leal	0(,%rbx,4), %edx
	movq	%rcx, -280(%rbp)
	movslq	%edx, %rcx
	leal	(%rbx,%rbx,4), %edx
	movq	%rcx, -272(%rbp)
	movslq	%edx, %rcx
	imull	$6, %ebx, %edx
	movq	%rcx, -264(%rbp)
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rcx, -256(%rbp)
	leaq	0(,%rdx,8), %rcx
	leal	-7(%rbx), %edx
	movq	%rcx, -168(%rbp)
	imulq	$19, %rdx, %rcx
	leal	(%rax,%rax,2), %eax
	imulq	$-152, %rdx, %rdx
	cltq
	addq	%rcx, %rax
	movq	%rax, -304(%rbp)
	movq	-320(%rbp), %rax
	leaq	-152(%rdx), %rbx
	movq	%rbx, -184(%rbp)
	leaq	3(%rsi), %rbx
	movq	%rbx, -296(%rbp)
	addq	$608, %rax
	movq	%rax, -312(%rbp)
	leal	-3(%r12), %eax
	movl	%eax, -104(%rbp)
	.p2align 4,,10
	.p2align 3
.L25:
	movslq	-220(%rbp), %rax
	movq	$0, -88(%rbp)
	movq	-288(%rbp), %rdi
	movl	$3, -100(%rbp)
	movq	-240(%rbp), %rbx
	movslq	-192(%rbp), %r11
	movslq	-212(%rbp), %r15
	leaq	(%rdi,%rax), %rdx
	movslq	-208(%rbp), %r14
	leaq	(%rbx,%rdx,8), %rbx
	movslq	-204(%rbp), %r13
	movq	%rbx, -152(%rbp)
	movq	-296(%rbp), %rbx
	subq	%rax, %r11
	movslq	-200(%rbp), %r12
	subq	%rax, %r15
	movq	%r11, -96(%rbp)
	addl	$1, -188(%rbp)
	subq	%rax, %r14
	subq	%rax, %r13
	leaq	(%rbx,%rax), %rdx
	movq	-232(%rbp), %rbx
	subq	%rax, %r12
	leaq	(%rbx,%rdx,8), %rbx
	movslq	-216(%rbp), %rdx
	movq	%rbx, -144(%rbp)
	addq	-304(%rbp), %rdx
	movq	-312(%rbp), %rbx
	leaq	(%rbx,%rdx,8), %rbx
	movq	%rbx, -72(%rbp)
	movq	-256(%rbp), %rbx
	movq	%rbx, -80(%rbp)
	movq	-264(%rbp), %rbx
	movq	%rbx, -112(%rbp)
	movq	-160(%rbp), %rbx
	movq	%rbx, -120(%rbp)
	movq	-272(%rbp), %rbx
	movq	%rbx, -128(%rbp)
	movq	-280(%rbp), %rbx
	movq	%rbx, -136(%rbp)
	movslq	-196(%rbp), %rbx
	subq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L26:
	movq	-136(%rbp), %r11
	movq	-128(%rbp), %r10
	movq	-120(%rbp), %r9
	movq	-112(%rbp), %r8
	movq	-184(%rbp), %rax
	subq	%rdi, %r11
	addl	$1, -100(%rbp)
	subq	%rdi, %r10
	addq	-72(%rbp), %rax
	subq	%rdi, %r9
	movq	-144(%rbp), %rcx
	subq	%rdi, %r8
	movq	-152(%rbp), %rdx
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L23:
	vmovsd	8(%rax), %xmm1
	addq	$8, %rcx
	addq	$152, %rax
	vmulsd	16(%rdx), %xmm1, %xmm0
	vmovsd	-152(%rax), %xmm2
	vmulsd	24(%rdx), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-136(%rax), %xmm2
	vmulsd	32(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rdx,%r15,8), %xmm1
	vmulsd	-128(%rax), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rdx,%r14,8), %xmm2
	vmulsd	-120(%rax), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rdx,%r11,8), %xmm1
	vmulsd	-112(%rax), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rdx,%r10,8), %xmm2
	vmulsd	-104(%rax), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-96(%rax), %xmm1
	vmulsd	8(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-88(%rax), %xmm2
	vmulsd	40(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rdx,%r13,8), %xmm1
	vmulsd	-80(%rax), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rdx,%r12,8), %xmm2
	vmulsd	-72(%rax), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rdx,%r9,8), %xmm1
	vmulsd	-64(%rax), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rdx,%r8,8), %xmm2
	vmulsd	-56(%rax), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-48(%rax), %xmm1
	vmulsd	(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-40(%rax), %xmm2
	vmulsd	48(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rdx,%rbx,8), %xmm1
	vmulsd	-32(%rax), %xmm1, %xmm0
	movq	-96(%rbp), %rsi
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rdx,%rsi,8), %xmm2
	movq	-88(%rbp), %rsi
	vmulsd	-24(%rax), %xmm2, %xmm0
	subq	%rdi, %rsi
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rdx,%rsi,8), %xmm1
	movq	-80(%rbp), %rsi
	vmulsd	-16(%rax), %xmm1, %xmm1
	subq	%rdi, %rsi
	vmovsd	24(%rdx,%rsi,8), %xmm0
	addq	$8, %rdx
	vmulsd	-8(%rax), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rcx)
	cmpq	%rax, -72(%rbp)
	jne	.L23
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-160(%rbp), %rax
	movq	-176(%rbp), %rcx
	addq	%rax, -136(%rbp)
	addq	%rcx, -152(%rbp)
	addq	%rcx, -144(%rbp)
	addq	%rax, %rdi
	movq	-168(%rbp), %rcx
	addq	%rax, -128(%rbp)
	addq	%rcx, -72(%rbp)
	addq	%rax, -120(%rbp)
	addq	%rax, -112(%rbp)
	addq	%rax, -88(%rbp)
	addq	%rax, -80(%rbp)
	movl	-100(%rbp), %ecx
	cmpl	%ecx, -104(%rbp)
	jne	.L26
	movl	-248(%rbp), %eax
	movl	-244(%rbp), %edi
	addl	%eax, -220(%rbp)
	addl	%edi, -216(%rbp)
	addl	%eax, -212(%rbp)
	addl	%eax, -208(%rbp)
	addl	%eax, -204(%rbp)
	addl	%eax, -200(%rbp)
	addl	%eax, -196(%rbp)
	addl	%eax, -192(%rbp)
	movl	-224(%rbp), %ebx
	cmpl	%ebx, -188(%rbp)
	jl	.L25
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L73
	movq	-240(%rbp), %rdi
	call	dummy
	movq	-232(%rbp), %rdi
	call	dummy
	movq	-320(%rbp), %rdi
	call	dummy
.L73:
	addq	$272, %rsp
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
	movq	$0, -232(%rbp)
	xorl	%edx, %edx
.L9:
	movq	-232(%rbp), %rcx
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
	movq	-56(%rbp), %rcx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%rcx, -232(%rbp)
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
	movq	-232(%rbp), %rax
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
	movq	-240(%rbp), %rdi
	call	dummy
	movq	-232(%rbp), %rdi
	call	dummy
	movq	-320(%rbp), %rdi
	call	dummy
	cmpl	$3, -224(%rbp)
	jle	.L22
	imull	$19, %ebx, %eax
	leal	-3(%rbx), %edx
	movl	%eax, %edi
	imull	%r12d, %edi
	movl	%edi, -244(%rbp)
	movl	%ebx, %edi
	imull	%r12d, %edi
	movl	%edi, -248(%rbp)
	cmpl	$6, %r12d
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
	movq	$0, -232(%rbp)
	testl	%eax, %eax
	jne	.L33
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)
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
	movq	%rsi, %rdi
	jmp	.L15
.L39:
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
