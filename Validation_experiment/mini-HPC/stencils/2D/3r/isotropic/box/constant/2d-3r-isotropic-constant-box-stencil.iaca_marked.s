	.file	"2d-3r-isotropic-constant-box-stencil.c_compilable.c"
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
	addq	$-128, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r14
	call	strtol
	movl	%r14d, %r15d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r15d
	movq	%rax, %r12
	movslq	%r15d, %r13
	salq	$3, %r13
	movq	%r13, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rbx
	testl	%r15d, %r15d
	jle	.L3
	movq	%rbx, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	leal	-1(%r15), %ecx
	cmpl	%ecx, %edx
	ja	.L29
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rbx)
	cmpl	$1, %eax
	je	.L31
	vmovsd	%xmm0, 8(%rbx)
	cmpl	$3, %eax
	jne	.L32
	vmovsd	%xmm0, 16(%rbx)
	movl	$3, %r8d
.L5:
	movl	%r15d, %edi
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
	cmpl	%esi, %eax
	jb	.L7
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%r8), %eax
	cmpl	%edi, %edx
	je	.L56
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rbx,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rbx,%rax,8)
.L8:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movl	%ecx, -116(%rbp)
	call	posix_memalign
	movl	-116(%rbp), %ecx
	testl	%eax, %eax
	je	.L57
	testl	%r15d, %r15d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %ecx
	cmovg	%r15d, %edi
	cmpl	$4, %ecx
	ja	.L58
	xorl	%r13d, %r13d
	xorl	%eax, %eax
