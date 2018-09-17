	.file	"3d-3r-isotropic-constant-box-stencil.c_compilable.c"
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
	subq	$944, %rsp
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
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r13
	call	strtol
	movl	%r13d, %r14d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %r12
	imull	%ebx, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -136(%rbp)
	call	posix_memalign
	movq	-136(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -936(%rbp)
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
	movq	-936(%rbp), %rdx
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
	movq	-936(%rbp), %rdi
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
	movq	$0, -928(%rbp)
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	xorl	%edx, %edx
	cmpl	$4, %r15d
	ja	.L9
	xorl	%eax, %eax
	jmp	.L22
.L60:
	movq	-56(%rbp), %rdx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%rdx, -928(%rbp)
	shrq	$3, %rdx
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
	movq	-928(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L36
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L37
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	movq	-928(%rbp), %rcx
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
	je	.L61
	vzeroupper
.L22:
	vmovsd	.LC2(%rip), %xmm0
	movq	-928(%rbp), %rdi
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
	movl	var_false(%rip), %edx
	movq	%rax, -128(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.LC9(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	.LC10(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC11(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC12(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC13(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-3(%r13), %eax
	movl	%eax, -940(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$3, -940(%rbp)
	jle	.L56
	movl	%ebx, %edi
	leal	-3(%rbx), %eax
	imull	%r12d, %edi
	movl	%edi, -944(%rbp)
	cmpl	$6, %r12d
	jle	.L56
.L31:
	cmpl	$3, %eax
	jle	.L15
	movl	$0, -900(%rbp)
	movl	-944(%rbp), %edi
	movl	$3, -892(%rbp)
	leal	(%rdi,%rdi,2), %eax
	movl	%edi, -908(%rbp)
	movl	%eax, -920(%rbp)
	leal	(%rdi,%rdi), %eax
	movl	%eax, -916(%rbp)
	leal	0(,%rdi,4), %eax
	movl	%eax, -912(%rbp)
	leal	(%rdi,%rdi,4), %eax
	movl	%eax, -904(%rbp)
	imull	$6, %edi, %eax
	movl	%eax, -896(%rbp)
	movslq	%ebx, %rax
	movq	%rax, -992(%rbp)
	salq	$3, %rax
	movq	%rax, -888(%rbp)
	leal	(%rbx,%rbx,2), %eax
	cltq
	movq	%rax, -984(%rbp)
	leal	(%rbx,%rbx), %eax
	cltq
	movq	%rax, -976(%rbp)
	leal	0(,%rbx,4), %eax
	cltq
	movq	%rax, -968(%rbp)
	leal	(%rbx,%rbx,4), %eax
	cltq
	movq	%rax, -960(%rbp)
	imull	$6, %ebx, %eax
	cltq
	movq	%rax, -952(%rbp)
	leal	-3(%r12), %eax
	movl	%eax, -488(%rbp)
	leal	-7(%rbx), %eax
	addq	$4, %rax
	movq	%rax, -472(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movq	-984(%rbp), %r11
	movslq	-920(%rbp), %r9
	movq	-928(%rbp), %rbx
	movq	-976(%rbp), %r15
	leaq	(%r9,%r11), %rax
	movslq	-916(%rbp), %r8
	movslq	-912(%rbp), %rdi
	salq	$3, %rax
	movq	-968(%rbp), %r14
	movq	-992(%rbp), %r13
	addq	%rax, %rbx
	movslq	-908(%rbp), %rsi
	movslq	-904(%rbp), %rcx
	movq	%rbx, -464(%rbp)
	movq	-936(%rbp), %rbx
	movq	-960(%rbp), %r12
	addl	$1, -892(%rbp)
	addq	%rbx, %rax
	movq	%rax, -880(%rbp)
	leaq	(%r15,%r9), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -872(%rbp)
	leaq	(%r8,%r11), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -864(%rbp)
	leaq	(%rdi,%r11), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -856(%rbp)
	leaq	(%r14,%r9), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -848(%rbp)
	leaq	(%r9,%r13), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -840(%rbp)
	leaq	(%r8,%r15), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -832(%rbp)
	leaq	(%rdi,%r15), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -824(%rbp)
	leaq	(%rsi,%r11), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -816(%rbp)
	leaq	(%rcx,%r11), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -808(%rbp)
	leaq	(%r14,%r8), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -800(%rbp)
	leaq	(%r14,%rdi), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -792(%rbp)
	leaq	(%r12,%r9), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -784(%rbp)
	leaq	(%rbx,%r9,8), %rax
	movq	%rax, -776(%rbp)
	leaq	(%r8,%r13), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -768(%rbp)
	leaq	(%rdi,%r13), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -760(%rbp)
	leaq	(%rsi,%r15), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -752(%rbp)
	leaq	(%rcx,%r15), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -744(%rbp)
	movslq	-900(%rbp), %rdx
	leaq	(%rdx,%r11), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -736(%rbp)
	movslq	-896(%rbp), %rax
	leaq	(%rax,%r11), %r10
	leaq	(%rbx,%r10,8), %r11
	leaq	(%rsi,%r14), %r10
	movq	%r11, -728(%rbp)
	leaq	(%rbx,%r10,8), %r11
	leaq	(%rcx,%r14), %r10
	movq	%r11, -720(%rbp)
	leaq	(%rbx,%r10,8), %r11
	leaq	(%r12,%r8), %r10
	movq	%r11, -712(%rbp)
	leaq	(%rbx,%r10,8), %r11
	leaq	(%r12,%rdi), %r10
	movq	%r11, -704(%rbp)
	leaq	(%rbx,%r10,8), %r11
	movq	-952(%rbp), %r10
	movq	%r11, -696(%rbp)
	addq	%r10, %r9
	leaq	(%rbx,%r9,8), %r9
	movq	%r9, -688(%rbp)
	leaq	(%rbx,%r8,8), %r9
	addq	%r10, %r8
	movq	%r9, -680(%rbp)
	leaq	(%rbx,%rdi,8), %r9
	addq	%r10, %rdi
	leaq	(%rbx,%r8,8), %r8
	leaq	(%rbx,%rdi,8), %rdi
	movq	%r9, -672(%rbp)
	leaq	(%rsi,%r13), %r9
	movq	%rdi, -592(%rbp)
	leaq	(%rbx,%rsi,8), %rdi
	leaq	(%rbx,%r9,8), %r9
	movq	%rdi, -584(%rbp)
	leaq	(%rbx,%rcx,8), %rdi
	movq	%r9, -664(%rbp)
	leaq	(%rcx,%r13), %r9
	movq	%rdi, -576(%rbp)
	leaq	(%rdx,%r13), %rdi
	leaq	(%rbx,%r9,8), %r9
	leaq	(%rbx,%rdi,8), %rdi
	movq	%r9, -656(%rbp)
	leaq	(%rdx,%r15), %r9
	movq	%rdi, -568(%rbp)
	leaq	(%rax,%r13), %rdi
	leaq	(%rbx,%r9,8), %r9
	leaq	(%rbx,%rdi,8), %rdi
	movq	%r9, -648(%rbp)
	leaq	(%rax,%r15), %r9
	movq	%rdi, -560(%rbp)
	leaq	(%rdx,%r12), %rdi
	leaq	(%rbx,%r9,8), %r15
	leaq	(%rbx,%rdi,8), %rdi
	leaq	(%rdx,%r14), %r9
	movq	%r15, -640(%rbp)
	movq	%rdi, -552(%rbp)
	leaq	(%rbx,%r9,8), %r15
	leaq	(%rax,%r12), %rdi
	leaq	(%rax,%r14), %r9
	leaq	(%rbx,%rdi,8), %rdi
	movq	%r15, -632(%rbp)
	leaq	(%rbx,%r9,8), %r14
	leaq	(%r12,%rsi), %r9
	addq	%r10, %rsi
	movq	%rdi, -544(%rbp)
	leaq	(%rbx,%r9,8), %r15
	leaq	(%rbx,%rsi,8), %rdi
	movq	%r14, -624(%rbp)
	leaq	(%r12,%rcx), %r9
	addq	%r10, %rcx
	movq	%rdi, -536(%rbp)
	leaq	(%rbx,%rcx,8), %rdi
	leaq	(%rbx,%r9,8), %r9
	movq	%r15, -616(%rbp)
	movq	%rdi, -528(%rbp)
	leaq	(%rbx,%rdx,8), %rdi
	addq	%r10, %rdx
	movq	%rdi, -520(%rbp)
	leaq	(%rbx,%rax,8), %rdi
	addq	%r10, %rax
	movq	%rdi, -512(%rbp)
	leaq	(%rbx,%rax,8), %rax
	leaq	(%rbx,%rdx,8), %rdi
	movq	%r9, -608(%rbp)
	movq	%r8, -600(%rbp)
	movq	%rdi, -504(%rbp)
	movq	%rax, -496(%rbp)
	movq	$0, -480(%rbp)
	movl	$3, -484(%rbp)
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-480(%rbp), %rcx
	movq	-832(%rbp), %rbx
	movq	-864(%rbp), %rax
	addl	$1, -484(%rbp)
	addq	%rcx, %rbx
	movq	-880(%rbp), %r15
	movq	-872(%rbp), %rdx
	movq	%rbx, -360(%rbp)
	movq	-824(%rbp), %rbx
	addq	%rcx, %rax
	movq	%rax, -448(%rbp)
	movq	-856(%rbp), %rax
	addq	%rcx, %rdx
	addq	%rcx, %r15
	addq	%rcx, %rbx
	movq	-776(%rbp), %r14
	movq	%rbx, -352(%rbp)
	movq	-816(%rbp), %rbx
	addq	%rcx, %rax
	movq	%rax, -440(%rbp)
	movq	-848(%rbp), %rax
	addq	%rcx, %r14
	addq	%rcx, %rbx
	movq	%rbx, -344(%rbp)
	movq	-808(%rbp), %rbx
	addq	%rcx, %rax
	movq	%rax, -432(%rbp)
	movq	-840(%rbp), %rax
	addq	%rcx, %rbx
	movq	%rbx, -336(%rbp)
	movq	-800(%rbp), %rbx
	addq	%rcx, %rax
	movq	%rax, -368(%rbp)
	addq	%rcx, %rbx
	movq	%rbx, -328(%rbp)
	movq	-792(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -320(%rbp)
	movq	-784(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -312(%rbp)
	movq	-768(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -304(%rbp)
	movq	-760(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -296(%rbp)
	movq	-752(%rbp), %rbx
	movq	-680(%rbp), %r13
	addq	%rcx, %rbx
	movq	%rbx, -288(%rbp)
	movq	-744(%rbp), %rbx
	addq	%rcx, %r13
	addq	%rcx, %rbx
	movq	%rbx, -280(%rbp)
	movq	-736(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -272(%rbp)
	movq	-728(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -264(%rbp)
	movq	-720(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -256(%rbp)
	movq	-712(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -248(%rbp)
	movq	-704(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -240(%rbp)
	movq	-696(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -232(%rbp)
	movq	-688(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -224(%rbp)
	movq	-672(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -216(%rbp)
	movq	-664(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -208(%rbp)
	movq	-656(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -200(%rbp)
	movq	-648(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -192(%rbp)
	movq	-640(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -184(%rbp)
	movq	-632(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -176(%rbp)
	movq	-624(%rbp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, -168(%rbp)
	movq	-616(%rbp), %rbx
	movq	-552(%rbp), %rdi
	movq	-512(%rbp), %rax
	movq	$3, -456(%rbp)
	addq	%rcx, %rbx
	movq	-592(%rbp), %r12
	movq	-576(%rbp), %r11
	movq	%rdx, -408(%rbp)
	movq	%rbx, -160(%rbp)
	addq	%rcx, %rdi
	movq	-608(%rbp), %rbx
	addq	%rcx, %rax
	movq	%rdi, -136(%rbp)
	movq	-544(%rbp), %rdi
	addq	%rcx, %r12
	addq	%rcx, %r11
	addq	%rcx, %rbx
	movq	-568(%rbp), %r10
	movq	-560(%rbp), %r9
	movq	%rbx, -152(%rbp)
	movq	-600(%rbp), %rbx
	addq	%rcx, %rdi
	movq	%rdi, -400(%rbp)
	movq	-536(%rbp), %r8
	addq	%rcx, %r10
	addq	%rcx, %r9
	addq	%rcx, %rbx
	movq	-528(%rbp), %rdi
	movq	-520(%rbp), %rsi
	movq	%rbx, -144(%rbp)
	movq	-584(%rbp), %rbx
	addq	%rcx, %r8
	addq	%rcx, %rdi
	addq	%rcx, %rsi
	addq	%rcx, %rbx
	movq	%rax, %rcx
	movq	-504(%rbp), %rax
	addq	-480(%rbp), %rax
	movq	%rax, -424(%rbp)
	movq	-496(%rbp), %rax
	addq	-480(%rbp), %rax
	movq	%rcx, -376(%rbp)
	movq	%rax, -416(%rbp)
	movq	%rsi, -384(%rbp)
	movq	%rdi, -392(%rbp)
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L16:
	movq	-408(%rbp), %rdx
	vmovsd	(%r15), %xmm0
	addq	$8, %r14
	addq	$8, %r15
	movq	-448(%rbp), %rax
	movq	-320(%rbp), %rdi
	addq	$8, %r13
	vaddsd	8(%rdx), %xmm0, %xmm3
	movq	-368(%rbp), %rdx
	vaddsd	8(%rax), %xmm3, %xmm3
	movq	-440(%rbp), %rax
	movq	-312(%rbp), %rsi
	movq	-288(%rbp), %rcx
	vaddsd	8(%rax), %xmm3, %xmm3
	movq	-432(%rbp), %rax
	vaddsd	8(%rax), %xmm3, %xmm3
	movq	-360(%rbp), %rax
	vaddsd	16(%rdx), %xmm3, %xmm3
	movq	-352(%rbp), %rdx
	vaddsd	16(%rax), %xmm3, %xmm3
	vaddsd	16(%rdx), %xmm3, %xmm3
	movq	-344(%rbp), %rdx
	vaddsd	16(%rdx), %xmm3, %xmm3
	movq	-336(%rbp), %rdx
	vaddsd	16(%rdx), %xmm3, %xmm3
	movq	-328(%rbp), %rdx
	vaddsd	16(%rdx), %xmm3, %xmm3
	movq	-304(%rbp), %rdx
	vaddsd	16(%rdi), %xmm3, %xmm3
	vaddsd	16(%rsi), %xmm3, %xmm3
	vaddsd	16(%r14), %xmm3, %xmm3
	vaddsd	24(%rdx), %xmm3, %xmm3
	movq	-296(%rbp), %rdx
	vaddsd	24(%rdx), %xmm3, %xmm3
	vaddsd	24(%rcx), %xmm3, %xmm3
	movq	-280(%rbp), %rcx
	movq	-232(%rbp), %rdx
	vaddsd	24(%rcx), %xmm3, %xmm3
	movq	-272(%rbp), %rcx
	vaddsd	24(%rcx), %xmm3, %xmm3
	movq	-264(%rbp), %rcx
	vaddsd	24(%rcx), %xmm3, %xmm3
	movq	-256(%rbp), %rcx
	vaddsd	24(%rcx), %xmm3, %xmm3
	movq	-248(%rbp), %rcx
	vaddsd	24(%rcx), %xmm3, %xmm3
	movq	-240(%rbp), %rcx
	vaddsd	24(%rcx), %xmm3, %xmm3
	vaddsd	24(%rdx), %xmm3, %xmm3
	movq	-224(%rbp), %rdx
	movq	-448(%rbp), %rcx
	vaddsd	24(%rdx), %xmm3, %xmm3
	movq	-368(%rbp), %rdx
	vaddsd	32(%rdx), %xmm3, %xmm3
	movq	-352(%rbp), %rdx
	vaddsd	32(%rax), %xmm3, %xmm3
	vaddsd	32(%rdx), %xmm3, %xmm3
	movq	-344(%rbp), %rdx
	vaddsd	32(%rdx), %xmm3, %xmm3
	movq	-336(%rbp), %rdx
	vaddsd	32(%rdx), %xmm3, %xmm3
	movq	-328(%rbp), %rdx
	vaddsd	32(%rdx), %xmm3, %xmm3
	movq	-408(%rbp), %rdx
	vaddsd	32(%rdi), %xmm3, %xmm3
	vaddsd	32(%rsi), %xmm3, %xmm3
	vaddsd	40(%rdx), %xmm3, %xmm3
	vaddsd	40(%rcx), %xmm3, %xmm3
	movq	-440(%rbp), %rdi
	movq	-432(%rbp), %rsi
	movq	-368(%rbp), %rax
	vmovsd	(%r15), %xmm0
	vaddsd	16(%rdx), %xmm0, %xmm4
	movq	-352(%rbp), %rdx
	vaddsd	16(%rcx), %xmm4, %xmm4
	vaddsd	16(%rdi), %xmm4, %xmm4
	vaddsd	16(%rsi), %xmm4, %xmm4
	vaddsd	24(%rax), %xmm4, %xmm4
	movq	-360(%rbp), %rax
	vaddsd	40(%rdi), %xmm3, %xmm3
	vaddsd	40(%rsi), %xmm3, %xmm3
	vaddsd	40(%r15), %xmm3, %xmm3
	vaddsd	24(%rax), %xmm4, %xmm4
	vaddsd	24(%rdx), %xmm4, %xmm4
	movq	-344(%rbp), %rdx
	movq	-312(%rbp), %rax
	vmulsd	-104(%rbp), %xmm3, %xmm3
	vaddsd	24(%rdx), %xmm4, %xmm4
	movq	-336(%rbp), %rdx
	vaddsd	24(%rdx), %xmm4, %xmm4
	movq	-328(%rbp), %rdx
	vaddsd	24(%rdx), %xmm4, %xmm4
	movq	-320(%rbp), %rdx
	vaddsd	24(%rdx), %xmm4, %xmm4
	movq	-408(%rbp), %rdx
	vaddsd	24(%rax), %xmm4, %xmm4
	vaddsd	32(%rdx), %xmm4, %xmm4
	vaddsd	32(%rcx), %xmm4, %xmm4
	vaddsd	32(%rdi), %xmm4, %xmm4
	vaddsd	32(%rsi), %xmm4, %xmm4
	vmovsd	8(%r15), %xmm0
	vaddsd	24(%rdx), %xmm0, %xmm1
	vmovsd	16(%r15), %xmm0
	vaddsd	24(%rcx), %xmm1, %xmm1
	vmulsd	-128(%rbp), %xmm0, %xmm5
	vaddsd	24(%rdi), %xmm1, %xmm1
	vaddsd	24(%rsi), %xmm1, %xmm1
	vaddsd	24(%r15), %xmm1, %xmm1
	vmulsd	-120(%rbp), %xmm1, %xmm1
	vaddsd	32(%r15), %xmm4, %xmm4
	vmulsd	-112(%rbp), %xmm4, %xmm4
	movq	-360(%rbp), %rax
	vaddsd	%xmm5, %xmm1, %xmm0
	vaddsd	%xmm0, %xmm4, %xmm1
	vmovsd	(%rdx), %xmm0
	movq	-352(%rbp), %rdx
	vaddsd	%xmm1, %xmm3, %xmm2
	vaddsd	(%rcx), %xmm0, %xmm1
	vaddsd	(%rdi), %xmm1, %xmm1
	movq	-368(%rbp), %rdi
	vaddsd	(%rsi), %xmm1, %xmm1
	vaddsd	8(%rdi), %xmm1, %xmm1
	vaddsd	8(%rax), %xmm1, %xmm1
	vaddsd	8(%rdx), %xmm1, %xmm1
	movq	-344(%rbp), %rdx
	vaddsd	8(%rdx), %xmm1, %xmm1
	movq	-336(%rbp), %rdx
	vaddsd	8(%rdx), %xmm1, %xmm1
	movq	-328(%rbp), %rdx
	vaddsd	8(%rdx), %xmm1, %xmm1
	movq	-320(%rbp), %rdx
	vaddsd	8(%rdx), %xmm1, %xmm1
	movq	-312(%rbp), %rdx
	vaddsd	8(%rdx), %xmm1, %xmm1
	vaddsd	8(%r14), %xmm1, %xmm1
	movq	-304(%rbp), %rdx
	movq	-296(%rbp), %rcx
	movq	-224(%rbp), %rdi
	movq	-200(%rbp), %rsi
	vaddsd	16(%rdx), %xmm1, %xmm1
	vaddsd	16(%rcx), %xmm1, %xmm1
	movq	-288(%rbp), %rcx
	vaddsd	16(%rcx), %xmm1, %xmm1
	movq	-280(%rbp), %rcx
	vaddsd	16(%rcx), %xmm1, %xmm1
	movq	-272(%rbp), %rcx
	vaddsd	16(%rcx), %xmm1, %xmm1
	movq	-264(%rbp), %rcx
	vaddsd	16(%rcx), %xmm1, %xmm1
	movq	-256(%rbp), %rcx
	vaddsd	16(%rcx), %xmm1, %xmm1
	movq	-248(%rbp), %rcx
	vaddsd	16(%rcx), %xmm1, %xmm1
	movq	-240(%rbp), %rcx
	vaddsd	16(%rcx), %xmm1, %xmm1
	movq	-232(%rbp), %rcx
	vaddsd	16(%rcx), %xmm1, %xmm1
	movq	-216(%rbp), %rcx
	vaddsd	16(%rdi), %xmm1, %xmm1
	vaddsd	16(%r13), %xmm1, %xmm1
	vaddsd	24(%rcx), %xmm1, %xmm1
	movq	-208(%rbp), %rcx
	vaddsd	24(%rcx), %xmm1, %xmm1
	vaddsd	24(%rsi), %xmm1, %xmm1
	movq	-192(%rbp), %rsi
	vaddsd	24(%rsi), %xmm1, %xmm1
	movq	-184(%rbp), %rsi
	movq	-296(%rbp), %rcx
	vaddsd	24(%rsi), %xmm1, %xmm1
	movq	-176(%rbp), %rsi
	vaddsd	24(%rsi), %xmm1, %xmm1
	movq	-168(%rbp), %rsi
	vaddsd	24(%rsi), %xmm1, %xmm1
	movq	-160(%rbp), %rsi
	vaddsd	24(%rsi), %xmm1, %xmm1
	movq	-152(%rbp), %rsi
	vaddsd	24(%rsi), %xmm1, %xmm1
	movq	-144(%rbp), %rsi
	vaddsd	24(%rsi), %xmm1, %xmm1
	vaddsd	24(%r12), %xmm1, %xmm1
	vaddsd	24(%r14), %xmm1, %xmm1
	vaddsd	32(%rdx), %xmm1, %xmm1
	vaddsd	32(%rcx), %xmm1, %xmm1
	movq	-288(%rbp), %rcx
	movq	-232(%rbp), %rdx
	vaddsd	32(%rcx), %xmm1, %xmm1
	movq	-280(%rbp), %rcx
	vaddsd	32(%rcx), %xmm1, %xmm1
	movq	-272(%rbp), %rcx
	vaddsd	32(%rcx), %xmm1, %xmm1
	movq	-264(%rbp), %rcx
	vaddsd	32(%rcx), %xmm1, %xmm1
	movq	-256(%rbp), %rcx
	vaddsd	32(%rcx), %xmm1, %xmm1
	movq	-248(%rbp), %rcx
	vaddsd	32(%rcx), %xmm1, %xmm1
	movq	-240(%rbp), %rcx
	vaddsd	32(%rcx), %xmm1, %xmm1
	vaddsd	32(%rdx), %xmm1, %xmm1
	movq	-352(%rbp), %rdx
	vaddsd	32(%rdi), %xmm1, %xmm1
	movq	-368(%rbp), %rdi
	movq	-328(%rbp), %rcx
	movq	-320(%rbp), %rsi
	vaddsd	40(%rdi), %xmm1, %xmm1
	vaddsd	40(%rax), %xmm1, %xmm1
	vaddsd	40(%rdx), %xmm1, %xmm1
	movq	-344(%rbp), %rdx
	movq	-312(%rbp), %rdi
	movq	-448(%rbp), %rax
	vaddsd	40(%rdx), %xmm1, %xmm1
	movq	-336(%rbp), %rdx
	vaddsd	40(%rdx), %xmm1, %xmm1
	movq	-408(%rbp), %rdx
	vaddsd	40(%rcx), %xmm1, %xmm1
	vaddsd	40(%rsi), %xmm1, %xmm1
	vaddsd	40(%rdi), %xmm1, %xmm1
	vaddsd	48(%rdx), %xmm1, %xmm1
	vaddsd	48(%rax), %xmm1, %xmm1
	movq	-440(%rbp), %rax
	movq	-352(%rbp), %rdx
	vaddsd	48(%rax), %xmm1, %xmm1
	movq	-432(%rbp), %rax
	vaddsd	48(%rax), %xmm1, %xmm1
	movq	-368(%rbp), %rax
	vmulsd	-96(%rbp), %xmm1, %xmm1
	vmovsd	(%rax), %xmm0
	movq	-360(%rbp), %rax
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	movq	-344(%rbp), %rdx
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	(%rdx), %xmm0, %xmm0
	movq	-336(%rbp), %rdx
	vaddsd	(%rdx), %xmm0, %xmm0
	movq	-304(%rbp), %rdx
	vaddsd	(%rcx), %xmm0, %xmm0
	movq	-296(%rbp), %rcx
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r14), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	movq	-288(%rbp), %rcx
	vaddsd	8(%rcx), %xmm0, %xmm0
	movq	-280(%rbp), %rcx
	vaddsd	8(%rcx), %xmm0, %xmm0
	movq	-272(%rbp), %rcx
	vaddsd	8(%rcx), %xmm0, %xmm0
	movq	-264(%rbp), %rcx
	vaddsd	8(%rcx), %xmm0, %xmm0
	movq	-256(%rbp), %rcx
	vaddsd	8(%rcx), %xmm0, %xmm0
	movq	-248(%rbp), %rcx
	vaddsd	8(%rcx), %xmm0, %xmm0
	movq	-240(%rbp), %rcx
	vaddsd	8(%rcx), %xmm0, %xmm0
	movq	-232(%rbp), %rcx
	vaddsd	8(%rcx), %xmm0, %xmm0
	movq	-224(%rbp), %rcx
	vaddsd	8(%rcx), %xmm0, %xmm0
	movq	-216(%rbp), %rcx
	vaddsd	8(%r13), %xmm0, %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm0
	movq	-208(%rbp), %rsi
	movq	-144(%rbp), %rdi
	vaddsd	16(%rsi), %xmm0, %xmm0
	movq	-200(%rbp), %rsi
	vaddsd	16(%rsi), %xmm0, %xmm0
	movq	-192(%rbp), %rsi
	vaddsd	16(%rsi), %xmm0, %xmm0
	movq	-184(%rbp), %rsi
	vaddsd	16(%rsi), %xmm0, %xmm0
	movq	-176(%rbp), %rsi
	vaddsd	16(%rsi), %xmm0, %xmm0
	movq	-168(%rbp), %rsi
	vaddsd	16(%rsi), %xmm0, %xmm0
	movq	-160(%rbp), %rsi
	vaddsd	16(%rsi), %xmm0, %xmm0
	movq	-152(%rbp), %rsi
	vaddsd	16(%rsi), %xmm0, %xmm0
	movq	-136(%rbp), %rsi
	vaddsd	16(%rdi), %xmm0, %xmm0
	vaddsd	16(%r12), %xmm0, %xmm0
	vaddsd	24(%rbx), %xmm0, %xmm0
	vaddsd	24(%r11), %xmm0, %xmm0
	vaddsd	24(%r10), %xmm0, %xmm0
	vaddsd	24(%r9), %xmm0, %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	movq	-400(%rbp), %rsi
	vaddsd	24(%rsi), %xmm0, %xmm0
	movq	-392(%rbp), %rsi
	vaddsd	24(%r8), %xmm0, %xmm0
	vaddsd	24(%rsi), %xmm0, %xmm0
	vaddsd	24(%r13), %xmm0, %xmm0
	vaddsd	32(%rcx), %xmm0, %xmm0
	movq	-208(%rbp), %rsi
	movq	-296(%rbp), %rcx
	vaddsd	32(%rsi), %xmm0, %xmm0
	movq	-200(%rbp), %rsi
	vaddsd	32(%rsi), %xmm0, %xmm0
	movq	-192(%rbp), %rsi
	vaddsd	32(%rsi), %xmm0, %xmm0
	movq	-184(%rbp), %rsi
	vaddsd	32(%rsi), %xmm0, %xmm0
	movq	-176(%rbp), %rsi
	vaddsd	32(%rsi), %xmm0, %xmm0
	movq	-168(%rbp), %rsi
	vaddsd	32(%rsi), %xmm0, %xmm0
	movq	-160(%rbp), %rsi
	vaddsd	32(%rsi), %xmm0, %xmm0
	movq	-152(%rbp), %rsi
	vaddsd	32(%rsi), %xmm0, %xmm0
	vaddsd	32(%rdi), %xmm0, %xmm0
	vaddsd	32(%r12), %xmm0, %xmm0
	vaddsd	32(%r14), %xmm0, %xmm0
	vaddsd	40(%rdx), %xmm0, %xmm0
	vaddsd	40(%rcx), %xmm0, %xmm0
	movq	-288(%rbp), %rcx
	vaddsd	40(%rcx), %xmm0, %xmm0
	movq	-280(%rbp), %rcx
	vaddsd	40(%rcx), %xmm0, %xmm0
	movq	-272(%rbp), %rcx
	vaddsd	40(%rcx), %xmm0, %xmm0
	movq	-264(%rbp), %rcx
	vaddsd	40(%rcx), %xmm0, %xmm0
	movq	-256(%rbp), %rcx
	vaddsd	40(%rcx), %xmm0, %xmm0
	movq	-248(%rbp), %rcx
	movq	-232(%rbp), %rsi
	movq	-224(%rbp), %rdi
	vaddsd	40(%rcx), %xmm0, %xmm0
	movq	-240(%rbp), %rcx
	movq	-352(%rbp), %rdx
	vaddsd	40(%rcx), %xmm0, %xmm0
	movq	-368(%rbp), %rcx
	vaddsd	40(%rsi), %xmm0, %xmm0
	vaddsd	40(%rdi), %xmm0, %xmm0
	vaddsd	48(%rcx), %xmm0, %xmm0
	vaddsd	48(%rax), %xmm0, %xmm0
	vaddsd	48(%rdx), %xmm0, %xmm0
	movq	-344(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	-288(%rbp), %rcx
	vaddsd	48(%rdx), %xmm0, %xmm0
	movq	-336(%rbp), %rdx
	vaddsd	48(%rdx), %xmm0, %xmm0
	movq	-328(%rbp), %rdx
	vaddsd	48(%rdx), %xmm0, %xmm0
	movq	-320(%rbp), %rdx
	vaddsd	48(%rdx), %xmm0, %xmm0
	vaddsd	48(%rax), %xmm0, %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	-8(%r14), %xmm1
	vaddsd	(%rax), %xmm1, %xmm2
	vaddsd	(%rdx), %xmm2, %xmm2
	vaddsd	(%rcx), %xmm2, %xmm2
	movq	-280(%rbp), %rcx
	vaddsd	(%rcx), %xmm2, %xmm2
	movq	-272(%rbp), %rcx
	vaddsd	(%rcx), %xmm2, %xmm2
	movq	-264(%rbp), %rcx
	vaddsd	(%rcx), %xmm2, %xmm2
	movq	-256(%rbp), %rcx
	vaddsd	(%rcx), %xmm2, %xmm2
	movq	-248(%rbp), %rcx
	vaddsd	(%rcx), %xmm2, %xmm2
	movq	-240(%rbp), %rcx
	vaddsd	(%rcx), %xmm2, %xmm2
	movq	-216(%rbp), %rcx
	vaddsd	(%rsi), %xmm2, %xmm2
	movq	-208(%rbp), %rsi
	vaddsd	(%rdi), %xmm2, %xmm2
	vaddsd	0(%r13), %xmm2, %xmm2
	vaddsd	8(%rcx), %xmm2, %xmm2
	vaddsd	8(%rsi), %xmm2, %xmm2
	movq	-200(%rbp), %rsi
	vaddsd	8(%rsi), %xmm2, %xmm2
	movq	-192(%rbp), %rsi
	vaddsd	8(%rsi), %xmm2, %xmm2
	movq	-184(%rbp), %rsi
	vaddsd	8(%rsi), %xmm2, %xmm2
	movq	-176(%rbp), %rsi
	vaddsd	8(%rsi), %xmm2, %xmm2
	movq	-168(%rbp), %rsi
	vaddsd	8(%rsi), %xmm2, %xmm2
	movq	-160(%rbp), %rsi
	vaddsd	8(%rsi), %xmm2, %xmm2
	movq	-152(%rbp), %rsi
	vaddsd	8(%rsi), %xmm2, %xmm2
	movq	-144(%rbp), %rsi
	movq	-400(%rbp), %rdi
	vaddsd	8(%rsi), %xmm2, %xmm2
	movq	-136(%rbp), %rsi
	vaddsd	8(%r12), %xmm2, %xmm2
	vaddsd	16(%rbx), %xmm2, %xmm2
	vaddsd	16(%r11), %xmm2, %xmm2
	vaddsd	16(%r10), %xmm2, %xmm2
	vaddsd	16(%r9), %xmm2, %xmm2
	vaddsd	16(%rsi), %xmm2, %xmm2
	vaddsd	16(%rdi), %xmm2, %xmm2
	movq	-392(%rbp), %rdi
	vaddsd	16(%r8), %xmm2, %xmm2
	vaddsd	16(%rdi), %xmm2, %xmm2
	movq	-384(%rbp), %rdi
	vaddsd	24(%rdi), %xmm2, %xmm2
	movq	-376(%rbp), %rdi
	vaddsd	24(%rdi), %xmm2, %xmm2
	movq	-424(%rbp), %rdi
	vaddsd	24(%rdi), %xmm2, %xmm2
	movq	-416(%rbp), %rdi
	vaddsd	24(%rdi), %xmm2, %xmm2
	movq	-400(%rbp), %rdi
	vaddsd	32(%rbx), %xmm2, %xmm2
	vaddsd	32(%r11), %xmm2, %xmm2
	vaddsd	32(%r10), %xmm2, %xmm2
	vaddsd	32(%r9), %xmm2, %xmm2
	vaddsd	32(%rsi), %xmm2, %xmm2
	movq	-392(%rbp), %rsi
	vaddsd	32(%rdi), %xmm2, %xmm2
	vaddsd	32(%r8), %xmm2, %xmm2
	vaddsd	32(%rsi), %xmm2, %xmm2
	movq	-208(%rbp), %rsi
	vaddsd	32(%r13), %xmm2, %xmm2
	vaddsd	40(%rcx), %xmm2, %xmm2
	vaddsd	40(%rsi), %xmm2, %xmm2
	movq	-200(%rbp), %rsi
	movq	-144(%rbp), %rdi
	movq	-288(%rbp), %rcx
	vaddsd	40(%rsi), %xmm2, %xmm2
	movq	-192(%rbp), %rsi
	vaddsd	40(%rsi), %xmm2, %xmm2
	movq	-184(%rbp), %rsi
	vaddsd	40(%rsi), %xmm2, %xmm2
	movq	-176(%rbp), %rsi
	vaddsd	40(%rsi), %xmm2, %xmm2
	movq	-168(%rbp), %rsi
	vaddsd	40(%rsi), %xmm2, %xmm2
	movq	-160(%rbp), %rsi
	vaddsd	40(%rsi), %xmm2, %xmm2
	movq	-152(%rbp), %rsi
	vaddsd	40(%rsi), %xmm2, %xmm2
	vaddsd	40(%rdi), %xmm2, %xmm2
	vaddsd	40(%r12), %xmm2, %xmm2
	vaddsd	40(%r14), %xmm2, %xmm2
	vaddsd	48(%rax), %xmm2, %xmm2
	vaddsd	48(%rdx), %xmm2, %xmm2
	vaddsd	48(%rcx), %xmm2, %xmm2
	movq	-280(%rbp), %rcx
	vaddsd	48(%rcx), %xmm2, %xmm2
	movq	-272(%rbp), %rcx
	vaddsd	48(%rcx), %xmm2, %xmm2
	movq	-264(%rbp), %rcx
	vaddsd	48(%rcx), %xmm2, %xmm2
	movq	-256(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rax
	vaddsd	48(%rcx), %xmm2, %xmm2
	movq	-248(%rbp), %rcx
	movq	-192(%rbp), %rsi
	vmovsd	-8(%r13), %xmm1
	vaddsd	48(%rcx), %xmm2, %xmm2
	vaddsd	48(%rdx), %xmm2, %xmm2
	movq	-224(%rbp), %rdx
	movq	-200(%rbp), %rcx
	vaddsd	48(%rax), %xmm2, %xmm2
	movq	-216(%rbp), %rax
	vaddsd	48(%rdx), %xmm2, %xmm2
	movq	-208(%rbp), %rdx
	vaddsd	(%rax), %xmm1, %xmm3
	vmulsd	-80(%rbp), %xmm2, %xmm2
	vaddsd	(%rdx), %xmm3, %xmm3
	vaddsd	(%rcx), %xmm3, %xmm3
	vaddsd	(%rsi), %xmm3, %xmm3
	movq	-184(%rbp), %rsi
	vaddsd	(%rsi), %xmm3, %xmm3
	movq	-176(%rbp), %rsi
	vaddsd	%xmm2, %xmm0, %xmm0
	vaddsd	(%rsi), %xmm3, %xmm3
	movq	-168(%rbp), %rsi
	vaddsd	(%rsi), %xmm3, %xmm3
	movq	-160(%rbp), %rsi
	vaddsd	(%rsi), %xmm3, %xmm3
	movq	-152(%rbp), %rsi
	vaddsd	(%rsi), %xmm3, %xmm3
	vaddsd	(%rdi), %xmm3, %xmm3
	vaddsd	(%r12), %xmm3, %xmm3
	movq	-136(%rbp), %rsi
	movq	-400(%rbp), %rdi
	vaddsd	8(%rbx), %xmm3, %xmm3
	vaddsd	8(%r11), %xmm3, %xmm3
	vaddsd	8(%r10), %xmm3, %xmm3
	vaddsd	8(%r9), %xmm3, %xmm3
	vaddsd	8(%rsi), %xmm3, %xmm3
	vaddsd	8(%rdi), %xmm3, %xmm3
	movq	-392(%rbp), %rdi
	vaddsd	8(%r8), %xmm3, %xmm3
	vaddsd	8(%rdi), %xmm3, %xmm3
	movq	-384(%rbp), %rdi
	vaddsd	16(%rdi), %xmm3, %xmm3
	movq	-376(%rbp), %rdi
	vaddsd	16(%rdi), %xmm3, %xmm3
	movq	-424(%rbp), %rdi
	vaddsd	16(%rdi), %xmm3, %xmm3
	movq	-416(%rbp), %rdi
	vaddsd	16(%rdi), %xmm3, %xmm3
	movq	-384(%rbp), %rdi
	vaddsd	32(%rdi), %xmm3, %xmm3
	movq	-376(%rbp), %rdi
	vaddsd	32(%rdi), %xmm3, %xmm3
	movq	-424(%rbp), %rdi
	vaddsd	32(%rdi), %xmm3, %xmm3
	movq	-416(%rbp), %rdi
	vaddsd	32(%rdi), %xmm3, %xmm3
	vaddsd	40(%rbx), %xmm3, %xmm3
	vaddsd	40(%r11), %xmm3, %xmm3
	vaddsd	40(%r10), %xmm3, %xmm3
	vaddsd	40(%r9), %xmm3, %xmm3
	vaddsd	40(%rsi), %xmm3, %xmm3
	movq	-400(%rbp), %rdi
	movq	-392(%rbp), %rsi
	vaddsd	40(%rdi), %xmm3, %xmm3
	vaddsd	40(%r8), %xmm3, %xmm3
	vaddsd	40(%rsi), %xmm3, %xmm3
	movq	-192(%rbp), %rsi
	vaddsd	40(%r13), %xmm3, %xmm3
	vaddsd	48(%rax), %xmm3, %xmm3
	movq	%rdi, %rax
	vaddsd	48(%rdx), %xmm3, %xmm3
	vaddsd	48(%rcx), %xmm3, %xmm3
	vaddsd	48(%rsi), %xmm3, %xmm3
	movq	-184(%rbp), %rsi
	movq	-136(%rbp), %rdx
	vaddsd	48(%rsi), %xmm3, %xmm3
	movq	-176(%rbp), %rsi
	vaddsd	48(%rsi), %xmm3, %xmm3
	movq	-168(%rbp), %rsi
	vaddsd	48(%rsi), %xmm3, %xmm3
	movq	-160(%rbp), %rsi
	vaddsd	48(%rsi), %xmm3, %xmm3
	movq	-152(%rbp), %rsi
	vaddsd	48(%rsi), %xmm3, %xmm3
	movq	-144(%rbp), %rsi
	vaddsd	48(%rsi), %xmm3, %xmm3
	vaddsd	48(%r12), %xmm3, %xmm3
	vmulsd	-72(%rbp), %xmm3, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovsd	(%rbx), %xmm0
	vaddsd	(%r11), %xmm0, %xmm4
	vaddsd	(%r10), %xmm4, %xmm4
	vaddsd	(%r9), %xmm4, %xmm4
	vaddsd	(%rdx), %xmm4, %xmm4
	vaddsd	(%rdi), %xmm4, %xmm4
	movq	-392(%rbp), %rsi
	movq	-384(%rbp), %rdi
	vaddsd	(%r8), %xmm4, %xmm4
	movq	-384(%rbp), %rcx
	vaddsd	(%rsi), %xmm4, %xmm4
	vaddsd	8(%rdi), %xmm4, %xmm4
	movq	-376(%rbp), %rdi
	movq	-416(%rbp), %rsi
	vaddsd	8(%rdi), %xmm4, %xmm4
	movq	-424(%rbp), %rdi
	vaddsd	8(%rdi), %xmm4, %xmm4
	vaddsd	8(%rsi), %xmm4, %xmm4
	vaddsd	40(%rcx), %xmm4, %xmm4
	movq	-376(%rbp), %rcx
	vaddsd	40(%rcx), %xmm4, %xmm4
	movq	%rdi, %rcx
	vaddsd	40(%rdi), %xmm4, %xmm4
	movq	-392(%rbp), %rdi
	vaddsd	40(%rsi), %xmm4, %xmm4
	vaddsd	48(%rbx), %xmm4, %xmm4
	vaddsd	48(%r11), %xmm4, %xmm4
	vaddsd	48(%r10), %xmm4, %xmm4
	vaddsd	48(%r9), %xmm4, %xmm4
	vaddsd	48(%rdx), %xmm4, %xmm4
	vaddsd	48(%rax), %xmm4, %xmm4
	vaddsd	48(%r8), %xmm4, %xmm4
	vaddsd	48(%rdi), %xmm4, %xmm4
	movq	%rcx, %rdi
	vmulsd	-64(%rbp), %xmm4, %xmm4
	movq	-384(%rbp), %rdx
	movq	-376(%rbp), %rax
	vmovsd	(%rdx), %xmm1
	vaddsd	%xmm4, %xmm2, %xmm0
	vaddsd	(%rax), %xmm1, %xmm4
	vaddsd	(%rcx), %xmm4, %xmm4
	vaddsd	(%rsi), %xmm4, %xmm4
	vaddsd	48(%rdx), %xmm4, %xmm4
	vaddsd	48(%rax), %xmm4, %xmm4
	vaddsd	48(%rdi), %xmm4, %xmm4
	vaddsd	48(%rsi), %xmm4, %xmm4
	vmulsd	-56(%rbp), %xmm4, %xmm4
	movq	-456(%rbp), %rax
	movq	-464(%rbp), %rdx
	addq	$8, -408(%rbp)
	addq	$8, -448(%rbp)
	addq	$8, -440(%rbp)
	addq	$8, -432(%rbp)
	vaddsd	%xmm4, %xmm0, %xmm0
	addq	$8, -368(%rbp)
	addq	$8, -360(%rbp)
	addq	$8, -352(%rbp)
	vmovsd	%xmm0, (%rdx,%rax,8)
	addq	$1, %rax
	addq	$8, -344(%rbp)
	addq	$8, -336(%rbp)
	addq	$8, -328(%rbp)
	movq	%rax, -456(%rbp)
	addq	$8, -320(%rbp)
	addq	$8, -312(%rbp)
	addq	$8, -304(%rbp)
	addq	$8, -296(%rbp)
	addq	$8, -288(%rbp)
	addq	$8, -280(%rbp)
	addq	$8, -272(%rbp)
	addq	$8, -264(%rbp)
	addq	$8, -256(%rbp)
	addq	$8, -248(%rbp)
	addq	$8, -240(%rbp)
	addq	$8, -232(%rbp)
	addq	$8, -224(%rbp)
	addq	$8, -216(%rbp)
	addq	$8, -208(%rbp)
	addq	$8, -200(%rbp)
	addq	$8, -192(%rbp)
	addq	$8, -184(%rbp)
	addq	$8, -176(%rbp)
	addq	$8, %rdi
	addq	$8, %r12
	addq	$8, %rbx
	addq	$8, -168(%rbp)
	addq	$8, %r11
	addq	$8, %r10
	addq	$8, %r9
	addq	$8, -160(%rbp)
	addq	$8, %r8
	addq	$8, -152(%rbp)
	addq	$8, -144(%rbp)
	addq	$8, -136(%rbp)
	addq	$8, -400(%rbp)
	addq	$8, -392(%rbp)
	addq	$8, -384(%rbp)
	addq	$8, -376(%rbp)
	movq	%rdi, -424(%rbp)
	addq	$8, -416(%rbp)
	cmpq	%rax, -472(%rbp)
	jne	.L16
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-888(%rbp), %rbx
	addq	%rbx, -464(%rbp)
	addq	%rbx, -480(%rbp)
	movl	-484(%rbp), %ebx
	cmpl	%ebx, -488(%rbp)
	jne	.L19
	movl	-944(%rbp), %eax
	movl	-892(%rbp), %ebx
	addl	%eax, -920(%rbp)
	addl	%eax, -916(%rbp)
	addl	%eax, -912(%rbp)
	addl	%eax, -908(%rbp)
	addl	%eax, -904(%rbp)
	addl	%eax, -900(%rbp)
	addl	%eax, -896(%rbp)
	cmpl	%ebx, -940(%rbp)
	jg	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	jne	.L63
.L56:
	addq	$944, %rsp
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
.L63:
	.cfi_restore_state
	movq	-936(%rbp), %rdi
	call	dummy
	movq	-928(%rbp), %rdi
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
	jmp	.L56
.L34:
	movl	$1, %r8d
	jmp	.L5
.L62:
	movq	-936(%rbp), %rdi
	call	dummy
	movq	-928(%rbp), %rdi
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
	cmpl	$3, -940(%rbp)
	jle	.L15
	movl	%ebx, %edi
	leal	-3(%rbx), %eax
	imull	%r12d, %edi
	movl	%edi, -944(%rbp)
	cmpl	$6, %r12d
	jg	.L31
	jmp	.L15
.L36:
	movl	$1, %eax
	jmp	.L9
.L61:
	vzeroupper
	jmp	.L26
.L59:
	vzeroupper
	jmp	.L8
.L3:
	movq	%rcx, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -928(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -928(%rbp)
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
