	.file	"2d-3r-heterogeneous-variable-box-stencil.c_compilable.c"
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
	subq	$96, %rsp
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movl	%ebx, %r13d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r13d
	movq	%rax, %r12
	movslq	%r13d, %r14
	salq	$3, %r14
	movq	%r14, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rsi
	movq	%rsi, -128(%rbp)
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
	movl	%r13d, %esi
	movq	-128(%rbp), %rdx
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
	je	.L73
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movq	-128(%rbp), %rcx
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
	je	.L74
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %r15d
	cmovg	%r13d, %edi
	cmpl	$4, %r15d
	ja	.L75
	movq	$0, -120(%rbp)
	xorl	%eax, %eax
.L28:
	vmovsd	.LC2(%rip), %xmm0
	movq	-120(%rbp), %rdi
	movslq	%eax, %rdx
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
	imull	$49, %r13d, %r13d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movslq	%r13d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %rsi
	movq	%rsi, -136(%rbp)
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
	movl	%r13d, %esi
	movq	-136(%rbp), %rdx
	vmovapd	.LC5(%rip), %ymm0
	subl	%eax, %esi
	movl	%esi, %ecx
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
	shrl	$2, %ecx
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
	vmovsd	.LC4(%rip), %xmm0
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
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
	imull	$49, %ebx, %esi
	cmpl	$6, %ebx
	jle	.L22
	leal	(%rbx,%rbx,2), %ecx
	movq	-120(%rbp), %r14
	movslq	%ebx, %rax
	movq	-128(%rbp), %rdx
	movslq	%ecx, %rcx
	leaq	0(,%rax,8), %r12
	movl	$3, %r13d
	leaq	0(,%rcx,8), %rdi
	movslq	%esi, %rcx
	leal	(%rsi,%rsi,2), %esi
	movq	%rdi, -96(%rbp)
	addq	%rdi, %r14
	leaq	0(,%rcx,8), %rdi
	leal	-7(%rbx), %ecx
	movq	%rdi, -88(%rbp)
	leaq	(%rcx,%rcx,2), %rdi
	movslq	%esi, %rsi
	movq	-136(%rbp), %rbx
	salq	$4, %rdi
	addq	%rcx, %rdi
	imulq	$-392, %rcx, %rcx
	addq	%rdi, %rsi
	movq	%rax, %rdi
	leaq	(%rax,%rax,4), %rax
	salq	$4, %rdi
	salq	$3, %rax
	leaq	392(%rbx,%rsi,8), %rbx
	subq	$392, %rcx
	movq	%rdi, -80(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%rax, -104(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	addl	$1, %r13d
	movq	%r14, %r11
	movq	-112(%rbp), %rax
	leaq	(%rdi,%rdx), %r9
	movq	%r9, %r8
	addq	%rbx, %rax
	subq	%rsi, %r8
	leaq	(%r8,%r12), %rdi
	addq	%rdi, %rsi
	leaq	(%rsi,%r12), %rcx
	leaq	(%rcx,%r12), %r15
	movq	%r15, %r10
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L23:
	addq	$8, %r9
	addq	$8, %rdx
	addq	$8, %r8
	addq	$8, %rdi
	addq	$8, %rsi
	addq	$8, %rcx
	addq	$8, %r10
	addq	$8, %r11
	vmovsd	1184(%rax), %xmm1
	vmovsd	1176(%rax), %xmm2
	addq	$392, %rax
	vmulsd	16(%r9), %xmm2, %xmm2
	vmulsd	-8(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	800(%rax), %xmm2
	vmulsd	-8(%r8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	808(%rax), %xmm1
	vmulsd	-8(%rdi), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	816(%rax), %xmm2
	vmulsd	-8(%r9), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	824(%rax), %xmm1
	vmulsd	-8(%rsi), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	832(%rax), %xmm2
	vmulsd	-8(%rcx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	840(%rax), %xmm1
	vmulsd	-8(%r10), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	848(%rax), %xmm2
	vmulsd	(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	856(%rax), %xmm1
	vmulsd	(%r8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	864(%rax), %xmm2
	vmulsd	(%rdi), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	872(%rax), %xmm1
	vmulsd	(%r9), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	880(%rax), %xmm2
	vmulsd	(%rsi), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	888(%rax), %xmm1
	vmulsd	(%rcx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	896(%rax), %xmm2
	vmulsd	(%r10), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	904(%rax), %xmm1
	vmulsd	8(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	912(%rax), %xmm2
	vmulsd	8(%r8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	920(%rax), %xmm1
	vmulsd	8(%rdi), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	928(%rax), %xmm2
	vmulsd	8(%r9), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	936(%rax), %xmm1
	vmulsd	8(%rsi), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	944(%rax), %xmm2
	vmulsd	8(%rcx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	952(%rax), %xmm1
	vmulsd	8(%r10), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	960(%rax), %xmm2
	vmulsd	16(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	968(%rax), %xmm1
	vmulsd	16(%r8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	976(%rax), %xmm2
	vmulsd	16(%rdi), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	984(%rax), %xmm1
	vmulsd	16(%rsi), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	992(%rax), %xmm2
	vmulsd	16(%rcx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	1000(%rax), %xmm1
	vmulsd	16(%r10), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	1008(%rax), %xmm2
	vmulsd	24(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	1016(%rax), %xmm1
	vmulsd	24(%r8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	1024(%rax), %xmm2
	vmulsd	24(%rdi), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	1032(%rax), %xmm1
	vmulsd	24(%r9), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	1040(%rax), %xmm2
	vmulsd	24(%rsi), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	1048(%rax), %xmm1
	vmulsd	24(%rcx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	1056(%rax), %xmm2
	vmulsd	24(%r10), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	1064(%rax), %xmm1
	vmulsd	32(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	1072(%rax), %xmm2
	vmulsd	32(%r8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	1080(%rax), %xmm1
	vmulsd	32(%rdi), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	1088(%rax), %xmm2
	vmulsd	32(%r9), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	1096(%rax), %xmm1
	vmulsd	32(%rsi), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	1104(%rax), %xmm2
	vmulsd	32(%rcx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	1112(%rax), %xmm1
	vmulsd	32(%r10), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	1120(%rax), %xmm2
	vmulsd	40(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	1128(%rax), %xmm1
	vmulsd	40(%r8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	1136(%rax), %xmm2
	vmulsd	40(%rdi), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	1144(%rax), %xmm1
	vmulsd	40(%r9), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	1152(%rax), %xmm2
	vmulsd	40(%rsi), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	1160(%rax), %xmm1
	vmulsd	40(%rcx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	1168(%rax), %xmm0
	vmulsd	40(%r10), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 16(%r11)
	cmpq	%rax, %rbx
	jne	.L23
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	%r15, %rdx
	addq	%r12, %r14
	subq	-104(%rbp), %rdx
	addq	-88(%rbp), %rbx
	cmpl	%r13d, -68(%rbp)
	jg	.L24
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L70
	movq	-128(%rbp), %rdi
	call	dummy
	movq	-120(%rbp), %rdi
	call	dummy
	movq	-136(%rbp), %rdi
	call	dummy
.L70:
	addq	$96, %rsp
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
	movq	-56(%rbp), %rcx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rcx, -120(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
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
	vmovsd	.LC2(%rip), %xmm0
	movq	-120(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L40
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L41
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	movq	-120(%rbp), %rcx
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
	je	.L78
	vzeroupper
	jmp	.L28
.L77:
	movq	-128(%rbp), %rdi
	call	dummy
	movq	-120(%rbp), %rdi
	call	dummy
	movq	-136(%rbp), %rdi
	call	dummy
	cmpl	$3, -68(%rbp)
	jg	.L21
	jmp	.L22
.L38:
	movl	$1, %edi
	jmp	.L5
.L75:
	xorl	%edx, %edx
	movq	$0, -120(%rbp)
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
	movq	%r14, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -120(%rbp)
	testl	%eax, %eax
	jne	.L32
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
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
