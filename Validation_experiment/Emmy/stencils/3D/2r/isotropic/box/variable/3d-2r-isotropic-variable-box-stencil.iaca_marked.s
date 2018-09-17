	.file	"3d-2r-isotropic-variable-box-stencil.c_compilable.c"
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
	subq	$512, %rsp
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
	movl	%r13d, %r14d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
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
	movq	%rdi, -496(%rbp)
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
	ja	.L39
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rdi)
	cmpl	$1, %eax
	je	.L41
	vmovsd	%xmm0, 8(%rdi)
	cmpl	$3, %eax
	jne	.L42
	vmovsd	%xmm0, 16(%rdi)
	movl	$3, %r8d
.L5:
	movq	-496(%rbp), %rdx
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
	je	.L76
	vzeroupper
	movq	-496(%rbp), %rdi
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
	je	.L77
	testl	%r14d, %r14d
	movl	$1, %eax
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	cmpl	$4, %r15d
	ja	.L78
	movq	$0, -488(%rbp)
	xorl	%eax, %eax
.L29:
	movq	-488(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L33
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L33:
	leal	0(,%r14,8), %eax
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	subl	%r14d, %eax
	movslq	%eax, %rdx
	movq	%rdx, %r14
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %rsi
	movq	%rsi, -560(%rbp)
	testl	%r14d, %r14d
	jle	.L14
	movq	%rsi, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	leal	-1(%r14), %ecx
	cmpl	%ecx, %edx
	ja	.L45
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L16
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rsi)
	cmpl	$1, %eax
	je	.L47
	vmovsd	%xmm0, 8(%rsi)
	cmpl	$3, %eax
	jne	.L48
	vmovsd	%xmm0, 16(%rsi)
	movl	$3, %edi
.L16:
	movq	-560(%rbp), %rdx
	movl	%r14d, %esi
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
	je	.L79
	vzeroupper
	movq	-560(%rbp), %rdi
