	.file	"3d-2r-heterogeneous-constant-box-stencil.c_compilable.c"
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
	subq	$1440, %rsp
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
	movl	%ebx, %r14d
	call	strtol
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	imull	%eax, %r14d
	movq	%rax, %r13
	imull	%r12d, %r14d
	movslq	%r14d, %rcx
	salq	$3, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -1064(%rbp)
	call	posix_memalign
	movq	-1064(%rbp), %rcx
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %rdi
	movq	%rdi, -1480(%rbp)
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
	movq	-1480(%rbp), %rdx
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
	movq	-1480(%rbp), %rsi
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
	movq	$0, -1472(%rbp)
	xorl	%eax, %eax
.L22:
	movq	-1472(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
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
	movq	%rax, -1048(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -1040(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -1032(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -1016(%rbp)
	movq	.LC9(%rip), %rax
	movq	%rax, -1008(%rbp)
	movq	.LC10(%rip), %rax
	movq	%rax, -1000(%rbp)
	movq	.LC11(%rip), %rax
	movq	%rax, -992(%rbp)
	movq	.LC12(%rip), %rax
	movq	%rax, -984(%rbp)
	movq	.LC13(%rip), %rax
	movq	%rax, -976(%rbp)
	movq	.LC14(%rip), %rax
	movq	%rax, -968(%rbp)
	movq	.LC15(%rip), %rax
	movq	%rax, -960(%rbp)
	movq	.LC16(%rip), %rax
	movq	%rax, -952(%rbp)
	movq	.LC17(%rip), %rax
	movq	%rax, -944(%rbp)
	movq	.LC18(%rip), %rax
	movq	%rax, -936(%rbp)
	movq	.LC19(%rip), %rax
	movq	%rax, -928(%rbp)
	movq	.LC20(%rip), %rax
	movq	%rax, -920(%rbp)
	movq	.LC21(%rip), %rax
	movq	%rax, -912(%rbp)
	movq	.LC22(%rip), %rax
	movq	%rax, -904(%rbp)
	movq	.LC23(%rip), %rax
	movq	%rax, -896(%rbp)
	movq	.LC24(%rip), %rax
	movq	%rax, -888(%rbp)
	movq	.LC25(%rip), %rax
	movq	%rax, -880(%rbp)
	movq	.LC26(%rip), %rax
	movq	%rax, -872(%rbp)
	movq	.LC27(%rip), %rax
	movq	%rax, -864(%rbp)
	movq	.LC28(%rip), %rax
	movq	%rax, -856(%rbp)
	movq	.LC29(%rip), %rax
	movq	%rax, -848(%rbp)
	movq	.LC30(%rip), %rax
	movq	%rax, -840(%rbp)
	movq	.LC31(%rip), %rax
	movq	%rax, -832(%rbp)
	movq	.LC32(%rip), %rax
	movq	%rax, -824(%rbp)
	movq	.LC33(%rip), %rax
	movq	%rax, -816(%rbp)
	movq	.LC34(%rip), %rax
	movq	%rax, -808(%rbp)
	movq	.LC35(%rip), %rax
	movq	%rax, -800(%rbp)
	movq	.LC36(%rip), %rax
	movq	%rax, -792(%rbp)
	movq	.LC37(%rip), %rax
	movq	%rax, -784(%rbp)
	movq	.LC38(%rip), %rax
	movq	%rax, -776(%rbp)
	movq	.LC39(%rip), %rax
	movq	%rax, -768(%rbp)
	movq	.LC40(%rip), %rax
	movq	%rax, -760(%rbp)
	movq	.LC41(%rip), %rax
	movq	%rax, -752(%rbp)
	movq	.LC42(%rip), %rax
	movq	%rax, -744(%rbp)
	movq	.LC43(%rip), %rax
	movq	%rax, -736(%rbp)
	movq	.LC44(%rip), %rax
	movq	%rax, -728(%rbp)
	movq	.LC45(%rip), %rax
	movq	%rax, -720(%rbp)
	movq	.LC46(%rip), %rax
	movq	%rax, -712(%rbp)
	movq	.LC47(%rip), %rax
	movq	%rax, -704(%rbp)
	movq	.LC48(%rip), %rax
	movq	%rax, -696(%rbp)
	movq	.LC49(%rip), %rax
	movq	%rax, -688(%rbp)
	movq	.LC50(%rip), %rax
	movq	%rax, -680(%rbp)
	movq	.LC51(%rip), %rax
	movq	%rax, -672(%rbp)
	movq	.LC52(%rip), %rax
	movq	%rax, -664(%rbp)
	movq	.LC53(%rip), %rax
	movq	%rax, -656(%rbp)
	movq	.LC54(%rip), %rax
	movq	%rax, -648(%rbp)
	movq	.LC55(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	.LC56(%rip), %rax
	movq	%rax, -632(%rbp)
	movq	.LC57(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	.LC58(%rip), %rax
	movq	%rax, -616(%rbp)
	movq	.LC59(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	.LC60(%rip), %rax
	movq	%rax, -600(%rbp)
	movq	.LC61(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	.LC62(%rip), %rax
	movq	%rax, -584(%rbp)
	movq	.LC63(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	.LC64(%rip), %rax
	movq	%rax, -568(%rbp)
	movq	.LC65(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	.LC66(%rip), %rax
	movq	%rax, -552(%rbp)
	movq	.LC67(%rip), %rax
	movq	%rax, -544(%rbp)
	movq	.LC68(%rip), %rax
	movq	%rax, -536(%rbp)
	movq	.LC69(%rip), %rax
	movq	%rax, -528(%rbp)
	movq	.LC70(%rip), %rax
	movq	%rax, -520(%rbp)
	movq	.LC71(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	.LC72(%rip), %rax
	movq	%rax, -504(%rbp)
	movq	.LC73(%rip), %rax
	movq	%rax, -496(%rbp)
	movq	.LC74(%rip), %rax
	movq	%rax, -488(%rbp)
	movq	.LC75(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	.LC76(%rip), %rax
	movq	%rax, -472(%rbp)
	movq	.LC77(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	.LC78(%rip), %rax
	movq	%rax, -456(%rbp)
	movq	.LC79(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	.LC80(%rip), %rax
	movq	%rax, -440(%rbp)
	movq	.LC81(%rip), %rax
	movq	%rax, -432(%rbp)
	movq	.LC82(%rip), %rax
	movq	%rax, -424(%rbp)
	movq	.LC83(%rip), %rax
	movq	%rax, -416(%rbp)
	movq	.LC84(%rip), %rax
	movq	%rax, -408(%rbp)
	movq	.LC85(%rip), %rax
	movq	%rax, -400(%rbp)
	movq	.LC86(%rip), %rax
	movq	%rax, -392(%rbp)
	movq	.LC87(%rip), %rax
	movq	%rax, -384(%rbp)
	movq	.LC88(%rip), %rax
	movq	%rax, -376(%rbp)
	movq	.LC89(%rip), %rax
	movq	%rax, -368(%rbp)
	movq	.LC90(%rip), %rax
	movq	%rax, -360(%rbp)
	movq	.LC91(%rip), %rax
	movq	%rax, -352(%rbp)
	movq	.LC92(%rip), %rax
	movq	%rax, -344(%rbp)
	movq	.LC93(%rip), %rax
	movq	%rax, -336(%rbp)
	movq	.LC94(%rip), %rax
	movq	%rax, -328(%rbp)
	movq	.LC95(%rip), %rax
	movq	%rax, -320(%rbp)
	movq	.LC96(%rip), %rax
	movq	%rax, -312(%rbp)
	movq	.LC97(%rip), %rax
	movq	%rax, -304(%rbp)
	movq	.LC98(%rip), %rax
	movq	%rax, -296(%rbp)
	movq	.LC99(%rip), %rax
	movq	%rax, -288(%rbp)
	movq	.LC100(%rip), %rax
	movq	%rax, -280(%rbp)
	movq	.LC101(%rip), %rax
	movq	%rax, -272(%rbp)
	movq	.LC102(%rip), %rax
	movq	%rax, -264(%rbp)
	movq	.LC103(%rip), %rax
	movq	%rax, -256(%rbp)
	movq	.LC104(%rip), %rax
	movq	%rax, -248(%rbp)
	movq	.LC105(%rip), %rax
	movq	%rax, -240(%rbp)
	movq	.LC106(%rip), %rax
	movq	%rax, -232(%rbp)
	movq	.LC107(%rip), %rax
	movq	%rax, -224(%rbp)
	movq	.LC108(%rip), %rax
	movq	%rax, -216(%rbp)
	movq	.LC109(%rip), %rax
	movq	%rax, -208(%rbp)
	movq	.LC110(%rip), %rax
	movq	%rax, -200(%rbp)
	movq	.LC111(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	.LC112(%rip), %rax
	movq	%rax, -184(%rbp)
	movq	.LC113(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	.LC114(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	.LC115(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	.LC116(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -152(%rbp)
	movq	.LC117(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	.LC118(%rip), %rax
	movq	%rax, -136(%rbp)
	movq	.LC119(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	.LC120(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	.LC121(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC122(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	.LC123(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.LC124(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	.LC125(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.LC126(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.LC127(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC128(%rip), %rax
	movq	%rax, -56(%rbp)
	leal	-2(%r13), %eax
	movl	%eax, -1420(%rbp)
	testl	%edx, %edx
	jne	.L62
	cmpl	$2, -1420(%rbp)
	jle	.L56
	leal	-2(%r12), %eax
	movl	%r12d, %esi
	imull	%ebx, %esi
	movl	%esi, -1424(%rbp)
	cmpl	$4, %ebx
	jle	.L56
.L31:
	cmpl	$2, %eax
	jle	.L15
	movl	$0, -1416(%rbp)
	movl	-1424(%rbp), %esi
	movq	-1472(%rbp), %r10
	movl	$2, -1396(%rbp)
	movq	-1480(%rbp), %r11
	leal	(%rsi,%rsi,2), %eax
	movl	%esi, -1412(%rbp)
	movl	%eax, -1408(%rbp)
	leal	0(,%rsi,4), %eax
	movl	%eax, -1404(%rbp)
	leal	(%rsi,%rsi), %eax
	movl	%eax, -1400(%rbp)
	leal	(%r12,%r12), %eax
	movslq	%eax, %rdi
	leal	(%r12,%r12,2), %eax
	movq	%rdi, -1448(%rbp)
	cltq
	movq	%rax, -1440(%rbp)
	leal	0(,%r12,4), %eax
	cltq
	movq	%rax, -1432(%rbp)
	movslq	%r12d, %rax
	movq	%rax, -1368(%rbp)
	salq	$3, %rax
	movq	%rax, -1376(%rbp)
	leal	-5(%r12), %eax
	imulq	$-8, %rax, %rcx
	leaq	0(,%rax,8), %rdx
	addq	%rdi, %rax
	subq	%rdx, %r10
	movq	%rax, -1456(%rbp)
	leaq	8(%r11), %rax
	movq	%r10, %rdx
	subq	%r11, %rdx
	movq	%rax, -1464(%rbp)
	leaq	-8(%rcx), %rsi
	movq	%rsi, -1384(%rbp)
	leal	-2(%rbx), %eax
	leaq	8(%rdx), %rsi
	movl	%eax, -1280(%rbp)
	movq	%rsi, -1392(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movslq	-1416(%rbp), %rax
	movq	-1368(%rbp), %r10
	movslq	-1412(%rbp), %rdx
	movslq	-1408(%rbp), %rcx
	movslq	-1404(%rbp), %rsi
	movq	-1440(%rbp), %r11
	leaq	(%r10,%rax), %rbx
	movq	%r10, -1264(%rbp)
	movq	%rbx, -1328(%rbp)
	leaq	(%r10,%rdx), %rbx
	movq	-1432(%rbp), %r15
	movq	%rbx, -1320(%rbp)
	leaq	(%r10,%rcx), %rbx
	movq	-1456(%rbp), %rdi
	movq	%rbx, -1312(%rbp)
	leaq	(%r10,%rsi), %rbx
	movq	-1464(%rbp), %r14
	addl	$1, -1396(%rbp)
	movq	%rbx, -1304(%rbp)
	leaq	(%r11,%rax), %rbx
	movq	%rbx, -1296(%rbp)
	leaq	(%r11,%rdx), %rbx
	movq	%rbx, -1288(%rbp)
	leaq	(%r11,%rcx), %rbx
	movq	%rbx, -1248(%rbp)
	leaq	(%r11,%rsi), %rbx
	movq	%rbx, -1240(%rbp)
	leaq	(%r15,%rax), %rbx
	movq	%rbx, -1232(%rbp)
	leaq	(%r15,%rdx), %rbx
	movq	%rbx, -1224(%rbp)
	leaq	(%r15,%rcx), %rbx
	movq	%rbx, -1208(%rbp)
	leaq	(%r15,%rsi), %rbx
	movq	%rbx, -1200(%rbp)
	movslq	-1400(%rbp), %rbx
	movq	%rcx, -1344(%rbp)
	movq	%rdx, -1352(%rbp)
	movq	%r15, -1216(%rbp)
	addq	%rbx, %rdi
	movq	%rbx, -1192(%rbp)
	subq	%rbx, %rcx
	subq	%rbx, %rdx
	leaq	(%r14,%rdi,8), %rdi
	movq	%r11, -1256(%rbp)
	movq	%rdi, -1184(%rbp)
	movq	%rsi, %rdi
	movq	%rsi, -1336(%rbp)
	movq	-1448(%rbp), %rsi
	subq	%rbx, %rdi
	movq	%rax, -1360(%rbp)
	subq	%rbx, %rax
	movq	$0, -1272(%rbp)
	movl	$2, -1276(%rbp)
	movq	%rsi, -1112(%rbp)
	movq	%rcx, %rsi
	movq	%rax, -1152(%rbp)
	movq	%rdx, -1144(%rbp)
	movq	%rdi, -1160(%rbp)
	movq	%rsi, -1168(%rbp)
	.p2align 4,,10
	.p2align 3
.L19:
	movq	-1112(%rbp), %rdi
	movq	-1360(%rbp), %rdx
	movq	-1192(%rbp), %rcx
	movq	-1184(%rbp), %rbx
	movq	-1392(%rbp), %rsi
	subq	%rdi, %rdx
	movq	-1288(%rbp), %r13
	subq	%rcx, %rdx
	movq	-1384(%rbp), %rax
	movq	%rdx, -1120(%rbp)
	movq	-1352(%rbp), %rdx
	addq	%rbx, %rsi
	movq	-1328(%rbp), %r15
	movq	%rsi, -1176(%rbp)
	movq	-1296(%rbp), %r14
	subq	%rdi, %r13
	addl	$1, -1276(%rbp)
	subq	%rcx, %r13
	addq	%rbx, %rax
	subq	%rdi, %rdx
	movq	%r13, -1128(%rbp)
	movq	%rdx, %rsi
	movq	-1344(%rbp), %rdx
	subq	%rdi, %r15
	subq	%rcx, %rsi
	subq	%rdi, %r14
	subq	%rcx, %r15
	subq	%rcx, %r14
	movq	%rsi, %r13
	subq	%rdi, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %r9
	movq	-1336(%rbp), %rdx
	movq	%r9, -1136(%rbp)
	subq	%rdi, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %r11
	movq	-1320(%rbp), %rdx
	subq	%rdi, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %r10
	movq	-1312(%rbp), %rdx
	subq	%rdi, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %r12
	movq	-1304(%rbp), %rdx
	subq	%rdi, %rdx
	movq	%rdx, %rbx
	subq	%rcx, %rbx
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L16:
	movq	-1112(%rbp), %rdx
	movq	-1272(%rbp), %rsi
	movq	-1264(%rbp), %rcx
	movq	-1256(%rbp), %rdi
	movq	-1224(%rbp), %r9
	subq	%rdx, %rsi
	movq	-1192(%rbp), %r8
	subq	%rdx, %rcx
	movq	%rsi, -1104(%rbp)
	vmovsd	16(%rax), %xmm1
	subq	%rdx, %rdi
	movq	%rcx, -1096(%rbp)
	movq	-1240(%rbp), %rsi
	movq	%rdi, -1088(%rbp)
	movq	-1232(%rbp), %rcx
	subq	%rdx, %r9
	movq	-1248(%rbp), %rdi
	vmulsd	-1048(%rbp), %xmm1, %xmm1
	subq	%rdx, %rsi
	subq	%rdx, %rcx
	subq	%r8, %rsi
	subq	%rdx, %rdi
	movq	%r9, %rdx
	movq	-1216(%rbp), %r9
	subq	%r8, %rcx
	subq	%r8, %rdx
	subq	%r8, %rdi
	movq	%rdx, -1080(%rbp)
	movq	-1112(%rbp), %rdx
	subq	%rdx, %r9
	movq	%r9, -1072(%rbp)
	movq	-1208(%rbp), %r9
	subq	%rdx, %r9
	subq	%r8, %r9
	movq	%r9, -1064(%rbp)
	movq	-1200(%rbp), %r9
	subq	-1112(%rbp), %r9
	movq	%r9, %rdx
	subq	%r8, %rdx
	movq	-1120(%rbp), %r8
	vmovsd	(%rax,%r8,8), %xmm0
	vmulsd	-1040(%rbp), %xmm0, %xmm0
	movq	-1104(%rbp), %r8
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovsd	(%rax,%r13,8), %xmm0
	vmulsd	-1032(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	(%rax,%r8,8), %xmm1
	vmulsd	-1024(%rbp), %xmm1, %xmm2
	movq	-1136(%rbp), %r8
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	(%rax,%r8,8), %xmm0
	vmulsd	-1016(%rbp), %xmm0, %xmm2
	movq	-1096(%rbp), %r8
	movq	-1152(%rbp), %r9
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	(%rax,%r11,8), %xmm1
	vmulsd	-1008(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	(%rax,%r15,8), %xmm0
	vmulsd	-1000(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	(%rax,%r10,8), %xmm1
	vmulsd	-992(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	(%rax,%r8,8), %xmm0
	vmulsd	-984(%rbp), %xmm0, %xmm2
	movq	-1168(%rbp), %r8
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	(%rax,%r12,8), %xmm1
	vmulsd	-976(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	(%rax,%rbx,8), %xmm0
	vmulsd	-968(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	(%rax,%r9,8), %xmm1
	vmulsd	-960(%rbp), %xmm1, %xmm2
	movq	-1144(%rbp), %r9
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	(%rax,%r9,8), %xmm0
	vmulsd	-952(%rbp), %xmm0, %xmm2
	movq	-1160(%rbp), %r9
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	(%rax), %xmm1
	vmulsd	-944(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	(%rax,%r8,8), %xmm0
	vmulsd	-936(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	(%rax,%r9,8), %xmm1
	vmulsd	-928(%rbp), %xmm1, %xmm2
	movq	-1128(%rbp), %r9
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	(%rax,%r14,8), %xmm0
	vmulsd	-920(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	(%rax,%r9,8), %xmm1
	vmulsd	-912(%rbp), %xmm1, %xmm2
	movq	-1088(%rbp), %r8
	movq	-1072(%rbp), %r9
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	(%rax,%r8,8), %xmm0
	vmulsd	-904(%rbp), %xmm0, %xmm2
	movq	-1080(%rbp), %r8
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	(%rax,%rdi,8), %xmm1
	vmulsd	-896(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	(%rax,%rsi,8), %xmm0
	vmulsd	-888(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	(%rax,%rcx,8), %xmm1
	vmulsd	-880(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	(%rax,%r8,8), %xmm0
	vmulsd	-872(%rbp), %xmm0, %xmm2
	movq	-1104(%rbp), %r8
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	(%rax,%r9,8), %xmm1
	vmulsd	-864(%rbp), %xmm1, %xmm2
	movq	-1064(%rbp), %r9
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	(%rax,%r9,8), %xmm0
	vmulsd	-856(%rbp), %xmm0, %xmm2
	movq	-1120(%rbp), %r9
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	(%rax,%rdx,8), %xmm1
	vmulsd	-848(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	8(%rax,%r9,8), %xmm0
	vmulsd	-840(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	8(%rax,%r13,8), %xmm1
	vmulsd	-832(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	8(%rax,%r8,8), %xmm0
	vmulsd	-824(%rbp), %xmm0, %xmm2
	movq	-1136(%rbp), %r8
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	8(%rax,%r8,8), %xmm1
	vmulsd	-816(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	8(%rax,%r11,8), %xmm0
	vmulsd	-808(%rbp), %xmm0, %xmm2
	movq	-1096(%rbp), %r8
	movq	-1152(%rbp), %r9
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	8(%rax,%r15,8), %xmm1
	vmulsd	-800(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	8(%rax,%r10,8), %xmm0
	vmulsd	-792(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	8(%rax,%r8,8), %xmm1
	vmulsd	-784(%rbp), %xmm1, %xmm2
	movq	-1168(%rbp), %r8
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	8(%rax,%r12,8), %xmm0
	vmulsd	-776(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	8(%rax,%rbx,8), %xmm1
	vmulsd	-768(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	8(%rax,%r9,8), %xmm0
	vmulsd	-760(%rbp), %xmm0, %xmm2
	movq	-1144(%rbp), %r9
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	8(%rax,%r9,8), %xmm1
	vmulsd	-752(%rbp), %xmm1, %xmm2
	movq	-1160(%rbp), %r9
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	8(%rax), %xmm0
	vmulsd	-744(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	8(%rax,%r8,8), %xmm1
	vmulsd	-736(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	8(%rax,%r9,8), %xmm0
	vmulsd	-728(%rbp), %xmm0, %xmm2
	movq	-1128(%rbp), %r9
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	8(%rax,%r14,8), %xmm1
	vmulsd	-720(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	8(%rax,%r9,8), %xmm0
	vmulsd	-712(%rbp), %xmm0, %xmm2
	movq	-1088(%rbp), %r8
	movq	-1072(%rbp), %r9
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	8(%rax,%r8,8), %xmm1
	vmulsd	-704(%rbp), %xmm1, %xmm2
	movq	-1080(%rbp), %r8
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	8(%rax,%rdi,8), %xmm0
	vmulsd	-696(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	8(%rax,%rsi,8), %xmm1
	vmulsd	-688(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	8(%rax,%rcx,8), %xmm0
	vmulsd	-680(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	8(%rax,%r8,8), %xmm1
	vmulsd	-672(%rbp), %xmm1, %xmm2
	movq	-1104(%rbp), %r8
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	8(%rax,%r9,8), %xmm0
	vmulsd	-664(%rbp), %xmm0, %xmm2
	movq	-1064(%rbp), %r9
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	8(%rax,%r9,8), %xmm1
	vmulsd	-656(%rbp), %xmm1, %xmm2
	movq	-1120(%rbp), %r9
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	8(%rax,%rdx,8), %xmm0
	vmulsd	-648(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	16(%rax,%r9,8), %xmm1
	vmulsd	-640(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	16(%rax,%r13,8), %xmm0
	vmulsd	-632(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	16(%rax,%r8,8), %xmm1
	vmulsd	-624(%rbp), %xmm1, %xmm2
	movq	-1136(%rbp), %r8
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	16(%rax,%r8,8), %xmm0
	vmulsd	-616(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	16(%rax,%r11,8), %xmm1
	vmulsd	-608(%rbp), %xmm1, %xmm2
	movq	-1096(%rbp), %r8
	movq	-1152(%rbp), %r9
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	16(%rax,%r15,8), %xmm0
	vmulsd	-600(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	16(%rax,%r10,8), %xmm1
	vmulsd	-592(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	16(%rax,%r8,8), %xmm0
	vmulsd	-584(%rbp), %xmm0, %xmm2
	movq	-1168(%rbp), %r8
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	16(%rax,%r12,8), %xmm1
	vmulsd	-576(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	16(%rax,%rbx,8), %xmm0
	vmulsd	-568(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	16(%rax,%r9,8), %xmm1
	vmulsd	-560(%rbp), %xmm1, %xmm2
	movq	-1144(%rbp), %r9
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	16(%rax,%r9,8), %xmm0
	vmulsd	-552(%rbp), %xmm0, %xmm2
	movq	-1160(%rbp), %r9
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	16(%rax,%r8,8), %xmm1
	vmulsd	-544(%rbp), %xmm1, %xmm2
	movq	-1088(%rbp), %r8
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	16(%rax,%r9,8), %xmm0
	vmulsd	-536(%rbp), %xmm0, %xmm2
	movq	-1128(%rbp), %r9
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	16(%rax,%r14,8), %xmm1
	vmulsd	-528(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	16(%rax,%r9,8), %xmm0
	vmulsd	-520(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	16(%rax,%r8,8), %xmm1
	vmulsd	-512(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	16(%rax,%rdi,8), %xmm0
	vmulsd	-504(%rbp), %xmm0, %xmm2
	movq	-1080(%rbp), %r8
	movq	-1072(%rbp), %r9
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	16(%rax,%rsi,8), %xmm1
	vmulsd	-496(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	16(%rax,%rcx,8), %xmm0
	vmulsd	-488(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	16(%rax,%r8,8), %xmm1
	vmulsd	-480(%rbp), %xmm1, %xmm2
	movq	-1104(%rbp), %r8
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	16(%rax,%r9,8), %xmm0
	vmulsd	-472(%rbp), %xmm0, %xmm2
	movq	-1064(%rbp), %r9
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	16(%rax,%r9,8), %xmm1
	vmulsd	-464(%rbp), %xmm1, %xmm2
	movq	-1120(%rbp), %r9
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	16(%rax,%rdx,8), %xmm0
	vmulsd	-456(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	24(%rax,%r9,8), %xmm1
	vmulsd	-448(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	24(%rax,%r13,8), %xmm0
	vmulsd	-440(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	24(%rax,%r8,8), %xmm1
	vmulsd	-432(%rbp), %xmm1, %xmm2
	movq	-1136(%rbp), %r8
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	24(%rax,%r8,8), %xmm0
	vmulsd	-424(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	24(%rax,%r11,8), %xmm1
	vmulsd	-416(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	24(%rax,%r15,8), %xmm0
	vmulsd	-408(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	24(%rax,%r10,8), %xmm1
	vmulsd	-400(%rbp), %xmm1, %xmm2
	movq	-1096(%rbp), %r8
	movq	-1152(%rbp), %r9
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	24(%rax,%r8,8), %xmm0
	vmulsd	-392(%rbp), %xmm0, %xmm2
	movq	-1168(%rbp), %r8
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	24(%rax,%r12,8), %xmm1
	vmulsd	-384(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	24(%rax,%rbx,8), %xmm0
	vmulsd	-376(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	24(%rax,%r9,8), %xmm1
	vmulsd	-368(%rbp), %xmm1, %xmm2
	movq	-1144(%rbp), %r9
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	24(%rax,%r9,8), %xmm0
	vmulsd	-360(%rbp), %xmm0, %xmm2
	movq	-1160(%rbp), %r9
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	24(%rax), %xmm1
	vmulsd	-352(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	24(%rax,%r8,8), %xmm0
	vmulsd	-344(%rbp), %xmm0, %xmm2
	movq	-1088(%rbp), %r8
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	24(%rax,%r9,8), %xmm1
	vmulsd	-336(%rbp), %xmm1, %xmm2
	movq	-1128(%rbp), %r9
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	24(%rax,%r14,8), %xmm0
	vmulsd	-328(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	24(%rax,%r9,8), %xmm1
	vmulsd	-320(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	24(%rax,%r8,8), %xmm0
	vmulsd	-312(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	24(%rax,%rdi,8), %xmm1
	vmulsd	-304(%rbp), %xmm1, %xmm2
	movq	-1080(%rbp), %r8
	movq	-1072(%rbp), %r9
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	24(%rax,%rsi,8), %xmm0
	vmulsd	-296(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	24(%rax,%rcx,8), %xmm1
	vmulsd	-288(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	24(%rax,%r8,8), %xmm0
	vmulsd	-280(%rbp), %xmm0, %xmm2
	movq	-1104(%rbp), %r8
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	24(%rax,%r9,8), %xmm1
	vmulsd	-272(%rbp), %xmm1, %xmm2
	movq	-1064(%rbp), %r9
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	24(%rax,%r9,8), %xmm0
	vmulsd	-264(%rbp), %xmm0, %xmm2
	movq	-1120(%rbp), %r9
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	24(%rax,%rdx,8), %xmm1
	vmulsd	-256(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	32(%rax,%r9,8), %xmm0
	vmulsd	-248(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovsd	32(%rax,%r13,8), %xmm1
	vmulsd	-240(%rbp), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm1
	vmovsd	32(%rax,%r8,8), %xmm0
	vmulsd	-232(%rbp), %xmm0, %xmm0
	movq	-1136(%rbp), %r8
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	32(%rax,%r8,8), %xmm2
	vmulsd	-224(%rbp), %xmm2, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm2
	vmovsd	32(%rax,%r11,8), %xmm0
	vmulsd	-216(%rbp), %xmm0, %xmm1
	vaddsd	%xmm1, %xmm2, %xmm0
	vmovsd	32(%rax,%r15,8), %xmm2
	vmulsd	-208(%rbp), %xmm2, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm2
	vmovsd	32(%rax,%r10,8), %xmm0
	vmulsd	-200(%rbp), %xmm0, %xmm0
	movq	-1096(%rbp), %r8
	vmovsd	32(%rax,%r12,8), %xmm3
	movq	-1152(%rbp), %r9
	vmovsd	32(%rax,%rdi,8), %xmm1
	vaddsd	%xmm0, %xmm2, %xmm0
	vmovsd	32(%rax,%r8,8), %xmm2
	vmulsd	-192(%rbp), %xmm2, %xmm2
	movq	-1168(%rbp), %r8
	vmulsd	-104(%rbp), %xmm1, %xmm1
	vaddsd	%xmm2, %xmm0, %xmm2
	vmulsd	-184(%rbp), %xmm3, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	32(%rax,%rbx,8), %xmm2
	vmulsd	-176(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	32(%rax,%r9,8), %xmm3
	vmulsd	-168(%rbp), %xmm3, %xmm0
	movq	-1144(%rbp), %r9
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	32(%rax,%r9,8), %xmm2
	vmulsd	-160(%rbp), %xmm2, %xmm0
	movq	-1160(%rbp), %r9
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	32(%rax), %xmm3
	vmulsd	-152(%rbp), %xmm3, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	32(%rax,%r8,8), %xmm2
	vmulsd	-144(%rbp), %xmm2, %xmm0
	movq	-1088(%rbp), %r8
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	32(%rax,%r9,8), %xmm3
	vmulsd	-136(%rbp), %xmm3, %xmm0
	movq	-1128(%rbp), %r9
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	32(%rax,%r14,8), %xmm2
	vmulsd	-128(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	32(%rax,%r9,8), %xmm3
	vmulsd	-120(%rbp), %xmm3, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	32(%rax,%r8,8), %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	vmovsd	32(%rax,%rsi,8), %xmm4
	vmulsd	-96(%rbp), %xmm4, %xmm4
	movq	-1080(%rbp), %r8
	vmovsd	32(%rax,%rcx,8), %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	-88(%rbp), %xmm0, %xmm0
	movq	-1072(%rbp), %r9
	vmovsd	32(%rax,%r8,8), %xmm3
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	-80(%rbp), %xmm3, %xmm3
	movq	-1176(%rbp), %rsi
	vmovsd	32(%rax,%r9,8), %xmm2
	vaddsd	%xmm4, %xmm1, %xmm4
	movq	-1064(%rbp), %r9
	vmulsd	-72(%rbp), %xmm2, %xmm2
	addq	$8, %rsi
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	32(%rax,%r9,8), %xmm1
	vmulsd	-64(%rbp), %xmm1, %xmm1
	vaddsd	%xmm3, %xmm0, %xmm3
	vmovsd	32(%rax,%rdx,8), %xmm0
	addq	$8, %rax
	vmulsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rsi)
	movq	%rsi, -1176(%rbp)
	cmpq	%rax, -1184(%rbp)
	jne	.L16
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movq	-1368(%rbp), %rax
	addq	%rax, -1360(%rbp)
	addq	%rax, -1112(%rbp)
	addq	%rax, -1352(%rbp)
	addq	%rax, -1272(%rbp)
	addq	%rax, -1344(%rbp)
	addq	%rax, -1336(%rbp)
	addq	%rax, -1328(%rbp)
	addq	%rax, -1320(%rbp)
	addq	%rax, -1264(%rbp)
	addq	%rax, -1312(%rbp)
	addq	%rax, -1304(%rbp)
	addq	%rax, -1296(%rbp)
	addq	%rax, -1288(%rbp)
	addq	%rax, -1256(%rbp)
	addq	%rax, -1248(%rbp)
	addq	%rax, -1240(%rbp)
	movq	-1376(%rbp), %rbx
	addq	%rax, -1232(%rbp)
	addq	%rbx, -1184(%rbp)
	addq	%rax, -1224(%rbp)
	addq	%rax, -1216(%rbp)
	addq	%rax, -1208(%rbp)
	addq	%rax, -1200(%rbp)
	movl	-1276(%rbp), %ebx
	cmpl	%ebx, -1280(%rbp)
	jne	.L19
	movl	-1424(%rbp), %eax
	movl	-1420(%rbp), %ebx
	addl	%eax, -1416(%rbp)
	addl	%eax, -1412(%rbp)
	addl	%eax, -1408(%rbp)
	addl	%eax, -1404(%rbp)
	addl	%eax, -1400(%rbp)
	cmpl	%ebx, -1396(%rbp)
	jl	.L18
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L56
	movq	-1480(%rbp), %rdi
	call	dummy
	movq	-1472(%rbp), %rdi
	call	dummy
	leaq	-1048(%rbp), %rdi
	call	dummy
	leaq	-1040(%rbp), %rdi
	call	dummy
	leaq	-1032(%rbp), %rdi
	call	dummy
	leaq	-1024(%rbp), %rdi
	call	dummy
	leaq	-1016(%rbp), %rdi
	call	dummy
	leaq	-1008(%rbp), %rdi
	call	dummy
	leaq	-1000(%rbp), %rdi
	call	dummy
	leaq	-992(%rbp), %rdi
	call	dummy
	leaq	-984(%rbp), %rdi
	call	dummy
	leaq	-976(%rbp), %rdi
	call	dummy
	leaq	-968(%rbp), %rdi
	call	dummy
	leaq	-960(%rbp), %rdi
	call	dummy
	leaq	-952(%rbp), %rdi
	call	dummy
	leaq	-944(%rbp), %rdi
	call	dummy
	leaq	-936(%rbp), %rdi
	call	dummy
	leaq	-928(%rbp), %rdi
	call	dummy
	leaq	-920(%rbp), %rdi
	call	dummy
	leaq	-912(%rbp), %rdi
	call	dummy
	leaq	-904(%rbp), %rdi
	call	dummy
	leaq	-896(%rbp), %rdi
	call	dummy
	leaq	-888(%rbp), %rdi
	call	dummy
	leaq	-880(%rbp), %rdi
	call	dummy
	leaq	-872(%rbp), %rdi
	call	dummy
	leaq	-864(%rbp), %rdi
	call	dummy
	leaq	-856(%rbp), %rdi
	call	dummy
	leaq	-848(%rbp), %rdi
	call	dummy
	leaq	-840(%rbp), %rdi
	call	dummy
	leaq	-832(%rbp), %rdi
	call	dummy
	leaq	-824(%rbp), %rdi
	call	dummy
	leaq	-816(%rbp), %rdi
	call	dummy
	leaq	-808(%rbp), %rdi
	call	dummy
	leaq	-800(%rbp), %rdi
	call	dummy
	leaq	-792(%rbp), %rdi
	call	dummy
	leaq	-784(%rbp), %rdi
	call	dummy
	leaq	-776(%rbp), %rdi
	call	dummy
	leaq	-768(%rbp), %rdi
	call	dummy
	leaq	-760(%rbp), %rdi
	call	dummy
	leaq	-752(%rbp), %rdi
	call	dummy
	leaq	-744(%rbp), %rdi
	call	dummy
	leaq	-736(%rbp), %rdi
	call	dummy
	leaq	-728(%rbp), %rdi
	call	dummy
	leaq	-720(%rbp), %rdi
	call	dummy
	leaq	-712(%rbp), %rdi
	call	dummy
	leaq	-704(%rbp), %rdi
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
.L56:
	addq	$1440, %rsp
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
	movq	$0, -1472(%rbp)
	xorl	%edx, %edx
.L9:
	movq	-1472(%rbp), %rcx
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
	movq	-56(%rbp), %rsi
	testl	%r14d, %r14d
	movl	$1, %edi
	cmovg	%r14d, %edi
	movq	%rsi, -1472(%rbp)
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
	movq	-1472(%rbp), %rax
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
	movq	-1480(%rbp), %rdi
	call	dummy
	movq	-1472(%rbp), %rdi
	call	dummy
	leaq	-1048(%rbp), %rdi
	call	dummy
	leaq	-1040(%rbp), %rdi
	call	dummy
	leaq	-1032(%rbp), %rdi
	call	dummy
	leaq	-1024(%rbp), %rdi
	call	dummy
	leaq	-1016(%rbp), %rdi
	call	dummy
	leaq	-1008(%rbp), %rdi
	call	dummy
	leaq	-1000(%rbp), %rdi
	call	dummy
	leaq	-992(%rbp), %rdi
	call	dummy
	leaq	-984(%rbp), %rdi
	call	dummy
	leaq	-976(%rbp), %rdi
	call	dummy
	leaq	-968(%rbp), %rdi
	call	dummy
	leaq	-960(%rbp), %rdi
	call	dummy
	leaq	-952(%rbp), %rdi
	call	dummy
	leaq	-944(%rbp), %rdi
	call	dummy
	leaq	-936(%rbp), %rdi
	call	dummy
	leaq	-928(%rbp), %rdi
	call	dummy
	leaq	-920(%rbp), %rdi
	call	dummy
	leaq	-912(%rbp), %rdi
	call	dummy
	leaq	-904(%rbp), %rdi
	call	dummy
	leaq	-896(%rbp), %rdi
	call	dummy
	leaq	-888(%rbp), %rdi
	call	dummy
	leaq	-880(%rbp), %rdi
	call	dummy
	leaq	-872(%rbp), %rdi
	call	dummy
	leaq	-864(%rbp), %rdi
	call	dummy
	leaq	-856(%rbp), %rdi
	call	dummy
	leaq	-848(%rbp), %rdi
	call	dummy
	leaq	-840(%rbp), %rdi
	call	dummy
	leaq	-832(%rbp), %rdi
	call	dummy
	leaq	-824(%rbp), %rdi
	call	dummy
	leaq	-816(%rbp), %rdi
	call	dummy
	leaq	-808(%rbp), %rdi
	call	dummy
	leaq	-800(%rbp), %rdi
	call	dummy
	leaq	-792(%rbp), %rdi
	call	dummy
	leaq	-784(%rbp), %rdi
	call	dummy
	leaq	-776(%rbp), %rdi
	call	dummy
	leaq	-768(%rbp), %rdi
	call	dummy
	leaq	-760(%rbp), %rdi
	call	dummy
	leaq	-752(%rbp), %rdi
	call	dummy
	leaq	-744(%rbp), %rdi
	call	dummy
	leaq	-736(%rbp), %rdi
	call	dummy
	leaq	-728(%rbp), %rdi
	call	dummy
	leaq	-720(%rbp), %rdi
	call	dummy
	leaq	-712(%rbp), %rdi
	call	dummy
	leaq	-704(%rbp), %rdi
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
	cmpl	$2, -1420(%rbp)
	jle	.L15
	leal	-2(%r12), %eax
	movl	%r12d, %esi
	imull	%ebx, %esi
	movl	%esi, -1424(%rbp)
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
	movq	$0, -1472(%rbp)
	testl	%eax, %eax
	jne	.L26
	movq	-56(%rbp), %rax
	movq	%rax, -1472(%rbp)
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
	.align 8
.LC85:
	.long	1623821418
	.long	1070680633
	.align 8
.LC86:
	.long	123784100
	.long	1071927609
	.align 8
.LC87:
	.long	3374403462
	.long	1071334699
	.align 8
.LC88:
	.long	37669574
	.long	1072126638
	.align 8
.LC89:
	.long	4199736124
	.long	1069716366
	.align 8
.LC90:
	.long	3489177200
	.long	1069629641
	.align 8
.LC91:
	.long	2566685914
	.long	1071629413
	.align 8
.LC92:
	.long	1108666650
	.long	1072196157
	.align 8
.LC93:
	.long	2522826950
	.long	1071245120
	.align 8
.LC94:
	.long	3772873400
	.long	1072348534
	.align 8
.LC95:
	.long	274888190
	.long	1071282379
	.align 8
.LC96:
	.long	282478085
	.long	1072624877
	.align 8
.LC97:
	.long	2975480043
	.long	1072266867
	.align 8
.LC98:
	.long	2043182490
	.long	1071724672
	.align 8
.LC99:
	.long	2345673422
	.long	1071709276
	.align 8
.LC100:
	.long	2546905970
	.long	1070969460
	.align 8
.LC101:
	.long	2025199690
	.long	1072214372
	.align 8
.LC102:
	.long	4104475956
	.long	1072665880
	.align 8
.LC103:
	.long	2336618887
	.long	1072632248
	.align 8
.LC104:
	.long	3416520344
	.long	1069660250
	.align 8
.LC105:
	.long	2453772194
	.long	1072374514
	.align 8
.LC106:
	.long	1131170896
	.long	1072582402
	.align 8
.LC107:
	.long	2407091984
	.long	1072363602
	.align 8
.LC108:
	.long	991097322
	.long	1070673027
	.align 8
.LC109:
	.long	3959286382
	.long	1070669397
	.align 8
.LC110:
	.long	58053901
	.long	1071685317
	.align 8
.LC111:
	.long	4137694863
	.long	1072688359
	.align 8
.LC112:
	.long	524880342
	.long	1070612962
	.align 8
.LC113:
	.long	3727930555
	.long	1072203994
	.align 8
.LC114:
	.long	4292835175
	.long	1071926733
	.align 8
.LC115:
	.long	3692606878
	.long	1072268286
	.align 8
.LC116:
	.long	3868055336
	.long	1072686042
	.align 8
.LC117:
	.long	4213117256
	.long	1070108225
	.align 8
.LC118:
	.long	1574405609
	.long	1072416928
	.align 8
.LC119:
	.long	935561737
	.long	1072258091
	.align 8
.LC120:
	.long	171373708
	.long	1071475920
	.align 8
.LC121:
	.long	2917695280
	.long	1071461692
	.align 8
.LC122:
	.long	359446798
	.long	1072312459
	.align 8
.LC123:
	.long	505377400
	.long	1071718452
	.align 8
.LC124:
	.long	1431695366
	.long	1072359082
	.align 8
.LC125:
	.long	2936764416
	.long	1072103958
	.align 8
.LC126:
	.long	3564125176
	.long	1069292700
	.align 8
.LC127:
	.long	3364526469
	.long	1071982855
	.align 8
.LC128:
	.long	2397333227
	.long	1072267688
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
