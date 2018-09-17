	.file	"3d-1r-heterogeneous-variable-star-stencil.c_compilable.c"
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
	subq	$144, %rsp
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
	movl	%ebx, %r14d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
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
	movq	%rdi, -136(%rbp)
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
	movq	-136(%rbp), %rdx
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
	cmpl	%edi, %edx
	je	.L76
	vzeroupper
	movq	-136(%rbp), %rsi
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
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
.L29:
	movq	-128(%rbp), %rsi
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
	leal	0(,%r14,8), %eax
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	subl	%r14d, %eax
	movslq	%eax, %rdx
	movq	%rdx, %r14
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %rsi
	movq	%rsi, -192(%rbp)
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
	movq	-192(%rbp), %rdx
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
	cmpl	%esi, %edx
	je	.L79
	vzeroupper
	movq	-192(%rbp), %rsi
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
	leal	-1(%r13), %eax
	movl	%eax, -140(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$1, -140(%rbp)
	jle	.L73
	imull	$7, %r12d, %eax
	leal	-1(%r12), %edx
	movl	%eax, %esi
	imull	%ebx, %esi
	movl	%esi, -144(%rbp)
	movl	%ebx, %esi
	imull	%r12d, %esi
	movl	%esi, -148(%rbp)
	cmpl	$2, %ebx
	jle	.L73
.L38:
	cmpl	$1, %edx
	jle	.L22
	movl	-148(%rbp), %esi
	leal	(%r12,%r12), %edx
	movslq	%r12d, %r13
	cltq
	movl	-144(%rbp), %edi
	movl	$0, -116(%rbp)
	movl	$1, -96(%rbp)
	leal	(%rsi,%rsi), %ecx
	movl	%esi, -108(%rbp)
	movl	%ecx, -120(%rbp)
	leaq	0(,%r13,8), %rcx
	movq	%rcx, -80(%rbp)
	movslq	%edx, %rcx
	movq	%rcx, -160(%rbp)
	leaq	0(,%rax,8), %rcx
	movq	%rcx, -88(%rbp)
	leal	-3(%r12), %ecx
	imulq	$7, %rcx, %rdx
	movl	%edi, -112(%rbp)
	imulq	$-56, %rcx, %rcx
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rax
	leaq	-56(%rcx), %rsi
	movq	%rsi, -104(%rbp)
	leaq	1(%r13), %rsi
	movq	%rsi, -176(%rbp)
	addq	$112, %rax
	movq	%rax, -168(%rbp)
	leal	-1(%rbx), %eax
	movl	%eax, -92(%rbp)
	.p2align 4,,10
	.p2align 3
.L25:
	movslq	-108(%rbp), %rax
	movq	%r13, %r11
	xorl	%r12d, %r12d
	movq	-136(%rbp), %rbx
	movslq	-116(%rbp), %r10
	movslq	-120(%rbp), %r9
	leaq	(%rax,%r13), %rdx
	movq	-160(%rbp), %r14
	addl	$1, -96(%rbp)
	leaq	(%rbx,%rdx,8), %r15
	movq	-176(%rbp), %rbx
	subq	%rax, %r10
	subq	%rax, %r9
	leaq	(%rbx,%rax), %rdx
	movq	-128(%rbp), %rbx
	leaq	(%rbx,%rdx,8), %rbx
	movslq	-112(%rbp), %rdx
	movq	%rbx, -72(%rbp)
	addq	-184(%rbp), %rdx
	movq	-168(%rbp), %rbx
	leaq	(%rbx,%rdx,8), %rsi
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L26:
	movq	-104(%rbp), %rax
	movq	%r12, %r8
	movq	%r14, %rdi
	addl	$1, %ebx
	movq	-72(%rbp), %rcx
	movq	%r15, %rdx
	subq	%r11, %r8
	subq	%r11, %rdi
	addq	%rsi, %rax
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L23:
	vmovsd	8(%rax), %xmm1
	addq	$56, %rax
	addq	$8, %rcx
	vmulsd	(%rdx), %xmm1, %xmm0
	vmovsd	-56(%rax), %xmm2
	vmulsd	8(%rdx), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-40(%rax), %xmm2
	vmulsd	16(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rdx,%r10,8), %xmm1
	vmulsd	-32(%rax), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%rdx,%r9,8), %xmm2
	vmulsd	-24(%rax), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rdx,%r8,8), %xmm1
	vmulsd	-16(%rax), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%rdx,%rdi,8), %xmm0
	addq	$8, %rdx
	vmulsd	-8(%rax), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rcx)
	cmpq	%rax, %rsi
	jne	.L23
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-80(%rbp), %rax
	addq	%r13, %r12
	addq	%r13, %r11
	addq	%r13, %r14
	addq	%rax, -72(%rbp)
	addq	-88(%rbp), %rsi
	addq	%rax, %r15
	cmpl	%ebx, -92(%rbp)
	jne	.L26
	movl	-148(%rbp), %eax
	movl	-144(%rbp), %esi
	addl	%eax, -108(%rbp)
	addl	%esi, -112(%rbp)
	addl	%eax, -116(%rbp)
	addl	%eax, -120(%rbp)
	movl	-96(%rbp), %ebx
	cmpl	%ebx, -140(%rbp)
	jg	.L25
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L73
	movq	-136(%rbp), %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	movq	-192(%rbp), %rdi
	call	dummy
.L73:
	addq	$144, %rsp
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
	xorl	%edx, %edx
	movq	$0, -128(%rbp)
.L9:
	movq	-128(%rbp), %rcx
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
	cmpl	%edi, %edx
	je	.L81
	vzeroupper
	jmp	.L29
.L77:
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %edi
	cmovg	%r14d, %edi
	movq	%rsi, -128(%rbp)
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
	movq	-128(%rbp), %rax
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
	movq	-136(%rbp), %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	movq	-192(%rbp), %rdi
	call	dummy
	cmpl	$1, -140(%rbp)
	jle	.L22
	imull	$7, %r12d, %eax
	leal	-1(%r12), %edx
	movl	%eax, %esi
	imull	%ebx, %esi
	movl	%esi, -144(%rbp)
	movl	%r12d, %esi
	imull	%ebx, %esi
	movl	%esi, -148(%rbp)
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
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -128(%rbp)
	testl	%eax, %eax
	jne	.L33
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
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
