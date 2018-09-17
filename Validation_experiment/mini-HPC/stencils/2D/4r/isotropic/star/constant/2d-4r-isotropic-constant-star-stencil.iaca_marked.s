	.file	"2d-4r-isotropic-constant-star-stencil.c_compilable.c"
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
	subq	$160, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	movl	%r12d, %r13d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r13d
	movq	%rax, %rbx
	movslq	%r13d, %r14
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rsi
	movq	%rsi, -200(%rbp)
	testl	%r13d, %r13d
	jle	.L3
	movq	%rsi, %rax
	movl	$5, %ecx
	leal	-1(%r13), %r15d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%r15d, %edx
	ja	.L29
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rsi)
	cmpl	$1, %eax
	je	.L31
	vmovsd	%xmm0, 8(%rsi)
	cmpl	$3, %eax
	jne	.L32
	vmovsd	%xmm0, 16(%rsi)
	movl	$3, %edi
.L5:
	movl	%r13d, %esi
	movq	-200(%rbp), %rdx
	vmovapd	.LC1(%rip), %ymm0
	subl	%eax, %esi
	movl	%esi, %ecx
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
	shrl	$2, %ecx
	.p2align 4,,10
	.p2align 3
.L7:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%ecx, %eax
	jb	.L7
	movl	%esi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rdi), %eax
	cmpl	%esi, %edx
	je	.L56
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movq	-200(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L8:
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L57
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %r15d
	cmovg	%r13d, %edi
	cmpl	$4, %r15d
	ja	.L58
	movq	$0, -192(%rbp)
	xorl	%eax, %eax
.L21:
	vmovsd	.LC2(%rip), %xmm0
	movq	-192(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L25
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L25
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L25:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -88(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-4(%r12), %eax
	movl	%eax, -104(%rbp)
	testl	%edx, %edx
	jne	.L59
	cmpl	$4, -104(%rbp)
	jle	.L53
.L14:
	cmpl	$8, %ebx
	jle	.L15
	leal	(%rbx,%rbx), %edx
	leal	0(,%rbx,4), %r15d
	movslq	%ebx, %rdi
	movq	-192(%rbp), %r9
	leal	(%rdx,%rbx), %eax
	movslq	%edx, %rcx
	movq	%rdi, -136(%rbp)
	movslq	%eax, %rsi
	addl	%eax, %eax
	movq	%rcx, -152(%rbp)
	cltq
	movq	%rsi, -160(%rbp)
	movslq	%r15d, %rsi
	addl	%ebx, %r15d
	movq	%rax, -144(%rbp)
	leal	0(,%rbx,8), %eax
	movslq	%r15d, %r15
	movl	%eax, %edx
	movslq	%eax, %r8
	leal	-9(%rbx), %eax
	movq	$0, -120(%rbp)
	subl	%ebx, %edx
	movq	-200(%rbp), %rbx
	movq	%r8, -168(%rbp)
	movslq	%edx, %rcx
	leaq	(%rax,%rsi), %rdx
	movq	%r8, -112(%rbp)
	movq	%rcx, -128(%rbp)
	leaq	8(%rbx,%rdx,8), %rcx
	movq	%rax, %rdx
	salq	$3, %rax
	subq	%rax, %r9
	negq	%rdx
	movl	$4, -100(%rbp)
	movq	%r9, %rax
	subq	%rbx, %rax
	leaq	-8(,%rdx,8), %rbx
	subq	$8, %rax
	movq	%rbx, -184(%rbp)
	movq	%rax, -176(%rbp)
	.p2align 4,,10
	.p2align 3
.L17:
	movq	-176(%rbp), %rbx
	addl	$1, -100(%rbp)
	movq	%r15, %r13
	movq	-184(%rbp), %rax
	movq	-128(%rbp), %r10
	subq	%rsi, %r13
	leaq	(%rbx,%rcx), %rdx
	movq	-120(%rbp), %r9
	movq	-112(%rbp), %r8
	movq	-160(%rbp), %r14
	addq	%rcx, %rax
	subq	%rsi, %r10
	movq	-152(%rbp), %r12
	movq	-144(%rbp), %rbx
	movq	-136(%rbp), %r11
	subq	%rsi, %r9
	subq	%rsi, %r8
	subq	%rsi, %r14
	subq	%rsi, %r12
	subq	%rsi, %rbx
	subq	%rsi, %r11
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L16:
	vmovsd	32(%rax,%r14,8), %xmm3
	vmovsd	24(%rax), %xmm0
	addq	$8, %rdx
	vaddsd	40(%rax), %xmm0, %xmm0
	vaddsd	32(%rax,%r13,8), %xmm3, %xmm3
	vmovsd	32(%rax,%r11,8), %xmm1
	vaddsd	32(%rax,%r10,8), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm3, %xmm3
	vmulsd	-80(%rbp), %xmm3, %xmm2
	vmovsd	32(%rax), %xmm3
	vmulsd	-88(%rbp), %xmm3, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	32(%rax,%r12,8), %xmm2
	vmovsd	16(%rax), %xmm0
	vaddsd	32(%rax,%rbx,8), %xmm2, %xmm2
	vaddsd	48(%rax), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm2
	vmovsd	8(%rax), %xmm0
	vmulsd	-72(%rbp), %xmm2, %xmm2
	vaddsd	56(%rax), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	-64(%rbp), %xmm1, %xmm1
	vmovsd	(%rax), %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vaddsd	64(%rax), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	32(%rax,%r9,8), %xmm2
	vaddsd	32(%rax,%r8,8), %xmm2, %xmm2
	addq	$8, %rax
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 24(%rdx)
	cmpq	%rax, %rcx
	jne	.L16
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	addq	%rdi, -160(%rbp)
	addq	%rdi, %rsi
	addq	%rdi, %r15
	movl	-100(%rbp), %ebx
	addq	%rdi, -152(%rbp)
	addq	-168(%rbp), %rcx
	addq	%rdi, -144(%rbp)
	addq	%rdi, -136(%rbp)
	addq	%rdi, -128(%rbp)
	addq	%rdi, -120(%rbp)
	addq	%rdi, -112(%rbp)
	cmpl	%ebx, -104(%rbp)
	jg	.L17
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L53
	movq	-200(%rbp), %rdi
	call	dummy
	movq	-192(%rbp), %rdi
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
	addq	$160, %rsp
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
	movq	-56(%rbp), %rsi
	testl	%r13d, %r13d
	movl	$1, %edi
	cmovg	%r13d, %edi
	movq	%rsi, -192(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %ecx
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	testl	%r13d, %r13d
	cmovle	%eax, %r15d
	cmpl	%r15d, %ecx
	ja	.L21
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	movq	-192(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L33
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L34
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	movq	-192(%rbp), %rcx
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
	je	.L60
	vzeroupper
	jmp	.L21
.L59:
	movq	-200(%rbp), %rdi
	call	dummy
	movq	-192(%rbp), %rdi
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
	cmpl	$4, -104(%rbp)
	jg	.L14
	jmp	.L15
.L31:
	movl	$1, %edi
	jmp	.L5
.L58:
	movq	$0, -192(%rbp)
	xorl	%edx, %edx
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
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -192(%rbp)
	testl	%eax, %eax
	jne	.L25
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)
	jmp	.L25
.L34:
	movl	$2, %eax
	jmp	.L9
.L32:
	movl	$2, %edi
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
