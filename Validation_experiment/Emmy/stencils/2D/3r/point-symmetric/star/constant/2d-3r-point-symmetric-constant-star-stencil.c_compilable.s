	.file	"2d-3r-point-symmetric-constant-star-stencil.c_compilable.c"
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
	subq	$144, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r14
	movl	%r14d, %r12d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r12d
	movq	%rax, %rbx
	movslq	%r12d, %r13
	salq	$3, %r13
	movq	%r13, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rsi
	movq	%rsi, -184(%rbp)
	testl	%r12d, %r12d
	jle	.L3
	leal	-1(%r12), %r15d
	movq	%rsi, %rax
	movl	$5, %ecx
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
	movq	-184(%rbp), %rdx
	movl	%r12d, %esi
	subl	%eax, %esi
	vmovapd	.LC1(%rip), %ymm0
	movl	%esi, %ecx
	shrl	$2, %ecx
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
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
	movq	-184(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r12d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L8:
	leaq	-56(%rbp), %rdi
	movq	%r13, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L57
	testl	%r12d, %r12d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %r15d
	cmovg	%r12d, %edi
	cmpl	$4, %r15d
	ja	.L58
	movq	$0, -176(%rbp)
	xorl	%eax, %eax
.L21:
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L25
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r12d
	jle	.L25
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
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
	leal	-3(%rbx), %eax
	movl	%eax, -120(%rbp)
	testl	%edx, %edx
	jne	.L59
	cmpl	$3, -120(%rbp)
	jle	.L53
.L14:
	cmpl	$6, %r14d
	jle	.L15
	leal	(%r14,%r14), %eax
	movq	-184(%rbp), %rdi
	movslq	%r14d, %rbx
	movq	$0, -136(%rbp)
	movslq	%eax, %r15
	addl	%r14d, %eax
	movq	-176(%rbp), %r8
	movq	%rbx, -144(%rbp)
	movslq	%eax, %rsi
	addl	%eax, %eax
	movl	$3, -116(%rbp)
	leal	0(,%r14,4), %r12d
	cltq
	movq	%rax, -128(%rbp)
	leaq	0(,%rbx,8), %rax
	movslq	%r12d, %r13
	addl	%r14d, %r12d
	movq	%rax, -152(%rbp)
	leal	-7(%r14), %eax
	movslq	%r12d, %r12
	leaq	(%rax,%rsi), %rdx
	leaq	8(%rdi,%rdx,8), %rcx
	movq	%rax, %rdx
	salq	$3, %rax
	subq	%rax, %r8
	negq	%rdx
	movq	%r8, %rax
	subq	%rdi, %rax
	leaq	-8(,%rdx,8), %rdi
	subq	$8, %rax
	movq	%rdi, -168(%rbp)
	movq	%rax, -160(%rbp)
	.p2align 4,,10
	.p2align 3
.L17:
	movq	-160(%rbp), %rdi
	movq	%r15, %r14
	movq	%r13, %r11
	movq	%r12, %r9
	movq	-168(%rbp), %rax
	subq	%rsi, %r14
	subq	%rsi, %r11
	subq	%rsi, %r9
	movq	-144(%rbp), %r10
	movq	-136(%rbp), %r8
	addl	$1, -116(%rbp)
	leaq	(%rdi,%rcx), %rdx
	movq	-128(%rbp), %rdi
	addq	%rcx, %rax
	subq	%rsi, %r10
	subq	%rsi, %r8
	subq	%rsi, %rdi
	.p2align 4,,10
	.p2align 3
.L16:
	vmovsd	24(%rax), %xmm4
	addq	$8, %rdx
	vmovsd	16(%rax), %xmm0
	vmulsd	-104(%rbp), %xmm4, %xmm1
	vaddsd	32(%rax), %xmm0, %xmm0
	vmulsd	-96(%rbp), %xmm0, %xmm0
	vmovsd	8(%rax), %xmm3
	vaddsd	40(%rax), %xmm3, %xmm3
	vmulsd	-80(%rbp), %xmm3, %xmm3
	vmovsd	24(%rax,%r10,8), %xmm2
	vaddsd	%xmm1, %xmm0, %xmm4
	vmovsd	24(%rax,%r14,8), %xmm0
	vaddsd	24(%rax,%r11,8), %xmm0, %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	24(%rax,%r9,8), %xmm2, %xmm2
	vmulsd	-72(%rbp), %xmm2, %xmm2
	vmovsd	(%rax), %xmm1
	vaddsd	48(%rax), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	-64(%rbp), %xmm1, %xmm1
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	24(%rax,%r8,8), %xmm0
	vaddsd	24(%rax,%rdi,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 16(%rdx)
	cmpq	%rax, %rcx
	jne	.L16
	addq	%rbx, %r15
	addq	%rbx, %rsi
	addq	%rbx, %r13
	addq	-152(%rbp), %rcx
	addq	%rbx, -144(%rbp)
	addq	%rbx, %r12
	addq	%rbx, -136(%rbp)
	addq	%rbx, -128(%rbp)
	movl	-116(%rbp), %edi
	cmpl	%edi, -120(%rbp)
	jg	.L17
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L53
	movq	-184(%rbp), %rdi
	call	dummy
	movq	-176(%rbp), %rdi
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
.L57:
	.cfi_restore_state
	movq	-56(%rbp), %rsi
	testl	%r12d, %r12d
	movl	$1, %edi
	cmovg	%r12d, %edi
	movq	%rsi, -176(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %ecx
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	testl	%r12d, %r12d
	cmovle	%eax, %r15d
	cmpl	%r15d, %ecx
	ja	.L21
	testl	%edx, %edx
	je	.L9
	movq	-176(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L33
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L34
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	movq	-176(%rbp), %rcx
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
	je	.L60
	vzeroupper
	jmp	.L21
.L59:
	movq	-184(%rbp), %rdi
	call	dummy
	movq	-176(%rbp), %rdi
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
	cmpl	$3, -120(%rbp)
	jg	.L14
	jmp	.L15
.L31:
	movl	$1, %edi
	jmp	.L5
.L58:
	movq	$0, -176(%rbp)
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
	leaq	-56(%rbp), %rdi
	movq	%r13, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -176(%rbp)
	testl	%eax, %eax
	jne	.L25
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)
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
