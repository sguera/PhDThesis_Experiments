	.file	"3d-2r-homogeneous-variable-star-stencil.c_compilable.c"
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movl	$10, %edx
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rsi, %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	subq	$608, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
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
	movq	%rax, -80(%rbp)
	imull	%ebx, %ecx
	movslq	%ecx, %r12
	movq	%r12, %r15
	salq	$3, %r12
	movq	%r12, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r14
	testl	%r15d, %r15d
	jle	.L3
	leal	-1(%r15), %r13d
	movq	%r14, %rax
	movl	$5, %esi
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %r13d
	jb	.L53
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r14)
	cmpl	$1, %eax
	je	.L55
	vmovsd	%xmm0, 8(%r14)
	cmpl	$3, %eax
	jne	.L56
	vmovsd	%xmm0, 16(%r14)
	movl	$3, %r8d
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r14,%rax,8), %rdx
	movl	%r15d, %edi
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
	cmpl	%eax, %esi
	ja	.L7
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%r8), %eax
	cmpl	%edx, %edi
	je	.L100
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r14,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r14,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r14,%rax,8)
.L8:
	leaq	-56(%rbp), %rdi
	movq	%r12, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L101
.L42:
	movq	$0, -56(%rbp)
	movq	$0, -240(%rbp)
	testl	%r15d, %r15d
	jle	.L10
	movq	-240(%rbp), %rcx
	leal	-1(%r15), %r13d
.L41:
	testl	%r15d, %r15d
	movl	$1, %edi
	movq	%rcx, %rax
	cmovg	%r15d, %edi
	shrq	$3, %rax
	movl	$0, %esi
	negq	%rax
	movl	$5, %r8d
	andl	$3, %eax
	testl	%r15d, %r15d
	leal	3(%rax), %edx
	cmovg	%r13d, %esi
	cmpl	$5, %edx
	cmovb	%r8d, %edx
	cmpl	%edx, %esi
	jb	.L57
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.L12
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx)
	cmpl	$1, %eax
	je	.L59
	vmovsd	%xmm0, 8(%rcx)
	cmpl	$3, %eax
	jne	.L60
	vmovsd	%xmm0, 16(%rcx)
	movl	$3, %esi
.L12:
	movq	-240(%rbp), %rdx
	subl	%eax, %edi
	movl	%edi, %r8d
	vmovapd	.LC3(%rip), %ymm0
	shrl	$2, %r8d
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L14:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%eax, %r8d
	ja	.L14
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rsi), %eax
	cmpl	%edx, %edi
	je	.L102
	vzeroupper
	movq	-240(%rbp), %rdi
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L15
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L15
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L15:
	leaq	-56(%rbp), %rdi
	movq	%r12, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L103
	movq	-56(%rbp), %rdx
	testl	%r15d, %r15d
	movl	$1, %r8d
	movl	$5, %edi
	cmovg	%r15d, %r8d
	movq	%rdx, -136(%rbp)
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r15d, %r15d
	leal	3(%rdx), %esi
	cmovle	%eax, %r13d
	cmpl	$5, %esi
	cmovb	%edi, %esi
	cmpl	%esi, %r13d
	jb	.L46
	testl	%edx, %edx
	je	.L18
	movq	-136(%rbp), %rax
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L61
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L62
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L18:
	movq	-136(%rbp), %rcx
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
	cmpl	%edx, %edi
	ja	.L20
	movl	%r8d, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %r8d
	je	.L17
