	.file	"3d-2r-point-symmetric-constant-box-stencil.c_compilable.c"
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
	subq	$944, %rsp
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
	movq	%rcx, -568(%rbp)
	call	posix_memalign
	movq	-568(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -992(%rbp)
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
	movq	-992(%rbp), %rdx
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
	je	.L59
	vzeroupper
	movq	-992(%rbp), %rsi
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
	je	.L60
	testl	%r14d, %r14d
	movl	$1, %eax
	cmovg	%r14d, %eax
	movl	%eax, %edi
	movl	$0, %eax
	cmovle	%eax, %r15d
	cmpl	$4, %r15d
	ja	.L61
	movq	$0, -984(%rbp)
	xorl	%eax, %eax
.L22:
	movq	-984(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L26
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L26
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L26:
	movq	.LC4(%rip), %rax
	movq	%rax, -552(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -544(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -536(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -528(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -520(%rbp)
	movq	.LC9(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	.LC10(%rip), %rax
	movq	%rax, -504(%rbp)
	movq	.LC11(%rip), %rax
	movq	%rax, -496(%rbp)
	movq	.LC12(%rip), %rax
	movq	%rax, -488(%rbp)
	movq	.LC13(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	.LC14(%rip), %rax
	movq	%rax, -472(%rbp)
	movq	.LC15(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	.LC16(%rip), %rax
	movq	%rax, -456(%rbp)
	movq	.LC17(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	.LC18(%rip), %rax
	movq	%rax, -440(%rbp)
	movq	.LC19(%rip), %rax
	movq	%rax, -432(%rbp)
	movq	.LC20(%rip), %rax
	movq	%rax, -424(%rbp)
	movq	.LC21(%rip), %rax
	movq	%rax, -416(%rbp)
	movq	.LC22(%rip), %rax
	movq	%rax, -408(%rbp)
	movq	.LC23(%rip), %rax
	movq	%rax, -400(%rbp)
	movq	.LC24(%rip), %rax
	movq	%rax, -392(%rbp)
	movq	.LC25(%rip), %rax
	movq	%rax, -384(%rbp)
	movq	.LC26(%rip), %rax
	movq	%rax, -376(%rbp)
	movq	.LC27(%rip), %rax
	movq	%rax, -368(%rbp)
	movq	.LC28(%rip), %rax
	movq	%rax, -360(%rbp)
	movq	.LC29(%rip), %rax
	movq	%rax, -352(%rbp)
	movq	.LC30(%rip), %rax
	movq	%rax, -344(%rbp)
	movq	.LC31(%rip), %rax
	movq	%rax, -336(%rbp)
	movq	.LC32(%rip), %rax
	movq	%rax, -328(%rbp)
	movq	.LC33(%rip), %rax
	movq	%rax, -320(%rbp)
	movq	.LC34(%rip), %rax
	movq	%rax, -312(%rbp)
	movq	.LC35(%rip), %rax
	movq	%rax, -304(%rbp)
	movq	.LC36(%rip), %rax
	movq	%rax, -296(%rbp)
	movq	.LC37(%rip), %rax
	movq	%rax, -288(%rbp)
	movq	.LC38(%rip), %rax
	movq	%rax, -280(%rbp)
	movq	.LC39(%rip), %rax
	movq	%rax, -272(%rbp)
	movq	.LC40(%rip), %rax
	movq	%rax, -264(%rbp)
	movq	.LC41(%rip), %rax
	movq	%rax, -256(%rbp)
	movq	.LC42(%rip), %rax
	movq	%rax, -248(%rbp)
	movq	.LC43(%rip), %rax
	movq	%rax, -240(%rbp)
	movq	.LC44(%rip), %rax
	movq	%rax, -232(%rbp)
	movq	.LC45(%rip), %rax
	movq	%rax, -224(%rbp)
	movq	.LC46(%rip), %rax
	movq	%rax, -216(%rbp)
	movq	.LC47(%rip), %rax
	movq	%rax, -208(%rbp)
	movq	.LC48(%rip), %rax
	movq	%rax, -200(%rbp)
	movq	.LC49(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	.LC50(%rip), %rax
	movq	%rax, -184(%rbp)
	movq	.LC51(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	.LC52(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -168(%rbp)
	movq	.LC53(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	.LC54(%rip), %rax
	movq	%rax, -152(%rbp)
	movq	.LC55(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	.LC56(%rip), %rax
	movq	%rax, -136(%rbp)
	movq	.LC57(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	.LC58(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	.LC59(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC60(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	.LC61(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.LC62(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	.LC63(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC64(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC65(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC66(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-2(%r13), %eax
	movl	%eax, -932(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$2, -932(%rbp)
	jle	.L56
	leal	-2(%r12), %eax
	movl	%r12d, %ecx
	imull	%ebx, %ecx
	movl	%ecx, -936(%rbp)
	cmpl	$4, %ebx
	jle	.L56
.L31:
	cmpl	$2, %eax
	jle	.L15
	movl	$0, -920(%rbp)
	movl	-936(%rbp), %esi
	movq	-984(%rbp), %r15
	movl	$2, -908(%rbp)
	leal	(%rsi,%rsi,2), %eax
	movl	%esi, -928(%rbp)
	movl	%eax, -924(%rbp)
	leal	0(,%rsi,4), %eax
	movl	%eax, -916(%rbp)
	leal	(%rsi,%rsi), %eax
	movl	%eax, -912(%rbp)
	leal	(%r12,%r12), %eax
	movslq	%eax, %rdi
	leal	(%r12,%r12,2), %eax
	movq	%rdi, -960(%rbp)
	cltq
	movq	%rax, -952(%rbp)
	leal	0(,%r12,4), %eax
	cltq
	movq	%rax, -944(%rbp)
	movslq	%r12d, %rax
	movq	%rax, -880(%rbp)
	salq	$3, %rax
	movq	%rax, -888(%rbp)
	leal	-5(%r12), %eax
	leaq	0(,%rax,8), %rdx
	imulq	$-8, %rax, %rcx
	subq	%rdx, %r15
	addq	%rdi, %rax
	movq	%r15, %rdx
	movq	-992(%rbp), %r15
	movq	%rax, -968(%rbp)
	leaq	8(%r15), %rax
	subq	$8, %rcx
	subq	%r15, %rdx
	movq	%rcx, -896(%rbp)
	leaq	8(%rdx), %rcx
	movq	%rax, -976(%rbp)
	leal	-2(%rbx), %eax
	movq	%rcx, -904(%rbp)
	movl	%eax, -792(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movq	-880(%rbp), %r15
	movslq	-924(%rbp), %rdx
	movq	-944(%rbp), %r10
	movslq	-928(%rbp), %rax
	movq	-952(%rbp), %r14
	leaq	(%r15,%rdx), %rcx
	movq	-976(%rbp), %r8
	movq	%rdx, -824(%rbp)
	addl	$1, -908(%rbp)
	movq	%rcx, -856(%rbp)
	leaq	(%rdx,%r10), %rcx
	movq	%rcx, -832(%rbp)
	movslq	-920(%rbp), %rcx
	leaq	(%r15,%rax), %rsi
	movq	%rsi, -872(%rbp)
	leaq	(%rdx,%r14), %rsi
	movq	%rsi, -864(%rbp)
	leaq	(%rax,%r14), %rsi
	movq	%rsi, -848(%rbp)
	leaq	(%rax,%r10), %rsi
	movq	%rsi, -816(%rbp)
	leaq	(%r15,%rcx), %rsi
	movq	%rsi, -808(%rbp)
	movslq	-916(%rbp), %rsi
	leaq	(%rcx,%r10), %rdi
	movq	%rdi, -712(%rbp)
	movq	-968(%rbp), %rdi
	movq	%rcx, -736(%rbp)
	movq	%rax, -840(%rbp)
	leaq	(%rsi,%r14), %rbx
	movq	%rsi, -720(%rbp)
	movq	%rbx, -800(%rbp)
	leaq	(%r15,%rsi), %rbx
	movq	%rbx, -752(%rbp)
	leaq	(%rcx,%r14), %rbx
	movq	%rbx, -744(%rbp)
	leaq	(%rsi,%r10), %rbx
	movq	%rbx, -728(%rbp)
	movslq	-912(%rbp), %rbx
	movq	%r10, -760(%rbp)
	movq	%r14, -776(%rbp)
	addq	%rbx, %rdi
	movq	%rbx, -704(%rbp)
	subq	%rbx, %rax
	subq	%rbx, %rdx
	leaq	(%r8,%rdi,8), %rdi
	subq	%rbx, %rcx
	subq	%rbx, %rsi
	movq	%rdi, -696(%rbp)
	movq	-960(%rbp), %r12
	movq	%r15, -784(%rbp)
	movq	$0, -768(%rbp)
	movl	$2, -788(%rbp)
	movq	%rdx, -608(%rbp)
	movq	%r12, %r11
	movq	%rcx, -584(%rbp)
	movq	%rsi, -592(%rbp)
	movq	%rax, -600(%rbp)
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-872(%rbp), %rdx
	movq	%r11, %r10
	movq	-696(%rbp), %rdi
	movq	-896(%rbp), %rax
	movq	-904(%rbp), %rcx
	subq	%r11, %rdx
	movq	-840(%rbp), %r15
	movq	%rdx, %rbx
	movq	-864(%rbp), %rdx
	addq	%rdi, %rax
	movq	-824(%rbp), %r14
	addq	%rdi, %rcx
	movq	-704(%rbp), %rdi
	movq	-808(%rbp), %r13
	subq	%r11, %r15
	movq	%rcx, -664(%rbp)
	addl	$1, -788(%rbp)
	subq	%r11, %rdx
	subq	%r11, %r14
	subq	%rdi, %rdx
	subq	%rdi, %rbx
	subq	%rdi, %r15
	movq	%rdx, -656(%rbp)
	subq	%r11, %r13
	subq	%rdi, %r14
	movq	-856(%rbp), %rdx
	subq	%rdi, %r13
	movq	%rbx, -576(%rbp)
	subq	%r11, %rdx
	subq	%rdi, %rdx
	movq	%rdx, %r12
	movq	-848(%rbp), %rdx
	movq	%r12, -568(%rbp)
	subq	%r11, %rdx
	subq	%rdi, %rdx
	movq	%rdx, -648(%rbp)
	movq	-832(%rbp), %rdx
	subq	%r11, %rdx
	subq	%rdi, %rdx
	movq	%rdx, -640(%rbp)
	movq	-816(%rbp), %rdx
	subq	%r11, %rdx
	subq	%rdi, %rdx
	movq	%rdx, -632(%rbp)
	movq	-800(%rbp), %rdx
	subq	%r11, %rdx
	subq	%rdi, %rdx
	movq	%rdx, -624(%rbp)
	.p2align 4,,10
	.p2align 3
.L16:
	movq	-776(%rbp), %rsi
	movq	-728(%rbp), %rcx
	movq	-760(%rbp), %rdi
	movq	-736(%rbp), %rbx
	subq	%r10, %rsi
	movq	-744(%rbp), %r8
	movq	%rsi, %r12
	movq	-704(%rbp), %rsi
	subq	%r10, %rcx
	subq	%r10, %rdi
	vmovsd	16(%rax), %xmm1
	movq	%rdi, -616(%rbp)
	subq	%r10, %rbx
	movq	-752(%rbp), %rdi
	movq	%rbx, %rdx
	subq	%r10, %r8
	vmovsd	8(%rax), %xmm4
	subq	%rsi, %rcx
	subq	%rsi, %rdx
	subq	%rsi, %r8
	movq	-784(%rbp), %r11
	movq	%rcx, -672(%rbp)
	movq	-720(%rbp), %rcx
	subq	%r10, %rdi
	movq	%rdx, -680(%rbp)
	movq	%rsi, %rdx
	movq	-608(%rbp), %rbx
	subq	%rsi, %rdi
	vaddsd	24(%rax), %xmm4, %xmm4
	vmulsd	-552(%rbp), %xmm1, %xmm2
	subq	%r10, %r11
	subq	%r10, %rcx
	vmovsd	(%rax), %xmm3
	subq	%rsi, %rcx
	movq	-712(%rbp), %rsi
	vmulsd	-544(%rbp), %xmm4, %xmm4
	vaddsd	32(%rax), %xmm3, %xmm3
	vmulsd	-520(%rbp), %xmm3, %xmm3
	subq	%r10, %rsi
	movq	-768(%rbp), %r9
	subq	%rdx, %rsi
	movq	-600(%rbp), %rdx
	vaddsd	%xmm2, %xmm4, %xmm1
	vmovsd	16(%rax,%r11,8), %xmm4
	vaddsd	16(%rax,%r12,8), %xmm4, %xmm4
	vmulsd	-536(%rbp), %xmm4, %xmm4
	subq	%r10, %r9
	vmovsd	16(%rax,%rdx,8), %xmm0
	vaddsd	16(%rax,%rbx,8), %xmm0, %xmm0
	vmulsd	-528(%rbp), %xmm0, %xmm0
	vmovsd	8(%rax,%r11,8), %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	vaddsd	24(%rax,%r12,8), %xmm2, %xmm2
	vmulsd	-512(%rbp), %xmm2, %xmm2
	movq	%r12, -688(%rbp)
	movq	-600(%rbp), %rdx
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	8(%rax,%rbx,8), %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	8(%rax,%r12,8), %xmm0
	vmovsd	8(%rax,%rdx,8), %xmm1
	vaddsd	24(%rax,%rbx,8), %xmm1, %xmm1
	vmulsd	-504(%rbp), %xmm1, %xmm1
	vaddsd	%xmm2, %xmm3, %xmm2
	movq	-576(%rbp), %rbx
	vaddsd	24(%rax,%rdx,8), %xmm4, %xmm4
	vmulsd	-496(%rbp), %xmm4, %xmm4
	movq	-616(%rbp), %rdx
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	16(%rax,%rbx,8), %xmm2
	movq	-656(%rbp), %rbx
	vaddsd	24(%rax,%r11,8), %xmm0, %xmm0
	vmulsd	-488(%rbp), %xmm0, %xmm0
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	16(%rax,%r9,8), %xmm3
	vaddsd	16(%rax,%rbx,8), %xmm2, %xmm2
	movq	-568(%rbp), %rbx
	vaddsd	16(%rax,%rdx,8), %xmm3, %xmm3
	vmulsd	-480(%rbp), %xmm3, %xmm3
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	-472(%rbp), %xmm2, %xmm2
	vmovsd	16(%rax,%rbx,8), %xmm1
	movq	-648(%rbp), %rbx
	movq	-592(%rbp), %r12
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	(%rax,%r11,8), %xmm0
	vaddsd	16(%rax,%rbx,8), %xmm1, %xmm1
	movq	-584(%rbp), %rbx
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	-464(%rbp), %xmm1, %xmm1
	vmovsd	16(%rax,%rbx,8), %xmm4
	vaddsd	16(%rax,%r12,8), %xmm4, %xmm4
	vmulsd	-456(%rbp), %xmm4, %xmm4
	vaddsd	%xmm1, %xmm2, %xmm1
	movq	-688(%rbp), %r12
	movq	-600(%rbp), %rdx
	movq	-608(%rbp), %rbx
	vaddsd	32(%rax,%r12,8), %xmm0, %xmm0
	vmulsd	-448(%rbp), %xmm0, %xmm0
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	(%rax,%rdx,8), %xmm3
	vaddsd	32(%rax,%rbx,8), %xmm3, %xmm3
	vmulsd	-440(%rbp), %xmm3, %xmm3
	vmovsd	(%rax,%rbx,8), %xmm2
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	(%rax,%r12,8), %xmm1
	vaddsd	32(%rax,%rdx,8), %xmm2, %xmm2
	vaddsd	32(%rax,%r11,8), %xmm1, %xmm1
	vmulsd	-432(%rbp), %xmm2, %xmm2
	vaddsd	%xmm3, %xmm0, %xmm3
	movq	-576(%rbp), %r11
	movq	-616(%rbp), %rdx
	vmulsd	-424(%rbp), %xmm1, %xmm1
	movq	-584(%rbp), %r12
	vmovsd	8(%rax,%r11,8), %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	movq	-568(%rbp), %r11
	movq	-656(%rbp), %rbx
	vmovsd	8(%rax,%r9,8), %xmm4
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	24(%rax,%rdx,8), %xmm4, %xmm4
	vmulsd	-416(%rbp), %xmm4, %xmm4
	vmovsd	8(%rax,%r11,8), %xmm3
	vmovsd	8(%rax,%r12,8), %xmm2
	movq	-648(%rbp), %r11
	movq	-592(%rbp), %r12
	vaddsd	24(%rax,%rbx,8), %xmm0, %xmm0
	vmulsd	-408(%rbp), %xmm0, %xmm0
	vaddsd	%xmm4, %xmm1, %xmm4
	vaddsd	24(%rax,%r11,8), %xmm3, %xmm3
	vaddsd	24(%rax,%r12,8), %xmm2, %xmm2
	vmulsd	-400(%rbp), %xmm3, %xmm3
	vmulsd	-392(%rbp), %xmm2, %xmm2
	vmovsd	8(%rax,%r12,8), %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	movq	-584(%rbp), %r12
	vmovsd	8(%rax,%r11,8), %xmm4
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	8(%rax,%rbx,8), %xmm0
	vaddsd	24(%rax,%r12,8), %xmm1, %xmm1
	movq	-568(%rbp), %r12
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	-384(%rbp), %xmm1, %xmm1
	vmovsd	8(%rax,%rdx,8), %xmm3
	vaddsd	24(%rax,%r9,8), %xmm3, %xmm3
	vaddsd	24(%rax,%r12,8), %xmm4, %xmm4
	movq	-576(%rbp), %r12
	vmulsd	-376(%rbp), %xmm4, %xmm4
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	-360(%rbp), %xmm3, %xmm3
	vmovsd	16(%rax,%r15,8), %xmm2
	vaddsd	24(%rax,%r12,8), %xmm0, %xmm0
	movq	-640(%rbp), %r12
	vmulsd	-368(%rbp), %xmm0, %xmm0
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	16(%rax,%r14,8), %xmm1
	vaddsd	16(%rax,%r12,8), %xmm2, %xmm2
	movq	-632(%rbp), %r12
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	-352(%rbp), %xmm2, %xmm2
	vmovsd	16(%rax,%r13,8), %xmm4
	vaddsd	16(%rax,%r12,8), %xmm1, %xmm1
	movq	-624(%rbp), %r12
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	-344(%rbp), %xmm1, %xmm1
	vmovsd	16(%rax,%rdi,8), %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	(%rax,%r9,8), %xmm3
	vaddsd	16(%rax,%r12,8), %xmm4, %xmm4
	vaddsd	16(%rax,%r8,8), %xmm0, %xmm0
	vmulsd	-336(%rbp), %xmm4, %xmm4
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	-328(%rbp), %xmm0, %xmm0
	vaddsd	32(%rax,%rdx,8), %xmm3, %xmm3
	movq	-576(%rbp), %r12
	vmulsd	-320(%rbp), %xmm3, %xmm3
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	(%rax,%r12,8), %xmm2
	movq	-568(%rbp), %r12
	vaddsd	%xmm0, %xmm4, %xmm0
	vaddsd	32(%rax,%rbx,8), %xmm2, %xmm2
	vmulsd	-312(%rbp), %xmm2, %xmm2
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	(%rax,%r12,8), %xmm1
	movq	-584(%rbp), %r12
	vaddsd	32(%rax,%r11,8), %xmm1, %xmm1
	vmulsd	-304(%rbp), %xmm1, %xmm1
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	(%rax,%r11,8), %xmm3
	vmovsd	(%rax,%r12,8), %xmm4
	movq	-592(%rbp), %r12
	movq	-568(%rbp), %r11
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	(%rax,%rbx,8), %xmm2
	movq	-576(%rbp), %rbx
	vaddsd	32(%rax,%r12,8), %xmm4, %xmm4
	vmovsd	(%rax,%r12,8), %xmm0
	movq	-584(%rbp), %r12
	vmulsd	-296(%rbp), %xmm4, %xmm4
	vaddsd	32(%rax,%r11,8), %xmm3, %xmm3
	vmulsd	-280(%rbp), %xmm3, %xmm3
	vaddsd	32(%rax,%r12,8), %xmm0, %xmm0
	vmulsd	-288(%rbp), %xmm0, %xmm0
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	(%rax,%rdx,8), %xmm1
	vaddsd	32(%rax,%rbx,8), %xmm2, %xmm2
	vmulsd	-272(%rbp), %xmm2, %xmm2
	movq	-640(%rbp), %rbx
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	8(%rax,%r15,8), %xmm4
	vaddsd	32(%rax,%r9,8), %xmm1, %xmm1
	vmulsd	-264(%rbp), %xmm1, %xmm1
	vaddsd	%xmm3, %xmm0, %xmm3
	vaddsd	24(%rax,%rbx,8), %xmm4, %xmm4
	movq	-632(%rbp), %r9
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	-256(%rbp), %xmm4, %xmm4
	movq	-624(%rbp), %r11
	vmovsd	8(%rax,%r14,8), %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	8(%rax,%r13,8), %xmm3
	vaddsd	24(%rax,%r9,8), %xmm0, %xmm0
	vmulsd	-248(%rbp), %xmm0, %xmm0
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	8(%rax,%rdi,8), %xmm2
	vaddsd	24(%rax,%r11,8), %xmm3, %xmm3
	vmulsd	-240(%rbp), %xmm3, %xmm3
	vaddsd	24(%rax,%r8,8), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	-232(%rbp), %xmm2, %xmm2
	vmovsd	8(%rax,%r8,8), %xmm1
	vaddsd	24(%rax,%rdi,8), %xmm1, %xmm1
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	-224(%rbp), %xmm1, %xmm1
	vmovsd	8(%rax,%r11,8), %xmm4
	vaddsd	24(%rax,%r13,8), %xmm4, %xmm4
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	-216(%rbp), %xmm4, %xmm4
	vmovsd	8(%rax,%r9,8), %xmm0
	vaddsd	24(%rax,%r14,8), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	-208(%rbp), %xmm0, %xmm0
	movq	-680(%rbp), %r12
	movq	-672(%rbp), %rdx
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	8(%rax,%rbx,8), %xmm3
	vaddsd	24(%rax,%r15,8), %xmm3, %xmm3
	vmulsd	-200(%rbp), %xmm3, %xmm3
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	16(%rax,%r12,8), %xmm2
	vaddsd	16(%rax,%rdx,8), %xmm2, %xmm2
	vmulsd	-192(%rbp), %xmm2, %xmm2
	vmovsd	16(%rax,%rcx,8), %xmm1
	vaddsd	%xmm3, %xmm0, %xmm3
	vaddsd	16(%rax,%rsi,8), %xmm1, %xmm1
	vmulsd	-184(%rbp), %xmm1, %xmm1
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	(%rax,%r15,8), %xmm4
	vaddsd	32(%rax,%rbx,8), %xmm4, %xmm4
	vmulsd	-176(%rbp), %xmm4, %xmm4
	vmovsd	(%rax,%r14,8), %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vmovsd	(%rax,%r13,8), %xmm3
	vaddsd	32(%rax,%r9,8), %xmm0, %xmm0
	vmulsd	-168(%rbp), %xmm0, %xmm0
	vaddsd	%xmm4, %xmm1, %xmm4
	vmovsd	(%rax,%rdi,8), %xmm2
	vaddsd	32(%rax,%r11,8), %xmm3, %xmm3
	vmulsd	-160(%rbp), %xmm3, %xmm3
	vaddsd	32(%rax,%r8,8), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	-152(%rbp), %xmm2, %xmm2
	vmovsd	(%rax,%r8,8), %xmm1
	vaddsd	32(%rax,%rdi,8), %xmm1, %xmm1
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	-144(%rbp), %xmm1, %xmm1
	vmovsd	(%rax,%r11,8), %xmm4
	vaddsd	32(%rax,%r13,8), %xmm4, %xmm4
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	-136(%rbp), %xmm4, %xmm4
	vmovsd	(%rax,%r9,8), %xmm0
	vaddsd	32(%rax,%r14,8), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	-128(%rbp), %xmm0, %xmm0
	vmovsd	(%rax,%rbx,8), %xmm3
	vaddsd	32(%rax,%r15,8), %xmm3, %xmm3
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	-120(%rbp), %xmm3, %xmm3
	vmovsd	8(%rax,%r12,8), %xmm2
	vaddsd	24(%rax,%rdx,8), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	-112(%rbp), %xmm2, %xmm2
	vmovsd	8(%rax,%rcx,8), %xmm1
	vaddsd	24(%rax,%rsi,8), %xmm1, %xmm1
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	-104(%rbp), %xmm1, %xmm1
	vmovsd	8(%rax,%rsi,8), %xmm4
	vaddsd	24(%rax,%rcx,8), %xmm4, %xmm4
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	-96(%rbp), %xmm4, %xmm4
	vmovsd	8(%rax,%rdx,8), %xmm0
	vaddsd	24(%rax,%r12,8), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vmovsd	(%rax,%r12,8), %xmm3
	vaddsd	32(%rax,%rdx,8), %xmm3, %xmm3
	vaddsd	%xmm4, %xmm1, %xmm4
	vmulsd	-80(%rbp), %xmm3, %xmm3
	vmovsd	(%rax,%rcx,8), %xmm2
	vaddsd	32(%rax,%rsi,8), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm4, %xmm0
	vmulsd	-72(%rbp), %xmm2, %xmm2
	vmovsd	(%rax,%rsi,8), %xmm1
	vaddsd	32(%rax,%rcx,8), %xmm1, %xmm1
	vaddsd	%xmm3, %xmm0, %xmm3
	vmulsd	-64(%rbp), %xmm1, %xmm1
	vmovsd	(%rax,%rdx,8), %xmm0
	vaddsd	32(%rax,%r12,8), %xmm0, %xmm0
	addq	$8, %rax
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	-56(%rbp), %xmm0, %xmm0
	movq	-664(%rbp), %rdi
	vaddsd	%xmm1, %xmm2, %xmm1
	addq	$8, %rdi
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rdi)
	movq	%rdi, -664(%rbp)
	cmpq	%rax, -696(%rbp)
	jne	.L16
	movq	-880(%rbp), %rax
	movq	%r10, %r11
	addq	%rax, -784(%rbp)
	addq	%rax, -776(%rbp)
	addq	%rax, -768(%rbp)
	addq	%rax, -760(%rbp)
	addq	%rax, %r11
	addq	%rax, -872(%rbp)
	addq	%rax, -864(%rbp)
	addq	%rax, -856(%rbp)
	addq	%rax, -848(%rbp)
	addq	%rax, -840(%rbp)
	addq	%rax, -832(%rbp)
	addq	%rax, -824(%rbp)
	addq	%rax, -816(%rbp)
	addq	%rax, -808(%rbp)
	addq	%rax, -800(%rbp)
	addq	%rax, -752(%rbp)
	addq	%rax, -744(%rbp)
	movq	-888(%rbp), %rsi
	addq	%rax, -736(%rbp)
	addq	%rsi, -696(%rbp)
	addq	%rax, -728(%rbp)
	addq	%rax, -720(%rbp)
	addq	%rax, -712(%rbp)
	movl	-788(%rbp), %esi
	cmpl	%esi, -792(%rbp)
	jne	.L19
	movl	-936(%rbp), %eax
	movl	-932(%rbp), %esi
	addl	%eax, -928(%rbp)
	addl	%eax, -924(%rbp)
	addl	%eax, -920(%rbp)
	addl	%eax, -916(%rbp)
	addl	%eax, -912(%rbp)
	cmpl	%esi, -908(%rbp)
	jl	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L56
	movq	-992(%rbp), %rdi
	call	dummy
	movq	-984(%rbp), %rdi
	call	dummy
	leaq	-552(%rbp), %rdi
	call	dummy
	leaq	-544(%rbp), %rdi
	call	dummy
	leaq	-536(%rbp), %rdi
	call	dummy
	leaq	-528(%rbp), %rdi
	call	dummy
	leaq	-520(%rbp), %rdi
	call	dummy
	leaq	-512(%rbp), %rdi
	call	dummy
	leaq	-504(%rbp), %rdi
	call	dummy
	leaq	-496(%rbp), %rdi
	call	dummy
	leaq	-488(%rbp), %rdi
	call	dummy
	leaq	-480(%rbp), %rdi
	call	dummy
	leaq	-472(%rbp), %rdi
	call	dummy
	leaq	-464(%rbp), %rdi
	call	dummy
	leaq	-456(%rbp), %rdi
	call	dummy
	leaq	-448(%rbp), %rdi
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
.L34:
	.cfi_restore_state
	movl	$1, %r8d
	jmp	.L5
.L61:
	movq	$0, -984(%rbp)
	xorl	%edx, %edx
.L9:
	movq	-984(%rbp), %rcx
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
	je	.L63
	vzeroupper
	jmp	.L22
.L60:
	movq	-56(%rbp), %rcx
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%rcx, -984(%rbp)
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
	movq	-984(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
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
	movq	-992(%rbp), %rdi
	call	dummy
	movq	-984(%rbp), %rdi
	call	dummy
	leaq	-552(%rbp), %rdi
	call	dummy
	leaq	-544(%rbp), %rdi
	call	dummy
	leaq	-536(%rbp), %rdi
	call	dummy
	leaq	-528(%rbp), %rdi
	call	dummy
	leaq	-520(%rbp), %rdi
	call	dummy
	leaq	-512(%rbp), %rdi
	call	dummy
	leaq	-504(%rbp), %rdi
	call	dummy
	leaq	-496(%rbp), %rdi
	call	dummy
	leaq	-488(%rbp), %rdi
	call	dummy
	leaq	-480(%rbp), %rdi
	call	dummy
	leaq	-472(%rbp), %rdi
	call	dummy
	leaq	-464(%rbp), %rdi
	call	dummy
	leaq	-456(%rbp), %rdi
	call	dummy
	leaq	-448(%rbp), %rdi
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
	cmpl	$2, -932(%rbp)
	jle	.L15
	leal	-2(%r12), %eax
	movl	%r12d, %ecx
	imull	%ebx, %ecx
	movl	%ecx, -936(%rbp)
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
	leaq	-56(%rbp), %rdi
	movq	%rcx, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -984(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -984(%rbp)
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
	.align 8
.LC53:
	.long	2418186984
	.long	1069205646
	.align 8
.LC54:
	.long	687122844
	.long	1071865407
	.align 8
.LC55:
	.long	219083024
	.long	1069287095
	.align 8
.LC56:
	.long	813846168
	.long	1072528948
	.align 8
.LC57:
	.long	3305249992
	.long	1071628091
	.align 8
.LC58:
	.long	417686711
	.long	1071978667
	.align 8
.LC59:
	.long	1360496924
	.long	1072536780
	.align 8
.LC60:
	.long	744693872
	.long	1070129754
	.align 8
.LC61:
	.long	3343787038
	.long	1070774754
	.align 8
.LC62:
	.long	3302060960
	.long	1070942344
	.align 8
.LC63:
	.long	2146686910
	.long	1071057147
	.align 8
.LC64:
	.long	3429174006
	.long	1071359831
	.align 8
.LC65:
	.long	3432267712
	.long	1072006955
	.align 8
.LC66:
	.long	1334530622
	.long	1071525666
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
