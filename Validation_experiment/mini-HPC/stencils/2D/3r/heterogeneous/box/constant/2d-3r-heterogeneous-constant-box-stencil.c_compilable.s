	.file	"2d-3r-heterogeneous-constant-box-stencil.c_compilable.c"
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
	subq	$464, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	movl	%r12d, %r15d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r15d
	movq	%rax, %r14
	movslq	%r15d, %r13
	salq	$3, %r13
	movq	%r13, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rbx
	testl	%r15d, %r15d
	jle	.L3
	movq	%rbx, %rax
	movl	$5, %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	leal	-1(%r15), %ecx
	cmpl	%ecx, %edx
	ja	.L29
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rbx)
	cmpl	$1, %eax
	je	.L31
	vmovsd	%xmm0, 8(%rbx)
	cmpl	$3, %eax
	jne	.L32
	vmovsd	%xmm0, 16(%rbx)
	movl	$3, %r8d
.L5:
	movl	%r15d, %edi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%rbx,%rax,8), %rdx
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
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rbx,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rbx,%rax,8)
.L8:
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	movl	%ecx, -452(%rbp)
	call	posix_memalign
	movl	-452(%rbp), %ecx
	testl	%eax, %eax
	je	.L57
	testl	%r15d, %r15d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %ecx
	cmovg	%r15d, %edi
	cmpl	$4, %ecx
	ja	.L58
	xorl	%r13d, %r13d
	xorl	%eax, %eax
