	.file	"3d-3r-isotropic-variable-star-stencil.c_compilable.c"
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
	pushq	%r12
	pushq	%r10
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	%rsi, %rbx
	subq	$288, %rsp
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	movl	%r12d, %r14d
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	imull	%r13d, %r14d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %rbx
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
	leaq	-56(%rbp), %rdi
	sall	$2, %r14d
	movl	$32, %esi
	movslq	%r14d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %rsi
	movq	%rsi, -328(%rbp)
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
	movq	-328(%rbp), %rdx
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
	movq	-328(%rbp), %rsi
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
	leal	-3(%r13), %eax
	movl	%eax, -232(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$3, -232(%rbp)
	jle	.L73
	leal	0(,%rbx,4), %eax
	leal	-3(%rbx), %edx
	movl	%eax, %esi
	imull	%r12d, %esi
	movl	%esi, -252(%rbp)
	movl	%ebx, %esi
	imull	%r12d, %esi
	movl	%esi, -256(%rbp)
	cmpl	$6, %r12d
	jle	.L73
.L38:
	cmpl	$3, %edx
	jle	.L22
	movl	-256(%rbp), %esi
	leal	(%rbx,%rbx,2), %edx
	movl	$0, -204(%rbp)
	movl	$3, -196(%rbp)
	movslq	%edx, %rdi
	leal	(%rbx,%rbx), %edx
	movq	%rdi, -296(%rbp)
	leal	(%rsi,%rsi,2), %ecx
	movl	%esi, -212(%rbp)
	movl	%ecx, -228(%rbp)
	imull	$3, -252(%rbp), %ecx
	movl	%ecx, -224(%rbp)
	leal	(%rsi,%rsi), %ecx
	movl	%ecx, -220(%rbp)
	leal	0(,%rsi,4), %ecx
	movl	%ecx, -216(%rbp)
	leal	(%rsi,%rsi,4), %ecx
	movl	%ecx, -208(%rbp)
	imull	$6, %esi, %ecx
	movl	%ecx, -200(%rbp)
	movslq	%ebx, %rcx
	movq	%rcx, -168(%rbp)
	salq	$3, %rcx
	movq	%rcx, -184(%rbp)
	movslq	%edx, %rcx
	leal	0(,%rbx,4), %edx
	movq	%rcx, -288(%rbp)
	movslq	%edx, %rcx
	leal	(%rbx,%rbx,4), %edx
	movq	%rcx, -280(%rbp)
	movslq	%edx, %rcx
	imull	$6, %ebx, %edx
	movq	%rcx, -272(%rbp)
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	leal	(%rax,%rax,2), %eax
	movq	%rcx, -264(%rbp)
	leaq	0(,%rdx,8), %rcx
	cltq
	leal	-7(%rbx), %edx
	movq	%rcx, -176(%rbp)
	leaq	(%rax,%rdx,4), %rax
	imulq	$-32, %rdx, %rcx
	movq	%rax, -320(%rbp)
	movq	-328(%rbp), %rax
	subq	$-128, %rax
	leaq	-32(%rcx), %rsi
	movq	%rax, -312(%rbp)
	movq	%rsi, -192(%rbp)
	leal	-3(%r12), %eax
	leaq	3(%rdi), %rsi
	movl	%eax, -112(%rbp)
	movq	%rsi, -304(%rbp)
	.p2align 4,,10
	.p2align 3
.L25:
	movslq	-228(%rbp), %rax
	movq	$0, -80(%rbp)
	movq	-296(%rbp), %rsi
	movl	$3, -108(%rbp)
	movq	-248(%rbp), %rcx
	movslq	-200(%rbp), %r12
	movslq	-220(%rbp), %r15
	leaq	(%rsi,%rax), %rdx
	movslq	-212(%rbp), %r14
	leaq	(%rcx,%rdx,8), %rbx
	movq	-304(%rbp), %rcx
	movq	%rbx, -160(%rbp)
	movq	-240(%rbp), %rbx
	subq	%rax, %r12
	movslq	-204(%rbp), %r13
	subq	%rax, %r15
	addl	$1, -196(%rbp)
	subq	%rax, %r14
	leaq	(%rcx,%rax), %rdx
	leaq	(%rbx,%rdx,8), %rcx
	movq	-312(%rbp), %rbx
	subq	%rax, %r13
	movq	%rcx, -152(%rbp)
	movq	-264(%rbp), %rcx
	movslq	-224(%rbp), %rdx
	addq	-320(%rbp), %rdx
	movq	%rcx, -72(%rbp)
	movq	-168(%rbp), %rcx
	leaq	(%rbx,%rdx,8), %r9
	movq	-272(%rbp), %rbx
	movslq	-208(%rbp), %rdx
	movq	%rcx, -128(%rbp)
	movq	-288(%rbp), %rcx
	movq	%rbx, -120(%rbp)
	movq	-280(%rbp), %rbx
	subq	%rax, %rdx
	movq	%rcx, -144(%rbp)
	movslq	-216(%rbp), %rcx
	movq	%rdx, -96(%rbp)
	movq	%rbx, -136(%rbp)
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movq	%r12, -104(%rbp)
	.p2align 4,,10
	.p2align 3
.L26:
	movq	-192(%rbp), %rax
	movq	-144(%rbp), %r12
	movq	-136(%rbp), %rbx
	movq	-128(%rbp), %r11
	movq	-120(%rbp), %r10
	leaq	(%rax,%r9), %rdx
	addl	$1, -108(%rbp)
	subq	%rsi, %r12
	movq	-152(%rbp), %rcx
	subq	%rsi, %rbx
	movq	-160(%rbp), %rax
	subq	%rsi, %r11
	subq	%rsi, %r10
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L23:
	movq	-88(%rbp), %rdi
	addq	$32, %rdx
	addq	$8, %rcx
	vmovsd	24(%rax,%r15,8), %xmm2
	movq	-80(%rbp), %r8
	vaddsd	24(%rax,%rdi,8), %xmm2, %xmm1
	vmovsd	16(%rax), %xmm2
	vaddsd	32(%rax), %xmm2, %xmm0
	subq	%rsi, %r8
	movq	-96(%rbp), %rdi
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rax,%r12,8), %xmm0
	vaddsd	24(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm2
	vmulsd	-24(%rdx), %xmm2, %xmm1
	vmovsd	-32(%rdx), %xmm2
	vmulsd	24(%rax), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rax,%r14,8), %xmm1
	vmovsd	8(%rax), %xmm0
	vaddsd	24(%rax,%rdi,8), %xmm1, %xmm1
	vaddsd	40(%rax), %xmm0, %xmm0
	movq	-104(%rbp), %rdi
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovsd	24(%rax,%r11,8), %xmm0
	vaddsd	24(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	-16(%rdx), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	24(%rax,%r13,8), %xmm2
	vaddsd	24(%rax,%rdi,8), %xmm2, %xmm3
	movq	-72(%rbp), %rdi
	vmovsd	(%rax), %xmm2
	vaddsd	48(%rax), %xmm2, %xmm0
	subq	%rsi, %rdi
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	24(%rax,%r8,8), %xmm0
	vaddsd	24(%rax,%rdi,8), %xmm0, %xmm0
	addq	$8, %rax
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rcx)
	cmpq	%rdx, %r9
	jne	.L23
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-168(%rbp), %rax
	movq	-184(%rbp), %rbx
	addq	%rax, -144(%rbp)
	addq	%rbx, -160(%rbp)
	addq	%rbx, -152(%rbp)
	addq	%rax, %rsi
	addq	%rax, -136(%rbp)
	addq	%rax, -128(%rbp)
	addq	%rax, -120(%rbp)
	addq	%rax, -80(%rbp)
	addq	%rax, -72(%rbp)
	addq	-176(%rbp), %r9
	movl	-108(%rbp), %ecx
	cmpl	%ecx, -112(%rbp)
	jne	.L26
	movl	-256(%rbp), %eax
	movl	-252(%rbp), %ebx
	addl	%eax, -228(%rbp)
	addl	%ebx, -224(%rbp)
	addl	%eax, -220(%rbp)
	addl	%eax, -216(%rbp)
	addl	%eax, -212(%rbp)
	addl	%eax, -208(%rbp)
	addl	%eax, -204(%rbp)
	addl	%eax, -200(%rbp)
	movl	-232(%rbp), %esi
	cmpl	%esi, -196(%rbp)
	jl	.L25
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L73
	movq	-248(%rbp), %rdi
	call	dummy
	movq	-240(%rbp), %rdi
	call	dummy
	movq	-328(%rbp), %rdi
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
	movq	-328(%rbp), %rdi
	call	dummy
	cmpl	$3, -232(%rbp)
	jle	.L22
	leal	0(,%rbx,4), %eax
	leal	-3(%rbx), %edx
	movl	%eax, %esi
	imull	%r12d, %esi
	movl	%esi, -252(%rbp)
	movl	%ebx, %esi
	imull	%r12d, %esi
	movl	%esi, -256(%rbp)
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