.L21:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L25
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L25
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
.L25:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -104(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC9(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC10(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-3(%r14), %eax
	movl	%eax, -116(%rbp)
	testl	%edx, %edx
	jne	.L59
	cmpl	$3, -116(%rbp)
	jle	.L53
.L14:
	cmpl	$6, %r12d
	jle	.L15
	leal	(%r12,%r12), %esi
	movslq	%r12d, %rax
	movq	%r13, -168(%rbp)
	leal	(%rsi,%r12), %ecx
	leaq	0(,%rax,8), %r15
	movslq	%esi, %rsi
	movq	%rbx, -176(%rbp)
	leal	-7(%r12), %eax
	movslq	%ecx, %rdx
	movq	%r15, -128(%rbp)
	addl	%ecx, %ecx
	leaq	(%rdx,%rax), %rdi
	negq	%rdx
	movq	%rax, %r14
	salq	$3, %rax
	salq	$3, %rdx
	subq	%rax, %r15
	leaq	8(%rbx,%rdi,8), %r11
	movslq	%ecx, %rcx
	leaq	(%rdx,%rsi,8), %r10
	movq	%r15, %r8
	movq	%r13, %r15
	negq	%r14
	leal	0(,%r12,4), %esi
	leaq	(%rdx,%rcx,8), %rcx
	subq	%rax, %r15
	subq	%rax, %r10
	addl	%esi, %r12d
	movslq	%esi, %rdi
	movq	%rdx, %rsi
	subq	%rax, %rcx
	movslq	%r12d, %r12
	leaq	(%rdx,%rdi,8), %r9
	subq	%rax, %rsi
	subq	$8, %rcx
	leaq	(%rdx,%r12,8), %rdi
	subq	%rax, %r9
	leaq	-8(%r8,%rdx), %rdx
	movq	%rcx, -144(%rbp)
	subq	%rax, %rdi
	movq	%r15, %rax
	leaq	-8(,%r14,8), %r15
	movl	$3, %r12d
	subq	%rbx, %rax
	subq	$8, %rdi
	leaq	-8(%r10), %r14
	movq	%rdx, %rbx
	movq	%rdi, -160(%rbp)
	subq	$8, %rax
	leaq	-8(%rsi), %rdi
	leaq	-8(%r9), %r10
	movq	%rdi, -152(%rbp)
	movq	%r10, %r13
	movq	%rax, -136(%rbp)
	.p2align 4,,10
	.p2align 3
.L17:
	movq	-160(%rbp), %rsi
	addl	$1, %r12d
	leaq	(%r15,%r11), %rax
	movq	-152(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %r10
	leaq	(%r14,%r11), %r9
	leaq	0(%r13,%r11), %r8
	leaq	(%rbx,%r11), %rdi
	addq	%r11, %rsi
	addq	%r11, %rcx
	addq	%r11, %rdx
	addq	%r11, %r10
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L16:
	addq	$8, %rax
	vmovsd	(%rax), %xmm0
	addq	$8, %r9
	addq	$8, %r8
	addq	$8, %rdi
	addq	$8, %rsi
	addq	$8, %rcx
	addq	$8, %rdx
	vaddsd	8(%r9), %xmm0, %xmm2
	vmovsd	16(%rax), %xmm1
	addq	$8, %r10
	vmovsd	8(%rax), %xmm0
	vmulsd	-104(%rbp), %xmm1, %xmm4
	vaddsd	16(%r9), %xmm0, %xmm0
	vaddsd	16(%r8), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vmulsd	-96(%rbp), %xmm0, %xmm0
	vaddsd	8(%r8), %xmm2, %xmm2
	vaddsd	16(%rdi), %xmm2, %xmm2
	vaddsd	16(%rsi), %xmm2, %xmm2
	vaddsd	24(%r9), %xmm2, %xmm2
	vaddsd	24(%r8), %xmm2, %xmm2
	vaddsd	32(%rax), %xmm2, %xmm2
	vmulsd	-88(%rbp), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm0, %xmm1
	vaddsd	%xmm1, %xmm2, %xmm0
	vmovsd	-8(%rax), %xmm1
	vaddsd	(%r9), %xmm1, %xmm3
	vaddsd	(%r8), %xmm3, %xmm3
	vaddsd	8(%rdi), %xmm3, %xmm3
	vaddsd	8(%rsi), %xmm3, %xmm3
	vaddsd	16(%rcx), %xmm3, %xmm3
	vaddsd	16(%rdx), %xmm3, %xmm3
	vaddsd	24(%rdi), %xmm3, %xmm3
	vaddsd	24(%rsi), %xmm3, %xmm3
	vaddsd	32(%r9), %xmm3, %xmm3
	vaddsd	32(%r8), %xmm3, %xmm3
	vaddsd	40(%rax), %xmm3, %xmm3
	vmulsd	-80(%rbp), %xmm3, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	-8(%r9), %xmm0
	vaddsd	-8(%r8), %xmm0, %xmm2
	vaddsd	(%rdi), %xmm2, %xmm2
	vaddsd	(%rsi), %xmm2, %xmm2
	vaddsd	8(%rcx), %xmm2, %xmm2
	vaddsd	8(%rdx), %xmm2, %xmm2
	vaddsd	24(%rcx), %xmm2, %xmm2
	vaddsd	24(%rdx), %xmm2, %xmm2
	vaddsd	32(%rdi), %xmm2, %xmm2
	vaddsd	32(%rsi), %xmm2, %xmm2
	vaddsd	40(%r9), %xmm2, %xmm2
	vaddsd	40(%r8), %xmm2, %xmm2
	vmulsd	-72(%rbp), %xmm2, %xmm2
	vmovsd	-8(%rdi), %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm1
	vaddsd	(%rcx), %xmm1, %xmm1
	vaddsd	(%rdx), %xmm1, %xmm1
	vaddsd	32(%rcx), %xmm1, %xmm1
	vaddsd	32(%rdx), %xmm1, %xmm1
	vaddsd	40(%rdi), %xmm1, %xmm1
	vaddsd	40(%rsi), %xmm1, %xmm1
	vmulsd	-64(%rbp), %xmm1, %xmm1
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	-8(%rcx), %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	40(%rcx), %xmm0, %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 16(%r10)
	cmpq	%rax, %r11
	jne	.L16
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	addq	-128(%rbp), %r11
	cmpl	%r12d, -116(%rbp)
	jg	.L17
	movq	-168(%rbp), %r13
	movq	-176(%rbp), %rbx
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L53
	movq	%rbx, %rdi
	call	dummy
	movq	%r13, %rdi
	call	dummy
	leaq	-104(%rbp), %rdi
	call	dummy
	leaq	-96(%rbp), %rdi
	call	dummy
	leaq	-88(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	leaq	-72(%rbp), %rdi
	call	dummy
	leaq	-64(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
.L53:
	subq	$-128, %rsp
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
.L57:
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
	ja	.L21
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, 0(%r13)
	cmpl	$1, %edx
	je	.L33
	vmovsd	%xmm0, 8(%r13)
	cmpl	$3, %edx
	jne	.L34
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
	je	.L60
	vzeroupper
	jmp	.L21
.L59:
	movq	%rbx, %rdi
	call	dummy
	movq	%r13, %rdi
	call	dummy
	leaq	-104(%rbp), %rdi
	call	dummy
	leaq	-96(%rbp), %rdi
	call	dummy
	leaq	-88(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	leaq	-72(%rbp), %rdi
	call	dummy
	leaq	-64(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
	cmpl	$3, -116(%rbp)
	jg	.L14
	jmp	.L15
.L31:
	movl	$1, %r8d
	jmp	.L5
.L58:
	xorl	%edx, %edx
	xorl	%r13d, %r13d
	jmp	.L9
.L33:
	movl	$1, %eax
	jmp	.L9
.L60:
	vzeroupper
	jmp	.L25
.L56:
	vzeroupper
	jmp	.L8
.L3:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	xorl	%r13d, %r13d
	call	posix_memalign
	testl	%eax, %eax
	jne	.L25
	movq	-56(%rbp), %r13
	jmp	.L25
.L34:
	movl	$2, %eax
	jmp	.L9
.L32:
	movl	$2, %r8d
	jmp	.L5
.L29:
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
	.align 8
.LC7:
	.long	795717946
	.long	1072287406
	.align 8
.LC8:
	.long	3996871656
	.long	1071323785
	.align 8
.LC9:
	.long	573532618
	.long	1071548497
	.align 8
.LC10:
	.long	2427405650
	.long	1070976887
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
