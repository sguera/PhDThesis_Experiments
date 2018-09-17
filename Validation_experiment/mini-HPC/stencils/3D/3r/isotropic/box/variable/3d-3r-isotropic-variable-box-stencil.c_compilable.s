	.file	"3d-3r-isotropic-variable-box-stencil.c_compilable.c"
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
	subq	$928, %rsp
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
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	%r13d, %r14d
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %r12
	imull	%ebx, %r14d
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
	movq	%rdi, -904(%rbp)
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
	movq	-904(%rbp), %rdx
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
	movq	-904(%rbp), %rsi
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
	je	.L77
	testl	%r14d, %r14d
	movl	$1, %eax
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	cmpl	$4, %r15d
	ja	.L78
	movq	$0, -896(%rbp)
	xorl	%eax, %eax
.L29:
	vmovsd	.LC2(%rip), %xmm0
	movq	-896(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L33
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L33:
	leal	(%r14,%r14,4), %r14d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	addl	%r14d, %r14d
	movslq	%r14d, %rdx
	salq	$3, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L13
	movq	$0, -56(%rbp)
.L13:
	movq	-56(%rbp), %rsi
	movq	%rsi, -912(%rbp)
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
	movq	-912(%rbp), %rdx
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
	movq	-912(%rbp), %rcx
.L15:
	vmovsd	.LC4(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%r14d, %edx
	jge	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L14
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L14
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L14:
	movl	var_false(%rip), %edx
	leal	-3(%r13), %eax
	movl	%eax, -888(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$3, -888(%rbp)
	jle	.L73
	imull	$10, %ebx, %eax
	leal	-3(%rbx), %edx
	movl	%eax, %ecx
	imull	%r12d, %ecx
	movl	%ecx, -916(%rbp)
	movl	%ebx, %ecx
	imull	%r12d, %ecx
	movl	%ecx, -920(%rbp)
	cmpl	$6, %r12d
	jle	.L73
.L38:
	cmpl	$3, %edx
	jle	.L22
	imull	$3, -916(%rbp), %edx
	movl	-920(%rbp), %ecx
	movl	$0, -860(%rbp)
	movl	$3, -852(%rbp)
	movl	%ecx, -868(%rbp)
	movl	%edx, -884(%rbp)
	leal	(%rcx,%rcx,2), %edx
	movl	%edx, -880(%rbp)
	leal	(%rcx,%rcx), %edx
	movl	%edx, -876(%rbp)
	leal	0(,%rcx,4), %edx
	movl	%edx, -872(%rbp)
	leal	(%rcx,%rcx,4), %edx
	movl	%edx, -864(%rbp)
	imull	$6, %ecx, %edx
	movl	%edx, -856(%rbp)
	movslq	%eax, %rdx
	leal	(%rax,%rax,2), %eax
	salq	$3, %rdx
	movq	%rdx, -848(%rbp)
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	movq	%rax, -968(%rbp)
	salq	$3, %rax
	movq	%rax, -840(%rbp)
	leal	(%rbx,%rbx,2), %eax
	cltq
	movq	%rax, -960(%rbp)
	leal	(%rbx,%rbx), %eax
	cltq
	movq	%rax, -952(%rbp)
	leal	0(,%rbx,4), %eax
	cltq
	movq	%rax, -944(%rbp)
	leal	(%rbx,%rbx,4), %eax
	cltq
	movq	%rax, -936(%rbp)
	imull	$6, %ebx, %eax
	cltq
	movq	%rax, -928(%rbp)
	leaq	30(%rdx), %rax
	movq	%rax, -976(%rbp)
	leal	-3(%r12), %eax
	movl	%eax, -424(%rbp)
	leal	-7(%rbx), %eax
	addq	$4, %rax
	movq	%rax, -416(%rbp)
	.p2align 4,,10
	.p2align 3
.L25:
	movq	-912(%rbp), %rbx
	movq	-960(%rbp), %r11
	movslq	-880(%rbp), %r9
	movslq	-884(%rbp), %rax
	addq	-976(%rbp), %rax
	movq	-952(%rbp), %r15
	leaq	(%rbx,%rax,8), %rax
	movq	-896(%rbp), %rbx
	movslq	-876(%rbp), %r8
	movq	%rax, -440(%rbp)
	leaq	(%r9,%r11), %rax
	movslq	-872(%rbp), %rdi
	salq	$3, %rax
	movq	-944(%rbp), %r14
	movq	-968(%rbp), %r13
	addq	%rax, %rbx
	movslq	-868(%rbp), %rsi
	movslq	-864(%rbp), %rcx
	movq	%rbx, -408(%rbp)
	movq	-904(%rbp), %rbx
	movq	-936(%rbp), %r12
	addl	$1, -852(%rbp)
	addq	%rbx, %rax
	movq	%rax, -832(%rbp)
	leaq	(%r15,%r9), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -824(%rbp)
	leaq	(%r8,%r11), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -816(%rbp)
	leaq	(%rdi,%r11), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -808(%rbp)
	leaq	(%r14,%r9), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -800(%rbp)
	leaq	(%r9,%r13), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -792(%rbp)
	leaq	(%r8,%r15), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -784(%rbp)
	leaq	(%rdi,%r15), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -776(%rbp)
	leaq	(%rsi,%r11), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -768(%rbp)
	leaq	(%rcx,%r11), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -760(%rbp)
	leaq	(%r14,%r8), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -752(%rbp)
	leaq	(%r14,%rdi), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -744(%rbp)
	leaq	(%r12,%r9), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -736(%rbp)
	leaq	(%rbx,%r9,8), %rax
	movq	%rax, -728(%rbp)
	leaq	(%r8,%r13), %rax
	movslq	-860(%rbp), %rdx
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -720(%rbp)
	leaq	(%rdi,%r13), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -712(%rbp)
	leaq	(%rsi,%r15), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -704(%rbp)
	leaq	(%rcx,%r15), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -696(%rbp)
	leaq	(%rdx,%r11), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, -688(%rbp)
	movslq	-856(%rbp), %rax
	leaq	(%rax,%r11), %r10
	leaq	(%rbx,%r10,8), %r11
	leaq	(%rsi,%r14), %r10
	movq	%r11, -680(%rbp)
	leaq	(%rbx,%r10,8), %r11
	leaq	(%rcx,%r14), %r10
	movq	%r11, -672(%rbp)
	leaq	(%rbx,%r10,8), %r11
	leaq	(%r12,%r8), %r10
	movq	%r11, -664(%rbp)
	leaq	(%rbx,%r10,8), %r11
	leaq	(%r12,%rdi), %r10
	movq	%r11, -656(%rbp)
	leaq	(%rbx,%r10,8), %r11
	movq	-928(%rbp), %r10
	movq	%r11, -648(%rbp)
	addq	%r10, %r9
	leaq	(%rbx,%r9,8), %r9
	movq	%r9, -640(%rbp)
	leaq	(%rbx,%r8,8), %r9
	addq	%r10, %r8
	movq	%r9, -632(%rbp)
	leaq	(%rbx,%rdi,8), %r9
	addq	%r10, %rdi
	movq	%r9, -624(%rbp)
	leaq	(%rsi,%r13), %r9
	leaq	(%rbx,%rdi,8), %rdi
	leaq	(%rbx,%r9,8), %r9
	movq	%rdi, -544(%rbp)
	leaq	(%rbx,%rsi,8), %rdi
	movq	%r9, -616(%rbp)
	leaq	(%rcx,%r13), %r9
	leaq	(%rbx,%r9,8), %r9
	movq	%rdi, -536(%rbp)
	leaq	(%rbx,%rcx,8), %rdi
	movq	%r9, -608(%rbp)
	leaq	(%rdx,%r15), %r9
	leaq	(%rbx,%r9,8), %r9
	movq	%rdi, -528(%rbp)
	leaq	(%rdx,%r13), %rdi
	movq	%r9, -600(%rbp)
	leaq	(%rbx,%rdi,8), %rdi
	leaq	(%rax,%r15), %r9
	leaq	(%rbx,%r9,8), %r15
	movq	%rdi, -520(%rbp)
	leaq	(%rdx,%r14), %r9
	leaq	(%rax,%r13), %rdi
	movq	%r15, -592(%rbp)
	leaq	(%rbx,%r9,8), %r15
	leaq	(%rbx,%rdi,8), %rdi
	leaq	(%rax,%r14), %r9
	movq	%r15, -584(%rbp)
	movq	%rdi, -512(%rbp)
	leaq	(%rbx,%r9,8), %r15
	leaq	(%rdx,%r12), %rdi
	leaq	(%r12,%rsi), %r9
	leaq	(%rbx,%rdi,8), %rdi
	addq	%r10, %rsi
	movq	%r15, -576(%rbp)
	leaq	(%rbx,%r9,8), %r9
	movq	%rdi, -504(%rbp)
	leaq	(%rax,%r12), %rdi
	movq	%r9, -568(%rbp)
	leaq	(%r12,%rcx), %r9
	addq	%r10, %rcx
	leaq	(%rbx,%r8,8), %r15
	leaq	(%rbx,%rcx,8), %rcx
	leaq	(%rbx,%r9,8), %r14
	movq	%r15, -552(%rbp)
	leaq	(%rbx,%rdi,8), %rdi
	leaq	(%rbx,%rsi,8), %rsi
	movq	%r14, -560(%rbp)
	movq	%rdi, -496(%rbp)
	movq	%rsi, -488(%rbp)
	movq	%rcx, -480(%rbp)
	leaq	(%rbx,%rdx,8), %rcx
	addq	%r10, %rdx
	movq	%rcx, -472(%rbp)
	leaq	(%rbx,%rax,8), %rcx
	addq	%r10, %rax
	leaq	(%rbx,%rdx,8), %rdx
	leaq	(%rbx,%rax,8), %rax
	movq	%rcx, -464(%rbp)
	movq	%rdx, -456(%rbp)
	movq	%rax, -448(%rbp)
	movq	$0, -432(%rbp)
	movl	$3, -420(%rbp)
	.p2align 4,,10
	.p2align 3
.L26:
	movq	-432(%rbp), %rax
	movq	-816(%rbp), %rbx
	movq	-792(%rbp), %rdx
	addl	$1, -420(%rbp)
	addq	%rax, %rbx
	movq	-832(%rbp), %r15
	movq	-824(%rbp), %rcx
	movq	%rbx, -392(%rbp)
	movq	-808(%rbp), %rbx
	addq	%rax, %rdx
	movq	%rdx, -312(%rbp)
	movq	-728(%rbp), %r14
	addq	%rax, %rcx
	addq	%rax, %r15
	addq	%rax, %rbx
	movq	%rbx, -384(%rbp)
	movq	-800(%rbp), %rbx
	addq	%rax, %r14
	addq	%rax, %rbx
	movq	%rbx, -376(%rbp)
	movq	-784(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -304(%rbp)
	movq	-776(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -296(%rbp)
	movq	-768(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -288(%rbp)
	movq	-760(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -280(%rbp)
	movq	-752(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -272(%rbp)
	movq	-744(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -264(%rbp)
	movq	-736(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -256(%rbp)
	movq	-720(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -248(%rbp)
	movq	-712(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -240(%rbp)
	movq	-704(%rbp), %rbx
	movq	-632(%rbp), %r13
	addq	%rax, %rbx
	movq	%rbx, -232(%rbp)
	movq	-696(%rbp), %rbx
	addq	%rax, %r13
	addq	%rax, %rbx
	movq	%rbx, -224(%rbp)
	movq	-688(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -216(%rbp)
	movq	-680(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -208(%rbp)
	movq	-672(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -200(%rbp)
	movq	-664(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -192(%rbp)
	movq	-656(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -184(%rbp)
	movq	-648(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -176(%rbp)
	movq	-640(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -168(%rbp)
	movq	-624(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -160(%rbp)
	movq	-616(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -152(%rbp)
	movq	-608(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -144(%rbp)
	movq	-600(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -136(%rbp)
	movq	-592(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -128(%rbp)
	movq	-584(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -120(%rbp)
	movq	-576(%rbp), %rbx
	addq	%rax, %rbx
	movq	%rbx, -112(%rbp)
	movq	-568(%rbp), %rbx
	movq	-496(%rbp), %rsi
	movq	-456(%rbp), %rdx
	movq	$3, -400(%rbp)
	addq	%rax, %rbx
	movq	-480(%rbp), %r8
	movq	-472(%rbp), %rdi
	movq	%rcx, -352(%rbp)
	movq	%rbx, -104(%rbp)
	addq	%rax, %rsi
	movq	-560(%rbp), %rbx
	addq	%rax, %rdx
	movq	%rsi, -72(%rbp)
	movq	-488(%rbp), %rsi
	addq	%rax, %r8
	addq	%rax, %rdi
	addq	%rax, %rbx
	movq	%rdx, -368(%rbp)
	movq	-448(%rbp), %rdx
	movq	%rbx, -96(%rbp)
	movq	-552(%rbp), %rbx
	addq	%rax, %rsi
	movq	%rsi, -344(%rbp)
	movq	-464(%rbp), %rsi
	addq	%rax, %rdx
	addq	%rax, %rbx
	movq	-536(%rbp), %r12
	movq	-520(%rbp), %r11
	movq	%rdx, -360(%rbp)
	movq	%rbx, -88(%rbp)
	movq	-544(%rbp), %rbx
	addq	%rax, %rsi
	movq	%rsi, -320(%rbp)
	addq	%rax, %r12
	addq	%rax, %r11
	movq	-512(%rbp), %r10
	addq	%rax, %rbx
	movq	-504(%rbp), %r9
	movq	%rdi, -328(%rbp)
	movq	%rbx, -80(%rbp)
	movq	-528(%rbp), %rbx
	addq	%rax, %r10
	movq	%r8, -336(%rbp)
	addq	%rax, %r9
	addq	%rax, %rbx
	movq	-440(%rbp), %rax
	.p2align 4,,10
	.p2align 3
.L23:
	movq	-352(%rbp), %rcx
	vmovsd	(%r15), %xmm0
	addq	$80, %rax
	addq	$8, %r15
	movq	-392(%rbp), %rdx
	addq	$8, %r14
	addq	$8, %r13
	movq	-264(%rbp), %r8
	vaddsd	8(%rcx), %xmm0, %xmm3
	movq	-312(%rbp), %rcx
	vaddsd	8(%rdx), %xmm3, %xmm3
	movq	-384(%rbp), %rdx
	movq	-256(%rbp), %rdi
	movq	-232(%rbp), %rsi
	vaddsd	8(%rdx), %xmm3, %xmm3
	movq	-376(%rbp), %rdx
	vaddsd	8(%rdx), %xmm3, %xmm3
	movq	-304(%rbp), %rdx
	vaddsd	16(%rcx), %xmm3, %xmm3
	movq	-296(%rbp), %rcx
	vaddsd	16(%rdx), %xmm3, %xmm3
	vaddsd	16(%rcx), %xmm3, %xmm3
	movq	-288(%rbp), %rcx
	vaddsd	16(%rcx), %xmm3, %xmm3
	movq	-280(%rbp), %rcx
	vaddsd	16(%rcx), %xmm3, %xmm3
	movq	-272(%rbp), %rcx
	vaddsd	16(%rcx), %xmm3, %xmm3
	movq	-248(%rbp), %rcx
	vaddsd	16(%r8), %xmm3, %xmm3
	vaddsd	16(%rdi), %xmm3, %xmm3
	vaddsd	16(%r14), %xmm3, %xmm3
	vaddsd	24(%rcx), %xmm3, %xmm3
	movq	-240(%rbp), %rcx
	vaddsd	24(%rcx), %xmm3, %xmm3
	vaddsd	24(%rsi), %xmm3, %xmm3
	movq	-224(%rbp), %rsi
	movq	-176(%rbp), %rcx
	vaddsd	24(%rsi), %xmm3, %xmm3
	movq	-216(%rbp), %rsi
	vaddsd	24(%rsi), %xmm3, %xmm3
	movq	-208(%rbp), %rsi
	vaddsd	24(%rsi), %xmm3, %xmm3
	movq	-200(%rbp), %rsi
	vaddsd	24(%rsi), %xmm3, %xmm3
	movq	-192(%rbp), %rsi
	vaddsd	24(%rsi), %xmm3, %xmm3
	movq	-184(%rbp), %rsi
	vaddsd	24(%rsi), %xmm3, %xmm3
	vaddsd	24(%rcx), %xmm3, %xmm3
	movq	-168(%rbp), %rcx
	movq	-392(%rbp), %rsi
	vaddsd	24(%rcx), %xmm3, %xmm3
	movq	-312(%rbp), %rcx
	vaddsd	32(%rcx), %xmm3, %xmm3
	movq	-296(%rbp), %rcx
	vaddsd	32(%rdx), %xmm3, %xmm3
	vaddsd	32(%rcx), %xmm3, %xmm3
	movq	-288(%rbp), %rcx
	vaddsd	32(%rcx), %xmm3, %xmm3
	movq	-280(%rbp), %rcx
	vaddsd	32(%rcx), %xmm3, %xmm3
	movq	-272(%rbp), %rcx
	vaddsd	32(%rcx), %xmm3, %xmm3
	movq	-352(%rbp), %rcx
	vaddsd	32(%r8), %xmm3, %xmm3
	vaddsd	32(%rdi), %xmm3, %xmm3
	vaddsd	40(%rcx), %xmm3, %xmm3
	vaddsd	40(%rsi), %xmm3, %xmm3
	movq	-384(%rbp), %r8
	movq	-376(%rbp), %rdi
	vmovsd	(%r15), %xmm0
	vaddsd	16(%rcx), %xmm0, %xmm4
	movq	-312(%rbp), %rcx
	vaddsd	16(%rsi), %xmm4, %xmm4
	movq	-304(%rbp), %rdx
	vaddsd	16(%r8), %xmm4, %xmm4
	vaddsd	16(%rdi), %xmm4, %xmm4
	vaddsd	24(%rcx), %xmm4, %xmm4
	movq	-296(%rbp), %rcx
	vaddsd	24(%rdx), %xmm4, %xmm4
	movq	-256(%rbp), %rdx
	vaddsd	40(%r8), %xmm3, %xmm3
	vaddsd	24(%rcx), %xmm4, %xmm4
	movq	-288(%rbp), %rcx
	vaddsd	40(%rdi), %xmm3, %xmm3
	vaddsd	40(%r15), %xmm3, %xmm3
	vaddsd	24(%rcx), %xmm4, %xmm4
	movq	-280(%rbp), %rcx
	vmulsd	-56(%rax), %xmm3, %xmm3
	vaddsd	24(%rcx), %xmm4, %xmm4
	movq	-272(%rbp), %rcx
	vaddsd	24(%rcx), %xmm4, %xmm4
	movq	-264(%rbp), %rcx
	vaddsd	24(%rcx), %xmm4, %xmm4
	movq	-352(%rbp), %rcx
	vaddsd	24(%rdx), %xmm4, %xmm4
	vaddsd	32(%rcx), %xmm4, %xmm4
	vaddsd	32(%rsi), %xmm4, %xmm4
	vaddsd	32(%r8), %xmm4, %xmm4
	vaddsd	32(%rdi), %xmm4, %xmm4
	vmovsd	8(%r15), %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm1
	vmovsd	-80(%rax), %xmm0
	vaddsd	24(%rsi), %xmm1, %xmm1
	vmulsd	16(%r15), %xmm0, %xmm5
	vaddsd	24(%r8), %xmm1, %xmm1
	vaddsd	24(%rdi), %xmm1, %xmm1
	vaddsd	24(%r15), %xmm1, %xmm1
	vmulsd	-72(%rax), %xmm1, %xmm1
	vaddsd	32(%r15), %xmm4, %xmm4
	vmulsd	-64(%rax), %xmm4, %xmm4
	movq	-304(%rbp), %rdx
	vaddsd	%xmm5, %xmm1, %xmm0
	vaddsd	%xmm0, %xmm4, %xmm1
	vmovsd	(%rcx), %xmm0
	movq	-312(%rbp), %rcx
	vaddsd	%xmm1, %xmm3, %xmm2
	vaddsd	(%rsi), %xmm0, %xmm1
	vaddsd	(%r8), %xmm1, %xmm1
	vaddsd	(%rdi), %xmm1, %xmm1
	vaddsd	8(%rcx), %xmm1, %xmm1
	movq	-296(%rbp), %rcx
	vaddsd	8(%rdx), %xmm1, %xmm1
	vaddsd	8(%rcx), %xmm1, %xmm1
	movq	-288(%rbp), %rcx
	vaddsd	8(%rcx), %xmm1, %xmm1
	movq	-280(%rbp), %rcx
	vaddsd	8(%rcx), %xmm1, %xmm1
	movq	-272(%rbp), %rcx
	vaddsd	8(%rcx), %xmm1, %xmm1
	movq	-264(%rbp), %rcx
	vaddsd	8(%rcx), %xmm1, %xmm1
	movq	-256(%rbp), %rcx
	vaddsd	8(%rcx), %xmm1, %xmm1
	vaddsd	8(%r14), %xmm1, %xmm1
	movq	-248(%rbp), %rcx
	movq	-240(%rbp), %rsi
	movq	-168(%rbp), %r8
	movq	-144(%rbp), %rdi
	vaddsd	16(%rcx), %xmm1, %xmm1
	vaddsd	16(%rsi), %xmm1, %xmm1
	movq	-232(%rbp), %rsi
	vaddsd	16(%rsi), %xmm1, %xmm1
	movq	-224(%rbp), %rsi
	vaddsd	16(%rsi), %xmm1, %xmm1
	movq	-216(%rbp), %rsi
	vaddsd	16(%rsi), %xmm1, %xmm1
	movq	-208(%rbp), %rsi
	vaddsd	16(%rsi), %xmm1, %xmm1
	movq	-200(%rbp), %rsi
	vaddsd	16(%rsi), %xmm1, %xmm1
	movq	-192(%rbp), %rsi
	vaddsd	16(%rsi), %xmm1, %xmm1
	movq	-184(%rbp), %rsi
	vaddsd	16(%rsi), %xmm1, %xmm1
	movq	-176(%rbp), %rsi
	vaddsd	16(%rsi), %xmm1, %xmm1
	movq	-160(%rbp), %rsi
	vaddsd	16(%r8), %xmm1, %xmm1
	vaddsd	16(%r13), %xmm1, %xmm1
	vaddsd	24(%rsi), %xmm1, %xmm1
	movq	-152(%rbp), %rsi
	vaddsd	24(%rsi), %xmm1, %xmm1
	vaddsd	24(%rdi), %xmm1, %xmm1
	movq	-136(%rbp), %rdi
	vaddsd	24(%rdi), %xmm1, %xmm1
	movq	-128(%rbp), %rdi
	movq	-240(%rbp), %rsi
	vaddsd	24(%rdi), %xmm1, %xmm1
	movq	-120(%rbp), %rdi
	vaddsd	24(%rdi), %xmm1, %xmm1
	movq	-112(%rbp), %rdi
	vaddsd	24(%rdi), %xmm1, %xmm1
	movq	-104(%rbp), %rdi
	vaddsd	24(%rdi), %xmm1, %xmm1
	movq	-96(%rbp), %rdi
	vaddsd	24(%rdi), %xmm1, %xmm1
	movq	-88(%rbp), %rdi
	vaddsd	24(%rdi), %xmm1, %xmm1
	movq	-80(%rbp), %rdi
	vaddsd	24(%rdi), %xmm1, %xmm1
	vaddsd	24(%r14), %xmm1, %xmm1
	vaddsd	32(%rcx), %xmm1, %xmm1
	vaddsd	32(%rsi), %xmm1, %xmm1
	movq	-232(%rbp), %rsi
	vaddsd	32(%rsi), %xmm1, %xmm1
	movq	-224(%rbp), %rsi
	vaddsd	32(%rsi), %xmm1, %xmm1
	movq	-216(%rbp), %rsi
	vaddsd	32(%rsi), %xmm1, %xmm1
	movq	-208(%rbp), %rsi
	vaddsd	32(%rsi), %xmm1, %xmm1
	movq	-200(%rbp), %rsi
	vaddsd	32(%rsi), %xmm1, %xmm1
	movq	-192(%rbp), %rsi
	vaddsd	32(%rsi), %xmm1, %xmm1
	movq	-184(%rbp), %rsi
	vaddsd	32(%rsi), %xmm1, %xmm1
	movq	-176(%rbp), %rcx
	movq	-272(%rbp), %rsi
	movq	-264(%rbp), %rdi
	vaddsd	32(%rcx), %xmm1, %xmm1
	movq	-312(%rbp), %rcx
	vaddsd	32(%r8), %xmm1, %xmm1
	movq	-256(%rbp), %r8
	vaddsd	40(%rcx), %xmm1, %xmm1
	movq	-296(%rbp), %rcx
	vaddsd	40(%rdx), %xmm1, %xmm1
	movq	-352(%rbp), %rdx
	vaddsd	40(%rcx), %xmm1, %xmm1
	movq	-288(%rbp), %rcx
	vaddsd	40(%rcx), %xmm1, %xmm1
	movq	-280(%rbp), %rcx
	vaddsd	40(%rcx), %xmm1, %xmm1
	vaddsd	40(%rsi), %xmm1, %xmm1
	vaddsd	40(%rdi), %xmm1, %xmm1
	vaddsd	40(%r8), %xmm1, %xmm1
	vaddsd	48(%rdx), %xmm1, %xmm1
	movq	-392(%rbp), %rdx
	movq	-312(%rbp), %rcx
	vaddsd	48(%rdx), %xmm1, %xmm1
	movq	-384(%rbp), %rdx
	vmovsd	(%rcx), %xmm0
	movq	-296(%rbp), %rcx
	vaddsd	48(%rdx), %xmm1, %xmm1
	movq	-376(%rbp), %rdx
	vaddsd	48(%rdx), %xmm1, %xmm1
	movq	-304(%rbp), %rdx
	vmulsd	-48(%rax), %xmm1, %xmm1
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	movq	-288(%rbp), %rcx
	vaddsd	(%rcx), %xmm0, %xmm0
	movq	-280(%rbp), %rcx
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	(%rcx), %xmm0, %xmm0
	movq	-248(%rbp), %rcx
	vaddsd	(%rsi), %xmm0, %xmm0
	movq	-240(%rbp), %rsi
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%r14), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rsi), %xmm0, %xmm0
	movq	-232(%rbp), %rsi
	vaddsd	8(%rsi), %xmm0, %xmm0
	movq	-224(%rbp), %rsi
	vaddsd	8(%rsi), %xmm0, %xmm0
	movq	-216(%rbp), %rsi
	vaddsd	8(%rsi), %xmm0, %xmm0
	movq	-208(%rbp), %rsi
	vaddsd	8(%rsi), %xmm0, %xmm0
	movq	-200(%rbp), %rsi
	vaddsd	8(%rsi), %xmm0, %xmm0
	movq	-192(%rbp), %rsi
	vaddsd	8(%rsi), %xmm0, %xmm0
	movq	-184(%rbp), %rsi
	vaddsd	8(%rsi), %xmm0, %xmm0
	movq	-176(%rbp), %rsi
	vaddsd	8(%rsi), %xmm0, %xmm0
	movq	-168(%rbp), %rsi
	vaddsd	8(%rsi), %xmm0, %xmm0
	vaddsd	8(%r13), %xmm0, %xmm0
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rdi
	movq	-80(%rbp), %r8
	vaddsd	16(%rsi), %xmm0, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	movq	-144(%rbp), %rdi
	vaddsd	16(%rdi), %xmm0, %xmm0
	movq	-136(%rbp), %rdi
	vaddsd	16(%rdi), %xmm0, %xmm0
	movq	-128(%rbp), %rdi
	vaddsd	16(%rdi), %xmm0, %xmm0
	movq	-120(%rbp), %rdi
	vaddsd	16(%rdi), %xmm0, %xmm0
	movq	-112(%rbp), %rdi
	vaddsd	16(%rdi), %xmm0, %xmm0
	movq	-104(%rbp), %rdi
	vaddsd	16(%rdi), %xmm0, %xmm0
	movq	-96(%rbp), %rdi
	vaddsd	16(%rdi), %xmm0, %xmm0
	movq	-88(%rbp), %rdi
	vaddsd	16(%rdi), %xmm0, %xmm0
	movq	-72(%rbp), %rdi
	vaddsd	16(%r8), %xmm0, %xmm0
	vaddsd	24(%r12), %xmm0, %xmm0
	vaddsd	24(%rbx), %xmm0, %xmm0
	vaddsd	24(%r11), %xmm0, %xmm0
	vaddsd	24(%r10), %xmm0, %xmm0
	vaddsd	24(%r9), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	movq	-344(%rbp), %rdi
	vaddsd	24(%rdi), %xmm0, %xmm0
	movq	-336(%rbp), %rdi
	vaddsd	24(%rdi), %xmm0, %xmm0
	movq	-152(%rbp), %rdi
	vaddsd	24(%r13), %xmm0, %xmm0
	vaddsd	32(%rsi), %xmm0, %xmm0
	vaddsd	32(%rdi), %xmm0, %xmm0
	movq	-144(%rbp), %rdi
	movq	-240(%rbp), %rsi
	vaddsd	32(%rdi), %xmm0, %xmm0
	movq	-136(%rbp), %rdi
	vaddsd	32(%rdi), %xmm0, %xmm0
	movq	-128(%rbp), %rdi
	vaddsd	32(%rdi), %xmm0, %xmm0
	movq	-120(%rbp), %rdi
	vaddsd	32(%rdi), %xmm0, %xmm0
	movq	-112(%rbp), %rdi
	vaddsd	32(%rdi), %xmm0, %xmm0
	movq	-104(%rbp), %rdi
	vaddsd	32(%rdi), %xmm0, %xmm0
	movq	-96(%rbp), %rdi
	vaddsd	32(%rdi), %xmm0, %xmm0
	movq	-88(%rbp), %rdi
	vaddsd	32(%rdi), %xmm0, %xmm0
	vaddsd	32(%r8), %xmm0, %xmm0
	vaddsd	32(%r14), %xmm0, %xmm0
	vaddsd	40(%rcx), %xmm0, %xmm0
	vaddsd	40(%rsi), %xmm0, %xmm0
	movq	-232(%rbp), %rsi
	vaddsd	40(%rsi), %xmm0, %xmm0
	movq	-224(%rbp), %rsi
	vaddsd	40(%rsi), %xmm0, %xmm0
	movq	-216(%rbp), %rsi
	vaddsd	40(%rsi), %xmm0, %xmm0
	movq	-208(%rbp), %rsi
	movq	-176(%rbp), %rdi
	movq	-168(%rbp), %r8
	vaddsd	40(%rsi), %xmm0, %xmm0
	movq	-200(%rbp), %rsi
	movq	-312(%rbp), %rcx
	vaddsd	40(%rsi), %xmm0, %xmm0
	movq	-192(%rbp), %rsi
	vaddsd	40(%rsi), %xmm0, %xmm0
	movq	-184(%rbp), %rsi
	vaddsd	40(%rsi), %xmm0, %xmm0
	vaddsd	40(%rdi), %xmm0, %xmm0
	vaddsd	40(%r8), %xmm0, %xmm0
	vaddsd	48(%rcx), %xmm0, %xmm0
	movq	-296(%rbp), %rcx
	vaddsd	48(%rdx), %xmm0, %xmm0
	movq	-256(%rbp), %rdx
	vaddsd	48(%rcx), %xmm0, %xmm0
	movq	-288(%rbp), %rcx
	vaddsd	48(%rcx), %xmm0, %xmm0
	movq	-280(%rbp), %rcx
	vaddsd	48(%rcx), %xmm0, %xmm0
	movq	-272(%rbp), %rcx
	vaddsd	48(%rcx), %xmm0, %xmm0
	movq	-264(%rbp), %rcx
	vaddsd	48(%rcx), %xmm0, %xmm0
	vaddsd	48(%rdx), %xmm0, %xmm0
	vmulsd	-40(%rax), %xmm0, %xmm0
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rcx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	-8(%r14), %xmm1
	vaddsd	(%rdx), %xmm1, %xmm2
	vaddsd	(%rcx), %xmm2, %xmm2
	movq	-232(%rbp), %rsi
	vaddsd	(%rsi), %xmm2, %xmm2
	movq	-224(%rbp), %rsi
	vaddsd	(%rsi), %xmm2, %xmm2
	movq	-216(%rbp), %rsi
	vaddsd	(%rsi), %xmm2, %xmm2
	movq	-208(%rbp), %rsi
	vaddsd	(%rsi), %xmm2, %xmm2
	movq	-200(%rbp), %rsi
	vaddsd	(%rsi), %xmm2, %xmm2
	movq	-192(%rbp), %rsi
	vaddsd	(%rsi), %xmm2, %xmm2
	movq	-184(%rbp), %rsi
	vaddsd	(%rsi), %xmm2, %xmm2
	movq	-160(%rbp), %rsi
	vaddsd	(%rdi), %xmm2, %xmm2
	movq	-152(%rbp), %rdi
	vaddsd	(%r8), %xmm2, %xmm2
	vaddsd	0(%r13), %xmm2, %xmm2
	vaddsd	8(%rsi), %xmm2, %xmm2
	vaddsd	8(%rdi), %xmm2, %xmm2
	movq	-144(%rbp), %rdi
	vaddsd	8(%rdi), %xmm2, %xmm2
	movq	-136(%rbp), %rdi
	vaddsd	8(%rdi), %xmm2, %xmm2
	movq	-128(%rbp), %rdi
	vaddsd	8(%rdi), %xmm2, %xmm2
	movq	-120(%rbp), %rdi
	vaddsd	8(%rdi), %xmm2, %xmm2
	movq	-112(%rbp), %rdi
	vaddsd	8(%rdi), %xmm2, %xmm2
	movq	-104(%rbp), %rdi
	movq	-344(%rbp), %r8
	vaddsd	8(%rdi), %xmm2, %xmm2
	movq	-96(%rbp), %rdi
	vaddsd	8(%rdi), %xmm2, %xmm2
	movq	-88(%rbp), %rdi
	vaddsd	8(%rdi), %xmm2, %xmm2
	movq	-80(%rbp), %rdi
	vaddsd	8(%rdi), %xmm2, %xmm2
	movq	-72(%rbp), %rdi
	vaddsd	16(%r12), %xmm2, %xmm2
	vaddsd	16(%rbx), %xmm2, %xmm2
	vaddsd	16(%r11), %xmm2, %xmm2
	vaddsd	16(%r10), %xmm2, %xmm2
	vaddsd	16(%r9), %xmm2, %xmm2
	vaddsd	16(%rdi), %xmm2, %xmm2
	vaddsd	16(%r8), %xmm2, %xmm2
	movq	-336(%rbp), %r8
	vaddsd	16(%r8), %xmm2, %xmm2
	movq	-328(%rbp), %r8
	vaddsd	24(%r8), %xmm2, %xmm2
	movq	-320(%rbp), %r8
	vaddsd	24(%r8), %xmm2, %xmm2
	movq	-368(%rbp), %r8
	vaddsd	24(%r8), %xmm2, %xmm2
	movq	-360(%rbp), %r8
	vaddsd	24(%r8), %xmm2, %xmm2
	vaddsd	32(%r12), %xmm2, %xmm2
	vaddsd	32(%rbx), %xmm2, %xmm2
	vaddsd	32(%r11), %xmm2, %xmm2
	vaddsd	32(%r10), %xmm2, %xmm2
	vaddsd	32(%r9), %xmm2, %xmm2
	vaddsd	32(%rdi), %xmm2, %xmm2
	movq	-344(%rbp), %r8
	movq	-336(%rbp), %rdi
	vaddsd	32(%r8), %xmm2, %xmm2
	movq	-80(%rbp), %r8
	vaddsd	32(%rdi), %xmm2, %xmm2
	movq	-152(%rbp), %rdi
	vaddsd	32(%r13), %xmm2, %xmm2
	vaddsd	40(%rsi), %xmm2, %xmm2
	vaddsd	40(%rdi), %xmm2, %xmm2
	movq	-144(%rbp), %rdi
	movq	-232(%rbp), %rsi
	vaddsd	40(%rdi), %xmm2, %xmm2
	movq	-136(%rbp), %rdi
	vaddsd	40(%rdi), %xmm2, %xmm2
	movq	-128(%rbp), %rdi
	vaddsd	40(%rdi), %xmm2, %xmm2
	movq	-120(%rbp), %rdi
	vaddsd	40(%rdi), %xmm2, %xmm2
	movq	-112(%rbp), %rdi
	vaddsd	40(%rdi), %xmm2, %xmm2
	movq	-104(%rbp), %rdi
	vaddsd	40(%rdi), %xmm2, %xmm2
	movq	-96(%rbp), %rdi
	vaddsd	40(%rdi), %xmm2, %xmm2
	movq	-88(%rbp), %rdi
	vaddsd	40(%rdi), %xmm2, %xmm2
	vaddsd	40(%r8), %xmm2, %xmm2
	vaddsd	40(%r14), %xmm2, %xmm2
	vaddsd	48(%rdx), %xmm2, %xmm2
	vaddsd	48(%rcx), %xmm2, %xmm2
	vaddsd	48(%rsi), %xmm2, %xmm2
	movq	-224(%rbp), %rsi
	movq	-184(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movq	-136(%rbp), %rdi
	vaddsd	48(%rsi), %xmm2, %xmm2
	movq	-216(%rbp), %rsi
	vmovsd	-8(%r13), %xmm1
	vaddsd	48(%rsi), %xmm2, %xmm2
	movq	-208(%rbp), %rsi
	vaddsd	48(%rsi), %xmm2, %xmm2
	movq	-200(%rbp), %rsi
	vaddsd	48(%rsi), %xmm2, %xmm2
	movq	-192(%rbp), %rsi
	vaddsd	48(%rsi), %xmm2, %xmm2
	vaddsd	48(%rcx), %xmm2, %xmm2
	movq	-168(%rbp), %rcx
	movq	-144(%rbp), %rsi
	vaddsd	48(%rdx), %xmm2, %xmm2
	movq	-160(%rbp), %rdx
	vaddsd	48(%rcx), %xmm2, %xmm2
	movq	-152(%rbp), %rcx
	vaddsd	(%rdx), %xmm1, %xmm3
	vmulsd	-32(%rax), %xmm2, %xmm2
	vaddsd	(%rcx), %xmm3, %xmm3
	vaddsd	(%rsi), %xmm3, %xmm3
	vaddsd	(%rdi), %xmm3, %xmm3
	movq	-128(%rbp), %rdi
	vaddsd	(%rdi), %xmm3, %xmm3
	movq	-120(%rbp), %rdi
	vaddsd	%xmm2, %xmm0, %xmm0
	vaddsd	(%rdi), %xmm3, %xmm3
	movq	-112(%rbp), %rdi
	vaddsd	(%rdi), %xmm3, %xmm3
	movq	-104(%rbp), %rdi
	vaddsd	(%rdi), %xmm3, %xmm3
	movq	-96(%rbp), %rdi
	vaddsd	(%rdi), %xmm3, %xmm3
	movq	-88(%rbp), %rdi
	vaddsd	(%rdi), %xmm3, %xmm3
	movq	-72(%rbp), %rdi
	vaddsd	(%r8), %xmm3, %xmm3
	movq	-344(%rbp), %r8
	vaddsd	8(%r12), %xmm3, %xmm3
	vaddsd	8(%rbx), %xmm3, %xmm3
	vaddsd	8(%r11), %xmm3, %xmm3
	vaddsd	8(%r10), %xmm3, %xmm3
	vaddsd	8(%r9), %xmm3, %xmm3
	vaddsd	8(%rdi), %xmm3, %xmm3
	vaddsd	8(%r8), %xmm3, %xmm3
	movq	-336(%rbp), %r8
	vaddsd	8(%r8), %xmm3, %xmm3
	movq	-328(%rbp), %r8
	vaddsd	16(%r8), %xmm3, %xmm3
	movq	-320(%rbp), %r8
	vaddsd	16(%r8), %xmm3, %xmm3
	movq	-368(%rbp), %r8
	vaddsd	16(%r8), %xmm3, %xmm3
	movq	-360(%rbp), %r8
	vaddsd	16(%r8), %xmm3, %xmm3
	movq	-328(%rbp), %r8
	vaddsd	32(%r8), %xmm3, %xmm3
	movq	-320(%rbp), %r8
	vaddsd	32(%r8), %xmm3, %xmm3
	movq	-368(%rbp), %r8
	vaddsd	32(%r8), %xmm3, %xmm3
	movq	-360(%rbp), %r8
	vaddsd	32(%r8), %xmm3, %xmm3
	movq	-344(%rbp), %r8
	vaddsd	40(%r12), %xmm3, %xmm3
	vaddsd	40(%rbx), %xmm3, %xmm3
	vaddsd	40(%r11), %xmm3, %xmm3
	vaddsd	40(%r10), %xmm3, %xmm3
	vaddsd	40(%r9), %xmm3, %xmm3
	vaddsd	40(%rdi), %xmm3, %xmm3
	movq	-336(%rbp), %rdi
	vaddsd	40(%r8), %xmm3, %xmm3
	vaddsd	40(%rdi), %xmm3, %xmm3
	movq	-136(%rbp), %rdi
	vaddsd	40(%r13), %xmm3, %xmm3
	vaddsd	48(%rdx), %xmm3, %xmm3
	vaddsd	48(%rcx), %xmm3, %xmm3
	vaddsd	48(%rsi), %xmm3, %xmm3
	movq	%r8, %rsi
	vaddsd	48(%rdi), %xmm3, %xmm3
	movq	-128(%rbp), %rdi
	movq	-80(%rbp), %rcx
	vaddsd	48(%rdi), %xmm3, %xmm3
	movq	-120(%rbp), %rdi
	vaddsd	48(%rdi), %xmm3, %xmm3
	movq	-112(%rbp), %rdi
	vaddsd	48(%rdi), %xmm3, %xmm3
	movq	-104(%rbp), %rdi
	vaddsd	48(%rdi), %xmm3, %xmm3
	movq	-96(%rbp), %rdi
	vaddsd	48(%rdi), %xmm3, %xmm3
	movq	-88(%rbp), %rdi
	vaddsd	48(%rdi), %xmm3, %xmm3
	vaddsd	48(%rcx), %xmm3, %xmm3
	vmulsd	-24(%rax), %xmm3, %xmm3
	movq	-72(%rbp), %rdx
	movq	-336(%rbp), %rcx
	movq	-360(%rbp), %rdi
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovsd	(%r12), %xmm0
	vaddsd	(%rbx), %xmm0, %xmm4
	vaddsd	(%r11), %xmm4, %xmm4
	vaddsd	(%r10), %xmm4, %xmm4
	vaddsd	(%r9), %xmm4, %xmm4
	vaddsd	(%rdx), %xmm4, %xmm4
	vaddsd	(%r8), %xmm4, %xmm4
	movq	-328(%rbp), %r8
	vaddsd	(%rcx), %xmm4, %xmm4
	movq	-328(%rbp), %rcx
	vaddsd	8(%r8), %xmm4, %xmm4
	movq	-320(%rbp), %r8
	vaddsd	8(%r8), %xmm4, %xmm4
	movq	-368(%rbp), %r8
	vaddsd	8(%r8), %xmm4, %xmm4
	vaddsd	8(%rdi), %xmm4, %xmm4
	vaddsd	40(%rcx), %xmm4, %xmm4
	movq	-320(%rbp), %rcx
	vaddsd	40(%rcx), %xmm4, %xmm4
	movq	%r8, %rcx
	vaddsd	40(%r8), %xmm4, %xmm4
	vaddsd	40(%rdi), %xmm4, %xmm4
	vaddsd	48(%r12), %xmm4, %xmm4
	vaddsd	48(%rbx), %xmm4, %xmm4
	vaddsd	48(%r11), %xmm4, %xmm4
	vaddsd	48(%r10), %xmm4, %xmm4
	vaddsd	48(%r9), %xmm4, %xmm4
	vaddsd	48(%rdx), %xmm4, %xmm4
	vaddsd	48(%rsi), %xmm4, %xmm4
	movq	-336(%rbp), %r8
	movq	-328(%rbp), %rdx
	movq	-320(%rbp), %rsi
	addq	$8, -352(%rbp)
	vaddsd	48(%r8), %xmm4, %xmm4
	vmulsd	-16(%rax), %xmm4, %xmm4
	movq	%rcx, %r8
	vmovsd	(%rdx), %xmm1
	addq	$8, -392(%rbp)
	addq	$8, -384(%rbp)
	addq	$8, -376(%rbp)
	addq	$8, -312(%rbp)
	vaddsd	%xmm4, %xmm2, %xmm0
	vaddsd	(%rsi), %xmm1, %xmm4
	addq	$8, -304(%rbp)
	vaddsd	(%rcx), %xmm4, %xmm4
	vaddsd	(%rdi), %xmm4, %xmm4
	vaddsd	48(%rdx), %xmm4, %xmm4
	vaddsd	48(%rsi), %xmm4, %xmm4
	vaddsd	48(%r8), %xmm4, %xmm4
	vaddsd	48(%rdi), %xmm4, %xmm4
	vmulsd	-8(%rax), %xmm4, %xmm4
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	addq	$8, -296(%rbp)
	vaddsd	%xmm4, %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rsi,8)
	addq	$1, %rsi
	movq	%rsi, -400(%rbp)
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
	addq	$8, -168(%rbp)
	addq	$8, -160(%rbp)
	addq	$8, -152(%rbp)
	addq	$8, -144(%rbp)
	addq	$8, -136(%rbp)
	addq	$8, -128(%rbp)
	addq	$8, %r8
	addq	$8, %r12
	addq	$8, %rbx
	addq	$8, -120(%rbp)
	addq	$8, %r11
	addq	$8, %r10
	addq	$8, %r9
	addq	$8, -112(%rbp)
	addq	$8, -104(%rbp)
	addq	$8, -96(%rbp)
	addq	$8, -88(%rbp)
	addq	$8, -80(%rbp)
	addq	$8, -72(%rbp)
	addq	$8, -344(%rbp)
	addq	$8, -336(%rbp)
	addq	$8, -328(%rbp)
	addq	$8, -320(%rbp)
	movq	%r8, -368(%rbp)
	addq	$8, -360(%rbp)
	cmpq	%rsi, -416(%rbp)
	jne	.L23
	movq	-848(%rbp), %rbx
	addq	%rbx, -440(%rbp)
	movq	-840(%rbp), %rbx
	addq	%rbx, -408(%rbp)
	addq	%rbx, -432(%rbp)
	movl	-420(%rbp), %ebx
	cmpl	%ebx, -424(%rbp)
	jne	.L26
	movl	-920(%rbp), %eax
	movl	-916(%rbp), %ebx
	addl	%eax, -880(%rbp)
	addl	%ebx, -884(%rbp)
	movl	-852(%rbp), %ebx
	addl	%eax, -876(%rbp)
	addl	%eax, -872(%rbp)
	addl	%eax, -868(%rbp)
	addl	%eax, -864(%rbp)
	addl	%eax, -860(%rbp)
	addl	%eax, -856(%rbp)
	cmpl	%ebx, -888(%rbp)
	jg	.L25
.L22:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L73
	movq	-904(%rbp), %rdi
	call	dummy
	movq	-896(%rbp), %rdi
	call	dummy
	movq	-912(%rbp), %rdi
	call	dummy
.L73:
	addq	$928, %rsp
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
	movq	$0, -896(%rbp)
	xorl	%edx, %edx
.L9:
	subl	%edx, %edi
	movq	-896(%rbp), %rcx
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
	movq	-56(%rbp), %rdx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%rdx, -896(%rbp)
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
	vmovsd	.LC2(%rip), %xmm0
	movq	-896(%rbp), %rax
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
	movq	-904(%rbp), %rdi
	call	dummy
	movq	-896(%rbp), %rdi
	call	dummy
	movq	-912(%rbp), %rdi
	call	dummy
	cmpl	$3, -888(%rbp)
	jle	.L22
	imull	$10, %ebx, %eax
	leal	-3(%rbx), %edx
	movl	%eax, %ecx
	imull	%r12d, %ecx
	movl	%ecx, -916(%rbp)
	movl	%ebx, %ecx
	imull	%r12d, %ecx
	movl	%ecx, -920(%rbp)
	cmpl	$6, %r12d
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
	movq	$0, -896(%rbp)
	testl	%eax, %eax
	jne	.L33
	movq	-56(%rbp), %rax
	movq	%rax, -896(%rbp)
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
	movq	%rsi, %rcx
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
