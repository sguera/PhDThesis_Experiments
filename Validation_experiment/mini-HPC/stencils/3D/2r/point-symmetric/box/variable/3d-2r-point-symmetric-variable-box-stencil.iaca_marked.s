	.file	"3d-2r-point-symmetric-variable-box-stencil.c_compilable.c"
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
	subq	$512, %rsp
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
	movq	%rcx, -72(%rbp)
	call	posix_memalign
	movq	-72(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -488(%rbp)
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
	movl	%r14d, %edi
	movq	-488(%rbp), %rdx
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
	je	.L76
	vzeroupper
	movq	-488(%rbp), %rdi
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
	je	.L77
	testl	%r14d, %r14d
	movl	$1, %eax
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	cmpl	$4, %r15d
	ja	.L78
	movq	$0, -480(%rbp)
	xorl	%eax, %eax
.L29:
	vmovsd	.LC2(%rip), %xmm0
	movq	-480(%rbp), %rdi
	movslq	%eax, %rdx
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
	movl	%r14d, %eax
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	sall	$6, %eax
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
	movq	%rsi, -552(%rbp)
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
	movl	%r14d, %esi
	movq	-552(%rbp), %rdx
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
	je	.L79
	vzeroupper
	movq	-552(%rbp), %rsi
.L15:
	vmovsd	.LC4(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%r14d, %edx
	jge	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-2(%r13), %eax
	movl	%eax, -472(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$2, -472(%rbp)
	jle	.L73
	imull	$63, %r12d, %eax
	movl	%r12d, %esi
	leal	-2(%r12), %edx
	imull	%ebx, %esi
	movl	%eax, %edi
	imull	%ebx, %edi
	movl	%esi, -492(%rbp)
	movl	%edi, -496(%rbp)
	cmpl	$4, %ebx
	jle	.L73
.L38:
	cmpl	$2, %edx
	jle	.L22
	movl	-492(%rbp), %edi
	leal	(%r12,%r12), %edx
	movl	$0, -456(%rbp)
	movl	$2, -444(%rbp)
	leal	(%rdi,%rdi), %esi
	movl	%edi, -464(%rbp)
	movl	%esi, -468(%rbp)
	leal	(%rdi,%rdi,2), %esi
	movl	%esi, -460(%rbp)
	leal	0(,%rdi,4), %esi
	movl	%esi, -452(%rbp)
	movl	-496(%rbp), %esi
	addl	%esi, %esi
	movl	%esi, -448(%rbp)
	movslq	%r12d, %rsi
	movq	%rsi, -416(%rbp)
	salq	$3, %rsi
	movq	%rsi, -432(%rbp)
	movslq	%edx, %rsi
	leal	(%r12,%r12,2), %edx
	movslq	%edx, %rdx
	movq	%rsi, -520(%rbp)
	movq	%rdx, -512(%rbp)
	leal	0(,%r12,4), %edx
	movslq	%edx, %rdx
	movq	%rdx, -504(%rbp)
	movslq	%eax, %rdx
	addl	%eax, %eax
	salq	$3, %rdx
	cltq
	movq	%rdx, -424(%rbp)
	leal	-5(%r12), %edx
	imulq	$63, %rdx, %rcx
	imulq	$-504, %rdx, %rdx
	addq	%rcx, %rax
	movq	%rax, -536(%rbp)
	movq	-552(%rbp), %rax
	leaq	-504(%rdx), %rdi
	movq	%rdi, -440(%rbp)
	leaq	2(%rsi), %rdi
	addq	$1512, %rax
	movq	%rdi, -528(%rbp)
	movq	%rax, -544(%rbp)
	leal	-2(%rbx), %eax
	movl	%eax, -312(%rbp)
	.p2align 4,,10
	.p2align 3
.L25:
	movq	-520(%rbp), %r14
	movslq	-468(%rbp), %rbx
	movq	-488(%rbp), %rsi
	movq	-416(%rbp), %r15
	movq	%r14, %rax
	movslq	-460(%rbp), %rdx
	movq	-512(%rbp), %r11
	movq	%rbx, -304(%rbp)
	addq	%rbx, %rax
	movslq	-456(%rbp), %rcx
	addl	$1, -444(%rbp)
	leaq	(%rsi,%rax,8), %rax
	movq	-480(%rbp), %rsi
	movq	%rax, -408(%rbp)
	movq	-528(%rbp), %rax
	addq	%rbx, %rax
	leaq	(%rsi,%rax,8), %rax
	leaq	(%rdx,%r15), %rsi
	movq	%rax, -400(%rbp)
	movslq	-464(%rbp), %rax
	movq	%rsi, -376(%rbp)
	leaq	(%rax,%r15), %rdi
	movq	%rdi, -392(%rbp)
	leaq	(%rdx,%r11), %rdi
	movq	%rdi, -384(%rbp)
	leaq	(%rax,%r11), %rdi
	movq	%rdi, -368(%rbp)
	movq	-504(%rbp), %rdi
	leaq	(%rdx,%rdi), %rsi
	movq	%rsi, -352(%rbp)
	leaq	(%rax,%rdi), %rsi
	movq	%rsi, -336(%rbp)
	leaq	(%rcx,%r15), %rsi
	movq	%rsi, -328(%rbp)
	movslq	-452(%rbp), %rsi
	leaq	(%rsi,%r11), %r8
	leaq	(%rsi,%rdi), %r9
	movq	%r8, -320(%rbp)
	leaq	(%rsi,%r15), %r8
	movq	%r8, -264(%rbp)
	leaq	(%rcx,%r11), %r8
	movq	%r8, -256(%rbp)
	movq	-544(%rbp), %r8
	movq	%r9, -240(%rbp)
	movq	%rdi, %r9
	leaq	(%rcx,%rdi), %rdi
	movq	%rdi, -224(%rbp)
	movslq	-448(%rbp), %rdi
	addq	-536(%rbp), %rdi
	leaq	(%r8,%rdi,8), %rdi
	movq	%rdi, -216(%rbp)
	movq	%rsi, -232(%rbp)
	subq	%rbx, %rsi
	movq	%rcx, -248(%rbp)
	subq	%rbx, %rcx
	movq	%rdx, -344(%rbp)
	subq	%rbx, %rdx
	movq	%rax, -360(%rbp)
	subq	%rbx, %rax
	movq	%r14, %rbx
	movq	%r9, -272(%rbp)
	movq	%r11, -288(%rbp)
	movq	%r15, -296(%rbp)
	movq	$0, -280(%rbp)
	movl	$2, -308(%rbp)
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%rsi, -88(%rbp)
	.p2align 4,,10
	.p2align 3
.L26:
	movq	-392(%rbp), %rcx
	movq	-304(%rbp), %rdi
	movq	%rbx, %r11
	movq	-328(%rbp), %r14
	movq	-400(%rbp), %rax
	subq	%rbx, %rcx
	movq	-344(%rbp), %r15
	addl	$1, -308(%rbp)
	subq	%rdi, %rcx
	subq	%rbx, %r14
	movq	%rax, -176(%rbp)
	movq	-408(%rbp), %rax
	movq	%rcx, -168(%rbp)
	subq	%rdi, %r14
	movq	-384(%rbp), %rcx
	subq	%rbx, %r15
	movq	%r14, -184(%rbp)
	movq	-440(%rbp), %rdx
	subq	%rdi, %r15
	subq	%rbx, %rcx
	addq	-216(%rbp), %rdx
	subq	%rdi, %rcx
	movq	%rcx, -160(%rbp)
	movq	-376(%rbp), %rcx
	subq	%rbx, %rcx
	subq	%rdi, %rcx
	movq	%rcx, %r12
	movq	-368(%rbp), %rcx
	movq	%r12, -104(%rbp)
	subq	%rbx, %rcx
	subq	%rdi, %rcx
	movq	%rcx, -80(%rbp)
	movq	-360(%rbp), %rcx
	subq	%rbx, %rcx
	subq	%rdi, %rcx
	movq	%rcx, %r13
	movq	-352(%rbp), %rcx
	movq	%r13, -192(%rbp)
	subq	%rbx, %rcx
	subq	%rdi, %rcx
	movq	%rcx, -152(%rbp)
	movq	-336(%rbp), %rcx
	subq	%rbx, %rcx
	subq	%rdi, %rcx
	movq	%rcx, -144(%rbp)
	movq	-320(%rbp), %rcx
	subq	%rbx, %rcx
	subq	%rdi, %rcx
	movq	%rcx, -136(%rbp)
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L23:
	vmovsd	(%rdx), %xmm1
	movq	-272(%rbp), %rsi
	addq	$504, %rdx
	vmulsd	16(%rax), %xmm1, %xmm2
	vmovsd	8(%rax), %xmm4
	movq	-288(%rbp), %rdi
	vaddsd	24(%rax), %xmm4, %xmm4
	subq	%r11, %rsi
	vmulsd	-496(%rdx), %xmm4, %xmm4
	movq	-112(%rbp), %r12
	movq	%rsi, -128(%rbp)
	movq	-296(%rbp), %rbx
	subq	%r11, %rdi
	movq	-240(%rbp), %rsi
	movq	%rdi, %r13
	movq	-232(%rbp), %r14
	movq	-304(%rbp), %rdi
	subq	%r11, %rbx
	subq	%r11, %rsi
	vmovsd	(%rax), %xmm3
	movq	-248(%rbp), %rcx
	subq	%rdi, %rsi
	subq	%r11, %r14
	vaddsd	32(%rax), %xmm3, %xmm3
	movq	-264(%rbp), %r8
	vaddsd	%xmm2, %xmm4, %xmm1
	vmovsd	16(%rax,%rbx,8), %xmm4
	vaddsd	16(%rax,%r13,8), %xmm4, %xmm4
	movq	%rsi, -200(%rbp)
	movq	%r14, %rsi
	movq	%r13, %r14
	movq	-120(%rbp), %r13
	subq	%r11, %rcx
	movq	-256(%rbp), %r9
	subq	%rdi, %rcx
	subq	%rdi, %rsi
	subq	%r11, %r8
	vmulsd	-488(%rdx), %xmm4, %xmm4
	subq	%rdi, %r8
	vmovsd	8(%rax,%rbx,8), %xmm2
	movq	%rsi, -72(%rbp)
	vmovsd	16(%rax,%r13,8), %xmm0
	vaddsd	16(%rax,%r12,8), %xmm0, %xmm0
	subq	%r11, %r9
	movq	%rcx, -208(%rbp)
	vmulsd	-480(%rdx), %xmm0, %xmm0
	subq	%rdi, %r9
	movq	%rdi, %rcx
	movq	-280(%rbp), %r10
	vmulsd	-472(%rdx), %xmm3, %xmm3
	movq	-224(%rbp), %rdi
	vaddsd	24(%rax,%r14,8), %xmm2, %xmm2
	subq	%r11, %r10
	movq	-104(%rbp), %rsi
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	-464(%rdx), %xmm2, %xmm2
	vmovsd	8(%rax,%r13,8), %xmm1
	subq	%r11, %rdi
	vaddsd	24(%rax,%r12,8), %xmm1, %xmm1
	vmulsd	-456(%rdx), %xmm1, %xmm1
	subq	%rcx, %rdi
	movq	-128(%rbp), %rcx
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	8(%rax,%r12,8), %xmm4
	vaddsd	24(%rax,%r13,8), %xmm4, %xmm4
	vmulsd	-448(%rdx), %xmm4, %xmm4
	movq	-168(%rbp), %r12
	movq	-96(%rbp), %r13
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	8(%rax,%r14,8), %xmm0
	vaddsd	24(%rax,%rbx,8), %xmm0, %xmm0
	vmulsd	-440(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	16(%rax,%r10,8), %xmm3
	vaddsd	16(%rax,%rcx,8), %xmm3, %xmm3
	vmulsd	-432(%rdx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	16(%rax,%r12,8), %xmm2
	movq	-160(%rbp), %r12
	vaddsd	16(%rax,%r12,8), %xmm2, %xmm2
	vmulsd	-424(%rdx), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	movq	-80(%rbp), %r12
	vmovsd	16(%rax,%rsi,8), %xmm1
	vaddsd	16(%rax,%r12,8), %xmm1, %xmm1
	vmulsd	-416(%rdx), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	16(%rax,%r13,8), %xmm4
	movq	-88(%rbp), %r13
	vaddsd	16(%rax,%r13,8), %xmm4, %xmm4
	vmulsd	-408(%rdx), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	(%rax,%rbx,8), %xmm0
	vaddsd	32(%rax,%r14,8), %xmm0, %xmm0
	vmulsd	-400(%rdx), %xmm0, %xmm0
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %r12
	movq	-80(%rbp), %r13
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	(%rax,%rcx,8), %xmm3
	vaddsd	32(%rax,%r12,8), %xmm3, %xmm3
	vmulsd	-392(%rdx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	(%rax,%r12,8), %xmm2
	vaddsd	32(%rax,%rcx,8), %xmm2, %xmm2
	vmulsd	-384(%rdx), %xmm2, %xmm2
	movq	-168(%rbp), %rcx
	movq	-160(%rbp), %r12
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	(%rax,%r14,8), %xmm1
	vaddsd	32(%rax,%rbx,8), %xmm1, %xmm1
	vmulsd	-376(%rdx), %xmm1, %xmm1
	movq	-128(%rbp), %rbx
	movq	-88(%rbp), %r14
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	8(%rax,%r10,8), %xmm4
	vaddsd	24(%rax,%rbx,8), %xmm4, %xmm4
	vmulsd	-368(%rdx), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	8(%rax,%rcx,8), %xmm0
	vaddsd	24(%rax,%r12,8), %xmm0, %xmm0
	vmulsd	-360(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	8(%rax,%rsi,8), %xmm3
	vaddsd	24(%rax,%r13,8), %xmm3, %xmm3
	vmulsd	-352(%rdx), %xmm3, %xmm3
	movq	-96(%rbp), %r13
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	8(%rax,%r13,8), %xmm2
	vaddsd	24(%rax,%r14,8), %xmm2, %xmm2
	vmulsd	-344(%rdx), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	8(%rax,%r14,8), %xmm1
	vaddsd	24(%rax,%r13,8), %xmm1, %xmm1
	vmulsd	-336(%rdx), %xmm1, %xmm1
	movq	-80(%rbp), %r13
	movq	-152(%rbp), %r14
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	8(%rax,%r13,8), %xmm4
	vaddsd	24(%rax,%rsi,8), %xmm4, %xmm4
	vmulsd	-328(%rdx), %xmm4, %xmm4
	movq	-192(%rbp), %rsi
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	8(%rax,%r12,8), %xmm0
	vaddsd	24(%rax,%rcx,8), %xmm0, %xmm0
	vmulsd	-320(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	8(%rax,%rbx,8), %xmm3
	vaddsd	24(%rax,%r10,8), %xmm3, %xmm3
	vmulsd	-312(%rdx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	16(%rax,%rsi,8), %xmm2
	vaddsd	16(%rax,%r14,8), %xmm2, %xmm2
	movq	-144(%rbp), %r14
	vmulsd	-304(%rdx), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	16(%rax,%r15,8), %xmm1
	vaddsd	16(%rax,%r14,8), %xmm1, %xmm1
	movq	-184(%rbp), %r14
	vmulsd	-296(%rdx), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	16(%rax,%r14,8), %xmm4
	movq	-136(%rbp), %r14
	vaddsd	16(%rax,%r14,8), %xmm4, %xmm4
	vmulsd	-288(%rdx), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	16(%rax,%r8,8), %xmm0
	vaddsd	16(%rax,%r9,8), %xmm0, %xmm0
	vmulsd	-280(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	(%rax,%r10,8), %xmm3
	vaddsd	32(%rax,%rbx,8), %xmm3, %xmm3
	vmulsd	-272(%rdx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	(%rax,%rcx,8), %xmm2
	vaddsd	32(%rax,%r12,8), %xmm2, %xmm2
	vmulsd	-264(%rdx), %xmm2, %xmm2
	movq	-104(%rbp), %rsi
	movq	-88(%rbp), %r14
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	(%rax,%rsi,8), %xmm1
	vaddsd	32(%rax,%r13,8), %xmm1, %xmm1
	vmulsd	-256(%rdx), %xmm1, %xmm1
	movq	-96(%rbp), %r13
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	(%rax,%r13,8), %xmm4
	vaddsd	32(%rax,%r14,8), %xmm4, %xmm4
	vmulsd	-248(%rdx), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	(%rax,%r14,8), %xmm0
	vaddsd	32(%rax,%r13,8), %xmm0, %xmm0
	vmulsd	-240(%rdx), %xmm0, %xmm0
	movq	-80(%rbp), %r13
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	(%rax,%r13,8), %xmm3
	vaddsd	32(%rax,%rsi,8), %xmm3, %xmm3
	vmulsd	-232(%rdx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	(%rax,%r12,8), %xmm2
	vaddsd	32(%rax,%rcx,8), %xmm2, %xmm2
	vmulsd	-224(%rdx), %xmm2, %xmm2
	movq	-152(%rbp), %rcx
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	(%rax,%rbx,8), %xmm1
	vaddsd	32(%rax,%r10,8), %xmm1, %xmm1
	vmulsd	-216(%rdx), %xmm1, %xmm1
	movq	-192(%rbp), %rbx
	movq	-144(%rbp), %r10
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	8(%rax,%rbx,8), %xmm4
	vaddsd	24(%rax,%rcx,8), %xmm4, %xmm4
	movq	%rbx, %rsi
	vmulsd	-208(%rdx), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	8(%rax,%r15,8), %xmm0
	vaddsd	24(%rax,%r10,8), %xmm0, %xmm0
	vmulsd	-200(%rdx), %xmm0, %xmm0
	movq	-184(%rbp), %r12
	movq	%rcx, -128(%rbp)
	movq	-136(%rbp), %r14
	movq	-208(%rbp), %r13
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	8(%rax,%r12,8), %xmm3
	vaddsd	24(%rax,%r14,8), %xmm3, %xmm3
	vmulsd	-192(%rdx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	8(%rax,%r8,8), %xmm2
	vaddsd	24(%rax,%r9,8), %xmm2, %xmm2
	vmulsd	-184(%rdx), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	8(%rax,%r9,8), %xmm1
	vaddsd	24(%rax,%r8,8), %xmm1, %xmm1
	vmulsd	-176(%rdx), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	8(%rax,%r14,8), %xmm4
	vaddsd	24(%rax,%r12,8), %xmm4, %xmm4
	vmulsd	-168(%rdx), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	8(%rax,%r10,8), %xmm0
	vaddsd	24(%rax,%r15,8), %xmm0, %xmm0
	vmulsd	-160(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	8(%rax,%rcx,8), %xmm3
	vaddsd	24(%rax,%rbx,8), %xmm3, %xmm3
	vmulsd	-152(%rdx), %xmm3, %xmm3
	movq	-200(%rbp), %rbx
	movq	-72(%rbp), %rcx
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	16(%rax,%r13,8), %xmm2
	vaddsd	16(%rax,%rbx,8), %xmm2, %xmm2
	vmulsd	-144(%rdx), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	16(%rax,%rcx,8), %xmm1
	vaddsd	16(%rax,%rdi,8), %xmm1, %xmm1
	vmulsd	-136(%rdx), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	(%rax,%rsi,8), %xmm4
	movq	-128(%rbp), %rcx
	vaddsd	32(%rax,%rcx,8), %xmm4, %xmm4
	vmulsd	-128(%rdx), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	(%rax,%r15,8), %xmm0
	vaddsd	32(%rax,%r10,8), %xmm0, %xmm0
	vmulsd	-120(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	(%rax,%r12,8), %xmm3
	vaddsd	32(%rax,%r14,8), %xmm3, %xmm3
	vmulsd	-112(%rdx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	(%rax,%r8,8), %xmm2
	vaddsd	32(%rax,%r9,8), %xmm2, %xmm2
	vmulsd	-104(%rdx), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	(%rax,%r9,8), %xmm1
	vaddsd	32(%rax,%r8,8), %xmm1, %xmm1
	vmulsd	-96(%rdx), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	(%rax,%r14,8), %xmm4
	vaddsd	32(%rax,%r12,8), %xmm4, %xmm4
	vmulsd	-88(%rdx), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	(%rax,%r10,8), %xmm0
	vaddsd	32(%rax,%r15,8), %xmm0, %xmm0
	vmulsd	-80(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	(%rax,%rcx,8), %xmm3
	vaddsd	32(%rax,%rsi,8), %xmm3, %xmm3
	vmulsd	-72(%rdx), %xmm3, %xmm3
	movq	-72(%rbp), %rsi
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	8(%rax,%r13,8), %xmm2
	vaddsd	24(%rax,%rbx,8), %xmm2, %xmm2
	vmulsd	-64(%rdx), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	8(%rax,%rsi,8), %xmm1
	vaddsd	24(%rax,%rdi,8), %xmm1, %xmm1
	vmulsd	-56(%rdx), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	8(%rax,%rdi,8), %xmm4
	vaddsd	24(%rax,%rsi,8), %xmm4, %xmm4
	vmulsd	-48(%rdx), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	8(%rax,%rbx,8), %xmm0
	vaddsd	24(%rax,%r13,8), %xmm0, %xmm0
	vmulsd	-40(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	(%rax,%r13,8), %xmm3
	vaddsd	32(%rax,%rbx,8), %xmm3, %xmm3
	vmulsd	-32(%rdx), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	(%rax,%rsi,8), %xmm2
	vaddsd	32(%rax,%rdi,8), %xmm2, %xmm2
	vmulsd	-24(%rdx), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	(%rax,%rdi,8), %xmm1
	vaddsd	32(%rax,%rsi,8), %xmm1, %xmm1
	vmulsd	-16(%rdx), %xmm1, %xmm1
	movq	-176(%rbp), %rsi
	vaddsd	%xmm0, %xmm4, %xmm0
	addq	$8, %rsi
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	(%rax,%rbx,8), %xmm0
	vaddsd	32(%rax,%r13,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rsi)
	movq	%rsi, -176(%rbp)
	cmpq	%rdx, -216(%rbp)
	jne	.L23
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-416(%rbp), %rax
	movq	%r11, %rbx
	movq	-432(%rbp), %rsi
	addq	%rax, -296(%rbp)
	addq	%rsi, -408(%rbp)
	addq	%rax, %rbx
	addq	%rsi, -400(%rbp)
	addq	%rax, -288(%rbp)
	addq	%rax, -280(%rbp)
	addq	%rax, -272(%rbp)
	addq	%rax, -392(%rbp)
	addq	%rax, -384(%rbp)
	addq	%rax, -376(%rbp)
	addq	%rax, -368(%rbp)
	addq	%rax, -360(%rbp)
	addq	%rax, -352(%rbp)
	addq	%rax, -344(%rbp)
	addq	%rax, -336(%rbp)
	addq	%rax, -328(%rbp)
	addq	%rax, -320(%rbp)
	movq	-424(%rbp), %rdi
	addq	%rax, -264(%rbp)
	addq	%rdi, -216(%rbp)
	movl	-308(%rbp), %edi
	addq	%rax, -256(%rbp)
	addq	%rax, -248(%rbp)
	addq	%rax, -240(%rbp)
	addq	%rax, -232(%rbp)
	addq	%rax, -224(%rbp)
	cmpl	%edi, -312(%rbp)
	jne	.L26
	movl	-492(%rbp), %eax
	movl	-496(%rbp), %esi
	addl	%eax, -468(%rbp)
	addl	%esi, -448(%rbp)
	movl	-444(%rbp), %esi
	addl	%eax, -464(%rbp)
	addl	%eax, -460(%rbp)
	addl	%eax, -456(%rbp)
	addl	%eax, -452(%rbp)
	cmpl	%esi, -472(%rbp)
	jg	.L25
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L73
	movq	-488(%rbp), %rdi
	call	dummy
	movq	-480(%rbp), %rdi
	call	dummy
	movq	-552(%rbp), %rdi
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
	movq	$0, -480(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %edi
	movq	-480(%rbp), %rcx
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
	je	.L81
	vzeroupper
	jmp	.L29
.L77:
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %edi
	cmovg	%r14d, %edi
	movq	%rsi, -480(%rbp)
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
	ja	.L29
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	movq	-480(%rbp), %rax
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
	movq	-488(%rbp), %rdi
	call	dummy
	movq	-480(%rbp), %rdi
	call	dummy
	movq	-552(%rbp), %rdi
	call	dummy
	cmpl	$2, -472(%rbp)
	jle	.L22
	imull	$63, %r12d, %eax
	leal	-2(%r12), %edx
	movl	%eax, %edi
	imull	%ebx, %edi
	movl	%edi, -496(%rbp)
	movl	%r12d, %edi
	imull	%ebx, %edi
	movl	%edi, -492(%rbp)
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
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -480(%rbp)
	testl	%eax, %eax
	jne	.L33
	movq	-56(%rbp), %rax
	movq	%rax, -480(%rbp)
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
