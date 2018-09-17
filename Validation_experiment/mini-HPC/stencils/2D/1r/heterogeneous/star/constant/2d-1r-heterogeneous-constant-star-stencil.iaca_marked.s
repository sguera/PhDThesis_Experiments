	.file	"2d-1r-heterogeneous-constant-star-stencil.c_compilable.c"
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
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, %rbx
	subq	$416, %rsp
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
	leaq	-80(%rbp), %rdi
	imull	%eax, %r14d
	movq	%rax, %r12
	movslq	%r14d, %rcx
	leaq	0(,%rcx,8), %r15
	movq	%r15, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %rbx
	testl	%r14d, %r14d
	jle	.L3
	movq	%rbx, %rax
	movl	$5, %esi
	leal	-1(%r14), %ecx
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%esi, %edx
	cmpl	%edx, %ecx
	jb	.L37
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%rbx)
	cmpl	$1, %eax
	je	.L39
	vmovsd	%xmm0, 8(%rbx)
	cmpl	$3, %eax
	jne	.L40
	vmovsd	%xmm0, 16(%rbx)
	movl	$3, %r8d
.L5:
	movl	%r14d, %edi
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
	cmpl	%eax, %esi
	ja	.L7
	movl	%edi, %edx
	andl	$-4, %edx
	leal	(%rdx,%r8), %eax
	cmpl	%edx, %edi
	je	.L75
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rbx,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%rbx,%rax,8)
.L8:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	movl	%ecx, -216(%rbp)
	call	posix_memalign
	movl	-216(%rbp), %ecx
	testl	%eax, %eax
	je	.L76
	testl	%r14d, %r14d
	movl	$0, %eax
	movl	$1, %edi
	cmovg	%ecx, %eax
	cmovg	%r14d, %edi
	cmpl	$4, %eax
	ja	.L77
	xorl	%r15d, %r15d
	xorl	%eax, %eax