.L15:
	vmovsd	.LC4(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%r14d, %edx
	jge	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-2(%r13), %eax
	movl	%eax, -480(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$2, -480(%rbp)
	jle	.L73
	imull	$7, %r12d, %eax
	leal	-2(%r12), %edx
	movl	%eax, %edi
	imull	%ebx, %edi
	movl	%edi, -504(%rbp)
	movl	%ebx, %edi
	imull	%r12d, %edi
	movl	%edi, -500(%rbp)
	cmpl	$4, %ebx
	jle	.L73
.L38:
	cmpl	$2, %edx
	jle	.L22
	movl	$0, -464(%rbp)
	movl	-500(%rbp), %edi
	movl	$2, -452(%rbp)
	leal	(%rdi,%rdi), %edx
	movl	%edi, -472(%rbp)
	movl	%edx, -476(%rbp)
	leal	(%rdi,%rdi,2), %edx
	movl	%edx, -468(%rbp)
	leal	0(,%rdi,4), %edx
	movl	%edx, -460(%rbp)
	movl	-504(%rbp), %edx
	addl	%edx, %edx
	movl	%edx, -456(%rbp)
	movslq	%r12d, %rdx
	movq	%rdx, -424(%rbp)
	salq	$3, %rdx
	movq	%rdx, -440(%rbp)
	leal	(%r12,%r12), %edx
	movslq	%edx, %rsi
	leal	(%r12,%r12,2), %edx
	movq	%rsi, -528(%rbp)
	movslq	%edx, %rdx
	movq	%rdx, -520(%rbp)
	leal	0(,%r12,4), %edx
	movslq	%edx, %rdx
	movq	%rdx, -512(%rbp)
	movslq	%eax, %rdx
	addl	%eax, %eax
	salq	$3, %rdx
	cltq
	movq	%rdx, -432(%rbp)
	leal	-5(%r12), %edx
	imulq	$7, %rdx, %rcx
	imulq	$-56, %rdx, %rdx
	addq	%rcx, %rax
	movq	%rax, -544(%rbp)
	movq	-560(%rbp), %rax
	subq	$56, %rdx
	movq	%rdx, -448(%rbp)
	leaq	2(%rsi), %rdx
	movq	%rdx, -552(%rbp)
	addq	$168, %rax
	movq	%rax, -536(%rbp)
	leal	-2(%rbx), %eax
	movl	%eax, -320(%rbp)
	.p2align 4,,10
	.p2align 3
.L25:
	movslq	-476(%rbp), %r15
	movq	-528(%rbp), %r11
	movq	-496(%rbp), %rdi
	movq	-488(%rbp), %rdx
	movq	-424(%rbp), %rbx
	leaq	(%r11,%r15), %rax
	movq	-520(%rbp), %r9
	leaq	(%rdi,%rax,8), %rax
	movslq	-464(%rbp), %rcx
	movq	%rax, -416(%rbp)
	movq	-552(%rbp), %rax
	movslq	-460(%rbp), %rsi
	movq	-512(%rbp), %r10
	movq	-536(%rbp), %r8
	addl	$1, -452(%rbp)
	addq	%r15, %rax
	leaq	(%rdx,%rax,8), %rax
	movslq	-468(%rbp), %rdx
	movq	%rax, -408(%rbp)
	movslq	-472(%rbp), %rax
	leaq	(%rax,%rbx), %rdi
	movq	%rdi, -400(%rbp)
	leaq	(%rdx,%rbx), %rdi
	movq	%rdi, -392(%rbp)
	leaq	(%rax,%r9), %rdi
	movq	%rdi, -384(%rbp)
	leaq	(%rdx,%r9), %rdi
	movq	%rdi, -376(%rbp)
	leaq	(%rcx,%rbx), %rdi
	movq	%rdi, -352(%rbp)
	leaq	(%rsi,%rbx), %rdi
	movq	%rdi, -344(%rbp)
	leaq	(%rcx,%r9), %rdi
	movq	%rdi, -336(%rbp)
	leaq	(%rsi,%r9), %rdi
	movq	%rdi, -328(%rbp)
	leaq	(%r10,%rax), %rdi
	movq	%rdi, -272(%rbp)
	leaq	(%r10,%rdx), %rdi
	movq	%rdi, -264(%rbp)
	leaq	(%rcx,%r10), %rdi
	movq	%rdi, -240(%rbp)
	leaq	(%rsi,%r10), %rdi
	movq	%rdi, -232(%rbp)
	movslq	-456(%rbp), %rdi
	addq	-544(%rbp), %rdi
	leaq	(%r8,%rdi,8), %rdi
	movq	%rdi, -224(%rbp)
	movq	%rsi, -248(%rbp)
	subq	%r15, %rsi
	movq	%rcx, -256(%rbp)
	subq	%r15, %rcx
	movq	%rdx, -360(%rbp)
	subq	%r15, %rdx
	movq	%rax, -368(%rbp)
	subq	%r15, %rax
	movq	%r10, -280(%rbp)
	movq	%r9, -296(%rbp)
	movq	%rbx, -304(%rbp)
	movq	$0, -288(%rbp)
	movl	$2, -316(%rbp)
	movq	%rax, -216(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%r15, -312(%rbp)
	.p2align 4,,10
	.p2align 3
.L26:
	movq	-400(%rbp), %rcx
	movq	-312(%rbp), %rbx
	movq	-408(%rbp), %rax
	movq	-368(%rbp), %r15
	subq	%r11, %rcx
	movq	-448(%rbp), %rdx
	subq	%rbx, %rcx
	addq	-224(%rbp), %rdx
	addl	$1, -316(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-392(%rbp), %rcx
	movq	%rax, -200(%rbp)
	subq	%r11, %r15
	movq	-416(%rbp), %rax
	subq	%rbx, %r15
	movq	%r15, -208(%rbp)
	subq	%r11, %rcx
	subq	%rbx, %rcx
	movq	%rcx, -128(%rbp)
	movq	-384(%rbp), %rcx
	subq	%r11, %rcx
	subq	%rbx, %rcx
	movq	%rcx, -80(%rbp)
	movq	-376(%rbp), %rcx
	subq	%r11, %rcx
	subq	%rbx, %rcx
	movq	%rcx, -120(%rbp)
	movq	-360(%rbp), %rcx
	subq	%r11, %rcx
	subq	%rbx, %rcx
	movq	%rcx, -112(%rbp)
	movq	-352(%rbp), %rcx
	subq	%r11, %rcx
	subq	%rbx, %rcx
	movq	%rcx, -104(%rbp)
	movq	-344(%rbp), %rcx
	subq	%r11, %rcx
	subq	%rbx, %rcx
	movq	%rcx, -168(%rbp)
	movq	-336(%rbp), %rcx
	subq	%r11, %rcx
	subq	%rbx, %rcx
	movq	%rcx, -96(%rbp)
	movq	-328(%rbp), %rcx
	subq	%r11, %rcx
	subq	%rbx, %rcx
	movq	%rcx, -88(%rbp)
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L23:
	movq	-240(%rbp), %rsi
	addq	$56, %rdx
	movq	-312(%rbp), %r15
	movq	-272(%rbp), %r10
	movq	-264(%rbp), %r9
	subq	%r11, %rsi
	movq	-256(%rbp), %r8
	subq	%r15, %rsi
	movq	-248(%rbp), %rdi
	movq	%rsi, -192(%rbp)
	movq	-232(%rbp), %rsi
	subq	%r11, %r10
	movq	-304(%rbp), %r14
	subq	%r11, %r9
	subq	%r15, %r10
	subq	%r11, %r8
	subq	%r15, %r9
	movq	-296(%rbp), %r13
	subq	%r11, %rdi
	subq	%r15, %r8
	movq	-288(%rbp), %r12
	subq	%r11, %rsi
	subq	%r15, %rdi
	movq	-280(%rbp), %rbx
	movq	%rsi, %rcx
	subq	%r11, %r14
	movq	%rdi, -72(%rbp)
	subq	%r15, %rcx
	movq	-216(%rbp), %r15
	subq	%r11, %r13
	vmovsd	(%rax,%r14,8), %xmm0
	movq	%rcx, -184(%rbp)
	subq	%r11, %r12
	movq	-128(%rbp), %rcx
	movq	%r12, -160(%rbp)
	subq	%r11, %rbx
	vaddsd	(%rax,%r15,8), %xmm0, %xmm1
	movq	-152(%rbp), %r15
	vaddsd	(%rax,%r15,8), %xmm1, %xmm1
	movq	-136(%rbp), %r15
	vaddsd	(%rax,%r13,8), %xmm1, %xmm1
	vaddsd	8(%rax,%r12,8), %xmm1, %xmm1
	vaddsd	8(%rax,%r15,8), %xmm1, %xmm1
	vaddsd	8(%rax,%rcx,8), %xmm1, %xmm1
	movq	-176(%rbp), %rcx
	vaddsd	8(%rax,%rcx,8), %xmm1, %xmm1
	movq	-144(%rbp), %rcx
	vaddsd	8(%rax,%rcx,8), %xmm1, %xmm1
	movq	-80(%rbp), %rcx
	vaddsd	8(%rax,%rcx,8), %xmm1, %xmm1
	movq	-120(%rbp), %r12
	movq	-208(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movq	-168(%rbp), %rsi
	vaddsd	8(%rax,%r12,8), %xmm1, %xmm1
	vaddsd	8(%rax,%rbx,8), %xmm1, %xmm1
	vaddsd	16(%rax,%rdi,8), %xmm1, %xmm1
	vaddsd	16(%rax,%rcx,8), %xmm1, %xmm1
	movq	-104(%rbp), %rcx
	movq	-160(%rbp), %rdi
	vaddsd	16(%rax,%rcx,8), %xmm1, %xmm1
	vaddsd	16(%rax,%rsi,8), %xmm1, %xmm1
	movq	-96(%rbp), %rsi
	movq	-128(%rbp), %rcx
	vaddsd	16(%rax,%rsi,8), %xmm1, %xmm1
	movq	-88(%rbp), %rsi
	vaddsd	16(%rax,%rsi,8), %xmm1, %xmm1
	vaddsd	16(%rax,%r10,8), %xmm1, %xmm1
	vaddsd	16(%rax,%r9,8), %xmm1, %xmm1
	vaddsd	24(%rax,%rdi,8), %xmm1, %xmm1
	vaddsd	24(%rax,%r15,8), %xmm1, %xmm1
	vaddsd	24(%rax,%rcx,8), %xmm1, %xmm1
	movq	-176(%rbp), %rcx
	movq	-216(%rbp), %rsi
	vaddsd	24(%rax,%rcx,8), %xmm1, %xmm1
	movq	-144(%rbp), %rcx
	vaddsd	24(%rax,%rcx,8), %xmm1, %xmm1
	movq	-80(%rbp), %rcx
	vaddsd	24(%rax,%rcx,8), %xmm1, %xmm1
	vaddsd	24(%rax,%r12,8), %xmm1, %xmm1
	vaddsd	24(%rax,%rbx,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r14,8), %xmm1, %xmm1
	vaddsd	32(%rax,%rsi,8), %xmm1, %xmm1
	movq	-152(%rbp), %rcx
	vmovsd	(%rax), %xmm0
	movq	-136(%rbp), %r15
	vaddsd	8(%rax,%r14,8), %xmm0, %xmm3
	vaddsd	32(%rax,%rcx,8), %xmm1, %xmm1
	vaddsd	8(%rax,%rsi,8), %xmm3, %xmm3
	vaddsd	8(%rax,%rcx,8), %xmm3, %xmm3
	movq	-128(%rbp), %rcx
	vaddsd	8(%rax,%r13,8), %xmm3, %xmm3
	vaddsd	16(%rax,%rdi,8), %xmm3, %xmm3
	vaddsd	16(%rax,%r15,8), %xmm3, %xmm3
	movq	-144(%rbp), %r15
	vaddsd	16(%rax,%rcx,8), %xmm3, %xmm3
	movq	-176(%rbp), %rcx
	vaddsd	32(%rax,%r13,8), %xmm1, %xmm1
	vmovsd	8(%rax), %xmm0
	vmulsd	-32(%rdx), %xmm1, %xmm1
	vaddsd	16(%rax,%rcx,8), %xmm3, %xmm3
	vaddsd	16(%rax,%r15,8), %xmm3, %xmm3
	movq	-80(%rbp), %r15
	vaddsd	16(%rax,%r14,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r15,8), %xmm3, %xmm3
	vaddsd	16(%rax,%r12,8), %xmm3, %xmm3
	movq	-152(%rbp), %r12
	vaddsd	16(%rax,%rbx,8), %xmm3, %xmm3
	vaddsd	24(%rax,%r14,8), %xmm3, %xmm3
	vaddsd	24(%rax,%rsi,8), %xmm3, %xmm3
	vaddsd	24(%rax,%r12,8), %xmm3, %xmm3
	vaddsd	24(%rax,%r13,8), %xmm3, %xmm3
	vaddsd	32(%rax), %xmm3, %xmm3
	vmulsd	-40(%rdx), %xmm3, %xmm3
	vaddsd	16(%rax,%rsi,8), %xmm0, %xmm0
	vmovsd	-56(%rdx), %xmm2
	vaddsd	16(%rax,%r12,8), %xmm0, %xmm0
	vmulsd	16(%rax), %xmm2, %xmm4
	vaddsd	16(%rax,%r13,8), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vmulsd	-48(%rdx), %xmm0, %xmm0
	movq	-136(%rbp), %r14
	movq	-128(%rbp), %r15
	movq	-144(%rbp), %r13
	movq	-80(%rbp), %r12
	vaddsd	%xmm4, %xmm0, %xmm2
	movq	-104(%rbp), %rsi
	vaddsd	%xmm2, %xmm3, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	(%rax,%rdi,8), %xmm1
	vaddsd	(%rax,%r14,8), %xmm1, %xmm2
	vaddsd	(%rax,%r15,8), %xmm2, %xmm2
	vaddsd	(%rax,%rcx,8), %xmm2, %xmm2
	vaddsd	(%rax,%r13,8), %xmm2, %xmm2
	vaddsd	(%rax,%r12,8), %xmm2, %xmm2
	movq	-120(%rbp), %r12
	movq	-208(%rbp), %rdi
	vaddsd	(%rax,%r12,8), %xmm2, %xmm2
	movq	-112(%rbp), %r12
	vaddsd	(%rax,%rbx,8), %xmm2, %xmm2
	vaddsd	8(%rax,%rdi,8), %xmm2, %xmm2
	vaddsd	8(%rax,%r12,8), %xmm2, %xmm2
	vaddsd	8(%rax,%rsi,8), %xmm2, %xmm2
	movq	-168(%rbp), %rsi
	vaddsd	8(%rax,%rsi,8), %xmm2, %xmm2
	movq	-96(%rbp), %rsi
	vaddsd	8(%rax,%rsi,8), %xmm2, %xmm2
	movq	-88(%rbp), %rsi
	vaddsd	8(%rax,%rsi,8), %xmm2, %xmm2
	vaddsd	8(%rax,%r10,8), %xmm2, %xmm2
	movq	-72(%rbp), %rsi
	vaddsd	8(%rax,%r9,8), %xmm2, %xmm2
	vaddsd	16(%rax,%r8,8), %xmm2, %xmm2
	vaddsd	16(%rax,%rsi,8), %xmm2, %xmm2
	movq	-192(%rbp), %rsi
	vaddsd	16(%rax,%rsi,8), %xmm2, %xmm2
	movq	-184(%rbp), %rsi
	vaddsd	16(%rax,%rsi,8), %xmm2, %xmm2
	movq	-104(%rbp), %rsi
	vaddsd	24(%rax,%rdi,8), %xmm2, %xmm2
	vaddsd	24(%rax,%r12,8), %xmm2, %xmm2
	movq	-96(%rbp), %r12
	vaddsd	24(%rax,%rsi,8), %xmm2, %xmm2
	movq	-168(%rbp), %rsi
	vaddsd	24(%rax,%rsi,8), %xmm2, %xmm2
	vaddsd	24(%rax,%r12,8), %xmm2, %xmm2
	movq	-88(%rbp), %r12
	vaddsd	24(%rax,%r12,8), %xmm2, %xmm2
	movq	-160(%rbp), %r12
	vaddsd	24(%rax,%r10,8), %xmm2, %xmm2
	vaddsd	24(%rax,%r9,8), %xmm2, %xmm2
	vaddsd	32(%rax,%r12,8), %xmm2, %xmm2
	movq	-80(%rbp), %r12
	vaddsd	32(%rax,%r14,8), %xmm2, %xmm2
	vaddsd	32(%rax,%r15,8), %xmm2, %xmm2
	vaddsd	32(%rax,%rcx,8), %xmm2, %xmm2
	vaddsd	32(%rax,%r13,8), %xmm2, %xmm2
	vaddsd	32(%rax,%r12,8), %xmm2, %xmm2
	movq	-120(%rbp), %r12
	vaddsd	32(%rax,%r12,8), %xmm2, %xmm2
	vaddsd	32(%rax,%rbx,8), %xmm2, %xmm2
	vmulsd	-24(%rdx), %xmm2, %xmm2
	movq	-112(%rbp), %rbx
	movq	-104(%rbp), %rcx
	movq	-192(%rbp), %r12
	movq	-184(%rbp), %r13
	movq	-96(%rbp), %r14
	vaddsd	%xmm2, %xmm0, %xmm2
	movq	%rcx, -160(%rbp)
	vmovsd	(%rax,%rdi,8), %xmm0
	movq	-88(%rbp), %r15
	vaddsd	(%rax,%rbx,8), %xmm0, %xmm1
	vaddsd	(%rax,%rcx,8), %xmm1, %xmm1
	movq	-72(%rbp), %rcx
	vaddsd	(%rax,%rsi,8), %xmm1, %xmm1
	vaddsd	(%rax,%r14,8), %xmm1, %xmm1
	vaddsd	(%rax,%r15,8), %xmm1, %xmm1
	vaddsd	(%rax,%r10,8), %xmm1, %xmm1
	vaddsd	(%rax,%r9,8), %xmm1, %xmm1
	vaddsd	8(%rax,%r8,8), %xmm1, %xmm1
	vaddsd	8(%rax,%rcx,8), %xmm1, %xmm1
	vaddsd	8(%rax,%r12,8), %xmm1, %xmm1
	vaddsd	8(%rax,%r13,8), %xmm1, %xmm1
	vaddsd	24(%rax,%r8,8), %xmm1, %xmm1
	vaddsd	24(%rax,%rcx,8), %xmm1, %xmm1
	movq	-160(%rbp), %rcx
	vaddsd	24(%rax,%r12,8), %xmm1, %xmm1
	vaddsd	24(%rax,%r13,8), %xmm1, %xmm1
	vaddsd	32(%rax,%rdi,8), %xmm1, %xmm1
	vaddsd	32(%rax,%rbx,8), %xmm1, %xmm1
	vaddsd	32(%rax,%rcx,8), %xmm1, %xmm1
	vaddsd	32(%rax,%rsi,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r14,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r15,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r10,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r9,8), %xmm1, %xmm1
	vmulsd	-16(%rdx), %xmm1, %xmm1
	movq	-72(%rbp), %rbx
	movq	-200(%rbp), %rdi
	vaddsd	%xmm1, %xmm2, %xmm0
	vmovsd	(%rax,%r8,8), %xmm1
	vaddsd	(%rax,%rbx,8), %xmm1, %xmm1
	addq	$8, %rdi
	vaddsd	(%rax,%r12,8), %xmm1, %xmm1
	vaddsd	(%rax,%r13,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r8,8), %xmm1, %xmm1
	vaddsd	32(%rax,%rbx,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r12,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r13,8), %xmm1, %xmm1
	addq	$8, %rax
	vmulsd	-8(%rdx), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rdi)
	movq	%rdi, -200(%rbp)
	cmpq	%rdx, -224(%rbp)
	jne	.L23
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-424(%rbp), %rax
	movq	-440(%rbp), %rdx
	addq	%rax, -304(%rbp)
	addq	%rdx, -416(%rbp)
	addq	%rdx, -408(%rbp)
	addq	%rax, %r11
	addq	%rax, -296(%rbp)
	addq	%rax, -288(%rbp)
	addq	%rax, -400(%rbp)
	addq	%rax, -392(%rbp)
	addq	%rax, -384(%rbp)
	addq	%rax, -376(%rbp)
	addq	%rax, -280(%rbp)
	addq	%rax, -368(%rbp)
	addq	%rax, -360(%rbp)
	addq	%rax, -352(%rbp)
	addq	%rax, -344(%rbp)
	addq	%rax, -336(%rbp)
	addq	%rax, -328(%rbp)
	movq	-432(%rbp), %rdi
	addq	%rax, -272(%rbp)
	addq	%rdi, -224(%rbp)
	addq	%rax, -264(%rbp)
	addq	%rax, -256(%rbp)
	addq	%rax, -248(%rbp)
	addq	%rax, -240(%rbp)
	addq	%rax, -232(%rbp)
	movl	-316(%rbp), %edi
	cmpl	%edi, -320(%rbp)
	jne	.L26
	movl	-500(%rbp), %eax
	movl	-504(%rbp), %edi
	addl	%eax, -476(%rbp)
	addl	%eax, -472(%rbp)
	addl	%eax, -468(%rbp)
	addl	%eax, -464(%rbp)
	addl	%eax, -460(%rbp)
	addl	%edi, -456(%rbp)
	movl	-480(%rbp), %edx
	cmpl	%edx, -452(%rbp)
	jl	.L25
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L73
	movq	-496(%rbp), %rdi
	call	dummy
	movq	-488(%rbp), %rdi
	call	dummy
	movq	-560(%rbp), %rdi
	call	dummy
.L73:
	addq	$512, %rsp
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
.L41:
	.cfi_restore_state
	movl	$1, %r8d
	jmp	.L5
.L78:
	movq	$0, -488(%rbp)
	xorl	%edx, %edx
.L9:
	movq	-488(%rbp), %rcx
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
	je	.L81
	vzeroupper
	jmp	.L29
.L77:
	movq	-56(%rbp), %rdx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%rdx, -488(%rbp)
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %ecx
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	testl	%r14d, %r14d
	cmovle	%eax, %r15d
	cmpl	%r15d, %ecx
	ja	.L29
	testl	%edx, %edx
	je	.L9
	movq	-488(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L43
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L44
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
	jmp	.L9
.L80:
	movq	-496(%rbp), %rdi
	call	dummy
	movq	-488(%rbp), %rdi
	call	dummy
	movq	-560(%rbp), %rdi
	call	dummy
	cmpl	$2, -480(%rbp)
	jle	.L22
	imull	$7, %r12d, %eax
	leal	-2(%r12), %edx
	movl	%eax, %edi
	imull	%ebx, %edi
	movl	%edi, -504(%rbp)
	movl	%r12d, %edi
	imull	%ebx, %edi
	movl	%edi, -500(%rbp)
	cmpl	$4, %ebx
	jg	.L38
	jmp	.L22
.L81:
	vzeroupper
	jmp	.L33
.L79:
	vzeroupper
	jmp	.L14
.L47:
	movl	$1, %edi
	jmp	.L16
.L76:
	vzeroupper
	jmp	.L8
.L43:
	movl	$1, %eax
	jmp	.L9
.L3:
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -488(%rbp)
	testl	%eax, %eax
	jne	.L33
	movq	-56(%rbp), %rax
	movq	%rax, -488(%rbp)
	jmp	.L33
.L44:
	movl	$2, %eax
	jmp	.L9
.L48:
	movl	$2, %edi
	jmp	.L16
.L42:
	movl	$2, %r8d
	jmp	.L5
.L45:
	xorl	%eax, %eax
	movq	%rsi, %rdi
	jmp	.L15
.L39:
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
