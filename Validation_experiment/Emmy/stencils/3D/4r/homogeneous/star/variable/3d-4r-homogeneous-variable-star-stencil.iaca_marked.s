	.file	"3d-4r-homogeneous-variable-star-stencil.c_compilable.c"
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
	subq	$256, %rsp
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r14
	movq	%rax, -72(%rbp)
	call	strtol
	movl	%r14d, %ecx
	movl	$32, %esi
	imull	%eax, %ecx
	leaq	-56(%rbp), %rdi
	movq	%rax, %r15
	imull	%ebx, %ecx
	movslq	%ecx, %r12
	movq	%r12, %r14
	salq	$3, %r12
	movq	%r12, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -240(%rbp)
	testl	%r14d, %r14d
	jle	.L3
	leal	-1(%r14), %r13d
	movq	%rdi, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%r13d, %edx
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
	movq	-240(%rbp), %rcx
	movl	%r14d, %edi
	subl	%eax, %edi
	vmovapd	.LC1(%rip), %ymm0
	movl	%edi, %esi
	shrl	$2, %esi
	leaq	(%rcx,%rax,8), %rdx
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
	je	.L78
	vzeroupper
	movq	-240(%rbp), %rdi
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
	movq	%r12, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L79
.L32:
	movq	$0, -56(%rbp)
	movq	$0, -232(%rbp)
	testl	%r14d, %r14d
	jle	.L10
	movq	-232(%rbp), %rcx
	leal	-1(%r14), %r13d
.L31:
	testl	%r14d, %r14d
	movl	$1, %edi
	movq	%rcx, %rax
	cmovg	%r14d, %edi
	shrq	$3, %rax
	movl	$5, %esi
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	testl	%r14d, %r14d
	movl	$0, %esi
	cmovg	%r13d, %esi
	cmpl	%esi, %edx
	ja	.L47
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.L12
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx)
	cmpl	$1, %eax
	je	.L49
	vmovsd	%xmm0, 8(%rcx)
	cmpl	$3, %eax
	jne	.L50
	vmovsd	%xmm0, 16(%rcx)
	movl	$3, %esi
