	.file	"3d-1r-homogeneous-variable-box-stencil.c_compilable.c"
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
	subq	$176, %rsp
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r15
	movq	%rax, -72(%rbp)
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	movl	%r15d, %ecx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %ecx
	movq	%rax, -80(%rbp)
	imull	%r12d, %ecx
	movslq	%ecx, %r14
	movq	%r14, %r13
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -216(%rbp)
	testl	%r13d, %r13d
	jle	.L3
	movq	%rdi, %rax
	movl	$5, %esi
	leal	-1(%r13), %ebx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%ebx, %edx
	ja	.L43
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rdi)
	cmpl	$1, %eax
	je	.L45
	vmovsd	%xmm0, 8(%rdi)
	cmpl	$3, %eax
	jne	.L46
	vmovsd	%xmm0, 16(%rdi)
	movl	$3, %r8d
.L5:
	movl	%r13d, %edi
	movq	-216(%rbp), %rdx
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
	je	.L78
	vzeroupper
	movq	-216(%rbp), %rdi
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L8:
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L79
.L32:
	movq	$0, -56(%rbp)
	xorl	%r15d, %r15d
	testl	%r13d, %r13d
	jle	.L10
	leal	-1(%r13), %ebx
.L31:
	testl	%r13d, %r13d
	movl	$1, %edi
	movq	%r15, %rax
	movl	$5, %esi
	cmovg	%r13d, %edi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	testl	%r13d, %r13d
	movl	$0, %esi
	cmovg	%ebx, %esi
	cmpl	%esi, %edx
	ja	.L47
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.L12
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L49
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L50
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %esi
.L12:
	subl	%eax, %edi
	vmovapd	.LC3(%rip), %ymm0
	leaq	(%r15,%rax,8), %rdx
	xorl	%eax, %eax
	movl	%edi, %r8d
	shrl	$2, %r8d
	.p2align 4,,10
	.p2align 3
.L14:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%r8d, %eax
	jb	.L14
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rsi), %eax
	cmpl	%edi, %edx
	je	.L80
	vzeroupper
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L15
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r15,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
.L15:
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L81
	movq	-56(%rbp), %r14
	testl	%r13d, %r13d
	movl	$1, %r8d
	movl	$5, %edi
	cmovg	%r13d, %r8d
	movq	%r14, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %esi
	cmpl	$5, %esi
	cmovb	%edi, %esi
	testl	%r13d, %r13d
	cmovle	%eax, %ebx
	cmpl	%ebx, %esi
	ja	.L36
	testl	%edx, %edx
	je	.L18
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%r14)
	cmpl	$1, %edx
	je	.L51
	vmovsd	%xmm0, 8(%r14)
	cmpl	$3, %edx
	jne	.L52
	vmovsd	%xmm0, 16(%r14)
	movl	$3, %eax
.L18:
	subl	%edx, %r8d
	vmovapd	.LC5(%rip), %ymm0
	leaq	(%r14,%rdx,8), %rsi
	xorl	%edx, %edx
	movl	%r8d, %edi
	shrl	$2, %edi
	.p2align 4,,10
	.p2align 3
.L20:
	addl	$1, %edx
	vmovapd	%ymm0, (%rsi)
	addq	$32, %rsi
	cmpl	%edi, %edx
	jb	.L20
	movl	%r8d, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%r8d, %edx
	je	.L82
	vzeroupper
.L36:
	vmovsd	.LC4(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r14,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%r14,%rax,8)
