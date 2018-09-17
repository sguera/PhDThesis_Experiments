	.file	"3d-2r-isotropic-constant-box-stencil.c_compilable.c"
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
	subq	$512, %rsp
	.cfi_offset 12, -48
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	movl	%ebx, %r14d
	call	strtol
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %r13
	imull	%r12d, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -120(%rbp)
	call	posix_memalign
	movq	-120(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -560(%rbp)
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
	movq	-560(%rbp), %rdx
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
	movq	-560(%rbp), %rsi
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
	movq	$0, -552(%rbp)
	xorl	%eax, %eax
.L22:
	vmovsd	.LC2(%rip), %xmm0
	movq	-552(%rbp), %rsi
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
	movq	%rax, -104(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC9(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC10(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-2(%r13), %eax
	movl	%eax, -500(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$2, -500(%rbp)
	jle	.L56
	movl	%r12d, %esi
	leal	-2(%r12), %eax
	imull	%ebx, %esi
	movl	%esi, -504(%rbp)
	cmpl	$4, %ebx
	jle	.L56
.L31:
	cmpl	$2, %eax
	jle	.L15
	movl	-504(%rbp), %esi
	movq	-552(%rbp), %r9
	movl	$0, -488(%rbp)
	movl	$2, -476(%rbp)
	leal	(%rsi,%rsi,2), %eax
	movl	%esi, -496(%rbp)
	movl	%eax, -492(%rbp)
	leal	0(,%rsi,4), %eax
	movl	%eax, -484(%rbp)
	leal	(%rsi,%rsi), %eax
	movl	%eax, -480(%rbp)
	leal	(%r12,%r12), %eax
	movslq	%eax, %rdi
	leal	(%r12,%r12,2), %eax
	cltq
	movq	%rdi, -528(%rbp)
	movq	%rax, -520(%rbp)
	leal	0(,%r12,4), %eax
	cltq
	movq	%rax, -512(%rbp)
	movslq	%r12d, %rax
	movq	%rax, -448(%rbp)
	salq	$3, %rax
	movq	%rax, -456(%rbp)
	leal	-5(%r12), %eax
	imulq	$-8, %rax, %rcx
	leaq	0(,%rax,8), %rdx
	addq	%rdi, %rax
	subq	%rdx, %r9
	movq	%rax, -536(%rbp)
	movq	%r9, %rdx
	movq	-560(%rbp), %r9
	leaq	-8(%rcx), %rsi
	leaq	8(%r9), %rax
	subq	%r9, %rdx
	movq	%rsi, -464(%rbp)
	movq	%rax, -544(%rbp)
	leaq	8(%rdx), %rsi
	leal	-2(%rbx), %eax
	movq	%rsi, -472(%rbp)
	movl	%eax, -360(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movslq	-496(%rbp), %rax
	movq	-448(%rbp), %rbx
	movslq	-492(%rbp), %rdx
	movq	-520(%rbp), %r9
	leaq	(%rbx,%rax), %rdi
	movslq	-488(%rbp), %rcx
	movq	-512(%rbp), %r8
	movq	%rax, -408(%rbp)
	leaq	(%rax,%r9), %rsi
	movq	%rdi, -440(%rbp)
	leaq	(%rbx,%rdx), %rdi
	movslq	-480(%rbp), %r14
	movq	%rdi, -432(%rbp)
	leaq	(%rdx,%r9), %rdi
	movq	-544(%rbp), %r15
	movq	%rsi, -424(%rbp)
	movslq	-484(%rbp), %rsi
	movq	%r14, %r13
	movq	%rdi, -416(%rbp)
	leaq	(%rbx,%rcx), %rdi
	movq	%rdi, -392(%rbp)
	leaq	(%rbx,%rsi), %rdi
	movq	%rdi, -384(%rbp)
	leaq	(%rcx,%r9), %rdi
	movq	%rdi, -376(%rbp)
	leaq	(%rsi,%r9), %rdi
	movq	%rdi, -368(%rbp)
	leaq	(%r8,%rax), %rdi
	subq	%r14, %rax
	movq	%rdi, -320(%rbp)
	leaq	(%r8,%rdx), %rdi
	movq	%rdi, -312(%rbp)
	leaq	(%rcx,%r8), %rdi
	movq	%rdi, -288(%rbp)
	leaq	(%rsi,%r8), %rdi
	movq	%rdi, -280(%rbp)
	movq	-536(%rbp), %rdi
	movq	%rsi, -296(%rbp)
	subq	%r14, %rsi
	addq	%r14, %rdi
	movq	%rcx, -304(%rbp)
	subq	%r14, %rcx
	leaq	(%r15,%rdi,8), %rdi
	movq	%rdx, -400(%rbp)
	subq	%r14, %rdx
	movq	-528(%rbp), %r15
	addl	$1, -476(%rbp)
	movq	%rdi, -272(%rbp)
	movq	%r8, -328(%rbp)
	movq	%r9, -344(%rbp)
	movq	%rbx, -352(%rbp)
	movq	$0, -336(%rbp)
	movl	$2, -356(%rbp)
	movq	%rax, -264(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -224(%rbp)
	movq	%rsi, -192(%rbp)
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-440(%rbp), %rdx
	movq	-408(%rbp), %r14
	movq	-272(%rbp), %rdi
	movq	-472(%rbp), %rsi
	subq	%r15, %rdx
	subq	%r15, %r14
	addl	$1, -356(%rbp)
	movq	-464(%rbp), %rax
	subq	%r13, %rdx
	addq	%rdi, %rsi
	subq	%r13, %r14
	movq	%rdx, -184(%rbp)
	movq	-432(%rbp), %rdx
	addq	%rdi, %rax
	movq	%rsi, -248(%rbp)
	subq	%r15, %rdx
	movq	%r14, -256(%rbp)
	subq	%r13, %rdx
	movq	%rdx, -176(%rbp)
	movq	-424(%rbp), %rdx
	subq	%r15, %rdx
	subq	%r13, %rdx
	movq	%rdx, -128(%rbp)
	movq	-416(%rbp), %rdx
	subq	%r15, %rdx
	subq	%r13, %rdx
	movq	%rdx, -168(%rbp)
	movq	-400(%rbp), %rdx
	subq	%r15, %rdx
	subq	%r13, %rdx
	movq	%rdx, -160(%rbp)
	movq	-392(%rbp), %rdx
	subq	%r15, %rdx
	subq	%r13, %rdx
	movq	%rdx, -152(%rbp)
	movq	-384(%rbp), %rdx
	subq	%r15, %rdx
	subq	%r13, %rdx
	movq	%rdx, -216(%rbp)
	movq	-376(%rbp), %rdx
	subq	%r15, %rdx
	subq	%r13, %rdx
	movq	%rdx, -144(%rbp)
	movq	-368(%rbp), %rdx
	subq	%r15, %rdx
	subq	%r13, %rdx
	movq	%rdx, -136(%rbp)
	.p2align 4,,10
	.p2align 3
.L16:
	movq	-352(%rbp), %r12
	movq	-264(%rbp), %r14
	movq	-280(%rbp), %rdx
	movq	-344(%rbp), %rbx
	subq	%r15, %r12
	movq	-336(%rbp), %r11
	movq	-296(%rbp), %rsi
	vmovsd	(%rax,%r12,8), %xmm0
	subq	%r15, %rdx
	vaddsd	(%rax,%r14,8), %xmm0, %xmm1
	subq	%r15, %rbx
	movq	-200(%rbp), %r14
	subq	%r13, %rdx
	subq	%r15, %r11
	subq	%r15, %rsi
	movq	%rdx, -232(%rbp)
	movq	-176(%rbp), %rdx
	subq	%r13, %rsi
	vaddsd	(%rax,%r14,8), %xmm1, %xmm1
	vaddsd	(%rax,%rbx,8), %xmm1, %xmm1
	movq	%r11, -208(%rbp)
	movq	-184(%rbp), %r14
	vaddsd	8(%rax,%r11,8), %xmm1, %xmm1
	movq	%rsi, -120(%rbp)
	movq	-288(%rbp), %rcx
	movq	-168(%rbp), %r11
	vaddsd	8(%rax,%r14,8), %xmm1, %xmm1
	vaddsd	8(%rax,%rdx,8), %xmm1, %xmm1
	movq	-224(%rbp), %rdx
	subq	%r15, %rcx
	movq	-328(%rbp), %r10
	subq	%r13, %rcx
	movq	-320(%rbp), %r9
	movq	-312(%rbp), %r8
	vaddsd	8(%rax,%rdx,8), %xmm1, %xmm1
	movq	-192(%rbp), %rdx
	movq	%rcx, -240(%rbp)
	subq	%r15, %r10
	movq	-304(%rbp), %rdi
	subq	%r15, %r9
	subq	%r15, %r8
	vaddsd	8(%rax,%rdx,8), %xmm1, %xmm1
	movq	-128(%rbp), %rdx
	subq	%r13, %r9
	subq	%r13, %r8
	subq	%r15, %rdi
	vaddsd	8(%rax,%rdx,8), %xmm1, %xmm1
	vaddsd	8(%rax,%r11,8), %xmm1, %xmm1
	subq	%r13, %rdi
	movq	-256(%rbp), %rsi
	movq	-160(%rbp), %rdx
	vaddsd	8(%rax,%r10,8), %xmm1, %xmm1
	movq	-216(%rbp), %rcx
	vaddsd	16(%rax,%rsi,8), %xmm1, %xmm1
	vaddsd	16(%rax,%rdx,8), %xmm1, %xmm1
	movq	-152(%rbp), %rdx
	movq	-208(%rbp), %rsi
	vaddsd	16(%rax,%rdx,8), %xmm1, %xmm1
	vaddsd	16(%rax,%rcx,8), %xmm1, %xmm1
	movq	-144(%rbp), %rcx
	movq	-176(%rbp), %rdx
	vaddsd	16(%rax,%rcx,8), %xmm1, %xmm1
	movq	-136(%rbp), %rcx
	vaddsd	16(%rax,%rcx,8), %xmm1, %xmm1
	vaddsd	16(%rax,%r9,8), %xmm1, %xmm1
	vaddsd	16(%rax,%r8,8), %xmm1, %xmm1
	vaddsd	24(%rax,%rsi,8), %xmm1, %xmm1
	vaddsd	24(%rax,%r14,8), %xmm1, %xmm1
	vaddsd	24(%rax,%rdx,8), %xmm1, %xmm1
	movq	-224(%rbp), %rdx
	movq	-264(%rbp), %rcx
	vaddsd	24(%rax,%rdx,8), %xmm1, %xmm1
	movq	-192(%rbp), %rdx
	vaddsd	24(%rax,%rdx,8), %xmm1, %xmm1
	movq	-128(%rbp), %rdx
	vaddsd	24(%rax,%rdx,8), %xmm1, %xmm1
	vaddsd	24(%rax,%r11,8), %xmm1, %xmm1
	vaddsd	24(%rax,%r10,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r12,8), %xmm1, %xmm1
	vaddsd	32(%rax,%rcx,8), %xmm1, %xmm1
	movq	-200(%rbp), %rdx
	vmovsd	(%rax), %xmm0
	movq	-184(%rbp), %r14
	vaddsd	8(%rax,%r12,8), %xmm0, %xmm3
	vaddsd	32(%rax,%rdx,8), %xmm1, %xmm1
	vaddsd	8(%rax,%rcx,8), %xmm3, %xmm3
	vaddsd	8(%rax,%rdx,8), %xmm3, %xmm3
	movq	-176(%rbp), %rdx
	vaddsd	8(%rax,%rbx,8), %xmm3, %xmm3
	vaddsd	16(%rax,%rsi,8), %xmm3, %xmm3
	vaddsd	16(%rax,%r14,8), %xmm3, %xmm3
	movq	-192(%rbp), %r14
	vaddsd	16(%rax,%rdx,8), %xmm3, %xmm3
	movq	-224(%rbp), %rdx
	vaddsd	32(%rax,%rbx,8), %xmm1, %xmm1
	vmovsd	8(%rax), %xmm0
	vmulsd	-80(%rbp), %xmm1, %xmm1
	vaddsd	16(%rax,%rdx,8), %xmm3, %xmm3
	vaddsd	16(%rax,%r14,8), %xmm3, %xmm3
	movq	-128(%rbp), %r14
	vaddsd	16(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rcx,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r14,8), %xmm3, %xmm3
	vaddsd	16(%rax,%r11,8), %xmm3, %xmm3
	movq	-200(%rbp), %r11
	vaddsd	16(%rax,%r10,8), %xmm3, %xmm3
	vaddsd	24(%rax,%r12,8), %xmm3, %xmm3
	vaddsd	24(%rax,%rcx,8), %xmm3, %xmm3
	vaddsd	24(%rax,%r11,8), %xmm3, %xmm3
	vaddsd	24(%rax,%rbx,8), %xmm3, %xmm3
	vaddsd	32(%rax), %xmm3, %xmm3
	vmulsd	-88(%rbp), %xmm3, %xmm3
	vaddsd	16(%rax,%r11,8), %xmm0, %xmm0
	vmovsd	16(%rax), %xmm2
	vaddsd	16(%rax,%rbx,8), %xmm0, %xmm0
	vmulsd	-104(%rbp), %xmm2, %xmm4
	vaddsd	24(%rax), %xmm0, %xmm0
	vmulsd	-96(%rbp), %xmm0, %xmm0
	movq	-184(%rbp), %rbx
	movq	-176(%rbp), %r14
	movq	-192(%rbp), %r12
	movq	-128(%rbp), %r11
	movq	-152(%rbp), %rcx
	vaddsd	%xmm4, %xmm0, %xmm2
	vaddsd	%xmm2, %xmm3, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	(%rax,%rsi,8), %xmm1
	vaddsd	(%rax,%rbx,8), %xmm1, %xmm2
	vaddsd	(%rax,%r14,8), %xmm2, %xmm2
	vaddsd	(%rax,%rdx,8), %xmm2, %xmm2
	vaddsd	(%rax,%r12,8), %xmm2, %xmm2
	vaddsd	(%rax,%r11,8), %xmm2, %xmm2
	movq	-168(%rbp), %r11
	movq	-256(%rbp), %rsi
	vaddsd	(%rax,%r11,8), %xmm2, %xmm2
	movq	-160(%rbp), %r11
	vaddsd	(%rax,%r10,8), %xmm2, %xmm2
	vaddsd	8(%rax,%rsi,8), %xmm2, %xmm2
	vaddsd	8(%rax,%r11,8), %xmm2, %xmm2
	vaddsd	8(%rax,%rcx,8), %xmm2, %xmm2
	movq	-216(%rbp), %rcx
	vaddsd	8(%rax,%rcx,8), %xmm2, %xmm2
	movq	-144(%rbp), %rcx
	vaddsd	8(%rax,%rcx,8), %xmm2, %xmm2
	movq	-136(%rbp), %rcx
	vaddsd	8(%rax,%rcx,8), %xmm2, %xmm2
	vaddsd	8(%rax,%r9,8), %xmm2, %xmm2
	vaddsd	8(%rax,%r8,8), %xmm2, %xmm2
	movq	-120(%rbp), %rcx
	vaddsd	16(%rax,%rdi,8), %xmm2, %xmm2
	vaddsd	16(%rax,%rcx,8), %xmm2, %xmm2
	movq	-240(%rbp), %rcx
	vaddsd	16(%rax,%rcx,8), %xmm2, %xmm2
	movq	-232(%rbp), %rcx
	vaddsd	16(%rax,%rcx,8), %xmm2, %xmm2
	movq	-152(%rbp), %rcx
	vaddsd	24(%rax,%rsi,8), %xmm2, %xmm2
	vaddsd	24(%rax,%r11,8), %xmm2, %xmm2
	movq	-144(%rbp), %r11
	vaddsd	24(%rax,%rcx,8), %xmm2, %xmm2
	movq	-216(%rbp), %rcx
	vaddsd	24(%rax,%rcx,8), %xmm2, %xmm2
	vaddsd	24(%rax,%r11,8), %xmm2, %xmm2
	movq	-136(%rbp), %r11
	vaddsd	24(%rax,%r11,8), %xmm2, %xmm2
	movq	-208(%rbp), %r11
	vaddsd	24(%rax,%r9,8), %xmm2, %xmm2
	vaddsd	24(%rax,%r8,8), %xmm2, %xmm2
	vaddsd	32(%rax,%r11,8), %xmm2, %xmm2
	movq	-128(%rbp), %r11
	vaddsd	32(%rax,%rbx,8), %xmm2, %xmm2
	vaddsd	32(%rax,%r14,8), %xmm2, %xmm2
	vaddsd	32(%rax,%rdx,8), %xmm2, %xmm2
	vaddsd	32(%rax,%r12,8), %xmm2, %xmm2
	vaddsd	32(%rax,%r11,8), %xmm2, %xmm2
	movq	-168(%rbp), %r11
	vaddsd	32(%rax,%r11,8), %xmm2, %xmm2
	vaddsd	32(%rax,%r10,8), %xmm2, %xmm2
	vmulsd	-72(%rbp), %xmm2, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm2
	vmovsd	(%rax,%rsi,8), %xmm0
	movq	-160(%rbp), %rbx
	movq	-152(%rbp), %rdx
	movq	-240(%rbp), %r12
	vaddsd	(%rax,%rbx,8), %xmm0, %xmm1
	movq	-232(%rbp), %r14
	vaddsd	(%rax,%rdx,8), %xmm1, %xmm1
	movq	%rdx, -208(%rbp)
	movq	-144(%rbp), %r10
	movq	-120(%rbp), %rdx
	movq	-136(%rbp), %r11
	vaddsd	(%rax,%rcx,8), %xmm1, %xmm1
	vaddsd	(%rax,%r10,8), %xmm1, %xmm1
	vaddsd	(%rax,%r11,8), %xmm1, %xmm1
	vaddsd	(%rax,%r9,8), %xmm1, %xmm1
	vaddsd	(%rax,%r8,8), %xmm1, %xmm1
	vaddsd	8(%rax,%rdi,8), %xmm1, %xmm1
	vaddsd	8(%rax,%rdx,8), %xmm1, %xmm1
	vaddsd	8(%rax,%r12,8), %xmm1, %xmm1
	vaddsd	8(%rax,%r14,8), %xmm1, %xmm1
	vaddsd	24(%rax,%rdi,8), %xmm1, %xmm1
	vaddsd	24(%rax,%rdx,8), %xmm1, %xmm1
	movq	-208(%rbp), %rdx
	vaddsd	24(%rax,%r12,8), %xmm1, %xmm1
	vaddsd	24(%rax,%r14,8), %xmm1, %xmm1
	vaddsd	32(%rax,%rsi,8), %xmm1, %xmm1
	vaddsd	32(%rax,%rbx,8), %xmm1, %xmm1
	vaddsd	32(%rax,%rdx,8), %xmm1, %xmm1
	vaddsd	32(%rax,%rcx,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r10,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r11,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r9,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r8,8), %xmm1, %xmm1
	vmulsd	-64(%rbp), %xmm1, %xmm1
	movq	-120(%rbp), %rbx
	vaddsd	%xmm1, %xmm2, %xmm0
	vmovsd	(%rax,%rdi,8), %xmm1
	vaddsd	(%rax,%rbx,8), %xmm1, %xmm1
	vaddsd	(%rax,%r12,8), %xmm1, %xmm1
	vaddsd	(%rax,%r14,8), %xmm1, %xmm1
	vaddsd	32(%rax,%rdi,8), %xmm1, %xmm1
	vaddsd	32(%rax,%rbx,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r12,8), %xmm1, %xmm1
	vaddsd	32(%rax,%r14,8), %xmm1, %xmm1
	addq	$8, %rax
	vmulsd	-56(%rbp), %xmm1, %xmm1
	movq	-248(%rbp), %rdi
	addq	$8, %rdi
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rdi)
	movq	%rdi, -248(%rbp)
	cmpq	%rax, -272(%rbp)
	jne	.L16
	movq	-448(%rbp), %rax
	addq	%rax, -352(%rbp)
	addq	%rax, -344(%rbp)
	addq	%rax, -336(%rbp)
	addq	%rax, %r15
	addq	%rax, -440(%rbp)
	addq	%rax, -432(%rbp)
	addq	%rax, -424(%rbp)
	addq	%rax, -416(%rbp)
	addq	%rax, -328(%rbp)
	addq	%rax, -408(%rbp)
	addq	%rax, -400(%rbp)
	addq	%rax, -392(%rbp)
	addq	%rax, -384(%rbp)
	addq	%rax, -376(%rbp)
	addq	%rax, -368(%rbp)
	addq	%rax, -320(%rbp)
	addq	%rax, -312(%rbp)
	movq	-456(%rbp), %rsi
	addq	%rax, -304(%rbp)
	movl	-356(%rbp), %edi
	addq	%rax, -296(%rbp)
	addq	%rax, -288(%rbp)
	addq	%rax, -280(%rbp)
	addq	%rsi, -272(%rbp)
	cmpl	%edi, -360(%rbp)
	jne	.L19
	movl	-504(%rbp), %eax
	movl	-500(%rbp), %edi
	addl	%eax, -496(%rbp)
	addl	%eax, -492(%rbp)
	addl	%eax, -488(%rbp)
	addl	%eax, -484(%rbp)
	addl	%eax, -480(%rbp)
	cmpl	%edi, -476(%rbp)
	jl	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L56
	movq	-560(%rbp), %rdi
	call	dummy
	movq	-552(%rbp), %rdi
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
.L34:
	.cfi_restore_state
	movl	$1, %r8d
	jmp	.L5
.L61:
	movq	$0, -552(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %edi
	movq	-552(%rbp), %rcx
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
	movq	%rsi, -552(%rbp)
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
	movq	-552(%rbp), %rax
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
	movq	-560(%rbp), %rdi
	call	dummy
	movq	-552(%rbp), %rdi
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
	cmpl	$2, -500(%rbp)
	jle	.L15
	movl	%r12d, %esi
	leal	-2(%r12), %eax
	imull	%ebx, %esi
	movl	%esi, -504(%rbp)
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
	movq	$0, -552(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -552(%rbp)
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
