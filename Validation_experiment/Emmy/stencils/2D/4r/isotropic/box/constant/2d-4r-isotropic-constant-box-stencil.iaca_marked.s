	.file	"2d-4r-isotropic-constant-box-stencil.c_compilable.c"
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
	subq	$176, %rsp
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	movl	%ebx, %r14d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %r13
	movslq	%r14d, %r15
	salq	$3, %r15
	movq	%r15, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r12
	testl	%r14d, %r14d
	jle	.L3
	movq	%r12, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	leal	-1(%r14), %ecx
	cmpl	%ecx, %edx
	ja	.L29
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r12)
	cmpl	$1, %eax
	je	.L31
	vmovsd	%xmm0, 8(%r12)
	cmpl	$3, %eax
	jne	.L32
	vmovsd	%xmm0, 16(%r12)
	movl	$3, %r8d
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r12,%rax,8), %rdx
	movl	%r14d, %edi
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
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r12,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r12,%rax,8)
.L8:
	movq	%r15, %rdx
	movl	$32, %esi
	movl	%ecx, -132(%rbp)
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movl	-132(%rbp), %ecx
	testl	%eax, %eax
	je	.L57
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %ecx
	cmovg	%r14d, %edi
	cmpl	$4, %ecx
	ja	.L58
	movq	$0, -216(%rbp)
	xorl	%eax, %eax