.L17:
	movl	-80(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$1, %eax
	movl	%eax, -180(%rbp)
	testl	%edx, %edx
	jne	.L83
	cmpl	$1, -180(%rbp)
	jle	.L75
	movq	-72(%rbp), %rsi
	leal	-1(%r12), %eax
	movl	%esi, %ebx
	imull	%r12d, %ebx
	movl	%ebx, -184(%rbp)
	cmpl	$2, %esi
	jle	.L75
.L42:
	cmpl	$1, %eax
	jle	.L24
	movl	-184(%rbp), %esi
	movslq	%r12d, %rbx
	movq	-216(%rbp), %rcx
	movl	$0, -176(%rbp)
	movq	%rbx, -136(%rbp)
	leal	(%rsi,%rsi), %eax
	movl	%esi, -168(%rbp)
	movl	%eax, -172(%rbp)
	leal	(%r12,%r12), %eax
	movl	$1, -164(%rbp)
	cltq
	movq	%rax, -192(%rbp)
	leaq	0(,%rbx,8), %rax
	movq	%rax, -152(%rbp)
	leal	-3(%r12), %eax
	imulq	$-8, %rax, %rdx
	addq	%rbx, %rax
	movq	%rax, -200(%rbp)
	leaq	8(%rcx), %rax
	movq	%rax, -208(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdx, %rdi
	leaq	-8(%rdx), %rsi
	subq	%rcx, %rdi
	subl	$1, %eax
	movq	%rsi, -160(%rbp)
	movq	%rdi, -144(%rbp)
	movl	%eax, -96(%rbp)
	.p2align 4,,10
	.p2align 3
.L27:
	movq	-192(%rbp), %rbx
	movslq	-176(%rbp), %rax
	movq	$0, -120(%rbp)
	movslq	-172(%rbp), %rdx
	movslq	-168(%rbp), %rsi
	movl	$1, -92(%rbp)
	leaq	(%rbx,%rax), %rdi
	movq	-200(%rbp), %rcx
	addl	$1, -164(%rbp)
	movq	%rdi, -104(%rbp)
	leaq	(%rbx,%rdx), %rdi
	movq	-136(%rbp), %r13
	movq	%rdi, -80(%rbp)
	movq	-208(%rbp), %rdi
	addq	%rsi, %rcx
	movq	%rsi, -72(%rbp)
	movq	%rax, -128(%rbp)
	leaq	(%rdi,%rcx,8), %r12
	movq	%rbx, -88(%rbp)
	movq	%rax, %rbx
	movq	%rdx, -112(%rbp)
	subq	%rsi, %rdx
	subq	%rsi, %rbx
	movq	%rdx, %r11
	.p2align 4,,10
	.p2align 3
.L28:
	movq	-128(%rbp), %r8
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-72(%rbp), %rcx
	subq	%r13, %r8
	subq	%r13, %rdi
	addl	$1, -92(%rbp)
	movq	-120(%rbp), %r10
	subq	%r13, %rsi
	movq	-160(%rbp), %rax
	subq	%rcx, %r8
	subq	%rcx, %rdi
	movq	-144(%rbp), %rdx
	subq	%rcx, %rsi
	movq	-88(%rbp), %r9
	subq	%r13, %r10
	movq	-80(%rbp), %rcx
	addq	%r12, %rax
	addq	%r12, %rdx
	subq	%r13, %r9
	subq	%r13, %rcx
	subq	-72(%rbp), %rcx
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L25:
	vmovsd	8(%rax), %xmm0
	vaddsd	(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vaddsd	16(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rcx,8), %xmm0, %xmm0
	vmulsd	(%r14,%rdx), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, (%r15,%rdx)
	addq	$8, %rdx
	cmpq	%r12, %rax
	jne	.L25
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-136(%rbp), %rcx
	movq	-152(%rbp), %rdx
	addq	%rcx, -128(%rbp)
	leaq	(%rax,%rdx), %r12
	addq	%rcx, %r13
	addq	%rcx, -120(%rbp)
	movl	-96(%rbp), %edx
	addq	%rcx, -112(%rbp)
	addq	%rcx, -104(%rbp)
	addq	%rcx, -88(%rbp)
	addq	%rcx, -80(%rbp)
	cmpl	%edx, -92(%rbp)
	jne	.L28
	movl	-184(%rbp), %eax
	movl	-164(%rbp), %ebx
	addl	%eax, -176(%rbp)
	addl	%eax, -172(%rbp)
	addl	%eax, -168(%rbp)
	cmpl	%ebx, -180(%rbp)
	jg	.L27
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L75
	movq	-216(%rbp), %rdi
	call	dummy
	movq	%r15, %rdi
	call	dummy
	movq	%r14, %rdi
	call	dummy
.L75:
	addq	$176, %rsp
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
.L79:
	.cfi_restore_state
	movq	-56(%rbp), %r15
	jmp	.L31
.L45:
	movl	$1, %r8d
	jmp	.L5
.L81:
	xorl	%r14d, %r14d
	testl	%r13d, %r13d
	jle	.L17
	movl	%r13d, %r8d
	cmpl	$4, %ebx
	jbe	.L53
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	jmp	.L18
.L83:
	movq	-216(%rbp), %rdi
	call	dummy
	movq	%r15, %rdi
	call	dummy
	movq	%r14, %rdi
	call	dummy
	cmpl	$1, -180(%rbp)
	jle	.L24
	movq	-72(%rbp), %rsi
	leal	-1(%r12), %eax
	movl	%esi, %ebx
	imull	%r12d, %ebx
	movl	%ebx, -184(%rbp)
	cmpl	$2, %esi
	jg	.L42
	jmp	.L24
.L49:
	movl	$1, %esi
	jmp	.L12
.L78:
	vzeroupper
	jmp	.L8
.L82:
	vzeroupper
	jmp	.L17
.L80:
	vzeroupper
	jmp	.L15
.L51:
	movl	$1, %eax
	jmp	.L18
.L3:
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L32
	movq	-56(%rbp), %r15
.L10:
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	xorl	%r14d, %r14d
	call	posix_memalign
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %r14
	jmp	.L17
.L53:
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	jmp	.L36
.L46:
	movl	$2, %r8d
	jmp	.L5
.L52:
	movl	$2, %eax
	jmp	.L18
.L50:
	movl	$2, %esi
	jmp	.L12
.L47:
	xorl	%eax, %eax
	jmp	.L11
.L43:
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
