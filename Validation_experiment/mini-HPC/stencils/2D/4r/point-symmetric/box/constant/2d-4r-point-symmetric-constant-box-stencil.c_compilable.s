	.file	"2d-4r-point-symmetric-constant-box-stencil.c_compilable.c"
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
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
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
	movl	%r14d, %edi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r12,%rax,8), %rdx
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
	leaq	-56(%rbp), %rdi
	movl	%ecx, -388(%rbp)
	call	posix_memalign
	movl	-388(%rbp), %ecx
	testl	%eax, %eax
	je	.L57
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %ecx
	cmovg	%r14d, %edi
	cmpl	$4, %ecx
	ja	.L58
	movq	$0, -472(%rbp)
	xorl	%eax, %eax
.L21:
	vmovsd	.LC2(%rip), %xmm0
	movq	-472(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L25
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L25
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L25:
	movq	.LC4(%rip), %rax
	movq	%rax, -376(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -368(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -360(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -352(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -344(%rbp)
	movq	.LC9(%rip), %rax
	movq	%rax, -336(%rbp)
	movq	.LC10(%rip), %rax
	movq	%rax, -328(%rbp)
	movq	.LC11(%rip), %rax
	movq	%rax, -320(%rbp)
	movq	.LC12(%rip), %rax
	movq	%rax, -312(%rbp)
	movq	.LC13(%rip), %rax
	movq	%rax, -304(%rbp)
	movq	.LC14(%rip), %rax
	movq	%rax, -296(%rbp)
	movq	.LC15(%rip), %rax
	movq	%rax, -288(%rbp)
	movq	.LC16(%rip), %rax
	movq	%rax, -280(%rbp)
	movq	.LC17(%rip), %rax
	movq	%rax, -272(%rbp)
	movq	.LC18(%rip), %rax
	movq	%rax, -264(%rbp)
	movq	.LC19(%rip), %rax
	movq	%rax, -256(%rbp)
	movq	.LC20(%rip), %rax
	movq	%rax, -248(%rbp)
	movq	.LC21(%rip), %rax
	movq	%rax, -240(%rbp)
	movq	.LC22(%rip), %rax
	movq	%rax, -232(%rbp)
	movq	.LC23(%rip), %rax
	movq	%rax, -224(%rbp)
	movq	.LC24(%rip), %rax
	movq	%rax, -216(%rbp)
	movq	.LC25(%rip), %rax
	movq	%rax, -208(%rbp)
	movq	.LC26(%rip), %rax
	movq	%rax, -200(%rbp)
	movq	.LC27(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	.LC28(%rip), %rax
	movq	%rax, -184(%rbp)
	movq	.LC29(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	.LC30(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	.LC31(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	.LC32(%rip), %rax
	movq	%rax, -152(%rbp)
	movq	.LC33(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	.LC34(%rip), %rax
	movq	%rax, -136(%rbp)
	movq	.LC35(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	.LC36(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -120(%rbp)
	movq	.LC37(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC38(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	.LC39(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.LC40(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	.LC41(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC42(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC43(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC44(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-4(%r13), %eax
	movl	%eax, -388(%rbp)
	testl	%edx, %edx
	jne	.L59
	cmpl	$4, -388(%rbp)
	jle	.L53
.L14:
	cmpl	$8, %ebx
	jle	.L15
	leal	0(,%rbx,4), %edi
	leal	-9(%rbx), %edx
	movslq	%ebx, %rax
	movq	%r12, -480(%rbp)
	leal	(%rbx,%rbx), %r8d
	movslq	%edi, %rcx
	leaq	0(,%rax,8), %r15
	addl	%ebx, %edi
	leal	(%r8,%rbx), %esi
	leaq	(%rcx,%rdx), %rax
	negq	%rcx
	movslq	%r8d, %r8
	movslq	%esi, %r9
	addl	%esi, %esi
	salq	$3, %rcx
	movslq	%edi, %rdi
	movslq	%esi, %rsi
	leaq	(%rcx,%r9,8), %r11
	leaq	(%rcx,%r8,8), %r9
	movq	%rdx, %r14
	leaq	(%rcx,%rsi,8), %r8
	leaq	(%rcx,%rdi,8), %r10
	salq	$3, %rdx
	negq	%r14
	leal	0(,%rbx,8), %esi
	subq	%rdx, %r11
	subq	%rdx, %r9
	subq	%rdx, %r10
	movl	%esi, %edi
	movq	%r15, -400(%rbp)
	movslq	%esi, %rsi
	subq	%rdx, %r15
	subl	%ebx, %edi
	movq	%rcx, %rbx
	movq	%r15, %r13
	subq	%rdx, %r8
	movslq	%edi, %rdi
	subq	%rdx, %rbx
	leaq	(%rcx,%rsi,8), %rsi
	subq	$8, %r10
	leaq	(%rcx,%rdi,8), %rdi
	subq	%rdx, %rsi
	leaq	-8(%r13,%rcx), %rcx
	subq	$8, %rbx
	subq	%rdx, %rdi
	leaq	-8(,%r14,8), %r14
	movq	-472(%rbp), %r15
	movq	%rcx, -440(%rbp)
	movq	%r14, -408(%rbp)
	leaq	-8(%rdi), %rcx
	leaq	-8(%r11), %r14
	movq	%rbx, -424(%rbp)
	leaq	-8(%r9), %r11
	leaq	-8(%rsi), %rbx
	subq	%rdx, %r15
	leaq	-8(%r8), %r9
	movq	%r10, -464(%rbp)
	subq	%r12, %r15
	leaq	8(%r12,%rax,8), %rax
	movq	%r11, -456(%rbp)
	movl	$4, %edx
	addq	$24, %r15
	movq	%r9, -448(%rbp)
	movq	%rcx, -432(%rbp)
	movq	%rbx, -416(%rbp)
	.p2align 4,,10
	.p2align 3
.L17:
	movq	-408(%rbp), %rsi
	addl	$1, %edx
	leaq	(%r14,%rax), %r12
	leaq	(%r15,%rax), %r13
	movq	-432(%rbp), %rdi
	movq	-464(%rbp), %rbx
	leaq	(%rsi,%rax), %rcx
	movq	-456(%rbp), %rsi
	leaq	(%rdi,%rax), %r8
	addq	%rax, %rbx
	leaq	(%rsi,%rax), %r11
	movq	-448(%rbp), %rsi
	leaq	(%rsi,%rax), %r10
	movq	-440(%rbp), %rsi
	leaq	(%rsi,%rax), %r9
	movq	-424(%rbp), %rsi
	leaq	(%rsi,%rax), %rdi
	movq	-416(%rbp), %rsi
	addq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L16:
	vmovsd	32(%rcx), %xmm0
	vmovsd	24(%rcx), %xmm3
	addq	$8, %rcx
	addq	$8, %r12
	vaddsd	32(%rcx), %xmm3, %xmm3
	vmovsd	8(%rcx), %xmm2
	addq	$8, %rbx
	addq	$8, %r11
	vmulsd	-368(%rbp), %xmm3, %xmm3
	vaddsd	40(%rcx), %xmm2, %xmm2
	addq	$8, %r10
	addq	$8, %r9
	addq	$8, %r8
	addq	$8, %rdi
	addq	$8, %rsi
	addq	$8, %r13
	vmulsd	-376(%rbp), %xmm0, %xmm1
	vmovsd	16(%rbx), %xmm4
	vmulsd	-352(%rbp), %xmm2, %xmm2
	vaddsd	32(%r12), %xmm4, %xmm4
	vmulsd	-336(%rbp), %xmm4, %xmm4
	vaddsd	%xmm1, %xmm3, %xmm0
	vmovsd	24(%r12), %xmm3
	vaddsd	24(%rbx), %xmm3, %xmm3
	vmulsd	-360(%rbp), %xmm3, %xmm3
	vmovsd	16(%r12), %xmm1
	vaddsd	32(%rbx), %xmm1, %xmm1
	vmulsd	-344(%rbp), %xmm1, %xmm1
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	24(%r11), %xmm0
	vaddsd	24(%r10), %xmm0, %xmm0
	vmulsd	-328(%rbp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	(%rcx), %xmm3
	vaddsd	48(%rcx), %xmm3, %xmm3
	vmulsd	-320(%rbp), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	8(%r12), %xmm2
	vaddsd	40(%rbx), %xmm2, %xmm2
	vmulsd	-312(%rbp), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	8(%rbx), %xmm1
	vaddsd	40(%r12), %xmm1, %xmm1
	vmulsd	-304(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	16(%r11), %xmm4
	vaddsd	32(%r10), %xmm4, %xmm4
	vmulsd	-296(%rbp), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	16(%r10), %xmm0
	vaddsd	32(%r11), %xmm0, %xmm0
	vmulsd	-288(%rbp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	24(%r9), %xmm3
	vaddsd	24(%r8), %xmm3, %xmm3
	vmulsd	-280(%rbp), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	-8(%rcx), %xmm2
	vaddsd	56(%rcx), %xmm2, %xmm2
	vmulsd	-272(%rbp), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	(%r12), %xmm1
	vaddsd	48(%rbx), %xmm1, %xmm1
	vmulsd	-264(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	(%rbx), %xmm4
	vaddsd	48(%r12), %xmm4, %xmm4
	vmulsd	-256(%rbp), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	8(%r11), %xmm0
	vaddsd	40(%r10), %xmm0, %xmm0
	vmulsd	-248(%rbp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	8(%r10), %xmm3
	vaddsd	40(%r11), %xmm3, %xmm3
	vmulsd	-240(%rbp), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	16(%r9), %xmm2
	vaddsd	32(%r8), %xmm2, %xmm2
	vmulsd	-232(%rbp), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	16(%r8), %xmm1
	vaddsd	32(%r9), %xmm1, %xmm1
	vmulsd	-224(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	24(%rdi), %xmm4
	vaddsd	24(%rsi), %xmm4, %xmm4
	vmulsd	-216(%rbp), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	-8(%r12), %xmm0
	vaddsd	56(%rbx), %xmm0, %xmm0
	vmulsd	-208(%rbp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	-8(%rbx), %xmm3
	vaddsd	56(%r12), %xmm3, %xmm3
	vmulsd	-200(%rbp), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	(%r11), %xmm2
	vaddsd	48(%r10), %xmm2, %xmm2
	vmulsd	-192(%rbp), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	(%r10), %xmm1
	vaddsd	48(%r11), %xmm1, %xmm1
	vmulsd	-184(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	8(%r9), %xmm4
	vaddsd	40(%r8), %xmm4, %xmm4
	vmulsd	-176(%rbp), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	8(%r8), %xmm0
	vaddsd	40(%r9), %xmm0, %xmm0
	vmulsd	-168(%rbp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	16(%rdi), %xmm3
	vaddsd	32(%rsi), %xmm3, %xmm3
	vmulsd	-160(%rbp), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	16(%rsi), %xmm2
	vaddsd	32(%rdi), %xmm2, %xmm2
	vmulsd	-152(%rbp), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	-8(%r11), %xmm1
	vaddsd	56(%r10), %xmm1, %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	-8(%r10), %xmm4
	vaddsd	56(%r11), %xmm4, %xmm4
	vmulsd	-136(%rbp), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	(%r9), %xmm0
	vaddsd	48(%r8), %xmm0, %xmm0
	vmulsd	-128(%rbp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	(%r8), %xmm3
	vaddsd	48(%r9), %xmm3, %xmm3
	vmulsd	-120(%rbp), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	8(%rdi), %xmm2
	vaddsd	40(%rsi), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	8(%rsi), %xmm1
	vaddsd	40(%rdi), %xmm1, %xmm1
	vmulsd	-104(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	-8(%r9), %xmm4
	vaddsd	56(%r8), %xmm4, %xmm4
	vmulsd	-96(%rbp), %xmm4, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	-8(%r8), %xmm0
	vaddsd	56(%r9), %xmm0, %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	(%rdi), %xmm3
	vaddsd	48(%rsi), %xmm3, %xmm3
	vmulsd	-80(%rbp), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	(%rsi), %xmm2
	vaddsd	48(%rdi), %xmm2, %xmm2
	vmulsd	-72(%rbp), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	-8(%rdi), %xmm1
	vaddsd	56(%rsi), %xmm1, %xmm1
	vmulsd	-64(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	-8(%rsi), %xmm0
	vaddsd	56(%rdi), %xmm0, %xmm0
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%r13)
	cmpq	%rcx, %rax
	jne	.L16
	addq	-400(%rbp), %rax
	cmpl	%edx, -388(%rbp)
	jg	.L17
	movq	-480(%rbp), %r12
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L53
	movq	%r12, %rdi
	call	dummy
	movq	-472(%rbp), %rdi
	call	dummy
	leaq	-376(%rbp), %rdi
	call	dummy
	leaq	-368(%rbp), %rdi
	call	dummy
	leaq	-360(%rbp), %rdi
	call	dummy
	leaq	-352(%rbp), %rdi
	call	dummy
	leaq	-344(%rbp), %rdi
	call	dummy
	leaq	-336(%rbp), %rdi
	call	dummy
	leaq	-328(%rbp), %rdi
	call	dummy
	leaq	-320(%rbp), %rdi
	call	dummy
	leaq	-312(%rbp), %rdi
	call	dummy
	leaq	-304(%rbp), %rdi
	call	dummy
	leaq	-296(%rbp), %rdi
	call	dummy
	leaq	-288(%rbp), %rdi
	call	dummy
	leaq	-280(%rbp), %rdi
	call	dummy
	leaq	-272(%rbp), %rdi
	call	dummy
	leaq	-264(%rbp), %rdi
	call	dummy
	leaq	-256(%rbp), %rdi
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
.L53:
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
.L57:
	.cfi_restore_state
	movq	-56(%rbp), %rdx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %r8d
	cmovg	%r14d, %edi
	movq	%rdx, -472(%rbp)
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
	vmovsd	.LC2(%rip), %xmm0
	movq	-472(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L33
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L34
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
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
	je	.L60
	vzeroupper
	jmp	.L21
.L59:
	movq	%r12, %rdi
	call	dummy
	movq	-472(%rbp), %rdi
	call	dummy
	leaq	-376(%rbp), %rdi
	call	dummy
	leaq	-368(%rbp), %rdi
	call	dummy
	leaq	-360(%rbp), %rdi
	call	dummy
	leaq	-352(%rbp), %rdi
	call	dummy
	leaq	-344(%rbp), %rdi
	call	dummy
	leaq	-336(%rbp), %rdi
	call	dummy
	leaq	-328(%rbp), %rdi
	call	dummy
	leaq	-320(%rbp), %rdi
	call	dummy
	leaq	-312(%rbp), %rdi
	call	dummy
	leaq	-304(%rbp), %rdi
	call	dummy
	leaq	-296(%rbp), %rdi
	call	dummy
	leaq	-288(%rbp), %rdi
	call	dummy
	leaq	-280(%rbp), %rdi
	call	dummy
	leaq	-272(%rbp), %rdi
	call	dummy
	leaq	-264(%rbp), %rdi
	call	dummy
	leaq	-256(%rbp), %rdi
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
	cmpl	$4, -388(%rbp)
	jg	.L14
	jmp	.L15
.L31:
	movl	$1, %r8d
	jmp	.L5
.L58:
	movq	$0, -472(%rbp)
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
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -472(%rbp)
	testl	%eax, %eax
	jne	.L25
	movq	-56(%rbp), %rax
	movq	%rax, -472(%rbp)
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
	.align 8
.LC29:
	.long	3847532698
	.long	1072293660
	.align 8
.LC30:
	.long	4253548822
	.long	1072679188
	.align 8
.LC31:
	.long	1055274496
	.long	1070470663
	.align 8
.LC32:
	.long	1183632958
	.long	1072065049
	.align 8
.LC33:
	.long	3873621784
	.long	1069131825
	.align 8
.LC34:
	.long	476720732
	.long	1070274542
	.align 8
.LC35:
	.long	3568791954
	.long	1071922722
	.align 8
.LC36:
	.long	2066404138
	.long	1072504611
	.align 8
.LC37:
	.long	4062174096
	.long	1069873921
	.align 8
.LC38:
	.long	1048879276
	.long	1072140592
	.align 8
.LC39:
	.long	2684295097
	.long	1072582196
	.align 8
.LC40:
	.long	4084013700
	.long	1071798865
	.align 8
.LC41:
	.long	3246427410
	.long	1072685946
	.align 8
.LC42:
	.long	147223638
	.long	1071164525
	.align 8
.LC43:
	.long	3458584780
	.long	1071898819
	.align 8
.LC44:
	.long	1303679748
	.long	1070190983
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