.L46:
	movq	-136(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L17:
	movl	-80(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$2, %eax
	movl	%eax, -548(%rbp)
	testl	%edx, %edx
	jne	.L104
	cmpl	$2, -548(%rbp)
	jle	.L98
	movq	-72(%rbp), %rdx
	leal	-2(%rbx), %eax
	movl	%ebx, -336(%rbp)
	movl	%eax, -512(%rbp)
	movl	%edx, %eax
	imull	%ebx, %eax
	movl	%eax, -552(%rbp)
	cmpl	$4, %edx
	jle	.L98
.L52:
	cmpl	$2, -512(%rbp)
	jle	.L95
	movl	-552(%rbp), %eax
	leal	(%rbx,%rbx,2), %edi
	movl	%ebx, %esi
	movl	%ebx, -560(%rbp)
	movl	%edi, -616(%rbp)
	leal	(%rbx,%rbx), %ecx
	movslq	%edi, %rdi
	movq	%rdi, -576(%rbp)
	leal	0(,%rbx,4), %edi
	movl	%edi, -620(%rbp)
	movslq	%edi, %rdi
	leal	(%rax,%rax), %edx
	movl	%ecx, -556(%rbp)
	movl	%edx, -528(%rbp)
	leal	(%rax,%rax,2), %edx
	movl	%edx, -536(%rbp)
	leal	0(,%rax,4), %edx
	movq	%rdi, -584(%rbp)
	movl	%eax, %edi
	addl	%ecx, %eax
	movl	%eax, -604(%rbp)
	movl	%ebx, %eax
	subl	%edi, %eax
	movl	%edx, -544(%rbp)
	movslq	%ebx, %rdx
	addl	%edi, %ebx
	addl	%eax, %eax
	movl	%edi, -532(%rbp)
	movl	%eax, -608(%rbp)
	leal	(%rbx,%rbx), %eax
	movl	-336(%rbp), %ebx
	movl	%eax, -612(%rbp)
	movq	%rdx, -360(%rbp)
	salq	$3, %rdx
	movq	%rdx, -368(%rbp)
	movslq	%ecx, %rdx
	leal	(%rbx,%rbx,2), %eax
	movq	%rdx, -568(%rbp)
	movl	$0, -540(%rbp)
	cltq
	movq	%rax, -592(%rbp)
	leal	0(,%rbx,4), %eax
	movl	$2, -524(%rbp)
	cltq
	movq	%rax, -600(%rbp)
	leal	-4(%rsi), %eax
	movl	%eax, -160(%rbp)
	leaq	16(%r14), %rax
	movq	%rax, -376(%rbp)
	leaq	48(%r14), %rax
	movq	%rax, -392(%rbp)
	movq	-136(%rbp), %rax
	leaq	48(%rax), %rbx
	addq	$16, %rax
	movq	%rax, -384(%rbp)
	leaq	64(%r14), %rax
	movq	%rax, -400(%rbp)
	leaq	2(%rdx), %rax
	movq	%rax, -648(%rbp)
	leaq	6(%rdx), %rax
	movq	%rbx, -408(%rbp)
	leaq	8(%r14), %rbx
	movq	%rax, -656(%rbp)
	leal	-5(%rsi), %eax
	movl	%eax, -416(%rbp)
	addq	%rdx, %rax
	movq	%rbx, -640(%rbp)
	movq	-72(%rbp), %rbx
	movq	%rax, -632(%rbp)
	subl	$2, %ebx
	movl	%ebx, -412(%rbp)
	movq	%r14, %rbx
	.p2align 4,,10
	.p2align 3
.L37:
	movl	-528(%rbp), %r9d
	movq	-648(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	-568(%rbp), %r10
	addl	$1, -524(%rbp)
	movslq	%r9d, %rdi
	addq	%rdi, %rax
	movq	%rdi, %rsi
	addl	-604(%rbp), %esi
	movq	%rdi, -328(%rbp)
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, -168(%rbp)
	movq	%rdi, %rax
	addq	%r10, %rax
	movl	%esi, -316(%rbp)
	movl	-560(%rbp), %esi
	leaq	0(,%rax,8), %r14
	movq	%rax, -288(%rbp)
	movq	%rcx, %rax
	addq	%r14, %rax
	movq	%r14, -112(%rbp)
	movq	%rax, -296(%rbp)
	movq	-656(%rbp), %rax
	addl	%r9d, %esi
	movl	%esi, -320(%rbp)
	movl	-616(%rbp), %esi
	addq	%rdi, %rax
	leaq	(%rcx,%rax,8), %rax
	movq	-640(%rbp), %rcx
	movq	%rax, -176(%rbp)
	movq	-136(%rbp), %rax
	addl	%r9d, %esi
	movl	%esi, -128(%rbp)
	movl	-608(%rbp), %esi
	addq	%r14, %rax
	movl	-556(%rbp), %r14d
	movq	%rax, -304(%rbp)
	movq	-632(%rbp), %rax
	addl	%r9d, %esi
	movl	%esi, -140(%rbp)
	movl	-612(%rbp), %esi
	addq	%rdi, %rax
	leaq	(%rcx,%rax,8), %rax
	movl	-532(%rbp), %ecx
	addl	%r9d, %esi
	movq	%rax, -352(%rbp)
	movl	%r9d, %eax
	addl	%r14d, %eax
	movl	%esi, -144(%rbp)
	movl	%eax, -308(%rbp)
	movl	%ecx, %eax
	movslq	%ecx, %rsi
	addl	%r14d, %eax
	movl	%eax, -312(%rbp)
	movl	-620(%rbp), %eax
	movq	-360(%rbp), %r14
	movq	%r10, -264(%rbp)
	movq	-576(%rbp), %r11
	movq	$0, -120(%rbp)
	movq	-584(%rbp), %r15
	movl	$0, -152(%rbp)
	addl	%r9d, %eax
	movslq	-536(%rbp), %rcx
	movl	$2, -156(%rbp)
	movl	%eax, -148(%rbp)
	movq	%r14, %rax
	movslq	-540(%rbp), %rdx
	addq	%rdi, %rax
	movq	%r11, -272(%rbp)
	movq	%rax, -456(%rbp)
	salq	$3, %rax
	movq	%rax, -184(%rbp)
	movq	%rdi, %rax
	addq	%r11, %rax
	movq	%r15, -280(%rbp)
	salq	$3, %rax
	movq	%r14, -256(%rbp)
	movq	%rax, -192(%rbp)
	leaq	0(,%rdi,8), %rax
	movq	%rax, -200(%rbp)
	movq	%rdi, %rax
	addq	%r15, %rax
	salq	$3, %rax
	movq	%rax, -208(%rbp)
	leaq	(%r10,%rsi), %rax
	subq	%rdi, %rsi
	movq	%rax, -480(%rbp)
	salq	$3, %rax
	movq	%rax, -216(%rbp)
	leaq	(%r10,%rcx), %rax
	subq	%rdi, %rcx
	movq	%rax, -488(%rbp)
	salq	$3, %rax
	movq	%rax, -224(%rbp)
	leaq	(%r10,%rdx), %rax
	subq	%rdi, %rdx
	movq	%rax, -496(%rbp)
	salq	$3, %rax
	movq	%rax, -232(%rbp)
	movslq	-544(%rbp), %rax
	leaq	(%r10,%rax), %r8
	subq	%rdi, %rax
	movq	%r8, -504(%rbp)
	salq	$3, %r8
	movq	%r8, -248(%rbp)
	movq	-592(%rbp), %r8
	addq	%rdi, %r8
	movq	%r8, -464(%rbp)
	movq	-600(%rbp), %r8
	addq	%rdi, %r8
	movq	%r8, -472(%rbp)
	movq	%rsi, -424(%rbp)
	movq	%rax, -448(%rbp)
	leal	2(%r9), %eax
	movl	%eax, -508(%rbp)
	leal	3(%r9), %eax
	movl	%eax, -516(%rbp)
	leal	4(%r9), %eax
	movq	%rcx, -432(%rbp)
	movq	%rdx, -440(%rbp)
	movl	%eax, -520(%rbp)
	.p2align 4,,10
	.p2align 3
.L38:
	movq	-112(%rbp), %rcx
	movq	-408(%rbp), %rax
	movq	-168(%rbp), %r15
	addl	$1, -156(%rbp)
	movq	-176(%rbp), %r11
	leaq	(%rbx,%rcx), %rdx
	addq	%rcx, %rax
	movq	-392(%rbp), %rdi
	cmpq	%rax, %r15
	movq	-384(%rbp), %rax
	setnb	%sil
	movq	-184(%rbp), %r8
	movq	-376(%rbp), %r14
	movq	-192(%rbp), %r10
	addq	%rcx, %rax
	movq	-216(%rbp), %r9
	cmpq	%rax, %r11
	setbe	%al
	orl	%eax, %esi
	movq	-400(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %r15
	setnb	%cl
	cmpq	%rdx, %r11
	setbe	%al
	orl	%ecx, %eax
	andl	%esi, %eax
	cmpl	$5, -160(%rbp)
	movq	%r14, %rsi
	seta	%cl
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r15
	setnb	%cl
	addq	%r8, %rsi
	movq	-200(%rbp), %r8
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r14, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r15
	setnb	%cl
	addq	%r10, %rsi
	movq	-208(%rbp), %r10
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r14, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r15
	setnb	%cl
	addq	%r8, %rsi
	movq	-224(%rbp), %r8
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r14, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r15
	setnb	%cl
	addq	%r10, %rsi
	movq	-232(%rbp), %r10
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r14, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r15
	setnb	%cl
	addq	%r9, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r14, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r15
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	movq	%r14, %rsi
	andl	%ecx, %eax
	movq	%rdi, %rcx
	addq	%r10, %rcx
	cmpq	%rcx, %r15
	setnb	%cl
	addq	%r10, %rsi
	cmpq	%rsi, %r11
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L36
	movq	-248(%rbp), %rsi
	addq	%rsi, %rdi
	cmpq	%rdi, %r15
	setnb	%cl
	addq	%rsi, %r14
	cmpq	%r14, %r11
	setbe	%al
	orb	%al, %cl
	je	.L36
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-416(%rbp), %eax
	ja	.L63
	movl	$2, -124(%rbp)
	testl	%edx, %edx
	je	.L26
	movl	-308(%rbp), %r14d
	movl	$3, -124(%rbp)
	movl	-312(%rbp), %r15d
	movl	-316(%rbp), %r13d
	movl	-320(%rbp), %r12d
	leal	1(%r14), %ecx
	leal	2(%r14), %eax
	movslq	%ecx, %rcx
	leaq	(%rbx,%rcx,8), %r8
	cltq
	leal	3(%r14), %ecx
	vmovsd	(%r8), %xmm0
	leal	2(%r15), %r9d
	movslq	%ecx, %rcx
	leaq	(%rbx,%rax,8), %r10
	movslq	%r9d, %r9
	leaq	(%rbx,%rcx,8), %rdi
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	leal	4(%r14), %esi
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	leal	2(%r13), %r9d
	movslq	%esi, %r11
	leaq	(%rbx,%r11,8), %rsi
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	leal	2(%r12), %r9d
	movq	%rsi, -72(%rbp)
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movl	-128(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movslq	%r14d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movl	-140(%rbp), %r9d
	vaddsd	(%rsi), %xmm0, %xmm0
	movl	-508(%rbp), %esi
	addl	-152(%rbp), %esi
	addl	$2, %r9d
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movl	-144(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movslq	%esi, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movl	-148(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movq	-136(%rbp), %r9
	vmulsd	(%r9,%rax,8), %xmm0, %xmm0
	movq	-240(%rbp), %r9
	vmovsd	%xmm0, (%r9,%rax,8)
	cmpl	$1, %edx
	je	.L26
	movq	-72(%rbp), %rsi
	leal	3(%r15), %r9d
	movl	$4, -124(%rbp)
	vmovsd	(%rdi), %xmm0
	leal	5(%r14), %eax
	movslq	%r9d, %r9
	vaddsd	(%r10), %xmm0, %xmm0
	cltq
	leaq	(%rbx,%rax,8), %rax
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	leal	3(%r13), %r9d
	movslq	%r9d, %r9
	movl	-516(%rbp), %esi
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	leal	3(%r12), %r9d
	movslq	%r9d, %r9
	addl	-152(%rbp), %esi
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	movl	-128(%rbp), %r9d
	addl	$3, %r9d
	movslq	%r9d, %r9
	vaddsd	(%rbx,%r9,8), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	movl	-140(%rbp), %r8d
	vaddsd	(%rax), %xmm0, %xmm0
	addl	$3, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movl	-144(%rbp), %r8d
	addl	$3, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movslq	%esi, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movl	-148(%rbp), %r8d
	movq	-240(%rbp), %rsi
	addl	$3, %r8d
	movslq	%r8d, %r8
	vaddsd	(%rbx,%r8,8), %xmm0, %xmm0
	movq	-136(%rbp), %r8
	vmulsd	(%r8,%rcx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%rcx,8)
	cmpl	$3, %edx
	jne	.L26
	movq	-72(%rbp), %rcx
	movl	$5, -124(%rbp)
	vmovsd	(%rdi), %xmm0
	movl	-128(%rbp), %r9d
	movl	-140(%rbp), %r8d
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	leal	4(%r15), %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%r13), %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%r12), %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%r9), %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	6(%r14), %eax
	cltq
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%r8), %eax
	movl	-144(%rbp), %r8d
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%r8), %eax
	movl	-148(%rbp), %r8d
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	movl	-520(%rbp), %eax
	addl	-152(%rbp), %eax
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	leal	4(%r8), %eax
	movq	-136(%rbp), %r8
	cltq
	vaddsd	(%rbx,%rax,8), %xmm0, %xmm0
	vmulsd	(%r8,%r11,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%r11,8)
.L26:
	movl	-160(%rbp), %edi
	movl	%edx, %eax
	movq	%rbx, -344(%rbp)
	movq	-288(%rbp), %rsi
	movq	-136(%rbp), %r15
	movq	-456(%rbp), %r10
	subl	%edx, %edi
	movq	-112(%rbp), %r8
	leaq	2(%rax,%rsi), %rcx
	movl	%edi, -332(%rbp)
	shrl	$2, %edi
	movl	%edi, -72(%rbp)
	leaq	0(,%rcx,8), %rdi
	movq	-480(%rbp), %rcx
	leaq	(%rbx,%rdi), %rdx
	movq	%rdi, -104(%rbp)
	addq	%rdi, %r15
	movq	-120(%rbp), %rdi
	movq	%rdx, -80(%rbp)
	leaq	1(%rax,%rsi), %rdx
	leaq	(%rbx,%rdx,8), %r14
	leaq	3(%rax,%rsi), %rdx
	leaq	(%rbx,%rdx,8), %r13
	leaq	2(%rdi,%rcx), %rdx
	movq	-488(%rbp), %rcx
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %r12
	leaq	2(%rdi,%rcx), %rdx
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %rcx
	leaq	2(%rdi,%r10), %rdx
	movq	-464(%rbp), %r10
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %r11
	leaq	2(%rdi,%r10), %rdx
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %r10
	leaq	(%r8,%rax,8), %rdx
	leaq	(%rbx,%rdx), %r8
	movq	%r8, -88(%rbp)
	movq	-496(%rbp), %r8
	leaq	4(%rax,%rsi), %rdx
	leaq	(%rbx,%rdx,8), %rsi
	movq	%rsi, -96(%rbp)
	movq	%rdi, %rsi
	leaq	2(%rdi,%r8), %rdx
	movq	-504(%rbp), %r8
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %r9
	leaq	2(%rdi,%r8), %rdx
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %r8
	movq	-328(%rbp), %rdx
	leaq	2(%rdx,%rdi), %rdx
	addq	%rax, %rdx
	leaq	(%rbx,%rdx,8), %rdi
	movq	-472(%rbp), %rdx
	leaq	2(%rsi,%rdx), %rdx
	addq	%rdx, %rax
	xorl	%edx, %edx
	leaq	(%rbx,%rax,8), %rsi
	movq	-104(%rbp), %rax
	movl	%edx, %ebx
	addq	-240(%rbp), %rax
	movq	%rax, -104(%rbp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L28:
	movq	-80(%rbp), %rdx
	addl	$1, %ebx
	vmovupd	(%r14,%rax), %xmm0
	vinsertf128	$0x1, 16(%r14,%rax), %ymm0, %ymm0
	vmovupd	(%r9,%rax), %xmm2
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	0(%r13,%rax), %xmm0
	vinsertf128	$0x1, 16(%r13,%rax), %ymm0, %ymm0
	movq	-88(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r12,%rax), %xmm0
	vinsertf128	$0x1, 16(%r12,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rcx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r11,%rax), %xmm0
	vinsertf128	$0x1, 16(%r11,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r10,%rax), %xmm0
	vinsertf128	$0x1, 16(%r10,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vinsertf128	$0x1, 16(%r9,%rax), %ymm2, %ymm0
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-96(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-104(%rbp), %rdx
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%r8,%rax), %xmm1
	vinsertf128	$0x1, 16(%r8,%rax), %ymm1, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%rdi,%rax), %xmm2
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%rsi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%r15,%rax), %xmm0
	vinsertf128	$0x1, 16(%r15,%rax), %ymm0, %ymm0
	vmulpd	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpl	%ebx, -72(%rbp)
	ja	.L28
	movl	-332(%rbp), %ecx
	movl	-124(%rbp), %edx
	movq	-344(%rbp), %rbx
	movl	%ecx, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %ecx
	je	.L32
.L25:
	movq	-264(%rbp), %r10
	movslq	%edx, %rdx
	movq	-328(%rbp), %rax
	movq	-256(%rbp), %r8
	movq	-272(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-280(%rbp), %rcx
	addq	%r10, %rax
	subq	%r10, %r8
	movl	-512(%rbp), %r9d
	addq	%rdx, %rax
	movq	-304(%rbp), %r11
	leaq	-16(%rbx,%rax,8), %rax
	subq	%r10, %rdi
	subq	%r10, %rsi
	movq	-424(%rbp), %r12
	subq	%r10, %rcx
	movq	-432(%rbp), %r13
	movq	-296(%rbp), %r10
	movq	-440(%rbp), %r14
	movq	-448(%rbp), %r15
	.p2align 4,,10
	.p2align 3
.L30:
	vmovsd	16(%rax), %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	24(%rax), %xmm0, %xmm0
	vaddsd	16(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r13,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	32(%rax), %xmm0, %xmm0
	vaddsd	16(%rax,%r14,8), %xmm0, %xmm0
	vaddsd	16(%rax,%r15,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rax,%rcx,8), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	(%r11,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %r9d
	jg	.L30
.L32:
	movq	-368(%rbp), %rax
	movl	-336(%rbp), %edi
	movq	-360(%rbp), %rsi
	addl	%edi, -308(%rbp)
	addl	%edi, -312(%rbp)
	addq	%rax, -168(%rbp)
	addq	%rax, -296(%rbp)
	addq	%rax, -176(%rbp)
	addq	%rax, -304(%rbp)
	addq	%rax, -112(%rbp)
	addq	%rsi, -256(%rbp)
	addq	%rsi, -264(%rbp)
	addq	%rsi, -272(%rbp)
	addq	%rsi, -120(%rbp)
	addq	%rsi, -280(%rbp)
	addq	%rax, -352(%rbp)
	addq	%rsi, -288(%rbp)
	addl	%edi, -316(%rbp)
	addl	%edi, -320(%rbp)
	addl	%edi, -128(%rbp)
	addl	%edi, -140(%rbp)
	addl	%edi, -144(%rbp)
	addl	%edi, -148(%rbp)
	addl	%edi, -152(%rbp)
	addq	%rax, -184(%rbp)
	addq	%rax, -192(%rbp)
	addq	%rax, -200(%rbp)
	addq	%rax, -208(%rbp)
	addq	%rax, -216(%rbp)
	addq	%rax, -224(%rbp)
	addq	%rax, -232(%rbp)
	addq	%rax, -248(%rbp)
	movl	-412(%rbp), %edi
	cmpl	%edi, -156(%rbp)
	jne	.L38
	movl	-552(%rbp), %eax
	movl	-524(%rbp), %edi
	addl	%eax, -528(%rbp)
	addl	%eax, -532(%rbp)
	addl	%eax, -536(%rbp)
	addl	%eax, -540(%rbp)
	addl	%eax, -544(%rbp)
	cmpl	%edi, -548(%rbp)
	jg	.L37
	movq	%rbx, %r14
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L96
	movq	%r14, %rdi
	call	dummy
	movq	-240(%rbp), %rdi
	call	dummy
	movq	-136(%rbp), %rdi
	call	dummy
.L96:
	addq	$608, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L101:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	%rax, %rcx
	jmp	.L41
.L55:
	movl	$1, %r8d
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L36:
	movq	-264(%rbp), %r10
	movq	-256(%rbp), %r8
	movq	-272(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-280(%rbp), %rcx
	movq	-112(%rbp), %rax
	subq	%r10, %r8
	subq	%r10, %rdi
	movq	-240(%rbp), %r9
	subq	%r10, %rsi
	movq	-352(%rbp), %r11
	subq	%r10, %rcx
	movq	-424(%rbp), %r12
	movq	-136(%rbp), %r10
	addq	$16, %rax
	movq	-432(%rbp), %r13
	movq	-440(%rbp), %r14
	movq	-448(%rbp), %r15
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	8(%rdx), %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm0
	vaddsd	16(%rdx,%r12,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%r13,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%r8,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%rdi,8), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	32(%rdx), %xmm0, %xmm0
	vaddsd	16(%rdx,%r14,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%r15,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%rsi,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%rcx,8), %xmm0, %xmm0
	addq	$8, %rdx
	vmulsd	(%r10,%rax), %xmm0, %xmm0
	vmovsd	%xmm0, (%r9,%rax)
	addq	$8, %rax
	cmpq	%r11, %rdx
	jne	.L31
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L63:
	movl	$2, %edx
	jmp	.L25
.L103:
	testl	%r15d, %r15d
	jle	.L105
	movl	%r15d, %r8d
	cmpl	$4, %r13d
	jbe	.L67
	movq	$0, -136(%rbp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L18
.L104:
	movq	%r14, %rdi
	vzeroupper
	call	dummy
	movq	-240(%rbp), %rdi
	call	dummy
	movq	-136(%rbp), %rdi
	call	dummy
	cmpl	$2, -548(%rbp)
	jle	.L24
	movq	-72(%rbp), %rdx
	leal	-2(%rbx), %eax
	movl	%ebx, -336(%rbp)
	movl	%eax, -512(%rbp)
	movl	%edx, %eax
	imull	%ebx, %eax
	movl	%eax, -552(%rbp)
	cmpl	$4, %edx
	jg	.L52
	jmp	.L24
.L59:
	movl	$1, %esi
	jmp	.L12
.L102:
	vzeroupper
	jmp	.L15
.L61:
	movl	$1, %eax
	jmp	.L18
.L98:
	vzeroupper
	jmp	.L96
.L100:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-56(%rbp), %rdi
	movq	%r12, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L42
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)
.L10:
	leaq	-56(%rbp), %rdi
	movq	%r12, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -136(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.L17
.L67:
	movq	$0, -136(%rbp)
	xorl	%eax, %eax
	jmp	.L46
.L56:
	movl	$2, %r8d
	jmp	.L5
.L62:
	movl	$2, %eax
	jmp	.L18
.L60:
	movl	$2, %esi
	jmp	.L12
.L95:
	vzeroupper
	jmp	.L24
.L57:
	xorl	%eax, %eax
	movq	%rcx, %rdi
	jmp	.L11
.L53:
	xorl	%eax, %eax
	jmp	.L4
.L105:
	movq	$0, -136(%rbp)
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