.L21:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L25
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L25
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L25
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
.L25:
	movq	.LC4(%rip), %rax
	movq	%rax, -440(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -432(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -424(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -416(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -408(%rbp)
	movq	.LC9(%rip), %rax
	movq	%rax, -400(%rbp)
	movq	.LC10(%rip), %rax
	movq	%rax, -392(%rbp)
	movq	.LC11(%rip), %rax
	movq	%rax, -384(%rbp)
	movq	.LC12(%rip), %rax
	movq	%rax, -376(%rbp)
	movq	.LC13(%rip), %rax
	movq	%rax, -368(%rbp)
	movq	.LC14(%rip), %rax
	movq	%rax, -360(%rbp)
	movq	.LC15(%rip), %rax
	movq	%rax, -352(%rbp)
	movq	.LC16(%rip), %rax
	movq	%rax, -344(%rbp)
	movq	.LC17(%rip), %rax
	movq	%rax, -336(%rbp)
	movq	.LC18(%rip), %rax
	movq	%rax, -328(%rbp)
	movq	.LC19(%rip), %rax
	movq	%rax, -320(%rbp)
	movq	.LC20(%rip), %rax
	movq	%rax, -312(%rbp)
	movq	.LC21(%rip), %rax
	movq	%rax, -304(%rbp)
	movq	.LC22(%rip), %rax
	movq	%rax, -296(%rbp)
	movq	.LC23(%rip), %rax
	movq	%rax, -288(%rbp)
	movq	.LC24(%rip), %rax
	movq	%rax, -280(%rbp)
	movq	.LC25(%rip), %rax
	movq	%rax, -272(%rbp)
	movq	.LC26(%rip), %rax
	movq	%rax, -264(%rbp)
	movq	.LC27(%rip), %rax
	movq	%rax, -256(%rbp)
	movq	.LC28(%rip), %rax
	movq	%rax, -248(%rbp)
	movq	.LC29(%rip), %rax
	movq	%rax, -240(%rbp)
	movq	.LC30(%rip), %rax
	movq	%rax, -232(%rbp)
	movq	.LC31(%rip), %rax
	movq	%rax, -224(%rbp)
	movq	.LC32(%rip), %rax
	movq	%rax, -216(%rbp)
	movq	.LC33(%rip), %rax
	movq	%rax, -208(%rbp)
	movq	.LC34(%rip), %rax
	movq	%rax, -200(%rbp)
	movq	.LC35(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	.LC36(%rip), %rax
	movq	%rax, -184(%rbp)
	movq	.LC37(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	.LC38(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	.LC39(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	.LC40(%rip), %rax
	movq	%rax, -152(%rbp)
	movq	.LC41(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	.LC42(%rip), %rax
	movq	%rax, -136(%rbp)
	movq	.LC43(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	.LC44(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	.LC45(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC46(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	.LC47(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.LC48(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	.LC49(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC50(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC51(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC52(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -56(%rbp)
	leal	-3(%r14), %eax
	movl	%eax, -452(%rbp)
	testl	%edx, %edx
	jne	.L59
	cmpl	$3, -452(%rbp)
	jle	.L53
.L14:
	cmpl	$6, %r12d
	jle	.L15
	leal	(%r12,%r12), %esi
	movslq	%r12d, %rax
	movq	%r13, -504(%rbp)
	leal	(%rsi,%r12), %ecx
	leaq	0(,%rax,8), %r15
	movslq	%esi, %rsi
	movq	%rbx, -512(%rbp)
	leal	-7(%r12), %eax
	movslq	%ecx, %rdx
	movq	%r15, -464(%rbp)
	addl	%ecx, %ecx
	leaq	(%rdx,%rax), %rdi
	negq	%rdx
	movq	%rax, %r14
	salq	$3, %rax
	salq	$3, %rdx
	subq	%rax, %r15
	leaq	8(%rbx,%rdi,8), %r11
	movslq	%ecx, %rcx
	leaq	(%rdx,%rsi,8), %r8
	movq	%r15, %r9
	movq	%r13, %r15
	movq	%rdx, %r10
	leaq	(%rdx,%rcx,8), %rcx
	subq	%rax, %r15
	subq	%rax, %r10
	subq	%rax, %r8
	leal	0(,%r12,4), %esi
	subq	%rax, %rcx
	negq	%r14
	movslq	%esi, %rdi
	addl	%r12d, %esi
	movl	$3, %r12d
	movslq	%esi, %rsi
	leaq	(%rdx,%rdi,8), %rdi
	leaq	(%rdx,%rsi,8), %rsi
	subq	%rax, %rdi
	leaq	-8(%r9,%rdx), %rdx
	subq	%rax, %rsi
	movq	%r15, %rax
	subq	$8, %rdi
	movq	%rdx, %r13
	subq	%rbx, %rax
	subq	$8, %rsi
	movq	%rdi, -496(%rbp)
	leaq	-8(,%r14,8), %r15
	movq	%rsi, -488(%rbp)
	subq	$8, %rax
	leaq	-8(%rcx), %rsi
	leaq	-8(%r10), %r14
	movq	%rsi, -480(%rbp)
	leaq	-8(%r8), %r10
	movq	%rax, -472(%rbp)
	movq	%r10, %rbx
	.p2align 4,,10
	.p2align 3
.L17:
	movq	-496(%rbp), %rcx
	addl	$1, %r12d
	leaq	(%r15,%r11), %rax
	leaq	(%r14,%r11), %r9
	movq	-480(%rbp), %rdx
	movq	-472(%rbp), %r10
	leaq	0(%r13,%r11), %r8
	leaq	(%rbx,%r11), %rdi
	leaq	(%rcx,%r11), %rsi
	movq	-488(%rbp), %rcx
	addq	%r11, %rdx
	addq	%r11, %r10
	addq	%r11, %rcx
	.p2align 4,,10
	.p2align 3
.L16:
	addq	$8, %rax
	addq	$8, %r9
	addq	$8, %r8
	addq	$8, %rdi
	addq	$8, %rsi
	addq	$8, %rcx
	addq	$8, %rdx
	addq	$8, %r10
	vmovsd	-8(%r9), %xmm1
	vmovsd	16(%rax), %xmm2
	vmulsd	-432(%rbp), %xmm1, %xmm0
	vmulsd	-440(%rbp), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-8(%r8), %xmm2
	vmulsd	-424(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-8(%rdi), %xmm1
	vmulsd	-416(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-8(%rax), %xmm2
	vmulsd	-408(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-8(%rsi), %xmm1
	vmulsd	-400(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-8(%rcx), %xmm2
	vmulsd	-392(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-8(%rdx), %xmm1
	vmulsd	-384(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r9), %xmm2
	vmulsd	-376(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r8), %xmm1
	vmulsd	-368(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rdi), %xmm2
	vmulsd	-360(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rax), %xmm1
	vmulsd	-352(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rsi), %xmm2
	vmulsd	-344(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rcx), %xmm1
	vmulsd	-336(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rdx), %xmm2
	vmulsd	-328(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%r9), %xmm1
	vmulsd	-320(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%r8), %xmm2
	vmulsd	-312(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rdi), %xmm1
	vmulsd	-304(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%rax), %xmm2
	vmulsd	-296(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rsi), %xmm1
	vmulsd	-288(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%rcx), %xmm2
	vmulsd	-280(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rdx), %xmm1
	vmulsd	-272(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%r9), %xmm2
	vmulsd	-264(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	16(%r8), %xmm1
	vmulsd	-256(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rdi), %xmm2
	vmulsd	-248(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	16(%rsi), %xmm1
	vmulsd	-240(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rcx), %xmm2
	vmulsd	-232(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	16(%rdx), %xmm1
	vmulsd	-224(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%r9), %xmm2
	vmulsd	-216(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%r8), %xmm1
	vmulsd	-208(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rdi), %xmm2
	vmulsd	-200(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rax), %xmm1
	vmulsd	-192(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rsi), %xmm2
	vmulsd	-184(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rcx), %xmm1
	vmulsd	-176(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rdx), %xmm2
	vmulsd	-168(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	32(%r9), %xmm1
	vmulsd	-160(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	32(%r8), %xmm2
	vmulsd	-152(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	32(%rdi), %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	32(%rax), %xmm2
	vmulsd	-136(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	32(%rsi), %xmm1
	vmulsd	-128(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	32(%rcx), %xmm2
	vmulsd	-120(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	32(%rdx), %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	40(%r9), %xmm2
	vmulsd	-104(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	40(%r8), %xmm1
	vmulsd	-96(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	40(%rdi), %xmm2
	vmulsd	-88(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	40(%rax), %xmm1
	vmulsd	-80(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	40(%rsi), %xmm2
	vmulsd	-72(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	40(%rcx), %xmm1
	vmulsd	-64(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	40(%rdx), %xmm0
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 16(%r10)
	cmpq	%rax, %r11
	jne	.L16
	addq	-464(%rbp), %r11
	cmpl	%r12d, -452(%rbp)
	jg	.L17
	movq	-504(%rbp), %r13
	movq	-512(%rbp), %rbx
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L53
	movq	%rbx, %rdi
	call	dummy
	movq	%r13, %rdi
	call	dummy
	leaq	-440(%rbp), %rdi
	call	dummy
	leaq	-432(%rbp), %rdi
	call	dummy
	leaq	-424(%rbp), %rdi
	call	dummy
	leaq	-416(%rbp), %rdi
	call	dummy
	leaq	-408(%rbp), %rdi
	call	dummy
	leaq	-400(%rbp), %rdi
	call	dummy
	leaq	-392(%rbp), %rdi
	call	dummy
	leaq	-384(%rbp), %rdi
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
	addq	$464, %rsp
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
	movq	-56(%rbp), %r13
	testl	%r15d, %r15d
	movl	$1, %edi
	movl	$5, %r8d
	cmovg	%r15d, %edi
	movq	%r13, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %esi
	cmpl	$5, %esi
	cmovb	%r8d, %esi
	testl	%r15d, %r15d
	cmovle	%eax, %ecx
	cmpl	%ecx, %esi
	ja	.L21
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, 0(%r13)
	cmpl	$1, %edx
	je	.L33
	vmovsd	%xmm0, 8(%r13)
	cmpl	$3, %edx
	jne	.L34
	vmovsd	%xmm0, 16(%r13)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	vmovapd	.LC3(%rip), %ymm0
	leaq	0(%r13,%rdx,8), %rcx
	xorl	%edx, %edx
	movl	%edi, %esi
	shrl	$2, %esi
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
	movq	%rbx, %rdi
	call	dummy
	movq	%r13, %rdi
	call	dummy
	leaq	-440(%rbp), %rdi
	call	dummy
	leaq	-432(%rbp), %rdi
	call	dummy
	leaq	-424(%rbp), %rdi
	call	dummy
	leaq	-416(%rbp), %rdi
	call	dummy
	leaq	-408(%rbp), %rdi
	call	dummy
	leaq	-400(%rbp), %rdi
	call	dummy
	leaq	-392(%rbp), %rdi
	call	dummy
	leaq	-384(%rbp), %rdi
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
	cmpl	$3, -452(%rbp)
	jg	.L14
	jmp	.L15
.L31:
	movl	$1, %r8d
	jmp	.L5
.L58:
	xorl	%edx, %edx
	xorl	%r13d, %r13d
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
	movq	%r13, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	xorl	%r13d, %r13d
	call	posix_memalign
	testl	%eax, %eax
	jne	.L25
	movq	-56(%rbp), %r13
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
	.align 8
.LC45:
	.long	4069070185
	.long	1072531414
	.align 8
.LC46:
	.long	3710654632
	.long	1069141650
	.align 8
.LC47:
	.long	2203858740
	.long	1071870142
	.align 8
.LC48:
	.long	2678973806
	.long	1071392269
	.align 8
.LC49:
	.long	3726591626
	.long	1071547616
	.align 8
.LC50:
	.long	4222253358
	.long	1071803592
	.align 8
.LC51:
	.long	1042108182
	.long	1072122254
	.align 8
.LC52:
	.long	996518468
	.long	1070707479
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