.L29:
	vmovsd	.LC2(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r14d
	jle	.L33
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r15,%rdx,8)
	cmpl	%eax, %r14d
	jle	.L33
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
.L33:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -208(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC8(%rip), %rax
	movq	%rax, -80(%rbp)
	leal	-1(%r13), %eax
	movl	%eax, -316(%rbp)
	testl	%edx, %edx
	jne	.L78
	cmpl	$1, -316(%rbp)
	jle	.L79
.L14:
	leal	-1(%r12), %eax
	movl	%eax, -240(%rbp)
	cmpl	$1, %eax
	jle	.L71
	movslq	%r12d, %rsi
	leaq	-112(%rbp), %rdx
	leaq	8(%rbx), %r9
	movl	%r12d, %r13d
	leaq	0(,%rsi,8), %r14
	movq	%rsi, -328(%rbp)
	leaq	-176(%rbp), %rdi
	leaq	40(%r15,%r14), %rax
	movq	%rsi, -288(%rbp)
	leaq	8(%r15,%r14), %rcx
	movq	%rax, -272(%rbp)
	leal	-2(%r12), %eax
	leaq	(%rbx,%r14), %r8
	movl	%eax, -264(%rbp)
	leaq	1(%rsi,%rax), %rax
	leaq	-144(%rbp), %rsi
	leaq	(%r15,%rax,8), %r11
	leal	(%r12,%r12), %eax
	movq	%r9, -280(%rbp)
	movl	%eax, -220(%rbp)
	cltq
	leaq	40(%rbx), %r9
	movq	%rax, -432(%rbp)
	salq	$3, %rax
	movq	%rax, -256(%rbp)
	leal	-3(%r12), %eax
	movl	%eax, -420(%rbp)
	leaq	8(,%rax,8), %rax
	movq	%rax, -440(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -408(%rbp)
	addq	$8, %rax
	movq	%rax, -344(%rbp)
	leaq	8(%rsi), %rax
	movq	%rax, -352(%rbp)
	leaq	8(%rdx), %rax
	movq	%rax, -360(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rdi, -416(%rbp)
	addq	$8, %rax
	addq	$8, %rdi
	movq	%r9, -392(%rbp)
	leaq	48(%rbx), %r9
	movl	%r12d, -320(%rbp)
	movq	%r14, -232(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -296(%rbp)
	movl	$0, -224(%rbp)
	movl	$1, -260(%rbp)
	movq	%rsi, -376(%rbp)
	movq	%rdx, -384(%rbp)
	movq	%r9, -400(%rbp)
	movq	%rdi, -336(%rbp)
	movq	%rax, -368(%rbp)
	movq	%r15, -216(%rbp)
	movq	%r11, %r15
	.p2align 4,,10
	.p2align 3
.L23:
	addl	$1, -260(%rbp)
	cmpq	-336(%rbp), %rcx
	setnb	%sil
	cmpq	-416(%rbp), %r15
	movq	-272(%rbp), %r10
	setbe	%al
	movq	-392(%rbp), %rdi
	movq	-248(%rbp), %r9
	orl	%eax, %esi
	cmpq	-344(%rbp), %rcx
	movq	-280(%rbp), %r11
	setnb	%dl
	cmpq	-408(%rbp), %r15
	setbe	%al
	orl	%edx, %eax
	andl	%esi, %eax
	cmpl	$5, -264(%rbp)
	seta	%dl
	andl	%edx, %eax
	cmpq	-352(%rbp), %rcx
	setnb	%sil
	cmpq	-376(%rbp), %r15
	setbe	%dl
	orl	%edx, %esi
	andl	%esi, %eax
	cmpq	-360(%rbp), %rcx
	setnb	%dl
	cmpq	-384(%rbp), %r15
	setbe	%sil
	orl	%edx, %esi
	andl	%eax, %esi
	leaq	-80(%rbp), %rax
	cmpq	%rax, %r15
	setbe	%dl
	cmpq	-368(%rbp), %rcx
	setnb	%al
	orl	%edx, %eax
	movq	-400(%rbp), %rdx
	addq	-232(%rbp), %rdx
	andl	%esi, %eax
	cmpq	%rdx, %rcx
	setnb	%dl
	cmpq	%r10, %r8
	setnb	%sil
	orl	%esi, %edx
	movq	%r11, %rsi
	andl	%edx, %eax
	movq	%rdi, %rdx
	addq	%r9, %rdx
	cmpq	%rdx, %rcx
	setnb	%dl
	addq	%r9, %rsi
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %edx
	testb	%dl, %al
	je	.L48
	movq	%rdi, %rax
	movq	-256(%rbp), %rdi
	addq	%rdi, %rax
	cmpq	%rax, %rcx
	movq	%r11, %rax
	setnb	%dl
	addq	%rdi, %rax
	cmpq	%rax, %r10
	setbe	%al
	orb	%al, %dl
	je	.L48
	movq	-232(%rbp), %rdx
	addq	%r11, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-420(%rbp), %eax
	ja	.L43
	movl	$1, -236(%rbp)
	testl	%edx, %edx
	je	.L17
	leal	1(%r13), %edi
	vmovsd	(%r8), %xmm1
	vmulsd	-176(%rbp), %xmm1, %xmm0
	leal	2(%r13), %eax
	movslq	%edi, %rdi
	cltq
	movl	-224(%rbp), %r12d
	movl	-220(%rbp), %r11d
	leaq	(%rbx,%rdi,8), %r10
	leaq	(%rbx,%rax,8), %rsi
	movl	$2, -236(%rbp)
	vmovsd	(%r10), %xmm2
	vmulsd	-208(%rbp), %xmm2, %xmm2
	leal	1(%r12), %r9d
	movslq	%r9d, %r9
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rsi), %xmm2
	vmulsd	-144(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%r9,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	leal	1(%r11), %r9d
	movslq	%r9d, %r9
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%r9,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-216(%rbp), %r9
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r9,%rdi,8)
	cmpl	$1, %edx
	je	.L17
	vmovsd	(%rsi), %xmm1
	vmovsd	(%r10), %xmm0
	leal	3(%r13), %r9d
	movl	%r12d, %r10d
	vmulsd	-176(%rbp), %xmm0, %xmm0
	movslq	%r9d, %r9
	leal	2(%r12), %edi
	movl	-220(%rbp), %r12d
	vmulsd	-208(%rbp), %xmm1, %xmm3
	leaq	(%rbx,%r9,8), %r11
	movslq	%edi, %rdi
	movl	$3, -236(%rbp)
	vmovsd	(%r11), %xmm2
	vaddsd	%xmm0, %xmm3, %xmm1
	vmulsd	-144(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%rdi,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	leal	2(%r12), %edi
	movslq	%edi, %rdi
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rdi,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-216(%rbp), %rdi
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi,%rax,8)
	cmpl	$3, %edx
	jne	.L17
	vmovsd	(%r11), %xmm1
	vmovsd	(%rsi), %xmm0
	leal	4(%r13), %eax
	movl	$4, -236(%rbp)
	vmulsd	-208(%rbp), %xmm1, %xmm1
	cltq
	vmulsd	-176(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm3
	vmovsd	(%rbx,%rax,8), %xmm0
	leal	3(%r10), %eax
	vmulsd	-144(%rbp), %xmm0, %xmm0
	cltq
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%rbx,%rax,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	leal	3(%r12), %eax
	cltq
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rax,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi,%r9,8)
.L17:
	movl	-264(%rbp), %edi
	movl	%edx, %eax
	movq	-296(%rbp), %r10
	movq	%rcx, -312(%rbp)
	movq	-232(%rbp), %r11
	vbroadcastsd	-112(%rbp), %ymm3
	subl	%edx, %edi
	movq	-288(%rbp), %rdx
	vbroadcastsd	-208(%rbp), %ymm6
	leaq	(%r11,%rax,8), %r9
	movl	%edi, -300(%rbp)
	shrl	$2, %edi
	vbroadcastsd	-176(%rbp), %ymm5
	leaq	1(%rax,%rdx), %rsi
	leaq	2(%rax,%rdx), %rdx
	movl	%edi, -304(%rbp)
	addq	%rbx, %r9
	leaq	(%rbx,%rdx,8), %r12
	leaq	1(%rax,%r10), %rdx
	salq	$3, %rsi
	vbroadcastsd	-144(%rbp), %ymm4
	leaq	(%rbx,%rdx,8), %r11
	movq	-432(%rbp), %rdx
	vbroadcastsd	-80(%rbp), %ymm2
	leaq	(%rbx,%rsi), %rdi
	movl	-304(%rbp), %ecx
	addq	-216(%rbp), %rsi
	leaq	1(%r10,%rdx), %rdx
	addq	%rdx, %rax
	xorl	%edx, %edx
	leaq	(%rbx,%rax,8), %r10
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	vmulpd	(%r9,%rax), %ymm5, %ymm0
	addl	$1, %edx
	vmulpd	(%rdi,%rax), %ymm6, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm1
	vmulpd	(%r12,%rax), %ymm4, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmulpd	(%r11,%rax), %ymm3, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmulpd	(%r10,%rax), %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpl	%edx, %ecx
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-300(%rbp), %esi
	movl	-236(%rbp), %edi
	movq	-312(%rbp), %rcx
	movl	%esi, %eax
	andl	$-4, %eax
	addl	%eax, %edi
	cmpl	%eax, %esi
	je	.L22
.L16:
	leal	0(%r13,%rdi), %esi
	leal	-1(%rdi,%r13), %edx
	movl	-224(%rbp), %r11d
	movq	-216(%rbp), %r10
	movslq	%esi, %rsi
	movslq	%edx, %rdx
	leal	1(%rdi), %eax
	vmovsd	(%rbx,%rdx,8), %xmm2
	vmovsd	(%rbx,%rsi,8), %xmm1
	leal	(%rax,%r13), %r9d
	leal	(%r11,%rdi), %edx
	vmulsd	-176(%rbp), %xmm2, %xmm2
	movslq	%r9d, %r9
	movslq	%edx, %rdx
	vmulsd	-208(%rbp), %xmm1, %xmm0
	leaq	(%rbx,%r9,8), %r12
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r12), %xmm2
	vmulsd	-144(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%rdx,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movl	-220(%rbp), %edx
	addl	%edi, %edx
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rdx,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%rsi,8)
	cmpl	%eax, -240(%rbp)
	jle	.L22
	vmovsd	(%rbx,%rsi,8), %xmm3
	vmovsd	(%r12), %xmm0
	leal	2(%rdi), %edx
	vmulsd	-208(%rbp), %xmm0, %xmm0
	leal	0(%r13,%rdx), %r10d
	movl	-224(%rbp), %esi
	vmulsd	-176(%rbp), %xmm3, %xmm3
	movslq	%r10d, %r10
	leaq	(%rbx,%r10,8), %r11
	addl	%eax, %esi
	addl	-220(%rbp), %eax
	vmovsd	(%r11), %xmm2
	movslq	%esi, %rsi
	cltq
	vaddsd	%xmm0, %xmm3, %xmm1
	vmulsd	-144(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%rsi,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rax,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-216(%rbp), %rax
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rax,%r9,8)
	cmpl	%edx, -240(%rbp)
	jle	.L22
	vmovsd	(%rbx,%r9,8), %xmm3
	vmovsd	(%r11), %xmm0
	leal	3(%rdi), %eax
	vmulsd	-208(%rbp), %xmm0, %xmm0
	leal	0(%r13,%rax), %esi
	movl	-224(%rbp), %r11d
	vmulsd	-176(%rbp), %xmm3, %xmm3
	movslq	%esi, %rsi
	leaq	(%rbx,%rsi,8), %r12
	leal	(%r11,%rdx), %r9d
	addl	-220(%rbp), %edx
	vmovsd	(%r12), %xmm2
	movslq	%r9d, %r9
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm3, %xmm1
	vmulsd	-144(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%r9,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rdx,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-216(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r10,8)
	cmpl	%eax, -240(%rbp)
	jle	.L22
	vmovsd	(%rbx,%r10,8), %xmm3
	vmovsd	(%r12), %xmm0
	leal	4(%rdi), %edx
	vmulsd	-208(%rbp), %xmm0, %xmm0
	leal	0(%r13,%rdx), %r9d
	movl	-224(%rbp), %r10d
	vmulsd	-176(%rbp), %xmm3, %xmm3
	movslq	%r9d, %r9
	leaq	(%rbx,%r9,8), %r11
	addl	%eax, %r10d
	addl	-220(%rbp), %eax
	vmovsd	(%r11), %xmm2
	movslq	%r10d, %r10
	cltq
	vaddsd	%xmm0, %xmm3, %xmm1
	vmulsd	-144(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%r10,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rax,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-216(%rbp), %rax
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rax,%rsi,8)
	cmpl	%edx, -240(%rbp)
	jle	.L22
	vmovsd	(%rbx,%rsi,8), %xmm3
	vmovsd	(%r11), %xmm0
	leal	5(%rdi), %eax
	vmulsd	-208(%rbp), %xmm0, %xmm0
	leal	0(%r13,%rax), %r10d
	movl	-224(%rbp), %r11d
	vmulsd	-176(%rbp), %xmm3, %xmm3
	movslq	%r10d, %r10
	leaq	(%rbx,%r10,8), %r12
	leal	(%r11,%rdx), %esi
	vmovsd	(%r12), %xmm2
	movslq	%esi, %rsi
	vaddsd	%xmm0, %xmm3, %xmm1
	vmulsd	-144(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	(%rbx,%rsi,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movl	-220(%rbp), %esi
	addl	%esi, %edx
	movslq	%edx, %rdx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rdx,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-216(%rbp), %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r9,8)
	cmpl	%eax, -240(%rbp)
	jle	.L22
	vmovsd	(%rbx,%r9,8), %xmm1
	vmovsd	(%r12), %xmm0
	leal	6(%rdi,%r13), %edx
	vmulsd	-176(%rbp), %xmm1, %xmm1
	movslq	%edx, %rdx
	vmulsd	-208(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm3
	vmovsd	(%rbx,%rdx,8), %xmm0
	leal	(%r11,%rax), %edx
	addl	%esi, %eax
	vmulsd	-144(%rbp), %xmm0, %xmm0
	movslq	%edx, %rdx
	cltq
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%rbx,%rdx,8), %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movq	-216(%rbp), %rdx
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rbx,%rax,8), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r10,8)
.L22:
	movl	-320(%rbp), %eax
	addq	%r14, %rcx
	addq	%r14, %r8
	addq	%r14, %r15
	movq	-328(%rbp), %rdi
	addq	%r14, -272(%rbp)
	addq	%rdi, -288(%rbp)
	addl	%eax, %r13d
	addq	%rdi, -296(%rbp)
	movl	-260(%rbp), %edi
	addl	%eax, -224(%rbp)
	addl	%eax, -220(%rbp)
	addq	%r14, -232(%rbp)
	addq	%r14, -248(%rbp)
	addq	%r14, -256(%rbp)
	cmpl	%edi, -316(%rbp)
	jg	.L23
	movq	-216(%rbp), %r15
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L72
	movq	%rbx, %rdi
	call	dummy
	movq	%r15, %rdi
	call	dummy
	leaq	-208(%rbp), %rdi
	call	dummy
	leaq	-176(%rbp), %rdi
	call	dummy
	leaq	-144(%rbp), %rdi
	call	dummy
	leaq	-112(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L72:
	addq	$416, %rsp
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
	.p2align 4,,10
	.p2align 3
.L48:
	.cfi_restore_state
	movq	-232(%rbp), %rsi
	movq	-216(%rbp), %rdi
	xorl	%eax, %eax
	movq	-256(%rbp), %rdx
	movq	-440(%rbp), %r9
	addq	%rsi, %rdi
	movq	-248(%rbp), %rsi
	addq	%rbx, %rdx
	addq	%rbx, %rsi
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	-208(%rbp), %xmm1
	vmovsd	-176(%rbp), %xmm2
	vmulsd	8(%r8,%rax), %xmm1, %xmm0
	vmulsd	(%r8,%rax), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%r8,%rax), %xmm2
	vmulsd	-144(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	8(%rsi,%rax), %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	8(%rdx,%rax), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rdi,%rax)
	addq	$8, %rax
	cmpq	%r9, %rax
	jne	.L21
	jmp	.L22
.L43:
	movl	$1, %edi
	jmp	.L16
.L76:
	movq	-80(%rbp), %r15
	testl	%r14d, %r14d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r14d, %edi
	movq	%r15, %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r14d, %r14d
	cmovle	%eax, %ecx
	movl	%ecx, %r8d
	leal	3(%rdx), %ecx
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r8d
	jb	.L29
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %edx
	je	.L41
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %edx
	jne	.L42
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	vmovapd	.LC3(%rip), %ymm0
	leaq	(%r15,%rdx,8), %rcx
	xorl	%edx, %edx
	movl	%edi, %esi
	shrl	$2, %esi
	.p2align 4,,10
	.p2align 3
.L11:
	addl	$1, %edx
	vmovapd	%ymm0, (%rcx)
	addq	$32, %rcx
	cmpl	%edx, %esi
	ja	.L11
	movl	%edi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %edi
	jne	.L29
	jmp	.L33
.L78:
	movq	%rbx, %rdi
	vzeroupper
	call	dummy
	movq	%r15, %rdi
	call	dummy
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$1, -316(%rbp)
	jg	.L14
	jmp	.L15
.L39:
	movl	$1, %r8d
	jmp	.L5
.L77:
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	jmp	.L9
.L41:
	movl	$1, %eax
	jmp	.L9
.L75:
	vzeroupper
	jmp	.L8
.L3:
	movq	%r15, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	xorl	%r15d, %r15d
	call	posix_memalign
	testl	%eax, %eax
	jne	.L33
	movq	-80(%rbp), %r15
	jmp	.L33
.L71:
	vzeroupper
	jmp	.L15
.L42:
	movl	$2, %eax
	jmp	.L9
.L40:
	movl	$2, %r8d
	jmp	.L5
.L79:
	vzeroupper
	jmp	.L72
.L37:
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
