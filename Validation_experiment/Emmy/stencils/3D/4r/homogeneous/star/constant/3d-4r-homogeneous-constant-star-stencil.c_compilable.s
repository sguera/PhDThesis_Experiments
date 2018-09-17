	.file	"3d-4r-homogeneous-constant-star-stencil.c_compilable.c"
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
	subq	$240, %rsp
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
	movl	%r12d, %r14d
	call	strtol
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %r13
	imull	%ebx, %r14d
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
	movq	%rdi, -224(%rbp)
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
	movq	-224(%rbp), %rdx
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
	movq	-224(%rbp), %rdi
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
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L60
	testl	%r14d, %r14d
	movl	$1, %eax
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	cmpl	$4, %r15d
	ja	.L61
	movq	$0, -216(%rbp)
	xorl	%eax, %eax
.L22:
	movq	-216(%rbp), %rcx
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
	movq	%rax, -56(%rbp)
	leal	-4(%r13), %eax
	movl	%eax, -208(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$4, -208(%rbp)
	jle	.L56
	leal	-4(%rbx), %eax
	movl	%ebx, %ecx
	imull	%r12d, %ecx
	movl	%ecx, -228(%rbp)
	cmpl	$8, %r12d
	jle	.L56
.L31:
	cmpl	$4, %eax
	jle	.L15
	movl	$0, -176(%rbp)
	movl	-228(%rbp), %ecx
	movl	$4, -168(%rbp)
	leal	(%rcx,%rcx,2), %eax
	movl	%ecx, -184(%rbp)
	movl	%eax, -204(%rbp)
	leal	(%rcx,%rcx,4), %eax
	movl	%eax, -200(%rbp)
	leal	0(,%rcx,4), %eax
	movl	%eax, -196(%rbp)
	leal	(%rcx,%rcx), %eax
	movl	%eax, -192(%rbp)
	imull	$6, %ecx, %eax
	movl	%eax, -188(%rbp)
	imull	$7, %ecx, %eax
	movl	%eax, -180(%rbp)
	leal	0(,%rcx,8), %eax
	movl	%eax, -172(%rbp)
	movslq	%ebx, %rax
	movq	%rax, -288(%rbp)
	leaq	0(,%rax,8), %rsi
	leal	0(,%rbx,4), %eax
	cltq
	movq	%rax, -280(%rbp)
	leal	(%rbx,%rbx,2), %eax
	cltq
	movq	%rax, -272(%rbp)
	leal	(%rbx,%rbx,4), %eax
	cltq
	movq	%rax, -264(%rbp)
	leal	(%rbx,%rbx), %eax
	cltq
	movq	%rax, -256(%rbp)
	imull	$6, %ebx, %eax
	cltq
	movq	%rax, -248(%rbp)
	imull	$7, %ebx, %eax
	cltq
	movq	%rax, -240(%rbp)
	leal	0(,%rbx,8), %eax
	cltq
	movq	%rax, -152(%rbp)
	leal	-4(%r12), %eax
	movl	%eax, -164(%rbp)
	leal	-9(%rbx), %eax
	addq	$5, %rax
	movq	%rax, -120(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movq	-280(%rbp), %r9
	movslq	-204(%rbp), %rax
	movq	-224(%rbp), %rbx
	movq	-272(%rbp), %r10
	movq	-264(%rbp), %r8
	addl	$1, -168(%rbp)
	movq	%rax, -128(%rbp)
	addq	%r9, %rax
	leaq	(%rbx,%rax,8), %rcx
	movslq	-200(%rbp), %rax
	addq	%r9, %rax
	leaq	(%rbx,%rax,8), %rdx
	movq	%rdx, -136(%rbp)
	movslq	-196(%rbp), %rdx
	leaq	(%rdx,%r10), %rax
	movq	-240(%rbp), %r10
	leaq	(%rbx,%rax,8), %r11
	leaq	(%r8,%rdx), %rax
	movq	%r11, -104(%rbp)
	leaq	(%rbx,%rax,8), %r15
	movslq	-192(%rbp), %rax
	movq	%r15, -96(%rbp)
	addq	%r9, %rax
	leaq	(%rbx,%rax,8), %r11
	movslq	-188(%rbp), %rax
	movq	%r11, -88(%rbp)
	addq	%r9, %rax
	leaq	(%rbx,%rax,8), %rdi
	movq	%rdi, -80(%rbp)
	movq	-256(%rbp), %rdi
	leaq	(%rdi,%rdx), %rax
	movq	%rbx, %rdi
	leaq	(%rbx,%rax,8), %r15
	movq	-248(%rbp), %rbx
	leaq	(%rbx,%rdx), %rax
	movq	-288(%rbp), %rbx
	leaq	(%rdi,%rax,8), %r14
	movslq	-184(%rbp), %rax
	addq	%r9, %rax
	leaq	(%rdi,%rax,8), %r13
	movslq	-180(%rbp), %rax
	addq	%r9, %rax
	leaq	(%rdi,%rax,8), %r12
	leaq	(%rdx,%rbx), %rax
	leaq	(%rdi,%rax,8), %rbx
	leaq	(%r10,%rdx), %rax
	leaq	(%rdi,%rax,8), %r11
	movslq	-176(%rbp), %rax
	addq	%r9, %rax
	leaq	(%rdi,%rax,8), %r10
	movslq	-172(%rbp), %rax
	addq	%r9, %rax
	leaq	(%rdi,%rax,8), %r8
	movq	-152(%rbp), %rax
	movq	%r8, -112(%rbp)
	leaq	(%rdi,%rdx,8), %r8
	addq	%rdx, %rax
	leaq	(%rdi,%rax,8), %rdi
	movq	%r9, %rax
	movq	-216(%rbp), %r9
	addq	%rdx, %rax
	subq	-128(%rbp), %rdx
	movl	$4, -128(%rbp)
	leaq	(%r9,%rax,8), %r9
	movq	%rdx, %rax
	movq	%r9, -72(%rbp)
	salq	$3, %rax
	movq	%rax, -160(%rbp)
	movq	-112(%rbp), %r9
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-160(%rbp), %rax
	movq	%rsi, -144(%rbp)
	movq	-136(%rbp), %rsi
	addl	$1, -128(%rbp)
	leaq	(%rax,%rcx), %rdx
	movl	$4, %eax
	movq	%rsi, -112(%rbp)
	.p2align 4,,10
	.p2align 3
.L16:
	movq	-112(%rbp), %rsi
	addq	$8, %rdx
	vmovsd	24(%rdx), %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	(%rcx,%rax,8), %xmm0, %xmm0
	vaddsd	(%rsi,%rax,8), %xmm0, %xmm0
	movq	-104(%rbp), %rsi
	vaddsd	(%rsi,%rax,8), %xmm0, %xmm0
	movq	-96(%rbp), %rsi
	vaddsd	(%rsi,%rax,8), %xmm0, %xmm0
	movq	-88(%rbp), %rsi
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vaddsd	(%rsi,%rax,8), %xmm0, %xmm0
	movq	-80(%rbp), %rsi
	vaddsd	(%rsi,%rax,8), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	48(%rdx), %xmm0, %xmm0
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	vaddsd	(%r11,%rax,8), %xmm0, %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	56(%rdx), %xmm0, %xmm0
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	vaddsd	(%r9,%rax,8), %xmm0, %xmm0
	vaddsd	(%r8,%rax,8), %xmm0, %xmm0
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	vmulsd	-56(%rbp), %xmm0, %xmm0
	movq	-72(%rbp), %rsi
	vmovsd	%xmm0, (%rsi,%rax,8)
	addq	$1, %rax
	cmpq	%rax, -120(%rbp)
	jne	.L16
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdx
	addq	%rsi, -136(%rbp)
	addq	%rdx, -72(%rbp)
	addq	%rsi, %rcx
	addq	%rsi, %r15
	movl	-128(%rbp), %edx
	addq	%rsi, -104(%rbp)
	addq	%rsi, %r14
	addq	%rsi, %r13
	addq	%rsi, %r12
	addq	%rsi, -96(%rbp)
	addq	%rsi, %rbx
	addq	%rsi, %r11
	addq	%rsi, -88(%rbp)
	addq	%rsi, %r10
	addq	%rsi, %r9
	addq	%rsi, -80(%rbp)
	addq	%rsi, %r8
	addq	%rsi, %rdi
	cmpl	%edx, -164(%rbp)
	jne	.L19
	movl	-228(%rbp), %eax
	movl	-208(%rbp), %ecx
	addl	%eax, -204(%rbp)
	addl	%eax, -200(%rbp)
	addl	%eax, -196(%rbp)
	addl	%eax, -192(%rbp)
	addl	%eax, -188(%rbp)
	addl	%eax, -184(%rbp)
	addl	%eax, -180(%rbp)
	addl	%eax, -176(%rbp)
	addl	%eax, -172(%rbp)
	cmpl	%ecx, -168(%rbp)
	jl	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L56
	movq	-224(%rbp), %rdi
	call	dummy
	movq	-216(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
.L56:
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
.L34:
	.cfi_restore_state
	movl	$1, %r8d
	jmp	.L5
.L61:
	movq	$0, -216(%rbp)
	xorl	%edx, %edx
.L9:
	movq	-216(%rbp), %rcx
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
	je	.L63
	vzeroupper
	jmp	.L22
.L60:
	movq	-56(%rbp), %rcx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%rcx, -216(%rbp)
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
	movq	-216(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L36
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L37
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
	jmp	.L9
.L62:
	movq	-224(%rbp), %rdi
	call	dummy
	movq	-216(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
	cmpl	$4, -208(%rbp)
	jle	.L15
	leal	-4(%rbx), %eax
	movl	%ebx, %ecx
	imull	%r12d, %ecx
	movl	%ecx, -228(%rbp)
	cmpl	$8, %r12d
	jg	.L31
	jmp	.L15
.L63:
	vzeroupper
	jmp	.L26
.L59:
	vzeroupper
	jmp	.L8
.L36:
	movl	$1, %eax
	jmp	.L9
.L3:
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -216(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)
	jmp	.L26
.L37:
	movl	$2, %eax
	jmp	.L9
.L35:
	movl	$2, %r8d
	jmp	.L5
.L32:
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
