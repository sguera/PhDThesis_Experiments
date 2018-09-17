	.file	"3d-2r-homogeneous-constant-box-stencil.c_compilable.c"
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
	subq	$432, %rsp
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	call	strtol
	movl	%r13d, %r14d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %rbx
	imull	%r12d, %r14d
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
	movq	%rdi, -480(%rbp)
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
	movq	-480(%rbp), %rdx
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
	movq	-480(%rbp), %rsi
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
	movq	$0, -472(%rbp)
	xorl	%eax, %eax
.L22:
	vmovsd	.LC2(%rip), %xmm0
	movq	-472(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L26
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L26:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -56(%rbp)
	leal	-2(%r13), %eax
	movl	%eax, -420(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$2, -420(%rbp)
	jle	.L56
	movl	%r12d, %ecx
	leal	-2(%r12), %eax
	imull	%ebx, %ecx
	movl	%ecx, -424(%rbp)
	cmpl	$4, %ebx
	jle	.L56
.L31:
	cmpl	$2, %eax
	jle	.L15
	movl	-424(%rbp), %esi
	movq	-472(%rbp), %r10
	movl	$0, -416(%rbp)
	movq	-480(%rbp), %r11
	movl	$2, -396(%rbp)
	leal	(%rsi,%rsi,2), %eax
	movl	%esi, -412(%rbp)
	movl	%eax, -408(%rbp)
	leal	0(,%rsi,4), %eax
	movl	%eax, -404(%rbp)
	leal	(%rsi,%rsi), %eax
	movl	%eax, -400(%rbp)
	leal	(%r12,%r12), %eax
	movslq	%eax, %rdi
	leal	(%r12,%r12,2), %eax
	cltq
	movq	%rdi, -448(%rbp)
	movq	%rax, -440(%rbp)
	leal	0(,%r12,4), %eax
	cltq
	movq	%rax, -432(%rbp)
	movslq	%r12d, %rax
	movq	%rax, -368(%rbp)
	salq	$3, %rax
	movq	%rax, -376(%rbp)
	leal	-5(%r12), %eax
	imulq	$-8, %rax, %rcx
	leaq	0(,%rax,8), %rdx
	addq	%rdi, %rax
	subq	%rdx, %r10
	movq	%rax, -456(%rbp)
	leaq	8(%r11), %rax
	movq	%r10, %rdx
	movq	%rax, -464(%rbp)
	leal	-2(%rbx), %eax
	subq	$8, %rcx
	subq	%r11, %rdx
	movl	%eax, -280(%rbp)
	movq	%rcx, -384(%rbp)
	leaq	8(%rdx), %rcx
	movq	%rcx, -392(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movq	-368(%rbp), %rbx
	movslq	-416(%rbp), %rsi
	movslq	-412(%rbp), %rax
	movslq	-408(%rbp), %rdx
	leaq	(%rbx,%rsi), %rdi
	movslq	-404(%rbp), %rcx
	movq	-440(%rbp), %r10
	movq	%rbx, -264(%rbp)
	movq	%rdi, -328(%rbp)
	leaq	(%rbx,%rax), %rdi
	movq	-432(%rbp), %r11
	movq	%rdi, -320(%rbp)
	leaq	(%rbx,%rdx), %rdi
	movslq	-400(%rbp), %r13
	movq	%rdi, -312(%rbp)
	leaq	(%rbx,%rcx), %rdi
	movq	-464(%rbp), %r9
	movq	%rdi, -304(%rbp)
	leaq	(%r10,%rsi), %rdi
	movq	-448(%rbp), %r14
	movq	%rdi, -296(%rbp)
	leaq	(%r10,%rax), %rdi
	movq	%rdi, -288(%rbp)
	leaq	(%r10,%rdx), %rdi
	movq	%rdi, -248(%rbp)
	leaq	(%r10,%rcx), %rdi
	movq	%rdi, -240(%rbp)
	leaq	(%r11,%rsi), %rdi
	movq	%rdi, -232(%rbp)
	leaq	(%r11,%rax), %rdi
	movq	%rdi, -224(%rbp)
	leaq	(%r11,%rdx), %rdi
	movq	%rdi, -208(%rbp)
	leaq	(%r11,%rcx), %rdi
	movq	%rdi, -200(%rbp)
	movq	-456(%rbp), %rdi
	movq	%rcx, -336(%rbp)
	subq	%r13, %rcx
	addq	%r13, %rdi
	movq	%rdx, -344(%rbp)
	subq	%r13, %rdx
	leaq	(%r9,%rdi,8), %rdi
	movq	%rax, -352(%rbp)
	subq	%r13, %rax
	addl	$1, -396(%rbp)
	movq	%rdi, -192(%rbp)
	movq	%r11, -216(%rbp)
	movq	%r10, -256(%rbp)
	movq	%rsi, -360(%rbp)
	subq	%r13, %rsi
	movq	$0, -272(%rbp)
	movl	$2, -276(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rax, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-192(%rbp), %rdi
	movq	-392(%rbp), %rdx
	movq	-296(%rbp), %r15
	addl	$1, -276(%rbp)
	addq	%rdi, %rdx
	movq	-384(%rbp), %rax
	movq	%rdx, -184(%rbp)
	movq	-360(%rbp), %rdx
	subq	%r14, %r15
	subq	%r13, %r15
	addq	%rdi, %rax
	subq	%r14, %rdx
	movq	%r15, -144(%rbp)
	subq	%r13, %rdx
	movq	%rdx, -136(%rbp)
	movq	-352(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -128(%rbp)
	movq	-344(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -120(%rbp)
	movq	-336(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -112(%rbp)
	movq	-328(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -104(%rbp)
	movq	-320(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -96(%rbp)
	movq	-312(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -88(%rbp)
	movq	-304(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -80(%rbp)
	movq	-288(%rbp), %rdx
	subq	%r14, %rdx
	subq	%r13, %rdx
	movq	%rdx, -72(%rbp)
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L16:
	movq	-136(%rbp), %r15
	vmovsd	16(%rax), %xmm0
	movq	-272(%rbp), %r12
	movq	-264(%rbp), %rbx
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-128(%rbp), %r15
	subq	%r14, %r12
	subq	%r14, %rbx
	movq	-256(%rbp), %r11
	movq	-248(%rbp), %r9
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-120(%rbp), %r15
	vaddsd	(%rax,%r12,8), %xmm0, %xmm0
	movq	-240(%rbp), %r8
	subq	%r14, %r9
	subq	%r14, %r11
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-112(%rbp), %r15
	subq	%r13, %r9
	movq	-232(%rbp), %rdi
	movq	-224(%rbp), %rsi
	subq	%r14, %r8
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-104(%rbp), %r15
	subq	%r13, %r8
	movq	-216(%rbp), %r10
	movq	-208(%rbp), %rcx
	subq	%r14, %rdi
	subq	%r14, %rsi
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-96(%rbp), %r15
	subq	%r13, %rdi
	subq	%r13, %rsi
	movq	-200(%rbp), %rdx
	subq	%r14, %rcx
	subq	%r14, %r10
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-88(%rbp), %r15
	subq	%r13, %rcx
	vaddsd	(%rax,%rbx,8), %xmm0, %xmm0
	subq	%r14, %rdx
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-80(%rbp), %r15
	subq	%r13, %rdx
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-176(%rbp), %r15
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-168(%rbp), %r15
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-160(%rbp), %r15
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-152(%rbp), %r15
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-144(%rbp), %r15
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-72(%rbp), %r15
	vaddsd	(%rax,%r15,8), %xmm0, %xmm0
	movq	-136(%rbp), %r15
	vaddsd	(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-128(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-120(%rbp), %r15
	vaddsd	8(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-112(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-104(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-96(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rbx,8), %xmm0, %xmm0
	movq	-88(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-80(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-176(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-168(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-160(%rbp), %r15
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-152(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-144(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-72(%rbp), %r15
	vaddsd	8(%rax,%r15,8), %xmm0, %xmm0
	movq	-136(%rbp), %r15
	vaddsd	8(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	8(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	8(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-128(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-120(%rbp), %r15
	vaddsd	16(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-112(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-104(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-96(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-88(%rbp), %r15
	vaddsd	16(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-80(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-176(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-168(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-160(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-152(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-144(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-72(%rbp), %r15
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	movq	-136(%rbp), %r15
	vaddsd	16(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-128(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-120(%rbp), %r15
	vaddsd	24(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-112(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-104(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-96(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-88(%rbp), %r15
	vaddsd	24(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-80(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-176(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-168(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-160(%rbp), %r15
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-152(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-144(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	movq	-72(%rbp), %r15
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r8,8), %xmm0, %xmm0
	movq	-136(%rbp), %r15
	vaddsd	24(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	24(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	24(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	24(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	24(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-128(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-120(%rbp), %r15
	vaddsd	32(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-112(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-104(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-96(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-88(%rbp), %r15
	vaddsd	32(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-80(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-176(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-168(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-160(%rbp), %r15
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-152(%rbp), %r15
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	movq	-144(%rbp), %rbx
	movq	-72(%rbp), %r15
	vaddsd	32(%rax,%rbx,8), %xmm0, %xmm0
	movq	-184(%rbp), %rbx
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r11,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r9,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r8,8), %xmm0, %xmm0
	addq	$8, %rbx
	vaddsd	32(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	32(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	32(%rax,%r10,8), %xmm0, %xmm0
	vaddsd	32(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	32(%rax,%rdx,8), %xmm0, %xmm0
	vmulsd	-56(%rbp), %xmm0, %xmm0
	addq	$8, %rax
	vmovsd	%xmm0, -8(%rbx)
	movq	%rbx, -184(%rbp)
	cmpq	%rax, -192(%rbp)
	jne	.L16
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-368(%rbp), %rax
	addq	%rax, -360(%rbp)
	addq	%rax, -352(%rbp)
	addq	%rax, -272(%rbp)
	addq	%rax, %r14
	addq	%rax, -344(%rbp)
	addq	%rax, -336(%rbp)
	addq	%rax, -328(%rbp)
	addq	%rax, -320(%rbp)
	addq	%rax, -264(%rbp)
	addq	%rax, -312(%rbp)
	addq	%rax, -304(%rbp)
	addq	%rax, -296(%rbp)
	addq	%rax, -288(%rbp)
	addq	%rax, -256(%rbp)
	addq	%rax, -248(%rbp)
	addq	%rax, -240(%rbp)
	addq	%rax, -232(%rbp)
	movq	-376(%rbp), %rsi
	addq	%rax, -224(%rbp)
	movl	-276(%rbp), %ecx
	addq	%rax, -216(%rbp)
	addq	%rax, -208(%rbp)
	addq	%rax, -200(%rbp)
	addq	%rsi, -192(%rbp)
	cmpl	%ecx, -280(%rbp)
	jne	.L19
	movl	-424(%rbp), %eax
	movl	-420(%rbp), %ecx
	addl	%eax, -416(%rbp)
	addl	%eax, -412(%rbp)
	addl	%eax, -408(%rbp)
	addl	%eax, -404(%rbp)
	addl	%eax, -400(%rbp)
	cmpl	%ecx, -396(%rbp)
	jl	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L56
	movq	-480(%rbp), %rdi
	call	dummy
	movq	-472(%rbp), %rdi
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
	movq	$0, -472(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %edi
	movq	-472(%rbp), %rcx
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
	movq	%rcx, -472(%rbp)
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
	movq	-472(%rbp), %rax
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
	movq	-480(%rbp), %rdi
	call	dummy
	movq	-472(%rbp), %rdi
	call	dummy
	leaq	-56(%rbp), %rdi
	call	dummy
	cmpl	$2, -420(%rbp)
	jle	.L15
	movl	%r12d, %ecx
	leal	-2(%r12), %eax
	imull	%ebx, %ecx
	movl	%ecx, -424(%rbp)
	cmpl	$4, %ebx
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
	movq	$0, -472(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -472(%rbp)
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
