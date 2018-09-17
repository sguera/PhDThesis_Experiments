	.file	"2d-1r-heterogeneous-variable-box-stencil.c_compilable.c"
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
	subq	$32, %rsp
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movl	%ebx, %r15d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r15d
	movq	%rax, %r14
	movslq	%r15d, %r13
	salq	$3, %r13
	movq	%r13, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r12
	testl	%r15d, %r15d
	jle	.L3
	movq	%r12, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	leal	-1(%r15), %ecx
	cmpl	%ecx, %edx
	ja	.L36
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r12)
	cmpl	$1, %eax
	je	.L38
	vmovsd	%xmm0, 8(%r12)
	cmpl	$3, %eax
	jne	.L39
	vmovsd	%xmm0, 16(%r12)
	movl	$3, %r8d
.L5:
	movl	%r15d, %edi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r12,%rax,8), %rdx
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
	cmpl	%esi, %eax
	jb	.L7
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%r8), %eax
	cmpl	%edi, %edx
	je	.L73
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r12,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r12,%rax,8)
.L8:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movl	%ecx, -72(%rbp)
	call	posix_memalign
	movl	-72(%rbp), %ecx
	testl	%eax, %eax
	je	.L74
	testl	%r15d, %r15d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %ecx
	cmovg	%r15d, %edi
	cmpl	$4, %ecx
	ja	.L75
	xorl	%r13d, %r13d
	xorl	%eax, %eax
.L28:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L32
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L32
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
.L32:
	leal	(%r15,%r15,8), %ecx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movslq	%ecx, %rdx
	movl	%ecx, -72(%rbp)
	salq	$3, %rdx
	call	posix_memalign
	movl	-72(%rbp), %ecx
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %r15
	testl	%ecx, %ecx
	jle	.L14
	movq	%r15, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	leal	-1(%rcx), %esi
	cmpl	%esi, %edx
	ja	.L42
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L16
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L44
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L45
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %r8d
.L16:
	movl	%ecx, %edi
	vmovapd	.LC5(%rip), %ymm0
	leaq	(%r15,%rax,8), %rdx
	subl	%eax, %edi
	xorl	%eax, %eax
	movl	%edi, %esi
	shrl	$2, %esi
	.p2align 4,,10
	.p2align 3
.L18:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%esi, %eax
	jb	.L18
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%r8), %eax
	cmpl	%edi, %edx
	je	.L76
	vzeroupper
.L15:
	vmovsd	.LC4(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %ecx
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%ecx, %edx
	jge	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %ecx
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %ecx
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r15,%rdx,8)
	cmpl	%eax, %ecx
	jle	.L14
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	subl	$1, %r14d
	testl	%edx, %edx
	jne	.L77
	cmpl	$1, %r14d
	jle	.L70
.L21:
	leal	(%rbx,%rbx,8), %eax
	cmpl	$2, %ebx
	jle	.L22
	movslq	%ebx, %r11
	cltq
	leal	-3(%rbx), %edx
	movq	%r12, %r8
	salq	$3, %r11
	leaq	0(,%rax,8), %rcx
	movq	%r12, -72(%rbp)
	leaq	8(,%rdx,8), %r10
	leaq	(%r12,%r11), %rsi
	leaq	(%r15,%rcx), %rax
	movl	$1, %ebx
	movq	%rcx, %r12
	leaq	(%rsi,%r11), %rdi
	leaq	0(%r13,%r11), %r9
	.p2align 4,,10
	.p2align 3
.L24:
	addl	$1, %ebx
	movq	%rax, %rcx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L23:
	vmovsd	80(%rcx), %xmm1
	vmovsd	72(%rcx), %xmm2
	addq	$72, %rcx
	vmulsd	8(%rsi,%rdx), %xmm2, %xmm2
	vmulsd	(%r8,%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rcx), %xmm2
	vmulsd	(%rsi,%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rcx), %xmm1
	vmulsd	(%rdi,%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	32(%rcx), %xmm2
	vmulsd	8(%r8,%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	40(%rcx), %xmm1
	vmulsd	8(%rdi,%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	48(%rcx), %xmm2
	vmulsd	16(%r8,%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	56(%rcx), %xmm1
	vmulsd	16(%rsi,%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	64(%rcx), %xmm0
	vmulsd	16(%rdi,%rdx), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%r9,%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %r10
	jne	.L23
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	addq	%r12, %rax
	addq	%r11, %rsi
	addq	%r11, %r8
	addq	%r11, %rdi
	addq	%r11, %r9
	cmpl	%ebx, %r14d
	jg	.L24
	movq	-72(%rbp), %r12
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L70
	movq	%r12, %rdi
	call	dummy
	movq	%r13, %rdi
	call	dummy
	movq	%r15, %rdi
	call	dummy
.L70:
	addq	$32, %rsp
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
.L74:
	.cfi_restore_state
	movq	-56(%rbp), %r13
	testl	%r15d, %r15d
	movl	$1, %edi
	movl	$5, %r8d
	cmovg	%r15d, %edi
	movq	%r13, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %esi
	cmpl	$5, %esi
	cmovb	%r8d, %esi
	testl	%r15d, %r15d
	cmovle	%eax, %ecx
	cmpl	%ecx, %esi
	ja	.L28
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, 0(%r13)
	cmpl	$1, %edx
	je	.L40
	vmovsd	%xmm0, 8(%r13)
	cmpl	$3, %edx
	jne	.L41
	vmovsd	%xmm0, 16(%r13)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	vmovapd	.LC3(%rip), %ymm0
	leaq	0(%r13,%rdx,8), %rcx
	xorl	%edx, %edx
	movl	%edi, %esi
	shrl	$2, %esi
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
	je	.L78
	vzeroupper
	jmp	.L28
.L77:
	movq	%r12, %rdi
	call	dummy
	movq	%r13, %rdi
	call	dummy
	movq	%r15, %rdi
	call	dummy
	cmpl	$1, %r14d
	jg	.L21
	jmp	.L22
.L38:
	movl	$1, %r8d
	jmp	.L5
.L75:
	xorl	%edx, %edx
	xorl	%r13d, %r13d
	jmp	.L9
.L40:
	movl	$1, %eax
	jmp	.L9
.L78:
	vzeroupper
	jmp	.L32
.L76:
	vzeroupper
	jmp	.L14
.L44:
	movl	$1, %r8d
	jmp	.L16
.L73:
	vzeroupper
	jmp	.L8
.L3:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	xorl	%r13d, %r13d
	call	posix_memalign
	testl	%eax, %eax
	jne	.L32
	movq	-56(%rbp), %r13
	jmp	.L32
.L41:
	movl	$2, %eax
	jmp	.L9
.L45:
	movl	$2, %r8d
	jmp	.L16
.L39:
	movl	$2, %r8d
	jmp	.L5
.L42:
	xorl	%eax, %eax
	jmp	.L15
.L36:
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