.L21:
	movq	-216(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L25
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L25
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L25:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -120(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	.LC9(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC10(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC11(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC12(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-4(%r13), %eax
	movl	%eax, -132(%rbp)
	testl	%edx, %edx
	jne	.L59
	cmpl	$4, -132(%rbp)
	jle	.L53
.L14:
	cmpl	$8, %ebx
	jle	.L15
	leal	(%rbx,%rbx), %r8d
	movslq	%ebx, %rax
	movq	%r12, -224(%rbp)
	leal	0(,%rbx,4), %edi
	leal	-9(%rbx), %edx
	movslq	%edi, %rcx
	addl	%ebx, %edi
	leal	(%r8,%rbx), %esi
	movq	%rdx, %r14
	movslq	%r8d, %r8
	leaq	0(,%rax,8), %r15
	movslq	%esi, %r9
	addl	%esi, %esi
	movslq	%esi, %rsi
	movslq	%edi, %rdi
	movq	%r15, -144(%rbp)
	negq	%r14
	leaq	(%rcx,%rdx), %rax
	negq	%rcx
	salq	$3, %rdx
	leaq	-8(,%r14,8), %r14
	salq	$3, %rcx
	subq	%rdx, %r15
	leaq	(%rcx,%r9,8), %r11
	movq	%r15, %r13
	movq	-216(%rbp), %r15
	movq	%r14, -152(%rbp)
	leaq	(%rcx,%r8,8), %r9
	subq	%rdx, %r11
	leaq	(%rcx,%rsi,8), %r8
	subq	%rdx, %r9
	leal	0(,%rbx,8), %esi
	subq	%rdx, %r8
	leaq	(%rcx,%rdi,8), %r10
	movl	%esi, %edi
	movslq	%esi, %rsi
	subl	%ebx, %edi
	movq	%rcx, %rbx
	subq	%rdx, %r10
	movslq	%edi, %rdi
	subq	%rdx, %rbx
	subq	%rdx, %r15
	leaq	(%rcx,%rdi,8), %rdi
	subq	$8, %rbx
	subq	%r12, %r15
	leaq	(%rcx,%rsi,8), %rsi
	subq	%rdx, %rdi
	subq	$8, %r10
	movq	%rbx, -168(%rbp)
	subq	%rdx, %rsi
	movq	%r10, -208(%rbp)
	movl	$4, %edx
	addq	$24, %r15
	leaq	-8(%r13,%rcx), %rcx
	leaq	-8(%r11), %r14
	movq	%rcx, -184(%rbp)
	leaq	-8(%r9), %r11
	leaq	-8(%rdi), %rcx
	movq	%r11, -200(%rbp)
	leaq	-8(%r8), %r9
	movq	%rcx, -176(%rbp)
	leaq	-8(%rsi), %rbx
	movq	%r9, -192(%rbp)
	leaq	8(%r12,%rax,8), %rax
	movq	%rbx, -160(%rbp)
	.p2align 4,,10
	.p2align 3
.L17:
	movq	-152(%rbp), %rsi
	leaq	(%r14,%rax), %r12
	addl	$1, %edx
	movq	-192(%rbp), %rdi
	leaq	(%r15,%rax), %r13
	movq	-208(%rbp), %rbx
	leaq	(%rsi,%rax), %rcx
	movq	-200(%rbp), %rsi
	leaq	(%rdi,%rax), %r10
	movq	-176(%rbp), %rdi
	addq	%rax, %rbx
	leaq	(%rsi,%rax), %r11
	movq	-184(%rbp), %rsi
	leaq	(%rdi,%rax), %r8
	leaq	(%rsi,%rax), %r9
	movq	-168(%rbp), %rsi
	leaq	(%rsi,%rax), %rdi
	movq	-160(%rbp), %rsi
	addq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L16:
	vmovsd	32(%rcx), %xmm1
	addq	$8, %rcx
	addq	$8, %r12
	addq	$8, %rbx
	vmovsd	16(%rcx), %xmm5
	addq	$8, %r11
	addq	$8, %r10
	addq	$8, %r9
	vaddsd	24(%r12), %xmm5, %xmm5
	addq	$8, %r8
	addq	$8, %rdi
	vaddsd	24(%rbx), %xmm5, %xmm5
	addq	$8, %rsi
	addq	$8, %r13
	vaddsd	32(%rcx), %xmm5, %xmm5
	vmulsd	-120(%rbp), %xmm1, %xmm2
	vmulsd	-112(%rbp), %xmm5, %xmm5
	vmovsd	8(%rcx), %xmm0
	vaddsd	16(%r12), %xmm0, %xmm0
	vaddsd	16(%rbx), %xmm0, %xmm0
	vaddsd	24(%r11), %xmm0, %xmm0
	vaddsd	24(%r10), %xmm0, %xmm0
	vaddsd	32(%r12), %xmm0, %xmm0
	vaddsd	32(%rbx), %xmm0, %xmm0
	vaddsd	40(%rcx), %xmm0, %xmm0
	vmulsd	-104(%rbp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm5, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm5
	vmovsd	(%rcx), %xmm0
	vaddsd	8(%r12), %xmm0, %xmm0
	vaddsd	8(%rbx), %xmm0, %xmm0
	vaddsd	16(%r11), %xmm0, %xmm0
	vaddsd	16(%r10), %xmm0, %xmm0
	vaddsd	24(%r9), %xmm0, %xmm0
	vaddsd	24(%r8), %xmm0, %xmm0
	vaddsd	32(%r11), %xmm0, %xmm0
	vaddsd	32(%r10), %xmm0, %xmm0
	vaddsd	40(%r12), %xmm0, %xmm0
	vaddsd	40(%rbx), %xmm0, %xmm0
	vaddsd	48(%rcx), %xmm0, %xmm0
	vmulsd	-96(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm5, %xmm4
	vmovsd	-8(%rcx), %xmm0
	vaddsd	(%r12), %xmm0, %xmm3
	vaddsd	(%rbx), %xmm3, %xmm3
	vaddsd	8(%r11), %xmm3, %xmm3
	vaddsd	8(%r10), %xmm3, %xmm3
	vaddsd	16(%r9), %xmm3, %xmm3
	vaddsd	16(%r8), %xmm3, %xmm3
	vaddsd	24(%rdi), %xmm3, %xmm3
	vaddsd	24(%rsi), %xmm3, %xmm3
	vaddsd	32(%r9), %xmm3, %xmm3
	vaddsd	32(%r8), %xmm3, %xmm3
	vaddsd	40(%r11), %xmm3, %xmm3
	vaddsd	40(%r10), %xmm3, %xmm3
	vaddsd	48(%r12), %xmm3, %xmm3
	vaddsd	48(%rbx), %xmm3, %xmm3
	vaddsd	56(%rcx), %xmm3, %xmm3
	vmulsd	-88(%rbp), %xmm3, %xmm3
	vmovsd	-8(%r12), %xmm1
	vaddsd	%xmm3, %xmm4, %xmm0
	vaddsd	-8(%rbx), %xmm1, %xmm3
	vaddsd	(%r11), %xmm3, %xmm3
	vaddsd	(%r10), %xmm3, %xmm3
	vaddsd	8(%r9), %xmm3, %xmm3
	vaddsd	8(%r8), %xmm3, %xmm3
	vaddsd	16(%rdi), %xmm3, %xmm3
	vaddsd	16(%rsi), %xmm3, %xmm3
	vaddsd	32(%rdi), %xmm3, %xmm3
	vaddsd	32(%rsi), %xmm3, %xmm3
	vaddsd	40(%r9), %xmm3, %xmm3
	vaddsd	40(%r8), %xmm3, %xmm3
	vaddsd	48(%r11), %xmm3, %xmm3
	vaddsd	48(%r10), %xmm3, %xmm3
	vaddsd	56(%r12), %xmm3, %xmm3
	vaddsd	56(%rbx), %xmm3, %xmm3
	vmulsd	-80(%rbp), %xmm3, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	-8(%r11), %xmm0
	vaddsd	-8(%r10), %xmm0, %xmm2
	vaddsd	(%r9), %xmm2, %xmm2
	vaddsd	(%r8), %xmm2, %xmm2
	vaddsd	8(%rdi), %xmm2, %xmm2
	vaddsd	8(%rsi), %xmm2, %xmm2
	vaddsd	40(%rdi), %xmm2, %xmm2
	vaddsd	40(%rsi), %xmm2, %xmm2
	vaddsd	48(%r9), %xmm2, %xmm2
	vaddsd	48(%r8), %xmm2, %xmm2
	vaddsd	56(%r11), %xmm2, %xmm2
	vaddsd	56(%r10), %xmm2, %xmm2
	vmulsd	-72(%rbp), %xmm2, %xmm2
	vmovsd	-8(%r9), %xmm0
	vaddsd	-8(%r8), %xmm0, %xmm1
	vaddsd	(%rdi), %xmm1, %xmm1
	vaddsd	(%rsi), %xmm1, %xmm1
	vaddsd	48(%rdi), %xmm1, %xmm1
	vaddsd	48(%rsi), %xmm1, %xmm1
	vaddsd	56(%r9), %xmm1, %xmm1
	vaddsd	56(%r8), %xmm1, %xmm1
	vmulsd	-64(%rbp), %xmm1, %xmm1
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	-8(%rdi), %xmm0
	vaddsd	-8(%rsi), %xmm0, %xmm0
	vaddsd	56(%rdi), %xmm0, %xmm0
	vaddsd	56(%rsi), %xmm0, %xmm0
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%r13)
	cmpq	%rcx, %rax
	jne	.L16
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	addq	-144(%rbp), %rax
	cmpl	%edx, -132(%rbp)
	jg	.L17
	movq	-224(%rbp), %r12
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L53
	movq	%r12, %rdi
	call	dummy
	movq	-216(%rbp), %rdi
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
.L57:
	.cfi_restore_state
	movq	-56(%rbp), %rdx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %r8d
	cmovg	%r14d, %edi
	movq	%rdx, -216(%rbp)
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %esi
	cmpl	$5, %esi
	cmovb	%r8d, %esi
	testl	%r14d, %r14d
	cmovle	%eax, %ecx
	cmpl	%ecx, %esi
	ja	.L21
	testl	%edx, %edx
	je	.L9
	movq	-216(%rbp), %rax
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
	je	.L60
	vzeroupper
	jmp	.L21
.L59:
	movq	%r12, %rdi
	call	dummy
	movq	-216(%rbp), %rdi
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
	cmpl	$4, -132(%rbp)
	jg	.L14
	jmp	.L15
.L31:
	movl	$1, %r8d
	jmp	.L5
.L58:
	movq	$0, -216(%rbp)
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
	movq	%r15, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -216(%rbp)
	testl	%eax, %eax
	jne	.L25
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
