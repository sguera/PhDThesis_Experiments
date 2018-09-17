	.file	"2d-3r-point-symmetric-variable-box-stencil.c_compilable.c"
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
	subq	$112, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	movl	%r12d, %r13d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
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
	movq	%rsi, -152(%rbp)
	testl	%r13d, %r13d
	jle	.L3
	leal	-1(%r13), %r15d
	movq	%rsi, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%r15d, %edx
	ja	.L36
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rsi)
	cmpl	$1, %eax
	je	.L38
	vmovsd	%xmm0, 8(%rsi)
	cmpl	$3, %eax
	jne	.L39
	vmovsd	%xmm0, 16(%rsi)
	movl	$3, %edi
.L5:
	movq	-152(%rbp), %rdx
	movl	%r13d, %esi
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
	je	.L73
	vzeroupper
.L4:
	movq	-152(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC0(%rip), %xmm0
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
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L74
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %r15d
	cmovg	%r13d, %edi
	cmpl	$4, %r15d
	ja	.L75
	movq	$0, -144(%rbp)
	xorl	%eax, %eax
.L28:
	movq	-144(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L32
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L32
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L32
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L32:
	leal	0(%r13,%r13,4), %eax
	movl	$32, %esi
	leal	(%rax,%rax,4), %r13d
	leaq	-56(%rbp), %rdi
	movslq	%r13d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %rsi
	movq	%rsi, -160(%rbp)
	testl	%r13d, %r13d
	jle	.L14
	movq	%rsi, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	leal	-1(%r13), %ecx
	cmpl	%ecx, %edx
	ja	.L42
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L16
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rsi)
	cmpl	$1, %eax
	je	.L44
	vmovsd	%xmm0, 8(%rsi)
	cmpl	$3, %eax
	jne	.L45
	vmovsd	%xmm0, 16(%rsi)
	movl	$3, %edi
.L16:
	movq	-160(%rbp), %rdx
	movl	%r13d, %esi
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
	je	.L76
	vzeroupper
.L15:
	movq	-160(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%r13d, %edx
	jge	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-3(%r12), %eax
	movl	%eax, -68(%rbp)
	testl	%edx, %edx
	jne	.L77
	cmpl	$3, -68(%rbp)
	jle	.L70
.L21:
	leal	0(,%rbx,4), %esi
	leal	(%rsi,%rbx), %edx
	leal	(%rdx,%rdx,4), %r10d
	cmpl	$6, %ebx
	jle	.L22
	movq	-152(%rbp), %rax
	movslq	%ebx, %rcx
	movslq	%r10d, %r8
	movslq	%esi, %rsi
	leal	(%rbx,%rbx), %edi
	movq	-144(%rbp), %r14
	subq	%rcx, %rsi
	movslq	%edx, %rdx
	leal	(%r10,%r10,2), %r10d
	subq	%rcx, %rdx
	movl	$3, %r13d
	leaq	0(,%rcx,8), %r15
	movslq	%r10d, %r10
	leaq	0(,%r8,8), %r11
	leaq	(%rax,%r15), %r12
	movq	%r11, -120(%rbp)
	leal	(%rdi,%rbx), %eax
	movslq	%edi, %rdi
	leal	-7(%rbx), %r8d
	subq	%rcx, %rdi
	movslq	%eax, %r9
	movq	-160(%rbp), %rbx
	leaq	(%r8,%r8,4), %r11
	salq	$3, %rdi
	addl	%eax, %eax
	imulq	$-200, %r8, %r8
	movq	%rdi, -104(%rbp)
	cltq
	leaq	0(,%rsi,8), %rdi
	subq	%rcx, %rax
	movq	%rdi, -96(%rbp)
	leaq	0(,%rdx,8), %rdi
	movq	%rcx, %rdx
	salq	$3, %rax
	leaq	(%r11,%r11,4), %r11
	negq	%rdx
	movq	%rdi, -88(%rbp)
	leaq	(%r14,%r9,8), %r14
	subq	%rcx, %r9
	addq	%r11, %r10
	movq	%rax, -80(%rbp)
	leaq	0(,%r9,8), %r11
	leaq	0(,%rdx,8), %rdi
	movq	%r11, -112(%rbp)
	leaq	-200(%r8), %rax
	movq	%rdi, -128(%rbp)
	leaq	200(%rbx,%r10,8), %rbx
	movq	%rax, -136(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-112(%rbp), %rsi
	addl	$1, %r13d
	movq	%r14, %r11
	movq	%r12, %rdx
	movq	-96(%rbp), %rcx
	movq	-104(%rbp), %rdi
	movq	-136(%rbp), %rax
	leaq	(%rsi,%r12), %r10
	movq	-88(%rbp), %rsi
	leaq	(%rcx,%r12), %r8
	movq	-128(%rbp), %rcx
	leaq	(%rdi,%r12), %r9
	addq	%rbx, %rax
	leaq	(%rsi,%r12), %rdi
	leaq	(%rcx,%r12), %rsi
	movq	-80(%rbp), %rcx
	addq	%r12, %rcx
	.p2align 4,,10
	.p2align 3
.L23:
	vmovsd	600(%rax), %xmm3
	addq	$200, %rax
	addq	$8, %r10
	addq	$8, %r9
	vmulsd	16(%r10), %xmm3, %xmm0
	addq	$8, %r8
	addq	$8, %rdx
	vmovsd	8(%r10), %xmm2
	addq	$8, %rdi
	addq	$8, %rsi
	addq	$8, %rcx
	vaddsd	24(%r10), %xmm2, %xmm2
	addq	$8, %r11
	vmulsd	408(%rax), %xmm2, %xmm2
	vmovsd	(%r10), %xmm1
	vaddsd	32(%r10), %xmm1, %xmm1
	vmulsd	424(%rax), %xmm1, %xmm1
	vmovsd	8(%r9), %xmm4
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	16(%r9), %xmm2
	vaddsd	16(%r8), %xmm2, %xmm2
	vmulsd	416(%rax), %xmm2, %xmm2
	vaddsd	24(%r8), %xmm4, %xmm4
	vmulsd	432(%rax), %xmm4, %xmm4
	vmovsd	8(%r8), %xmm0
	vaddsd	24(%r9), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	440(%rax), %xmm0, %xmm0
	vmovsd	16(%rdx), %xmm3
	vaddsd	16(%rdi), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	448(%rax), %xmm3, %xmm3
	vmovsd	-8(%r10), %xmm2
	vaddsd	40(%r10), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	456(%rax), %xmm2, %xmm2
	vmovsd	(%r9), %xmm1
	vaddsd	32(%r8), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	464(%rax), %xmm1, %xmm1
	vmovsd	(%r8), %xmm4
	vaddsd	32(%r9), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	472(%rax), %xmm4, %xmm4
	vmovsd	8(%rdx), %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	480(%rax), %xmm0, %xmm0
	vmovsd	8(%rdi), %xmm3
	vaddsd	24(%rdx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	488(%rax), %xmm3, %xmm3
	vmovsd	16(%rsi), %xmm2
	vaddsd	16(%rcx), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	496(%rax), %xmm2, %xmm2
	vmovsd	-8(%r9), %xmm1
	vaddsd	40(%r8), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	504(%rax), %xmm1, %xmm1
	vmovsd	-8(%r8), %xmm4
	vaddsd	40(%r9), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	512(%rax), %xmm4, %xmm4
	vmovsd	(%rdx), %xmm0
	vaddsd	32(%rdi), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	520(%rax), %xmm0, %xmm0
	vmovsd	(%rdi), %xmm3
	vaddsd	32(%rdx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	528(%rax), %xmm3, %xmm3
	vmovsd	8(%rsi), %xmm2
	vaddsd	24(%rcx), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	536(%rax), %xmm2, %xmm2
	vmovsd	8(%rcx), %xmm1
	vaddsd	24(%rsi), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	544(%rax), %xmm1, %xmm1
	vmovsd	-8(%rdx), %xmm4
	vaddsd	40(%rdi), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	552(%rax), %xmm4, %xmm4
	vmovsd	-8(%rdi), %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	560(%rax), %xmm0, %xmm0
	vmovsd	(%rsi), %xmm3
	vaddsd	32(%rcx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	568(%rax), %xmm3, %xmm3
	vmovsd	(%rcx), %xmm2
	vaddsd	32(%rsi), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	576(%rax), %xmm2, %xmm2
	vmovsd	-8(%rsi), %xmm1
	vaddsd	40(%rcx), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	584(%rax), %xmm1, %xmm1
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	-8(%rcx), %xmm0
	vaddsd	40(%rsi), %xmm0, %xmm0
	vmulsd	592(%rax), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 16(%r11)
	cmpq	%rax, %rbx
	jne	.L23
	addq	%r15, %r12
	addq	%r15, %r14
	addq	-120(%rbp), %rbx
	cmpl	%r13d, -68(%rbp)
	jg	.L24
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L70
	movq	-152(%rbp), %rdi
	call	dummy
	movq	-144(%rbp), %rdi
	call	dummy
	movq	-160(%rbp), %rdi
	call	dummy
.L70:
	addq	$112, %rsp
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
	movq	-56(%rbp), %rsi
	testl	%r13d, %r13d
	movl	$1, %edi
	cmovg	%r13d, %edi
	movq	%rsi, -144(%rbp)
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
	ja	.L28
	testl	%edx, %edx
	je	.L9
	movq	-144(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L40
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L41
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	movq	-144(%rbp), %rcx
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
	je	.L78
	vzeroupper
	jmp	.L28
.L77:
	movq	-152(%rbp), %rdi
	call	dummy
	movq	-144(%rbp), %rdi
	call	dummy
	movq	-160(%rbp), %rdi
	call	dummy
	cmpl	$3, -68(%rbp)
	jg	.L21
	jmp	.L22
.L38:
	movl	$1, %edi
	jmp	.L5
.L75:
	movq	$0, -144(%rbp)
	xorl	%edx, %edx
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
	movl	$1, %edi
	jmp	.L16
.L73:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-56(%rbp), %rdi
	movq	%r14, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -144(%rbp)
	testl	%eax, %eax
	jne	.L32
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.L32
.L41:
	movl	$2, %eax
	jmp	.L9
.L45:
	movl	$2, %edi
	jmp	.L16
.L39:
	movl	$2, %edi
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