.L12:
	vmovapd	.LC3(%rip), %ymm0
	leaq	(%rcx,%rax,8), %rdx
	subl	%eax, %edi
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
	movq	-232(%rbp), %rdi
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L15
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L15:
	leaq	-56(%rbp), %rdi
	movq	%r12, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L81
	movq	-56(%rbp), %rdi
	testl	%r14d, %r14d
	movl	$1, %r8d
	cmovg	%r14d, %r8d
	movq	%rdi, -224(%rbp)
	shrq	$3, %rdi
	movq	%rdi, %rdx
	movl	$5, %edi
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %esi
	cmpl	$5, %esi
	cmovb	%edi, %esi
	testl	%r14d, %r14d
	cmovle	%eax, %r13d
	cmpl	%r13d, %esi
	ja	.L36
	testl	%edx, %edx
	je	.L18
	movq	-224(%rbp), %rax
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L51
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L52
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L18:
	movq	-224(%rbp), %rcx
	subl	%edx, %r8d
	movl	%r8d, %edi
	vmovapd	.LC5(%rip), %ymm0
	shrl	$2, %edi
	leaq	(%rcx,%rdx,8), %rsi
	xorl	%edx, %edx
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
	movq	-224(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L17:
	movl	-72(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$4, %eax
	movl	%eax, -216(%rbp)
	testl	%edx, %edx
	jne	.L83
	cmpl	$4, -216(%rbp)
	jle	.L75
	leal	-4(%rbx), %eax
	movl	%ebx, %edi
	imull	%r15d, %edi
	movl	%edi, -244(%rbp)
	cmpl	$8, %r15d
	jle	.L75
.L42:
	cmpl	$4, %eax
	jle	.L24
	movl	$0, -212(%rbp)
	movl	-244(%rbp), %ecx
	movl	$4, -176(%rbp)
	leal	0(,%rcx,4), %eax
	movl	%ecx, -184(%rbp)
	movl	%eax, -204(%rbp)
	leal	(%rcx,%rcx,2), %eax
	movl	%eax, -200(%rbp)
	leal	(%rcx,%rcx,4), %eax
	movl	%eax, -196(%rbp)
	leal	(%rcx,%rcx), %eax
	movl	%eax, -192(%rbp)
	imull	$6, %ecx, %eax
	movl	%eax, -188(%rbp)
	imull	$7, %ecx, %eax
	movl	%eax, -180(%rbp)
	leal	0(,%rcx,8), %eax
	movl	%eax, -208(%rbp)
	movslq	%ebx, %rax
	movq	%rax, -304(%rbp)
	leaq	0(,%rax,8), %rsi
	leal	0(,%rbx,4), %eax
	cltq
	movq	%rax, -296(%rbp)
	leal	(%rbx,%rbx,2), %eax
	cltq
	movq	%rax, -288(%rbp)
	leal	(%rbx,%rbx,4), %eax
	cltq
	movq	%rax, -280(%rbp)
	leal	(%rbx,%rbx), %eax
	cltq
	movq	%rax, -272(%rbp)
	imull	$6, %ebx, %eax
	cltq
	movq	%rax, -264(%rbp)
	imull	$7, %ebx, %eax
	cltq
	movq	%rax, -256(%rbp)
	leal	0(,%rbx,8), %eax
	cltq
	movq	%rax, -160(%rbp)
	leal	-4(%r15), %eax
	movl	%eax, -172(%rbp)
	leal	-9(%rbx), %eax
	addq	$5, %rax
	movq	%rax, -128(%rbp)
	.p2align 4,,10
	.p2align 3
.L27:
	movslq	-204(%rbp), %rdx
	movq	-296(%rbp), %r10
	movq	-224(%rbp), %rax
	movq	-240(%rbp), %r9
	movq	-288(%rbp), %r15
	leaq	(%rdx,%r10), %rcx
	movq	-264(%rbp), %rbx
	movq	%r10, %r8
	addl	$1, -176(%rbp)
	salq	$3, %rcx
	addq	%rcx, %rax
	addq	-232(%rbp), %rcx
	movq	%rax, -144(%rbp)
	movslq	-200(%rbp), %rax
	movq	%rax, -136(%rbp)
	addq	%r10, %rax
	leaq	(%r9,%rax,8), %rdi
	movslq	-196(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r9,%rax,8), %r11
	leaq	(%r15,%rdx), %rax
	movq	-280(%rbp), %r15
	movq	%r11, -112(%rbp)
	leaq	(%r9,%rax,8), %r11
	movq	%r11, -104(%rbp)
	leaq	(%r15,%rdx), %rax
	leaq	(%r9,%rax,8), %r14
	movslq	-192(%rbp), %rax
	movq	%r14, -96(%rbp)
	addq	%r10, %rax
	leaq	(%r9,%rax,8), %r15
	movslq	-188(%rbp), %rax
	movq	%r15, -88(%rbp)
	movq	-272(%rbp), %r15
	addq	%r10, %rax
	leaq	(%r9,%rax,8), %r11
	leaq	(%r15,%rdx), %rax
	movq	%r11, -80(%rbp)
	movq	-256(%rbp), %r11
	leaq	(%r9,%rax,8), %r15
	leaq	(%rbx,%rdx), %rax
	movq	-304(%rbp), %rbx
	leaq	(%r9,%rax,8), %r14
	movslq	-184(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r9,%rax,8), %r13
	movslq	-180(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r9,%rax,8), %r12
	leaq	(%rdx,%rbx), %rax
	leaq	(%r9,%rax,8), %rbx
	leaq	(%r11,%rdx), %rax
	leaq	(%r9,%rax,8), %r11
	movslq	-212(%rbp), %rax
	addq	%r10, %rax
	leaq	(%r9,%rax,8), %r10
	movslq	-208(%rbp), %rax
	addq	%r8, %rax
	movq	%r9, %r8
	leaq	(%r9,%rax,8), %r9
	leaq	(%r8,%rdx,8), %rax
	movq	%rax, -120(%rbp)
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	subq	-136(%rbp), %rdx
	leaq	(%r8,%rax,8), %r8
	movq	%r8, -72(%rbp)
	movq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, -168(%rbp)
	movq	-120(%rbp), %r8
	movl	$4, -136(%rbp)
	.p2align 4,,10
	.p2align 3
.L28:
	movq	-168(%rbp), %rax
	movq	%rsi, -152(%rbp)
	movq	-144(%rbp), %rsi
	addl	$1, -136(%rbp)
	leaq	(%rax,%rdi), %rdx
	movl	$4, %eax
	movq	%rsi, -120(%rbp)
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L25:
	movq	-112(%rbp), %rsi
	addq	$8, %rdx
	vmovsd	24(%rdx), %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
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
	movq	-72(%rbp), %rsi
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
	vaddsd	(%rsi,%rax,8), %xmm0, %xmm0
	movq	-120(%rbp), %rsi
	vmulsd	(%rsi,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, -128(%rbp)
	jne	.L25
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-152(%rbp), %rsi
	addq	-160(%rbp), %rcx
	addq	%rsi, -144(%rbp)
	addq	%rsi, -112(%rbp)
	addq	%rsi, %rdi
	addq	%rsi, %r15
	movl	-136(%rbp), %edx
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
	addq	%rsi, -72(%rbp)
	cmpl	%edx, -172(%rbp)
	jne	.L28
	movl	-244(%rbp), %eax
	movl	-176(%rbp), %ecx
	addl	%eax, -204(%rbp)
	addl	%eax, -200(%rbp)
	addl	%eax, -196(%rbp)
	addl	%eax, -192(%rbp)
	addl	%eax, -188(%rbp)
	addl	%eax, -184(%rbp)
	addl	%eax, -180(%rbp)
	addl	%eax, -212(%rbp)
	addl	%eax, -208(%rbp)
	cmpl	%ecx, -216(%rbp)
	jg	.L27
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L75
	movq	-240(%rbp), %rdi
	call	dummy
	movq	-232(%rbp), %rdi
	call	dummy
	movq	-224(%rbp), %rdi
	call	dummy
.L75:
	addq	$256, %rsp
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
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	%rax, %rcx
	jmp	.L31
.L45:
	movl	$1, %r8d
	jmp	.L5
.L81:
	testl	%r14d, %r14d
	jle	.L84
	movq	$0, -224(%rbp)
	movl	%r14d, %r8d
	cmpl	$4, %r13d
	jbe	.L53
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L83:
	movq	-240(%rbp), %rdi
	call	dummy
	movq	-232(%rbp), %rdi
	call	dummy
	movq	-224(%rbp), %rdi
	call	dummy
	cmpl	$4, -216(%rbp)
	jle	.L24
	leal	-4(%rbx), %eax
	movl	%ebx, %edi
	imull	%r15d, %edi
	movl	%edi, -244(%rbp)
	cmpl	$8, %r15d
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
	leaq	-56(%rbp), %rdi
	movq	%r12, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L32
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)
.L10:
	leaq	-56(%rbp), %rdi
	movq	%r12, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -224(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)
	jmp	.L17
.L53:
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
	movq	%rcx, %rdi
	jmp	.L11
.L43:
	xorl	%eax, %eax
	jmp	.L4
.L84:
	movq	$0, -224(%rbp)
	jmp	.L17
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
