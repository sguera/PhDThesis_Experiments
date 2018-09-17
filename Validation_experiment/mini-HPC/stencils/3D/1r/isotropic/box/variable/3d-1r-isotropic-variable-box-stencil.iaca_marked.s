	.file	"3d-1r-isotropic-variable-box-stencil.c_compilable.c"
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
	subq	$208, %rsp
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	movl	%r13d, %r14d
	call	strtol
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %rbx
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
	movq	-208(%rbp), %rdi
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
	movq	-200(%rbp), %rdi
	movslq	%eax, %rdx
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
	sall	$2, %r14d
	movl	$32, %esi
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
	movq	-256(%rbp), %rdi
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
	leal	-1(%r13), %eax
	movl	%eax, -192(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$1, -192(%rbp)
	jle	.L73
	leal	0(,%r12,4), %eax
	leal	-1(%r12), %edx
	movl	%eax, %edi
	imull	%ebx, %edi
	movl	%edi, -212(%rbp)
	movl	%ebx, %edi
	imull	%r12d, %edi
	movl	%edi, -216(%rbp)
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
	leal	(%rdi,%rdi), %esi
	movl	%edi, -188(%rbp)
	movl	%esi, -180(%rbp)
	leaq	0(,%r15,8), %rsi
	movq	%rsi, -160(%rbp)
	movslq	%edx, %rsi
	leal	-3(%r12), %edx
	movq	%rsi, -224(%rbp)
	imulq	$-32, %rdx, %rcx
	leaq	0(,%rax,8), %rsi
	leaq	(%rax,%rdx,4), %rax
	movq	%rsi, -152(%rbp)
	movl	-212(%rbp), %esi
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rax
	leaq	-32(%rcx), %rdi
	movl	%esi, -176(%rbp)
	addq	$64, %rax
	movq	%rdi, -168(%rbp)
	leaq	1(%r15), %rdi
	movq	%rax, -240(%rbp)
	leal	-1(%rbx), %eax
	movl	$1, -172(%rbp)
	movq	%rdi, -248(%rbp)
	movl	%eax, -80(%rbp)
	.p2align 4,,10
	.p2align 3
.L25:
	movslq	-188(%rbp), %rbx
	movq	-208(%rbp), %rdi
	movq	$0, -128(%rbp)
	movq	%r15, %r14
	movslq	-180(%rbp), %rdx
	addl	$1, -172(%rbp)
	leaq	(%rbx,%r15), %rax
	movl	$1, -76(%rbp)
	movslq	-176(%rbp), %rcx
	leaq	(%rdi,%rax,8), %rax
	movq	-200(%rbp), %rdi
	movq	%rdx, -104(%rbp)
	movq	%rax, -144(%rbp)
	movq	-248(%rbp), %rax
	movq	%rbx, -72(%rbp)
	addq	-232(%rbp), %rcx
	addq	%rbx, %rax
	leaq	(%rdi,%rax,8), %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -136(%rbp)
	movslq	-184(%rbp), %rax
	movq	%rdi, -120(%rbp)
	leaq	(%rax,%rdi), %rsi
	movq	%rax, %r12
	movq	%rax, -112(%rbp)
	movq	%rbx, %rax
	movq	%rsi, -96(%rbp)
	leaq	(%rdx,%rdi), %rsi
	subq	%rbx, %r12
	movq	%rdx, %rbx
	movq	%rsi, -88(%rbp)
	movq	-240(%rbp), %rsi
	subq	%rax, %rbx
	leaq	(%rsi,%rcx,8), %r13
	.p2align 4,,10
	.p2align 3
.L26:
	movq	-112(%rbp), %r8
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rcx
	subq	%r14, %r8
	subq	%r14, %rdi
	addl	$1, -76(%rbp)
	movq	-128(%rbp), %r10
	movq	-168(%rbp), %rax
	subq	%r14, %rsi
	subq	%rcx, %r8
	subq	%rcx, %rdi
	movq	-120(%rbp), %r9
	subq	%rcx, %rsi
	movq	-88(%rbp), %rcx
	subq	%r14, %r10
	leaq	(%rax,%r13), %rdx
	movq	-136(%rbp), %r11
	movq	-144(%rbp), %rax
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
	vmovsd	(%rax,%r10,8), %xmm0
	vmovsd	(%rdx), %xmm2
	addq	$32, %rdx
	addq	$8, %r11
	vaddsd	(%rax,%r12,8), %xmm0, %xmm3
	vmovsd	(%rax), %xmm0
	vaddsd	8(%rax,%r10,8), %xmm0, %xmm1
	vmulsd	8(%rax), %xmm2, %xmm0
	vaddsd	8(%rax,%r12,8), %xmm1, %xmm1
	vaddsd	8(%rax,%rbx,8), %xmm1, %xmm1
	vaddsd	8(%rax,%r9,8), %xmm1, %xmm1
	vaddsd	16(%rax), %xmm1, %xmm1
	vmulsd	-24(%rdx), %xmm1, %xmm1
	vaddsd	(%rax,%rbx,8), %xmm3, %xmm3
	vaddsd	(%rax,%r9,8), %xmm3, %xmm3
	vaddsd	8(%rax,%r8,8), %xmm3, %xmm3
	vaddsd	8(%rax,%rdi,8), %xmm3, %xmm3
	vaddsd	8(%rax,%rsi,8), %xmm3, %xmm3
	vaddsd	8(%rax,%rcx,8), %xmm3, %xmm3
	vaddsd	16(%rax,%r10,8), %xmm3, %xmm3
	vaddsd	16(%rax,%r12,8), %xmm3, %xmm3
	vaddsd	16(%rax,%rbx,8), %xmm3, %xmm3
	vaddsd	16(%rax,%r9,8), %xmm3, %xmm3
	vmulsd	-16(%rdx), %xmm3, %xmm3
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rax,%r8,8), %xmm0
	vaddsd	(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%r11)
	cmpq	%rdx, %r13
	jne	.L23
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-160(%rbp), %rsi
	addq	%r15, -128(%rbp)
	addq	%r15, %r14
	addq	%rsi, -144(%rbp)
	addq	-152(%rbp), %r13
	addq	%rsi, -136(%rbp)
	movl	-76(%rbp), %edi
	addq	%r15, -120(%rbp)
	addq	%r15, -112(%rbp)
	addq	%r15, -104(%rbp)
	addq	%r15, -96(%rbp)
	addq	%r15, -88(%rbp)
	cmpl	%edi, -80(%rbp)
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
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %edi
	cmovg	%r14d, %edi
	movq	%rsi, -200(%rbp)
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
	leal	0(,%r12,4), %eax
	leal	-1(%r12), %edx
	movl	%eax, %edi
	imull	%ebx, %edi
	movl	%edi, -212(%rbp)
	movl	%r12d, %edi
	imull	%ebx, %edi
	movl	%edi, -216(%rbp)
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
