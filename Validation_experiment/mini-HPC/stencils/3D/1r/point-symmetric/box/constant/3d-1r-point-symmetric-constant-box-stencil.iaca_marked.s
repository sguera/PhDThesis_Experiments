	.file	"3d-1r-point-symmetric-constant-box-stencil.c_compilable.c"
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
	subq	$272, %rsp
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	call	strtol
	movl	%r13d, %r14d
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movq	%rax, %rbx
	movl	$10, %edx
	call	strtol
	imull	%ebx, %r14d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movq	%rax, %r12
	imull	%eax, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -168(%rbp)
	call	posix_memalign
	movq	-168(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -312(%rbp)
	testl	%r14d, %r14d
	jle	.L3
	movq	%rdi, %rax
	movl	$5, %esi
	leal	-1(%r14), %r15d
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
	movl	%r14d, %edi
	movq	-312(%rbp), %rdx
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
	je	.L59
	vzeroupper
	movq	-312(%rbp), %rsi
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
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
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
	movq	$0, -304(%rbp)
	xorl	%eax, %eax
.L22:
	vmovsd	.LC2(%rip), %xmm0
	movq	-304(%rbp), %rcx
	movslq	%eax, %rdx
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
	movq	%rax, -160(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -152(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -136(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	.LC9(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	.LC10(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC11(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	.LC12(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.LC13(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	.LC14(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC15(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC17(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-1(%r13), %eax
	movl	%eax, -264(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$1, -264(%rbp)
	jle	.L56
	movl	%r12d, %ecx
	leal	-1(%r12), %eax
	imull	%ebx, %ecx
	movl	%ecx, -268(%rbp)
	cmpl	$2, %ebx
	jle	.L56
.L31:
	cmpl	$1, %eax
	jle	.L15
	movl	-268(%rbp), %esi
	movslq	%r12d, %r15
	movq	-304(%rbp), %rdi
	movl	$0, -260(%rbp)
	movl	$1, -248(%rbp)
	leal	(%rsi,%rsi), %eax
	movl	%esi, -252(%rbp)
	movl	%eax, -256(%rbp)
	leal	(%r12,%r12), %eax
	cltq
	movq	%rax, -280(%rbp)
	leaq	0(,%r15,8), %rax
	movq	%rax, -232(%rbp)
	leal	-3(%r12), %eax
	imulq	$-8, %rax, %rdx
	leaq	0(,%rax,8), %rcx
	addq	%r15, %rax
	subq	%rcx, %rdi
	movq	%rax, -288(%rbp)
	movq	%rdi, %rcx
	movq	-312(%rbp), %rdi
	subq	%rdi, %rcx
	leaq	8(%rdi), %rax
	movq	%rcx, -224(%rbp)
	leaq	-8(%rdx), %rcx
	movq	%rax, -296(%rbp)
	leal	-1(%rbx), %eax
	movq	%rcx, -240(%rbp)
	movl	%eax, -244(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movq	-280(%rbp), %rbx
	movslq	-256(%rbp), %rdx
	movq	$0, -216(%rbp)
	movq	%r15, %r13
	movslq	-260(%rbp), %rax
	movslq	-252(%rbp), %r14
	movl	$1, -168(%rbp)
	leaq	(%rdx,%rbx), %rcx
	addl	$1, -248(%rbp)
	movq	-296(%rbp), %rsi
	movq	%rcx, -192(%rbp)
	leaq	(%rax,%rbx), %rcx
	movq	%rcx, -176(%rbp)
	movq	-288(%rbp), %rcx
	movq	%rdx, -184(%rbp)
	subq	%r14, %rdx
	addq	%r14, %rcx
	movq	%rax, -200(%rbp)
	subq	%r14, %rax
	movq	%rdx, %r11
	movq	%rbx, -208(%rbp)
	leaq	(%rsi,%rcx,8), %r12
	movq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-224(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	-184(%rbp), %rcx
	movq	-176(%rbp), %rdx
	leaq	(%rdi,%r12), %r10
	addl	$1, -168(%rbp)
	movq	-200(%rbp), %rdi
	subq	%r13, %rsi
	movq	-240(%rbp), %rax
	subq	%r13, %rcx
	subq	%r13, %rdx
	subq	%r14, %rsi
	movq	-216(%rbp), %r9
	subq	%r13, %rdi
	subq	%r14, %rcx
	subq	%r14, %rdx
	movq	-208(%rbp), %r8
	addq	%r12, %rax
	subq	%r14, %rdi
	subq	%r13, %r9
	subq	%r13, %r8
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L16:
	vmovsd	8(%rax), %xmm2
	vmovsd	(%rax), %xmm1
	addq	$8, %r10
	vaddsd	16(%rax), %xmm1, %xmm1
	vmulsd	-160(%rbp), %xmm2, %xmm0
	vmulsd	-152(%rbp), %xmm1, %xmm1
	vmovsd	8(%rax,%rbx,8), %xmm4
	vaddsd	8(%rax,%r11,8), %xmm4, %xmm4
	vmulsd	-136(%rbp), %xmm4, %xmm4
	vmovsd	(%rax,%rbx,8), %xmm3
	vaddsd	16(%rax,%r11,8), %xmm3, %xmm3
	vmulsd	-120(%rbp), %xmm3, %xmm3
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rax,%r9,8), %xmm1
	vmovsd	(%rax,%r9,8), %xmm0
	vaddsd	8(%rax,%r8,8), %xmm1, %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm1
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vmulsd	-128(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	(%rax,%r11,8), %xmm2
	vaddsd	16(%rax,%rbx,8), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	(%rax,%r8,8), %xmm1
	vaddsd	16(%rax,%r9,8), %xmm1, %xmm1
	vmulsd	-104(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	8(%rax,%rdi,8), %xmm4
	vaddsd	8(%rax,%rsi,8), %xmm4, %xmm4
	vmulsd	-96(%rbp), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	8(%rax,%rcx,8), %xmm0
	vaddsd	8(%rax,%rdx,8), %xmm0, %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	(%rax,%rdi,8), %xmm3
	vaddsd	16(%rax,%rsi,8), %xmm3, %xmm3
	vmulsd	-80(%rbp), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	(%rax,%rcx,8), %xmm2
	vaddsd	16(%rax,%rdx,8), %xmm2, %xmm2
	vmulsd	-72(%rbp), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	(%rax,%rdx,8), %xmm1
	vaddsd	16(%rax,%rcx,8), %xmm1, %xmm1
	vmulsd	-64(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	(%rax,%rsi,8), %xmm0
	vaddsd	16(%rax,%rdi,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%r10)
	cmpq	%rax, %r12
	jne	.L16
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	addq	%r15, -216(%rbp)
	addq	%r15, %r13
	addq	-232(%rbp), %r12
	addq	%r15, -208(%rbp)
	movl	-168(%rbp), %esi
	addq	%r15, -200(%rbp)
	addq	%r15, -192(%rbp)
	addq	%r15, -184(%rbp)
	addq	%r15, -176(%rbp)
	cmpl	%esi, -244(%rbp)
	jne	.L19
	movl	-268(%rbp), %eax
	movl	-264(%rbp), %ebx
	addl	%eax, -260(%rbp)
	addl	%eax, -256(%rbp)
	addl	%eax, -252(%rbp)
	cmpl	%ebx, -248(%rbp)
	jl	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L56
	movq	-312(%rbp), %rdi
	call	dummy
	movq	-304(%rbp), %rdi
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
.L56:
	addq	$272, %rsp
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
	movq	$0, -304(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %edi
	movq	-304(%rbp), %rcx
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
	je	.L63
	vzeroupper
	jmp	.L22
.L60:
	movq	-56(%rbp), %rcx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%rcx, -304(%rbp)
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
	vmovsd	.LC2(%rip), %xmm0
	movq	-304(%rbp), %rax
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
	movq	-312(%rbp), %rdi
	call	dummy
	movq	-304(%rbp), %rdi
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
	cmpl	$1, -264(%rbp)
	jle	.L15
	movl	%r12d, %ecx
	leal	-1(%r12), %eax
	imull	%ebx, %ecx
	movl	%ecx, -268(%rbp)
	cmpl	$2, %ebx
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
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -304(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -304(%rbp)
	jmp	.L26
.L37:
	movl	$2, %eax
	jmp	.L9
.L35:
	movl	$2, %r8d
	jmp	.L5
.L32:
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
