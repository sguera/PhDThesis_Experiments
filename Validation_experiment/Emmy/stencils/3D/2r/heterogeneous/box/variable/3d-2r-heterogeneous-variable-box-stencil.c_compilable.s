	.file	"3d-2r-heterogeneous-variable-box-stencil.c_compilable.c"
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
	subq	$480, %rsp
	movq	24(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	movl	%r13d, %r14d
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
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
	movq	%rdi, -464(%rbp)
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
	movq	-464(%rbp), %rdx
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
	movq	-464(%rbp), %rsi
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
	movq	$0, -456(%rbp)
	xorl	%eax, %eax
.L29:
	movq	-456(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L33
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L33:
	imull	$125, %r14d, %r14d
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	movslq	%r14d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %rsi
	movq	%rsi, -528(%rbp)
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
	movq	-528(%rbp), %rdx
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
	movq	-528(%rbp), %rsi
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
	movl	%eax, -448(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$2, -448(%rbp)
	jle	.L73
	imull	$125, %r12d, %eax
	leal	-2(%r12), %edx
	movl	%eax, %esi
	imull	%ebx, %esi
	movl	%esi, -472(%rbp)
	movl	%ebx, %esi
	imull	%r12d, %esi
	movl	%esi, -468(%rbp)
	cmpl	$4, %ebx
	jle	.L73
.L38:
	cmpl	$2, %edx
	jle	.L22
	movl	-468(%rbp), %esi
	leal	(%r12,%r12), %edx
	movl	$0, -440(%rbp)
	movl	$2, -420(%rbp)
	leal	(%rsi,%rsi), %edi
	movl	%esi, -436(%rbp)
	movl	%edi, -444(%rbp)
	leal	(%rsi,%rsi,2), %edi
	movl	%edi, -432(%rbp)
	leal	0(,%rsi,4), %edi
	movl	%edi, -428(%rbp)
	movl	-472(%rbp), %edi
	addl	%edi, %edi
	movl	%edi, -424(%rbp)
	movslq	%r12d, %rdi
	movq	%rdi, -392(%rbp)
	salq	$3, %rdi
	movq	%rdi, -408(%rbp)
	movslq	%edx, %rdi
	leal	(%r12,%r12,2), %edx
	movq	%rdi, -496(%rbp)
	movslq	%edx, %rdx
	movq	%rdx, -488(%rbp)
	leal	0(,%r12,4), %edx
	movslq	%edx, %rdx
	movq	%rdx, -480(%rbp)
	movslq	%eax, %rdx
	addl	%eax, %eax
	salq	$3, %rdx
	cltq
	movq	%rdx, -400(%rbp)
	leal	-5(%r12), %edx
	imulq	$125, %rdx, %rcx
	imulq	$-1000, %rdx, %rdx
	addq	%rcx, %rax
	movq	%rax, -504(%rbp)
	movq	-528(%rbp), %rax
	leaq	-1000(%rdx), %rsi
	movq	%rsi, -416(%rbp)
	leaq	2(%rdi), %rsi
	movq	%rsi, -512(%rbp)
	addq	$3000, %rax
	movq	%rax, -520(%rbp)
	leal	-2(%rbx), %eax
	movl	%eax, -288(%rbp)
	.p2align 4,,10
	.p2align 3
.L25:
	movslq	-444(%rbp), %r14
	movq	-496(%rbp), %r15
	movq	-464(%rbp), %rsi
	movq	-456(%rbp), %rdi
	movq	-392(%rbp), %rbx
	leaq	(%r15,%r14), %rax
	movslq	-436(%rbp), %rdx
	leaq	(%rsi,%rax,8), %rax
	movslq	-432(%rbp), %rcx
	movq	%rax, -384(%rbp)
	movq	-512(%rbp), %rax
	movslq	-428(%rbp), %rsi
	movq	-488(%rbp), %r11
	movq	-480(%rbp), %r9
	addq	%r14, %rax
	movq	-520(%rbp), %r8
	addl	$1, -420(%rbp)
	leaq	(%rdi,%rax,8), %rax
	movq	%rax, -376(%rbp)
	movslq	-440(%rbp), %rax
	leaq	(%rax,%rbx), %rdi
	movq	%rdi, -336(%rbp)
	leaq	(%rdx,%rbx), %rdi
	movq	%rdi, -328(%rbp)
	leaq	(%rcx,%rbx), %rdi
	movq	%rdi, -320(%rbp)
	leaq	(%rsi,%rbx), %rdi
	movq	%rdi, -312(%rbp)
	leaq	(%r11,%rax), %rdi
	movq	%rdi, -304(%rbp)
	leaq	(%r11,%rdx), %rdi
	movq	%rdi, -296(%rbp)
	leaq	(%r11,%rcx), %rdi
	movq	%rdi, -256(%rbp)
	leaq	(%r11,%rsi), %rdi
	movq	%rdi, -248(%rbp)
	leaq	(%r9,%rax), %rdi
	movq	%rdi, -240(%rbp)
	leaq	(%r9,%rdx), %rdi
	movq	%rdi, -232(%rbp)
	leaq	(%r9,%rcx), %rdi
	movq	%rdi, -216(%rbp)
	leaq	(%r9,%rsi), %rdi
	movq	%rdi, -208(%rbp)
	movslq	-424(%rbp), %rdi
	addq	-504(%rbp), %rdi
	leaq	(%r8,%rdi,8), %rdi
	movq	%rdi, -200(%rbp)
	movq	%r9, -224(%rbp)
	movq	%rsi, -344(%rbp)
	subq	%r14, %rsi
	movq	%rcx, -352(%rbp)
	subq	%r14, %rcx
	movq	%rdx, -360(%rbp)
	subq	%r14, %rdx
	movq	%rax, -368(%rbp)
	subq	%r14, %rax
	movq	%r11, -264(%rbp)
	movq	%rbx, -272(%rbp)
	movq	$0, -280(%rbp)
	movl	$2, -284(%rbp)
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%rsi, -160(%rbp)
	.p2align 4,,10
	.p2align 3
.L26:
	movq	-368(%rbp), %rcx
	movq	-376(%rbp), %rbx
	movq	-416(%rbp), %rax
	addl	$1, -284(%rbp)
	subq	%r15, %rcx
	addq	-200(%rbp), %rax
	subq	%r14, %rcx
	movq	-384(%rbp), %rdx
	movq	%rcx, -152(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rbx, -192(%rbp)
	subq	%r15, %rcx
	subq	%r14, %rcx
	movq	%rcx, -144(%rbp)
	movq	-352(%rbp), %rcx
	subq	%r15, %rcx
	subq	%r14, %rcx
	movq	%rcx, -136(%rbp)
	movq	-344(%rbp), %rcx
	subq	%r15, %rcx
	subq	%r14, %rcx
	movq	%rcx, -128(%rbp)
	movq	-336(%rbp), %rcx
	subq	%r15, %rcx
	subq	%r14, %rcx
	movq	%rcx, -120(%rbp)
	movq	-328(%rbp), %rcx
	subq	%r15, %rcx
	subq	%r14, %rcx
	movq	%rcx, -112(%rbp)
	movq	-320(%rbp), %rcx
	subq	%r15, %rcx
	subq	%r14, %rcx
	movq	%rcx, -104(%rbp)
	movq	-312(%rbp), %rcx
	subq	%r15, %rcx
	subq	%r14, %rcx
	movq	%rcx, -96(%rbp)
	movq	-304(%rbp), %rcx
	subq	%r15, %rcx
	subq	%r14, %rcx
	movq	%rcx, -88(%rbp)
	movq	-296(%rbp), %rcx
	subq	%r15, %rcx
	subq	%r14, %rcx
	movq	%rcx, -80(%rbp)
	.p2align 4,,10
	.p2align 3
.L23:
	movq	-208(%rbp), %rcx
	addq	$1000, %rax
	vmovsd	-992(%rax), %xmm1
	vmovsd	-1000(%rax), %xmm2
	vmulsd	16(%rdx), %xmm2, %xmm2
	subq	%r15, %rcx
	movq	-280(%rbp), %r13
	subq	%r14, %rcx
	movq	-272(%rbp), %r12
	movq	%rcx, -72(%rbp)
	movq	-152(%rbp), %rcx
	movq	-264(%rbp), %rbx
	subq	%r15, %r13
	movq	-256(%rbp), %r10
	movq	-248(%rbp), %r9
	subq	%r15, %r12
	vmulsd	(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-144(%rbp), %rcx
	subq	%r15, %rbx
	movq	-240(%rbp), %r8
	subq	%r15, %r10
	movq	-232(%rbp), %rdi
	subq	%r14, %r10
	subq	%r15, %r9
	movq	-224(%rbp), %r11
	subq	%r14, %r9
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-984(%rax), %xmm2
	vmulsd	(%rdx,%rcx,8), %xmm2, %xmm0
	subq	%r15, %r8
	movq	-136(%rbp), %rcx
	subq	%r14, %r8
	subq	%r15, %rdi
	movq	-216(%rbp), %rsi
	subq	%r14, %rdi
	subq	%r15, %r11
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-976(%rax), %xmm1
	vmulsd	(%rdx,%r13,8), %xmm1, %xmm0
	subq	%r15, %rsi
	subq	%r14, %rsi
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-968(%rax), %xmm2
	vmulsd	(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-128(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-960(%rax), %xmm1
	vmulsd	(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-120(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-952(%rax), %xmm2
	vmulsd	(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-112(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-944(%rax), %xmm1
	vmulsd	(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-104(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-936(%rax), %xmm2
	vmulsd	(%rdx,%r12,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-928(%rax), %xmm1
	vmulsd	(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-96(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-920(%rax), %xmm2
	vmulsd	(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-184(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-912(%rax), %xmm1
	vmulsd	(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-176(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-904(%rax), %xmm2
	vmulsd	(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-168(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-896(%rax), %xmm1
	vmulsd	(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-888(%rax), %xmm2
	vmulsd	(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-160(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-880(%rax), %xmm1
	vmulsd	(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-88(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-872(%rax), %xmm2
	vmulsd	(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-80(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-864(%rax), %xmm1
	vmulsd	(%rdx,%rcx,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-856(%rax), %xmm2
	vmulsd	(%rdx,%rbx,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-848(%rax), %xmm1
	vmulsd	(%rdx,%r10,8), %xmm1, %xmm0
	movq	-72(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-840(%rax), %xmm2
	vmulsd	(%rdx,%r9,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-832(%rax), %xmm1
	vmulsd	(%rdx,%r8,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-824(%rax), %xmm2
	vmulsd	(%rdx,%rdi,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-816(%rax), %xmm1
	vmulsd	(%rdx,%r11,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-808(%rax), %xmm2
	vmulsd	(%rdx,%rsi,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-800(%rax), %xmm1
	vmulsd	(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-152(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-792(%rax), %xmm2
	vmulsd	8(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-144(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-784(%rax), %xmm1
	vmulsd	8(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-136(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-776(%rax), %xmm2
	vmulsd	8(%rdx,%r13,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-768(%rax), %xmm1
	vmulsd	8(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-128(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-760(%rax), %xmm2
	vmulsd	8(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-120(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-752(%rax), %xmm1
	vmulsd	8(%rdx,%rcx,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-744(%rax), %xmm2
	movq	-112(%rbp), %rcx
	vmulsd	8(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-104(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-736(%rax), %xmm1
	vmulsd	8(%rdx,%r12,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-728(%rax), %xmm2
	vmulsd	8(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-96(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-720(%rax), %xmm1
	vmulsd	8(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-184(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-712(%rax), %xmm2
	vmulsd	8(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-176(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-704(%rax), %xmm1
	vmulsd	8(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-168(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-696(%rax), %xmm2
	vmulsd	8(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-688(%rax), %xmm1
	vmulsd	8(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-160(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-680(%rax), %xmm2
	vmulsd	8(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-88(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-672(%rax), %xmm1
	vmulsd	8(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-80(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-664(%rax), %xmm2
	vmulsd	8(%rdx,%rcx,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-656(%rax), %xmm1
	vmulsd	8(%rdx,%rbx,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-648(%rax), %xmm2
	vmulsd	8(%rdx,%r10,8), %xmm2, %xmm0
	movq	-72(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-640(%rax), %xmm1
	vmulsd	8(%rdx,%r9,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-632(%rax), %xmm2
	vmulsd	8(%rdx,%r8,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-624(%rax), %xmm1
	vmulsd	8(%rdx,%rdi,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-616(%rax), %xmm2
	vmulsd	8(%rdx,%r11,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-608(%rax), %xmm1
	vmulsd	8(%rdx,%rsi,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-600(%rax), %xmm2
	vmulsd	8(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-152(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-592(%rax), %xmm1
	vmulsd	16(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-144(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-584(%rax), %xmm2
	vmulsd	16(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-136(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-576(%rax), %xmm1
	vmulsd	16(%rdx,%r13,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-568(%rax), %xmm2
	vmulsd	16(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-128(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-560(%rax), %xmm1
	vmulsd	16(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-120(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-552(%rax), %xmm2
	vmulsd	16(%rdx,%rcx,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-544(%rax), %xmm1
	movq	-112(%rbp), %rcx
	vmulsd	16(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-104(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-536(%rax), %xmm2
	vmulsd	16(%rdx,%r12,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-528(%rax), %xmm1
	vmulsd	16(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-96(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-520(%rax), %xmm2
	vmulsd	16(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-184(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-512(%rax), %xmm1
	vmulsd	16(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-176(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-504(%rax), %xmm2
	vmulsd	16(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-168(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-496(%rax), %xmm1
	vmulsd	16(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-160(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-488(%rax), %xmm2
	vmulsd	16(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-88(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-480(%rax), %xmm1
	vmulsd	16(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-80(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-472(%rax), %xmm2
	vmulsd	16(%rdx,%rcx,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-464(%rax), %xmm1
	vmulsd	16(%rdx,%rbx,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-456(%rax), %xmm2
	vmulsd	16(%rdx,%r10,8), %xmm2, %xmm0
	movq	-72(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-448(%rax), %xmm1
	vmulsd	16(%rdx,%r9,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-440(%rax), %xmm2
	vmulsd	16(%rdx,%r8,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-432(%rax), %xmm1
	vmulsd	16(%rdx,%rdi,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-424(%rax), %xmm2
	vmulsd	16(%rdx,%r11,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-416(%rax), %xmm1
	vmulsd	16(%rdx,%rsi,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-408(%rax), %xmm2
	vmulsd	16(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-152(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-400(%rax), %xmm1
	vmulsd	24(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-144(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-392(%rax), %xmm2
	vmulsd	24(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-136(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-384(%rax), %xmm1
	vmulsd	24(%rdx,%r13,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-376(%rax), %xmm2
	vmulsd	24(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-128(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-368(%rax), %xmm1
	vmulsd	24(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-120(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-360(%rax), %xmm2
	vmulsd	24(%rdx,%rcx,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-352(%rax), %xmm1
	movq	-112(%rbp), %rcx
	vmulsd	24(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-104(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-344(%rax), %xmm2
	vmulsd	24(%rdx,%r12,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-336(%rax), %xmm1
	vmulsd	24(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-96(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-328(%rax), %xmm2
	vmulsd	24(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-184(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-320(%rax), %xmm1
	vmulsd	24(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-176(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-312(%rax), %xmm2
	vmulsd	24(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-168(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-304(%rax), %xmm1
	vmulsd	24(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-296(%rax), %xmm2
	vmulsd	24(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-160(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-288(%rax), %xmm1
	vmulsd	24(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-88(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-280(%rax), %xmm2
	vmulsd	24(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-80(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-272(%rax), %xmm1
	vmulsd	24(%rdx,%rcx,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-264(%rax), %xmm2
	vmulsd	24(%rdx,%rbx,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-256(%rax), %xmm1
	vmulsd	24(%rdx,%r10,8), %xmm1, %xmm0
	movq	-72(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-248(%rax), %xmm2
	vmulsd	24(%rdx,%r9,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-240(%rax), %xmm1
	vmulsd	24(%rdx,%r8,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-232(%rax), %xmm2
	vmulsd	24(%rdx,%rdi,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-224(%rax), %xmm1
	vmulsd	24(%rdx,%r11,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-216(%rax), %xmm2
	vmulsd	24(%rdx,%rsi,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-208(%rax), %xmm1
	vmulsd	24(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-152(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-200(%rax), %xmm2
	vmulsd	32(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-144(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-192(%rax), %xmm1
	vmulsd	32(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-136(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-184(%rax), %xmm2
	vmulsd	32(%rdx,%r13,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-176(%rax), %xmm1
	vmulsd	32(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-128(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-168(%rax), %xmm2
	vmulsd	32(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-120(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-160(%rax), %xmm1
	vmulsd	32(%rdx,%rcx,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-152(%rax), %xmm2
	movq	-112(%rbp), %rcx
	vmulsd	32(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-104(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-144(%rax), %xmm1
	vmulsd	32(%rdx,%r12,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-136(%rax), %xmm2
	vmulsd	32(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-96(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-128(%rax), %xmm1
	vmulsd	32(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-184(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-120(%rax), %xmm2
	vmulsd	32(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-176(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-112(%rax), %xmm1
	vmulsd	32(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-168(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-104(%rax), %xmm2
	vmulsd	32(%rdx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-96(%rax), %xmm1
	vmulsd	32(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-160(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-88(%rax), %xmm2
	vmulsd	32(%rdx,%rcx,8), %xmm2, %xmm0
	movq	-88(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-80(%rax), %xmm1
	vmulsd	32(%rdx,%rcx,8), %xmm1, %xmm0
	movq	-80(%rbp), %rcx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-72(%rax), %xmm2
	vmulsd	32(%rdx,%rcx,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-64(%rax), %xmm1
	vmulsd	32(%rdx,%rbx,8), %xmm1, %xmm0
	movq	-192(%rbp), %rbx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-56(%rax), %xmm2
	addq	$8, %rbx
	vmulsd	32(%rdx,%r10,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-48(%rax), %xmm1
	vmulsd	32(%rdx,%r9,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-40(%rax), %xmm2
	vmulsd	32(%rdx,%r8,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-32(%rax), %xmm1
	vmulsd	32(%rdx,%rdi,8), %xmm1, %xmm0
	movq	-72(%rbp), %rdi
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-24(%rax), %xmm2
	vmulsd	32(%rdx,%r11,8), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-16(%rax), %xmm1
	vmulsd	32(%rdx,%rsi,8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-8(%rax), %xmm0
	vmulsd	32(%rdx,%rdi,8), %xmm0, %xmm0
	addq	$8, %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rbx)
	movq	%rbx, -192(%rbp)
	cmpq	%rax, -200(%rbp)
	jne	.L23
	movq	-392(%rbp), %rax
	movq	-408(%rbp), %rsi
	addq	%rax, -368(%rbp)
	addq	%rsi, -384(%rbp)
	addq	%rsi, -376(%rbp)
	addq	%rax, %r15
	addq	%rax, -360(%rbp)
	addq	%rax, -280(%rbp)
	addq	%rax, -352(%rbp)
	addq	%rax, -344(%rbp)
	addq	%rax, -336(%rbp)
	addq	%rax, -328(%rbp)
	addq	%rax, -272(%rbp)
	addq	%rax, -320(%rbp)
	addq	%rax, -312(%rbp)
	addq	%rax, -304(%rbp)
	addq	%rax, -296(%rbp)
	addq	%rax, -264(%rbp)
	addq	%rax, -256(%rbp)
	movq	-400(%rbp), %rbx
	addq	%rax, -248(%rbp)
	addq	%rax, -240(%rbp)
	addq	%rax, -232(%rbp)
	addq	%rax, -224(%rbp)
	addq	%rax, -216(%rbp)
	addq	%rax, -208(%rbp)
	addq	%rbx, -200(%rbp)
	movl	-284(%rbp), %esi
	cmpl	%esi, -288(%rbp)
	jne	.L26
	movl	-468(%rbp), %eax
	movl	-472(%rbp), %edi
	addl	%eax, -444(%rbp)
	addl	%edi, -424(%rbp)
	addl	%eax, -440(%rbp)
	addl	%eax, -436(%rbp)
	addl	%eax, -432(%rbp)
	addl	%eax, -428(%rbp)
	movl	-420(%rbp), %edi
	cmpl	%edi, -448(%rbp)
	jg	.L25
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L73
	movq	-464(%rbp), %rdi
	call	dummy
	movq	-456(%rbp), %rdi
	call	dummy
	movq	-528(%rbp), %rdi
	call	dummy
.L73:
	addq	$480, %rsp
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
	movq	$0, -456(%rbp)
	xorl	%edx, %edx
.L9:
	movq	-456(%rbp), %rcx
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
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %edi
	cmovg	%r14d, %edi
	movq	%rsi, -456(%rbp)
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
	movq	-456(%rbp), %rax
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
	movq	-464(%rbp), %rdi
	call	dummy
	movq	-456(%rbp), %rdi
	call	dummy
	movq	-528(%rbp), %rdi
	call	dummy
	cmpl	$2, -448(%rbp)
	jle	.L22
	imull	$125, %r12d, %eax
	leal	-2(%r12), %edx
	movl	%eax, %esi
	imull	%ebx, %esi
	movl	%esi, -472(%rbp)
	movl	%r12d, %esi
	imull	%ebx, %esi
	movl	%esi, -468(%rbp)
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
	movq	$0, -456(%rbp)
	testl	%eax, %eax
	jne	.L33
	movq	-56(%rbp), %rax
	movq	%rax, -456(%rbp)
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
