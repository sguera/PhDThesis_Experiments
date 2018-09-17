	.file	"3d-3r-isotropic-constant-star-stencil.c_compilable.c"
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
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movq	%rsi, %r12
	pushq	%r10
	pushq	%rbx
	subq	$256, %rsp
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	movl	%ebx, %r14d
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	imull	%r13d, %r14d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %r12
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -88(%rbp)
	call	posix_memalign
	movq	-88(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -296(%rbp)
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
	ja	.L32
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rdi)
	cmpl	$1, %eax
	je	.L34
	vmovsd	%xmm0, 8(%rdi)
	cmpl	$3, %eax
	jne	.L35
	vmovsd	%xmm0, 16(%rdi)
	movl	$3, %r8d
.L5:
	movq	-296(%rbp), %rdx
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
	je	.L59
	vzeroupper
	movq	-296(%rbp), %rsi
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
	je	.L60
	testl	%r14d, %r14d
	movl	$1, %eax
	movq	$0, -288(%rbp)
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	xorl	%edx, %edx
	cmpl	$4, %r15d
	ja	.L9
	xorl	%eax, %eax
	jmp	.L22
.L60:
	movq	-56(%rbp), %rcx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%rcx, -288(%rbp)
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
	ja	.L22
	testl	%edx, %edx
	je	.L9
	movq	-288(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L36
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L37
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	movq	-288(%rbp), %rcx
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
	je	.L61
	vzeroupper
.L22:
	movq	-288(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L26
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L26:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -80(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-3(%r13), %eax
	movl	%eax, -220(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$3, -220(%rbp)
	jle	.L56
	leal	-3(%r12), %eax
	movl	%r12d, %ecx
	imull	%ebx, %ecx
	movl	%ecx, -224(%rbp)
	cmpl	$6, %ebx
	jle	.L56
.L31:
	cmpl	$3, %eax
	jle	.L15
	movl	$0, -196(%rbp)
	movl	-224(%rbp), %esi
	movq	-288(%rbp), %r15
	movl	$3, -188(%rbp)
	leal	(%rsi,%rsi,2), %eax
	movl	%esi, -204(%rbp)
	movl	%eax, -216(%rbp)
	leal	(%rsi,%rsi), %eax
	movl	%eax, -212(%rbp)
	leal	0(,%rsi,4), %eax
	movl	%eax, -208(%rbp)
	leal	(%rsi,%rsi,4), %eax
	movl	%eax, -200(%rbp)
	imull	$6, %esi, %eax
	movl	%eax, -192(%rbp)
	leal	(%r12,%r12), %eax
	cltq
	movq	%rax, -264(%rbp)
	leal	(%r12,%r12,2), %eax
	movslq	%eax, %rdi
	leal	0(,%r12,4), %eax
	movq	%rdi, -256(%rbp)
	cltq
	movq	%rax, -248(%rbp)
	leal	(%r12,%r12,4), %eax
	cltq
	movq	%rax, -240(%rbp)
	imull	$6, %r12d, %eax
	cltq
	movq	%rax, -232(%rbp)
	movslq	%r12d, %rax
	movq	%rax, -160(%rbp)
	salq	$3, %rax
	movq	%rax, -168(%rbp)
	leal	-7(%r12), %eax
	leaq	0(,%rax,8), %rdx
	imulq	$-8, %rax, %rcx
	subq	%rdx, %r15
	addq	%rdi, %rax
	movq	%r15, %rdx
	movq	-296(%rbp), %r15
	movq	%rax, -272(%rbp)
	leaq	8(%r15), %rax
	subq	$8, %rcx
	subq	%r15, %rdx
	movq	%rcx, -176(%rbp)
	leaq	16(%rdx), %rcx
	movq	%rax, -280(%rbp)
	leal	-3(%rbx), %eax
	movq	%rcx, -184(%rbp)
	movl	%eax, -120(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movslq	-216(%rbp), %rax
	movq	$0, -96(%rbp)
	movq	-272(%rbp), %rcx
	movl	$3, -116(%rbp)
	movq	-248(%rbp), %rbx
	movslq	-212(%rbp), %r15
	movslq	-204(%rbp), %r14
	leaq	(%rcx,%rax), %rdx
	movq	-280(%rbp), %rcx
	movq	%rbx, -144(%rbp)
	movslq	-192(%rbp), %rbx
	movslq	-200(%rbp), %r13
	subq	%rax, %r15
	movslq	-196(%rbp), %r12
	subq	%rax, %r14
	addl	$1, -188(%rbp)
	leaq	(%rcx,%rdx,8), %r8
	movq	-160(%rbp), %rdx
	subq	%rax, %rbx
	movq	-232(%rbp), %rcx
	subq	%rax, %r13
	subq	%rax, %r12
	movq	%rbx, -112(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-264(%rbp), %rdx
	movq	%rcx, -88(%rbp)
	movq	-240(%rbp), %rcx
	movq	%rdx, -152(%rbp)
	movslq	-208(%rbp), %rdx
	movq	%rcx, -128(%rbp)
	movq	-256(%rbp), %rcx
	subq	%rax, %rdx
	movq	%rdx, -104(%rbp)
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-184(%rbp), %rbx
	movq	-176(%rbp), %rax
	movq	-144(%rbp), %r11
	movq	-136(%rbp), %r10
	leaq	(%rbx,%r8), %rdx
	movq	-128(%rbp), %r9
	movq	-152(%rbp), %rbx
	addq	%r8, %rax
	addl	$1, -116(%rbp)
	subq	%rcx, %r11
	subq	%rcx, %r10
	subq	%rcx, %r9
	subq	%rcx, %rbx
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L16:
	movq	-104(%rbp), %rsi
	addq	$8, %rdx
	vmovsd	24(%rax,%r15,8), %xmm2
	movq	-112(%rbp), %rdi
	vaddsd	24(%rax,%rsi,8), %xmm2, %xmm1
	vmovsd	16(%rax), %xmm2
	vaddsd	32(%rax), %xmm2, %xmm0
	movq	-88(%rbp), %rsi
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rax,%rbx,8), %xmm0
	vaddsd	24(%rax,%r11,8), %xmm0, %xmm0
	subq	%rcx, %rsi
	vaddsd	%xmm0, %xmm2, %xmm2
	vmulsd	-72(%rbp), %xmm2, %xmm1
	vmovsd	24(%rax), %xmm2
	vmulsd	-80(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rax,%r14,8), %xmm1
	vmovsd	8(%rax), %xmm0
	vaddsd	24(%rax,%r13,8), %xmm1, %xmm1
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovsd	24(%rax,%r10,8), %xmm0
	vaddsd	24(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	-64(%rbp), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	24(%rax,%r12,8), %xmm2
	vaddsd	24(%rax,%rdi,8), %xmm2, %xmm3
	movq	-96(%rbp), %rdi
	vmovsd	(%rax), %xmm2
	vaddsd	48(%rax), %xmm2, %xmm0
	subq	%rcx, %rdi
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	24(%rax,%rdi,8), %xmm0
	vaddsd	24(%rax,%rsi,8), %xmm0, %xmm0
	addq	$8, %rax
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rdx)
	cmpq	%rax, %r8
	jne	.L16
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-160(%rbp), %rax
	addq	-168(%rbp), %r8
	addq	%rax, -152(%rbp)
	addq	%rax, -144(%rbp)
	addq	%rax, %rcx
	movl	-116(%rbp), %edx
	addq	%rax, -136(%rbp)
	addq	%rax, -128(%rbp)
	addq	%rax, -96(%rbp)
	addq	%rax, -88(%rbp)
	cmpl	%edx, -120(%rbp)
	jne	.L19
	movl	-224(%rbp), %eax
	movl	-220(%rbp), %ecx
	addl	%eax, -216(%rbp)
	addl	%eax, -212(%rbp)
	addl	%eax, -208(%rbp)
	addl	%eax, -204(%rbp)
	addl	%eax, -200(%rbp)
	addl	%eax, -196(%rbp)
	addl	%eax, -192(%rbp)
	cmpl	%ecx, -188(%rbp)
	jl	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	jne	.L63
.L56:
	addq	$256, %rsp
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
.L63:
	.cfi_restore_state
	movq	-296(%rbp), %rdi
	call	dummy
	movq	-288(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	leaq	-72(%rbp), %rdi
	call	dummy
	leaq	-64(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
	jmp	.L56
.L34:
	movl	$1, %r8d
	jmp	.L5
.L62:
	movq	-296(%rbp), %rdi
	call	dummy
	movq	-288(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	leaq	-72(%rbp), %rdi
	call	dummy
	leaq	-64(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
	cmpl	$3, -220(%rbp)
	jle	.L15
	leal	-3(%r12), %eax
	movl	%r12d, %ecx
	imull	%ebx, %ecx
	movl	%ecx, -224(%rbp)
	cmpl	$6, %ebx
	jg	.L31
	jmp	.L15
.L36:
	movl	$1, %eax
	jmp	.L9
.L61:
	vzeroupper
	jmp	.L26
.L59:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -288(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)
	jmp	.L26
.L37:
	movl	$2, %eax
	jmp	.L9
.L35:
	movl	$2, %r8d
	jmp	.L5
.L32:
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
	.align 8
.LC5:
	.long	765859228
	.long	1071838070
	.align 8
.LC6:
	.long	2226626236
	.long	1072102945
	.align 8
.LC7:
	.long	795717946
	.long	1072287406
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
