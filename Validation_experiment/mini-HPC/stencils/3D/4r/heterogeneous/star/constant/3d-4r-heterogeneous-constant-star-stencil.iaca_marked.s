	.file	"3d-4r-heterogeneous-constant-star-stencil.c_compilable.c"
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
	subq	$432, %rsp
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
	movl	%ebx, %r14d
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movq	%rax, %r13
	movl	$10, %edx
	call	strtol
	imull	%r13d, %r14d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movq	%rax, %r12
	imull	%eax, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -264(%rbp)
	call	posix_memalign
	movq	-264(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -416(%rbp)
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
	movq	-416(%rbp), %rdx
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
	movq	-416(%rbp), %rdi
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
	movq	$0, -408(%rbp)
	xorl	%eax, %eax
.L22:
	vmovsd	.LC2(%rip), %xmm0
	movq	-408(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L26
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L26:
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
	leal	-4(%r13), %eax
	movl	%eax, -400(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$4, -400(%rbp)
	jle	.L56
	movl	%r12d, %esi
	leal	-4(%r12), %eax
	imull	%ebx, %esi
	movl	%esi, -420(%rbp)
	cmpl	$8, %ebx
	jle	.L56
.L31:
	cmpl	$4, %eax
	jle	.L15
	movl	$0, -368(%rbp)
	movl	-420(%rbp), %edi
	movl	$4, -352(%rbp)
	leal	(%rdi,%rdi,2), %eax
	movl	%edi, -376(%rbp)
	movl	%eax, -396(%rbp)
	leal	(%rdi,%rdi,4), %eax
	movl	%eax, -392(%rbp)
	leal	0(,%rdi,4), %eax
	movl	%eax, -388(%rbp)
	leal	(%rdi,%rdi), %eax
	movl	%eax, -384(%rbp)
	imull	$6, %edi, %eax
	movl	%eax, -380(%rbp)
	imull	$7, %edi, %eax
	movl	%eax, -372(%rbp)
	leal	0(,%rdi,8), %eax
	movl	%eax, -364(%rbp)
	movslq	%r12d, %rax
	movq	%rax, -472(%rbp)
	salq	$3, %rax
	movq	%rax, -344(%rbp)
	leal	0(,%r12,4), %eax
	cltq
	movq	%rax, -360(%rbp)
	leal	(%r12,%r12,2), %eax
	cltq
	movq	%rax, -464(%rbp)
	leal	(%r12,%r12,4), %eax
	cltq
	movq	%rax, -456(%rbp)
	leal	(%r12,%r12), %eax
	cltq
	movq	%rax, -448(%rbp)
	imull	$6, %r12d, %eax
	cltq
	movq	%rax, -440(%rbp)
	imull	$7, %r12d, %eax
	cltq
	movq	%rax, -432(%rbp)
	leal	0(,%r12,8), %eax
	cltq
	movq	%rax, -328(%rbp)
	leal	-4(%rbx), %eax
	movl	%eax, -348(%rbp)
	leal	-9(%r12), %eax
	addq	$5, %rax
	movq	%rax, -312(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movq	-360(%rbp), %rdi
	movslq	-396(%rbp), %rax
	movq	-416(%rbp), %rsi
	movq	-464(%rbp), %r9
	movq	%rax, -320(%rbp)
	addq	%rdi, %rax
	movq	-456(%rbp), %r11
	leaq	(%rsi,%rax,8), %rcx
	movslq	-392(%rbp), %rax
	movq	-448(%rbp), %rbx
	addl	$1, -352(%rbp)
	addq	%rdi, %rax
	leaq	(%rsi,%rax,8), %rdx
	movq	%rdx, -304(%rbp)
	movslq	-388(%rbp), %rdx
	leaq	(%rdx,%r9), %rax
	movq	-432(%rbp), %r9
	leaq	(%rsi,%rax,8), %r10
	leaq	(%r11,%rdx), %rax
	leaq	(%rsi,%rax,8), %r8
	movslq	-384(%rbp), %rax
	movq	%r10, -296(%rbp)
	movq	%r8, -288(%rbp)
	movq	-472(%rbp), %r8
	addq	%rdi, %rax
	leaq	(%rsi,%rax,8), %r15
	movslq	-380(%rbp), %rax
	addq	%rdi, %rax
	leaq	(%rsi,%rax,8), %r14
	leaq	(%rbx,%rdx), %rax
	movq	-440(%rbp), %rbx
	leaq	(%rsi,%rax,8), %r13
	leaq	(%rbx,%rdx), %rax
	leaq	(%rsi,%rax,8), %r12
	movslq	-376(%rbp), %rax
	addq	%rdi, %rax
	leaq	(%rsi,%rax,8), %rbx
	movslq	-372(%rbp), %rax
	addq	%rdi, %rax
	leaq	(%rsi,%rax,8), %r11
	leaq	(%rdx,%r8), %rax
	leaq	(%rsi,%rax,8), %r10
	leaq	(%r9,%rdx), %rax
	leaq	(%rsi,%rax,8), %r9
	movslq	-368(%rbp), %rax
	addq	%rdi, %rax
	leaq	(%rsi,%rax,8), %r8
	movslq	-364(%rbp), %rax
	addq	%rdi, %rax
	leaq	(%rsi,%rax,8), %rdi
	leaq	(%rsi,%rdx,8), %rax
	movq	%rax, -264(%rbp)
	movq	-328(%rbp), %rax
	addq	%rdx, %rax
	leaq	(%rsi,%rax,8), %rsi
	movq	-360(%rbp), %rax
	movq	%rsi, -280(%rbp)
	movq	-408(%rbp), %rsi
	addq	%rdx, %rax
	subq	-320(%rbp), %rdx
	movl	$4, -320(%rbp)
	leaq	(%rsi,%rax,8), %rsi
	movq	%rdx, %rax
	salq	$3, %rax
	movq	%rsi, -272(%rbp)
	movq	%rax, -336(%rbp)
	movq	-264(%rbp), %rsi
	.p2align 4,,10
	.p2align 3
.L19:
	addl	$1, -320(%rbp)
	movq	-336(%rbp), %rax
	movq	%rcx, -264(%rbp)
	leaq	(%rax,%rcx), %rdx
	movl	$4, %eax
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L16:
	vmovsd	24(%rdx), %xmm1
	vmovsd	32(%rdx), %xmm2
	addq	$8, %rdx
	vmulsd	-248(%rbp), %xmm2, %xmm2
	movq	-264(%rbp), %rcx
	vmulsd	-240(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	32(%rdx), %xmm2
	vmulsd	-232(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rcx,%rax,8), %xmm1
	movq	-304(%rbp), %rcx
	vmulsd	-224(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rcx,%rax,8), %xmm2
	movq	-296(%rbp), %rcx
	vmulsd	-216(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rcx,%rax,8), %xmm1
	movq	-288(%rbp), %rcx
	vmulsd	-208(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rcx,%rax,8), %xmm2
	vmulsd	-200(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rdx), %xmm1
	vmulsd	-192(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	40(%rdx), %xmm2
	vmulsd	-184(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r15,%rax,8), %xmm1
	vmulsd	-176(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r14,%rax,8), %xmm2
	vmulsd	-168(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	0(%r13,%rax,8), %xmm1
	vmulsd	-160(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r12,%rax,8), %xmm2
	vmulsd	-152(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rdx), %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	48(%rdx), %xmm2
	movq	-280(%rbp), %rcx
	vmulsd	-136(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%rax,8), %xmm1
	vmulsd	-128(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r11,%rax,8), %xmm2
	vmulsd	-120(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r10,%rax,8), %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r9,%rax,8), %xmm2
	vmulsd	-104(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-8(%rdx), %xmm1
	vmulsd	-96(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	56(%rdx), %xmm2
	vmulsd	-88(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r8,%rax,8), %xmm1
	vmulsd	-80(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rdi,%rax,8), %xmm2
	vmulsd	-72(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rsi,%rax,8), %xmm1
	vmulsd	-64(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rcx,%rax,8), %xmm0
	vmulsd	-56(%rbp), %xmm0, %xmm0
	movq	-272(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, -312(%rbp)
	jne	.L16
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-344(%rbp), %rax
	movq	-264(%rbp), %rcx
	movq	-328(%rbp), %rdx
	addq	%rax, -304(%rbp)
	addq	%rdx, -272(%rbp)
	addq	%rax, %rcx
	addq	%rax, %r15
	addq	%rax, %r14
	addq	%rax, -296(%rbp)
	addq	%rax, %r13
	addq	%rax, %r12
	addq	%rax, %rbx
	addq	%rax, -288(%rbp)
	addq	%rax, %r11
	addq	%rax, %r10
	addq	%rax, %r9
	addq	%rax, %r8
	addq	%rax, %rdi
	addq	%rax, %rsi
	addq	%rax, -280(%rbp)
	movl	-320(%rbp), %edx
	cmpl	%edx, -348(%rbp)
	jne	.L19
	movl	-420(%rbp), %eax
	movl	-400(%rbp), %edi
	addl	%eax, -396(%rbp)
	addl	%eax, -392(%rbp)
	addl	%eax, -388(%rbp)
	addl	%eax, -384(%rbp)
	addl	%eax, -380(%rbp)
	addl	%eax, -376(%rbp)
	addl	%eax, -372(%rbp)
	addl	%eax, -368(%rbp)
	addl	%eax, -364(%rbp)
	cmpl	%edi, -352(%rbp)
	jl	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L56
	movq	-416(%rbp), %rdi
	call	dummy
	movq	-408(%rbp), %rdi
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
.L56:
	addq	$432, %rsp
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
	movq	$0, -408(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %edi
	movq	-408(%rbp), %rcx
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
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %edi
	cmovg	%r14d, %edi
	movq	%rsi, -408(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
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
	movq	-408(%rbp), %rax
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
	movq	-416(%rbp), %rdi
	call	dummy
	movq	-408(%rbp), %rdi
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
	cmpl	$4, -400(%rbp)
	jle	.L15
	movl	%r12d, %esi
	leal	-4(%r12), %eax
	imull	%ebx, %esi
	movl	%esi, -420(%rbp)
	cmpl	$8, %ebx
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
	movq	$0, -408(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)
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
