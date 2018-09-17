	.file	"2d-4r-heterogeneous-constant-box-stencil.c_compilable.c"
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
	subq	$752, %rsp
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	movl	%ebx, %r14d
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %r13
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
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r12,%rax,8), %rdx
	movl	%r14d, %edi
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
	movl	%ecx, -708(%rbp)
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movl	-708(%rbp), %ecx
	testl	%eax, %eax
	je	.L57
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %ecx
	cmovg	%r14d, %edi
	cmpl	$4, %ecx
	ja	.L58
	movq	$0, -792(%rbp)
	xorl	%eax, %eax
.L21:
	movq	-792(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
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
	movq	%rax, -696(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -688(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -680(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -672(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -664(%rbp)
	movq	.LC9(%rip), %rax
	movq	%rax, -656(%rbp)
	movq	.LC10(%rip), %rax
	movq	%rax, -648(%rbp)
	movq	.LC11(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	.LC12(%rip), %rax
	movq	%rax, -632(%rbp)
	movq	.LC13(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	.LC14(%rip), %rax
	movq	%rax, -616(%rbp)
	movq	.LC15(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	.LC16(%rip), %rax
	movq	%rax, -600(%rbp)
	movq	.LC17(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	.LC18(%rip), %rax
	movq	%rax, -584(%rbp)
	movq	.LC19(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	.LC20(%rip), %rax
	movq	%rax, -568(%rbp)
	movq	.LC21(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	.LC22(%rip), %rax
	movq	%rax, -552(%rbp)
	movq	.LC23(%rip), %rax
	movq	%rax, -544(%rbp)
	movq	.LC24(%rip), %rax
	movq	%rax, -536(%rbp)
	movq	.LC25(%rip), %rax
	movq	%rax, -528(%rbp)
	movq	.LC26(%rip), %rax
	movq	%rax, -520(%rbp)
	movq	.LC27(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	.LC28(%rip), %rax
	movq	%rax, -504(%rbp)
	movq	.LC29(%rip), %rax
	movq	%rax, -496(%rbp)
	movq	.LC30(%rip), %rax
	movq	%rax, -488(%rbp)
	movq	.LC31(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	.LC32(%rip), %rax
	movq	%rax, -472(%rbp)
	movq	.LC33(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	.LC34(%rip), %rax
	movq	%rax, -456(%rbp)
	movq	.LC35(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	.LC36(%rip), %rax
	movq	%rax, -440(%rbp)
	movq	.LC37(%rip), %rax
	movq	%rax, -432(%rbp)
	movq	.LC38(%rip), %rax
	movq	%rax, -424(%rbp)
	movq	.LC39(%rip), %rax
	movq	%rax, -416(%rbp)
	movq	.LC40(%rip), %rax
	movq	%rax, -408(%rbp)
	movq	.LC41(%rip), %rax
	movq	%rax, -400(%rbp)
	movq	.LC42(%rip), %rax
	movq	%rax, -392(%rbp)
	movq	.LC43(%rip), %rax
	movq	%rax, -384(%rbp)
	movq	.LC44(%rip), %rax
	movq	%rax, -376(%rbp)
	movq	.LC45(%rip), %rax
	movq	%rax, -368(%rbp)
	movq	.LC46(%rip), %rax
	movq	%rax, -360(%rbp)
	movq	.LC47(%rip), %rax
	movq	%rax, -352(%rbp)
	movq	.LC48(%rip), %rax
	movq	%rax, -344(%rbp)
	movq	.LC49(%rip), %rax
	movq	%rax, -336(%rbp)
	movq	.LC50(%rip), %rax
	movq	%rax, -328(%rbp)
	movq	.LC51(%rip), %rax
	movq	%rax, -320(%rbp)
	movq	.LC52(%rip), %rax
	movq	%rax, -312(%rbp)
	movq	.LC53(%rip), %rax
	movq	%rax, -304(%rbp)
	movq	.LC54(%rip), %rax
	movq	%rax, -296(%rbp)
	movq	.LC55(%rip), %rax
	movq	%rax, -288(%rbp)
	movq	.LC56(%rip), %rax
	movq	%rax, -280(%rbp)
	movq	.LC57(%rip), %rax
	movq	%rax, -272(%rbp)
	movq	.LC58(%rip), %rax
	movq	%rax, -264(%rbp)
	movq	.LC59(%rip), %rax
	movq	%rax, -256(%rbp)
	movq	.LC60(%rip), %rax
	movq	%rax, -248(%rbp)
	movq	.LC61(%rip), %rax
	movq	%rax, -240(%rbp)
	movq	.LC62(%rip), %rax
	movq	%rax, -232(%rbp)
	movq	.LC63(%rip), %rax
	movq	%rax, -224(%rbp)
	movq	.LC64(%rip), %rax
	movq	%rax, -216(%rbp)
	movq	.LC65(%rip), %rax
	movq	%rax, -208(%rbp)
	movq	.LC66(%rip), %rax
	movq	%rax, -200(%rbp)
	movq	.LC67(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	.LC68(%rip), %rax
	movq	%rax, -184(%rbp)
	movq	.LC69(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	.LC70(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	.LC71(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	.LC72(%rip), %rax
	movq	%rax, -152(%rbp)
	movq	.LC73(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	.LC74(%rip), %rax
	movq	%rax, -136(%rbp)
	movq	.LC75(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	.LC76(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	.LC77(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC78(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	.LC79(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.LC80(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	.LC81(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC82(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC83(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC84(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -56(%rbp)
	leal	-4(%r13), %eax
	movl	%eax, -708(%rbp)
	testl	%edx, %edx
	jne	.L59
	cmpl	$4, -708(%rbp)
	jle	.L53
.L14:
	cmpl	$8, %ebx
	jle	.L15
	leal	-9(%rbx), %edx
	movslq	%ebx, %rax
	movq	%r12, -800(%rbp)
	leal	0(,%rbx,4), %edi
	movq	%rdx, %r14
	leaq	0(,%rax,8), %rsi
	movslq	%edi, %rcx
	addl	%ebx, %edi
	leaq	(%rcx,%rdx), %rax
	movq	%rsi, -720(%rbp)
	negq	%rcx
	movslq	%edi, %rdi
	salq	$3, %rdx
	salq	$3, %rcx
	negq	%r14
	leaq	8(%r12,%rax,8), %rax
	subq	%rdx, %rsi
	movq	%rcx, %r13
	leaq	-8(,%r14,8), %r14
	movq	%rsi, %r11
	subq	%rdx, %r13
	leal	(%rbx,%rbx), %esi
	subq	$8, %r13
	movslq	%esi, %r8
	addl	%ebx, %esi
	movq	%r13, -784(%rbp)
	leaq	(%rcx,%r8,8), %r10
	movslq	%esi, %r8
	addl	%esi, %esi
	leaq	(%rcx,%r8,8), %r9
	movslq	%esi, %rsi
	subq	%rdx, %r10
	leaq	(%rcx,%rdi,8), %r8
	subq	%rdx, %r9
	leaq	(%rcx,%rsi,8), %rdi
	subq	%rdx, %r8
	leal	0(,%rbx,8), %esi
	subq	%rdx, %rdi
	movl	%esi, %r15d
	movslq	%esi, %rsi
	leaq	(%rcx,%rsi,8), %rsi
	subl	%ebx, %r15d
	movslq	%r15d, %rbx
	movq	-792(%rbp), %r15
	subq	%rdx, %rsi
	leaq	(%rcx,%rbx,8), %rbx
	leaq	-8(%r11,%rcx), %rcx
	subq	%rdx, %rbx
	movq	%rcx, -776(%rbp)
	leaq	-8(%r10), %rcx
	subq	$8, %rbx
	movq	%rcx, -768(%rbp)
	leaq	-8(%r9), %rcx
	subq	%rdx, %r15
	movl	$4, %edx
	movq	%rcx, -760(%rbp)
	leaq	-8(%r8), %rcx
	subq	%r12, %r15
	movq	%rcx, -752(%rbp)
	leaq	-8(%rdi), %rcx
	addq	$24, %r15
	movq	%rbx, -736(%rbp)
	leaq	-8(%rsi), %rbx
	movq	%rcx, -744(%rbp)
	movq	%rbx, -728(%rbp)
	.p2align 4,,10
	.p2align 3
.L17:
	movq	-784(%rbp), %rsi
	leaq	(%r14,%rax), %rcx
	addl	$1, %edx
	movq	-776(%rbp), %rbx
	leaq	(%r15,%rax), %r13
	leaq	(%rsi,%rax), %r12
	movq	-768(%rbp), %rsi
	addq	%rax, %rbx
	leaq	(%rsi,%rax), %r11
	movq	-760(%rbp), %rsi
	leaq	(%rsi,%rax), %r10
	movq	-752(%rbp), %rsi
	leaq	(%rsi,%rax), %r9
	movq	-744(%rbp), %rsi
	leaq	(%rsi,%rax), %r8
	movq	-736(%rbp), %rsi
	leaq	(%rsi,%rax), %rdi
	movq	-728(%rbp), %rsi
	addq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L16:
	vmovsd	(%r12), %xmm1
	addq	$8, %rcx
	addq	$8, %r12
	addq	$8, %rbx
	vmovsd	24(%rcx), %xmm2
	addq	$8, %r11
	addq	$8, %r10
	addq	$8, %r9
	vmulsd	-696(%rbp), %xmm2, %xmm2
	addq	$8, %r8
	addq	$8, %rdi
	vmulsd	-688(%rbp), %xmm1, %xmm0
	addq	$8, %rsi
	addq	$8, %r13
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-8(%rbx), %xmm2
	vmulsd	-680(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-8(%r11), %xmm1
	vmulsd	-672(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-8(%r10), %xmm2
	vmulsd	-664(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-8(%rcx), %xmm1
	vmulsd	-656(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-8(%r9), %xmm2
	vmulsd	-648(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-8(%r8), %xmm1
	vmulsd	-640(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	-8(%rdi), %xmm2
	vmulsd	-632(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	-8(%rsi), %xmm1
	vmulsd	-624(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r12), %xmm2
	vmulsd	-616(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx), %xmm1
	vmulsd	-608(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r11), %xmm2
	vmulsd	-600(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r10), %xmm1
	vmulsd	-592(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rcx), %xmm2
	vmulsd	-584(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%r9), %xmm1
	vmulsd	-576(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r8), %xmm2
	vmulsd	-568(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rdi), %xmm1
	vmulsd	-560(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rsi), %xmm2
	vmulsd	-552(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%r12), %xmm1
	vmulsd	-544(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%rbx), %xmm2
	vmulsd	-536(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%r11), %xmm1
	vmulsd	-528(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%r10), %xmm2
	vmulsd	-520(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rcx), %xmm1
	vmulsd	-512(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%r9), %xmm2
	vmulsd	-504(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%r8), %xmm1
	vmulsd	-496(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%rdi), %xmm2
	vmulsd	-488(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rsi), %xmm1
	vmulsd	-480(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%r12), %xmm2
	vmulsd	-472(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	16(%rbx), %xmm1
	vmulsd	-464(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%r11), %xmm2
	vmulsd	-456(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	16(%r10), %xmm1
	vmulsd	-448(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rcx), %xmm2
	vmulsd	-440(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	16(%r9), %xmm1
	vmulsd	-432(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%r8), %xmm2
	vmulsd	-424(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	16(%rdi), %xmm1
	vmulsd	-416(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rsi), %xmm2
	vmulsd	-408(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%r12), %xmm1
	vmulsd	-400(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rbx), %xmm2
	vmulsd	-392(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%r11), %xmm1
	vmulsd	-384(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%r10), %xmm2
	vmulsd	-376(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%r9), %xmm1
	vmulsd	-368(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%r8), %xmm2
	vmulsd	-360(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	24(%rdi), %xmm1
	vmulsd	-352(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	24(%rsi), %xmm2
	vmulsd	-344(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	32(%r12), %xmm1
	vmulsd	-336(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	32(%rbx), %xmm2
	vmulsd	-328(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	32(%r11), %xmm1
	vmulsd	-320(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	32(%r10), %xmm2
	vmulsd	-312(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	32(%rcx), %xmm1
	vmulsd	-304(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	32(%r9), %xmm2
	vmulsd	-296(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	32(%r8), %xmm1
	vmulsd	-288(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	32(%rdi), %xmm2
	vmulsd	-280(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	32(%rsi), %xmm1
	vmulsd	-272(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	40(%r12), %xmm2
	vmulsd	-264(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	40(%rbx), %xmm1
	vmulsd	-256(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	40(%r11), %xmm2
	vmulsd	-248(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	40(%r10), %xmm1
	vmulsd	-240(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	40(%rcx), %xmm2
	vmulsd	-232(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	40(%r9), %xmm1
	vmulsd	-224(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	40(%r8), %xmm2
	vmulsd	-216(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	40(%rdi), %xmm1
	vmulsd	-208(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	40(%rsi), %xmm2
	vmulsd	-200(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	48(%r12), %xmm1
	vmulsd	-192(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	48(%rbx), %xmm2
	vmulsd	-184(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	48(%r11), %xmm1
	vmulsd	-176(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	48(%r10), %xmm2
	vmulsd	-168(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	48(%rcx), %xmm1
	vmulsd	-160(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	48(%r9), %xmm2
	vmulsd	-152(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	48(%r8), %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	48(%rdi), %xmm2
	vmulsd	-136(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	48(%rsi), %xmm1
	vmulsd	-128(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	56(%r12), %xmm2
	vmulsd	-120(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	56(%rbx), %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	56(%r11), %xmm2
	vmulsd	-104(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	56(%r10), %xmm1
	vmulsd	-96(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	56(%rcx), %xmm2
	vmulsd	-88(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	56(%r9), %xmm1
	vmulsd	-80(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	56(%r8), %xmm2
	vmulsd	-72(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	56(%rdi), %xmm1
	vmulsd	-64(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	56(%rsi), %xmm0
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%r13)
	cmpq	%rcx, %rax
	jne	.L16
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	addq	-720(%rbp), %rax
	cmpl	%edx, -708(%rbp)
	jg	.L17
	movq	-800(%rbp), %r12
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L53
	movq	%r12, %rdi
	call	dummy
	movq	-792(%rbp), %rdi
	call	dummy
	leaq	-696(%rbp), %rdi
	call	dummy
	leaq	-688(%rbp), %rdi
	call	dummy
	leaq	-680(%rbp), %rdi
	call	dummy
	leaq	-672(%rbp), %rdi
	call	dummy
	leaq	-664(%rbp), %rdi
	call	dummy
	leaq	-656(%rbp), %rdi
	call	dummy
	leaq	-648(%rbp), %rdi
	call	dummy
	leaq	-640(%rbp), %rdi
	call	dummy
	leaq	-632(%rbp), %rdi
	call	dummy
	leaq	-624(%rbp), %rdi
	call	dummy
	leaq	-616(%rbp), %rdi
	call	dummy
	leaq	-608(%rbp), %rdi
	call	dummy
	leaq	-600(%rbp), %rdi
	call	dummy
	leaq	-592(%rbp), %rdi
	call	dummy
	leaq	-584(%rbp), %rdi
	call	dummy
	leaq	-576(%rbp), %rdi
	call	dummy
	leaq	-568(%rbp), %rdi
	call	dummy
	leaq	-560(%rbp), %rdi
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
.L53:
	addq	$752, %rsp
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
	movq	%rdx, -792(%rbp)
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
	movq	-792(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L33
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L34
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	movq	-792(%rbp), %rcx
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
	je	.L60
	vzeroupper
	jmp	.L21
.L59:
	movq	%r12, %rdi
	call	dummy
	movq	-792(%rbp), %rdi
	call	dummy
	leaq	-696(%rbp), %rdi
	call	dummy
	leaq	-688(%rbp), %rdi
	call	dummy
	leaq	-680(%rbp), %rdi
	call	dummy
	leaq	-672(%rbp), %rdi
	call	dummy
	leaq	-664(%rbp), %rdi
	call	dummy
	leaq	-656(%rbp), %rdi
	call	dummy
	leaq	-648(%rbp), %rdi
	call	dummy
	leaq	-640(%rbp), %rdi
	call	dummy
	leaq	-632(%rbp), %rdi
	call	dummy
	leaq	-624(%rbp), %rdi
	call	dummy
	leaq	-616(%rbp), %rdi
	call	dummy
	leaq	-608(%rbp), %rdi
	call	dummy
	leaq	-600(%rbp), %rdi
	call	dummy
	leaq	-592(%rbp), %rdi
	call	dummy
	leaq	-584(%rbp), %rdi
	call	dummy
	leaq	-576(%rbp), %rdi
	call	dummy
	leaq	-568(%rbp), %rdi
	call	dummy
	leaq	-560(%rbp), %rdi
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
	cmpl	$4, -708(%rbp)
	jg	.L14
	jmp	.L15
.L31:
	movl	$1, %r8d
	jmp	.L5
.L58:
	movq	$0, -792(%rbp)
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
	leaq	-56(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -792(%rbp)
	testl	%eax, %eax
	jne	.L25
	movq	-56(%rbp), %rax
	movq	%rax, -792(%rbp)
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
	.align 8
.LC67:
	.long	2681794256
	.long	1072666126
	.align 8
.LC68:
	.long	3381155282
	.long	1071232257
	.align 8
.LC69:
	.long	3166464297
	.long	1072361910
	.align 8
.LC70:
	.long	4123347736
	.long	1070412543
	.align 8
.LC71:
	.long	255918196
	.long	1070961119
	.align 8
.LC72:
	.long	893651482
	.long	1072517457
	.align 8
.LC73:
	.long	2417465990
	.long	1072174112
	.align 8
.LC74:
	.long	926072494
	.long	1072247019
	.align 8
.LC75:
	.long	4061243889
	.long	1072337656
	.align 8
.LC76:
	.long	2675228012
	.long	1071128297
	.align 8
.LC77:
	.long	1926629980
	.long	1072441905
	.align 8
.LC78:
	.long	3802998642
	.long	1071979629
	.align 8
.LC79:
	.long	3124795812
	.long	1070872666
	.align 8
.LC80:
	.long	295667040
	.long	1069882294
	.align 8
.LC81:
	.long	3302923240
	.long	1069881971
	.align 8
.LC82:
	.long	3886617490
	.long	1072336262
	.align 8
.LC83:
	.long	2966782934
	.long	1071424639
	.align 8
.LC84:
	.long	3106773871
	.long	1072460335
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
