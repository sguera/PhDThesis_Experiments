	.file	"2d-2r-heterogeneous-constant-box-stencil.c_compilable.c"
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
	subq	$240, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	movl	%r13d, %r15d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r15d
	movq	%rax, %r14
	movslq	%r15d, %r12
	salq	$3, %r12
	movq	%r12, %rdx
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
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%rbx,%rax,8), %rdx
	movl	%r15d, %edi
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
	movq	%r12, %rdx
	movl	$32, %esi
	movl	%ecx, -260(%rbp)
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movl	-260(%rbp), %ecx
	testl	%eax, %eax
	je	.L57
	testl	%r15d, %r15d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %ecx
	cmovg	%r15d, %edi
	cmpl	$4, %ecx
	ja	.L58
	xorl	%r12d, %r12d
	xorl	%eax, %eax
.L21:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L25
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r12,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L25
	cltq
	vmovsd	%xmm0, (%r12,%rax,8)
.L25:
	movq	.LC4(%rip), %rax
	movq	%rax, -248(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -240(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -232(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -224(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -216(%rbp)
	movq	.LC9(%rip), %rax
	movq	%rax, -208(%rbp)
	movq	.LC10(%rip), %rax
	movq	%rax, -200(%rbp)
	movq	.LC11(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	.LC12(%rip), %rax
	movq	%rax, -184(%rbp)
	movq	.LC13(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	.LC14(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	.LC15(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	.LC16(%rip), %rax
	movq	%rax, -152(%rbp)
	movq	.LC17(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	.LC18(%rip), %rax
	movq	%rax, -136(%rbp)
	movq	.LC19(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	.LC20(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -120(%rbp)
	movq	.LC21(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC22(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	.LC23(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.LC24(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	.LC25(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC26(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC27(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC28(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-2(%r13), %eax
	movl	%eax, -260(%rbp)
	testl	%edx, %edx
	jne	.L59
	cmpl	$2, -260(%rbp)
	jle	.L53
.L14:
	cmpl	$4, %r14d
	jle	.L15
	movslq	%r14d, %rax
	movq	%r12, %r10
	movq	%r12, -280(%rbp)
	leal	(%r14,%r14), %ecx
	movq	%rbx, -288(%rbp)
	leal	-5(%r14), %edx
	leaq	0(,%rax,8), %rdi
	movslq	%ecx, %rax
	addl	%r14d, %ecx
	leaq	(%rax,%rdx), %rsi
	negq	%rax
	movq	%rdx, %r11
	movq	%rdi, -272(%rbp)
	sall	$2, %r14d
	salq	$3, %rdx
	movslq	%ecx, %rcx
	salq	$3, %rax
	movslq	%r14d, %r14
	subq	%rdx, %r10
	leaq	8(%rbx,%rsi,8), %r9
	movq	%rax, %r8
	subq	%rdx, %rdi
	leaq	(%rax,%rcx,8), %rsi
	subq	%rdx, %r8
	negq	%r11
	leaq	(%rax,%r14,8), %rcx
	subq	%rdx, %rsi
	leaq	-8(,%r11,8), %r15
	subq	%rdx, %rcx
	movq	%r10, %rdx
	leaq	-8(%rdi,%rax), %r13
	subq	%rbx, %rdx
	movl	$2, %r10d
	leaq	-8(%rsi), %r11
	leaq	-8(%rcx), %rax
	leaq	-8(%rdx), %rsi
	movq	%rax, %r12
	leaq	-8(%r8), %r14
	movq	%rsi, %rbx
	.p2align 4,,10
	.p2align 3
.L17:
	leaq	(%r15,%r9), %rax
	addl	$1, %r10d
	leaq	(%r14,%r9), %rdi
	leaq	0(%r13,%r9), %rsi
	leaq	(%r11,%r9), %rcx
	leaq	(%r12,%r9), %rdx
	leaq	(%rbx,%r9), %r8
	.p2align 4,,10
	.p2align 3
.L16:
	vmovsd	(%rdi), %xmm1
	addq	$8, %rax
	addq	$8, %rdi
	addq	$8, %rsi
	vmovsd	8(%rax), %xmm2
	addq	$8, %rcx
	addq	$8, %rdx
	addq	$8, %r8
	vmulsd	-248(%rbp), %xmm2, %xmm2
	vmulsd	-240(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-8(%rsi), %xmm2
	vmulsd	-232(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-8(%rax), %xmm1
	vmulsd	-224(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-8(%rcx), %xmm2
	vmulsd	-216(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-8(%rdx), %xmm1
	vmulsd	-208(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rdi), %xmm2
	vmulsd	-200(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rsi), %xmm1
	vmulsd	-192(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rax), %xmm2
	vmulsd	-184(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rcx), %xmm1
	vmulsd	-176(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rdx), %xmm2
	vmulsd	-168(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rdi), %xmm1
	vmulsd	-160(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%rsi), %xmm2
	vmulsd	-152(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rcx), %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%rdx), %xmm2
	vmulsd	-136(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	16(%rdi), %xmm1
	vmulsd	-128(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rsi), %xmm2
	vmulsd	-120(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	16(%rax), %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rcx), %xmm2
	vmulsd	-104(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	16(%rdx), %xmm1
	vmulsd	-96(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rdi), %xmm2
	vmulsd	-88(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rsi), %xmm1
	vmulsd	-80(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rax), %xmm2
	vmulsd	-72(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rcx), %xmm1
	vmulsd	-64(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rdx), %xmm0
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%r8)
	cmpq	%rax, %r9
	jne	.L16
	addq	-272(%rbp), %r9
	cmpl	%r10d, -260(%rbp)
	jg	.L17
	movq	-280(%rbp), %r12
	movq	-288(%rbp), %rbx
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L53
	movq	%rbx, %rdi
	call	dummy
	movq	%r12, %rdi
	call	dummy
	leaq	-248(%rbp), %rdi
	call	dummy
	leaq	-240(%rbp), %rdi
	call	dummy
	leaq	-232(%rbp), %rdi
	call	dummy
	leaq	-224(%rbp), %rdi
	call	dummy
	leaq	-216(%rbp), %rdi
	call	dummy
	leaq	-208(%rbp), %rdi
	call	dummy
	leaq	-200(%rbp), %rdi
	call	dummy
	leaq	-192(%rbp), %rdi
	call	dummy
	leaq	-184(%rbp), %rdi
	call	dummy
	leaq	-176(%rbp), %rdi
	call	dummy
	leaq	-168(%rbp), %rdi
	call	dummy
	leaq	-160(%rbp), %rdi
	call	dummy
	leaq	-152(%rbp), %rdi
	call	dummy
	leaq	-144(%rbp), %rdi
	call	dummy
	leaq	-136(%rbp), %rdi
	call	dummy
	leaq	-128(%rbp), %rdi
	call	dummy
	leaq	-120(%rbp), %rdi
	call	dummy
	leaq	-112(%rbp), %rdi
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
	addq	$240, %rsp
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
	movq	-56(%rbp), %r12
	testl	%r15d, %r15d
	movl	$1, %edi
	movl	$5, %r8d
	cmovg	%r15d, %edi
	movq	%r12, %rdx
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
	vmovsd	%xmm0, (%r12)
	cmpl	$1, %edx
	je	.L33
	vmovsd	%xmm0, 8(%r12)
	cmpl	$3, %edx
	jne	.L34
	vmovsd	%xmm0, 16(%r12)
	movl	$3, %eax
.L9:
	vmovapd	.LC3(%rip), %ymm0
	leaq	(%r12,%rdx,8), %rcx
	subl	%edx, %edi
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
	movq	%r12, %rdi
	call	dummy
	leaq	-248(%rbp), %rdi
	call	dummy
	leaq	-240(%rbp), %rdi
	call	dummy
	leaq	-232(%rbp), %rdi
	call	dummy
	leaq	-224(%rbp), %rdi
	call	dummy
	leaq	-216(%rbp), %rdi
	call	dummy
	leaq	-208(%rbp), %rdi
	call	dummy
	leaq	-200(%rbp), %rdi
	call	dummy
	leaq	-192(%rbp), %rdi
	call	dummy
	leaq	-184(%rbp), %rdi
	call	dummy
	leaq	-176(%rbp), %rdi
	call	dummy
	leaq	-168(%rbp), %rdi
	call	dummy
	leaq	-160(%rbp), %rdi
	call	dummy
	leaq	-152(%rbp), %rdi
	call	dummy
	leaq	-144(%rbp), %rdi
	call	dummy
	leaq	-136(%rbp), %rdi
	call	dummy
	leaq	-128(%rbp), %rdi
	call	dummy
	leaq	-120(%rbp), %rdi
	call	dummy
	leaq	-112(%rbp), %rdi
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
	cmpl	$2, -260(%rbp)
	jg	.L14
	jmp	.L15
.L31:
	movl	$1, %r8d
	jmp	.L5
.L58:
	xorl	%edx, %edx
	xorl	%r12d, %r12d
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
	movq	%r12, %rdx
	movl	$32, %esi
	call	posix_memalign
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jne	.L25
	movq	-56(%rbp), %r12
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
	.align 8
.LC11:
	.long	4134520466
	.long	1071236561
	.align 8
.LC12:
	.long	2138163696
	.long	1071629599
	.align 8
.LC13:
	.long	3331388984
	.long	1070071369
	.align 8
.LC14:
	.long	2540146316
	.long	1071125291
	.align 8
.LC15:
	.long	1266472451
	.long	1071805505
	.align 8
.LC16:
	.long	885434441
	.long	1072556374
	.align 8
.LC17:
	.long	1628210007
	.long	1071884139
	.align 8
.LC18:
	.long	794595032
	.long	1069894271
	.align 8
.LC19:
	.long	1103930896
	.long	1071473412
	.align 8
.LC20:
	.long	983526584
	.long	1070457107
	.align 8
.LC21:
	.long	2537267904
	.long	1071858432
	.align 8
.LC22:
	.long	3351634399
	.long	1072608211
	.align 8
.LC23:
	.long	2477804668
	.long	1070942042
	.align 8
.LC24:
	.long	1861410526
	.long	1070993255
	.align 8
.LC25:
	.long	4228598890
	.long	1071226933
	.align 8
.LC26:
	.long	66379184
	.long	1071351662
	.align 8
.LC27:
	.long	2263846176
	.long	1071680597
	.align 8
.LC28:
	.long	2017233752
	.long	1070917151
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
