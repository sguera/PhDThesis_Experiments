	.file	"2d-1r-homogeneous-constant-box-stencil.c_compilable.c"
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
	subq	$256, %rsp
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %r12
	call	strtol
	movl	%r12d, %r13d
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	imull	%eax, %r13d
	movq	%rax, %rbx
	movslq	%r13d, %r15
	leaq	0(,%r15,8), %r8
	movq	%r8, %rdx
	movq	%r8, -88(%rbp)
	call	posix_memalign
	movq	-88(%rbp), %r8
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %r15
	testl	%r13d, %r13d
	jle	.L3
	movq	%r15, %rax
	movl	$5, %ecx
	leal	-1(%r13), %r14d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r14d
	jb	.L38
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L40
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L41
	vmovsd	%xmm0, 16(%r15)
	movl	$3, %edi
.L5:
	movl	%r13d, %esi
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r15,%rax,8), %rdx
	subl	%eax, %esi
	xorl	%eax, %eax
	movl	%esi, %ecx
	shrl	$2, %ecx
	.p2align 4,,10
	.p2align 3
.L7:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%eax, %ecx
	ja	.L7
	movl	%esi, %edx
	andl	$-4, %edx
	leal	(%rdx,%rdi), %eax
	cmpl	%edx, %esi
	je	.L77
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r15,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r15,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r15,%rax,8)
.L8:
	movq	%r8, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L78
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %r14d
	cmovg	%r13d, %edi
	cmpl	$4, %r14d
	ja	.L79
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
.L30:
	vmovsd	.LC2(%rip), %xmm0
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L34
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L34:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -80(%rbp)
	leal	-1(%r12), %eax
	movl	%eax, -236(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$1, -236(%rbp)
	jle	.L81
.L14:
	leal	-1(%rbx), %eax
	movl	%eax, -284(%rbp)
	cmpl	$1, %eax
	jle	.L73
	movslq	%ebx, %rsi
	movq	-128(%rbp), %rdi
	leal	(%rbx,%rbx), %edx
	leal	-3(%rbx), %ecx
	leaq	0(,%rsi,8), %r12
	movl	%ebx, -252(%rbp)
	movq	%r15, %r9
	leaq	8(%rdi,%r12), %rax
	movl	%ebx, -116(%rbp)
	leaq	(%r15,%r12), %r10
	movq	%r12, %r14
	movq	%rax, -168(%rbp)
	leaq	40(%rdi,%r12), %rax
	leaq	(%r10,%r12), %r13
	movq	%rax, -176(%rbp)
	movslq	%edx, %rax
	leaq	(%rdi,%r12), %r11
	movq	%rax, -96(%rbp)
	salq	$3, %rax
	movq	%rax, -136(%rbp)
	leal	-2(%rbx), %eax
	leaq	48(%r15), %rbx
	movl	%eax, -160(%rbp)
	addq	%rsi, %rax
	leaq	8(%rdi,%rax,8), %rax
	movl	%ecx, -256(%rbp)
	leaq	8(,%rcx,8), %rcx
	movq	%rax, -280(%rbp)
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rsi, -248(%rbp)
	movq	%rax, -264(%rbp)
	leal	1(%rdx), %eax
	movl	%eax, -288(%rbp)
	leal	2(%rdx), %eax
	movl	%eax, -292(%rbp)
	leal	3(%rdx), %eax
	movq	%rcx, -304(%rbp)
	movl	%edx, -240(%rbp)
	movq	%rsi, -88(%rbp)
	movl	$0, -120(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -104(%rbp)
	movl	$1, -156(%rbp)
	movq	%rbx, -272(%rbp)
	movl	%eax, -296(%rbp)
	movq	%r12, -112(%rbp)
	movq	%r10, %r12
	movq	%r13, %r10
	movq	%r11, %r13
	.p2align 4,,10
	.p2align 3
.L24:
	leaq	-80(%rbp), %rcx
	movq	-280(%rbp), %rax
	addq	-104(%rbp), %rax
	movq	-168(%rbp), %rbx
	addl	$1, -156(%rbp)
	cmpq	%rax, %rcx
	movq	-264(%rbp), %rax
	setnb	%cl
	movq	-176(%rbp), %rsi
	movq	-272(%rbp), %rdi
	cmpq	%rax, %rbx
	setnb	%al
	orl	%eax, %ecx
	leaq	48(%r9), %rax
	cmpq	%rax, %rbx
	setnb	%dl
	cmpq	%rsi, %r9
	setnb	%al
	orl	%edx, %eax
	andl	%ecx, %eax
	cmpl	$5, -160(%rbp)
	seta	%dl
	andl	%edx, %eax
	movq	-112(%rbp), %rdx
	addq	%rdi, %rdx
	cmpq	%rdx, %rbx
	setnb	%dl
	cmpq	%rsi, %r12
	setnb	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L49
	movq	-136(%rbp), %rax
	addq	%rdi, %rax
	cmpq	%rax, %rbx
	setnb	%dl
	cmpq	%rsi, %r10
	setnb	%al
	orb	%al, %dl
	je	.L49
	leaq	8(%r12), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-256(%rbp), %eax
	ja	.L44
	movl	$1, -144(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	-116(%rbp), %edi
	movl	-120(%rbp), %ebx
	movl	$2, -144(%rbp)
	vmovsd	(%r9), %xmm0
	leal	1(%rdi), %r11d
	movslq	%r11d, %r11
	leaq	(%r15,%r11,8), %rax
	movq	%rax, -200(%rbp)
	leal	1(%rbx), %eax
	cltq
	leaq	(%r15,%rax,8), %rsi
	movl	-288(%rbp), %eax
	movq	%rsi, -184(%rbp)
	addl	%ebx, %eax
	cltq
	leaq	(%r15,%rax,8), %r8
	leal	2(%rbx), %eax
	movq	%r8, -192(%rbp)
	movl	-292(%rbp), %r8d
	cltq
	leaq	(%r15,%rax,8), %rsi
	leal	2(%rdi), %eax
	addl	%ebx, %r8d
	cltq
	movslq	%r8d, %rdi
	leaq	(%r15,%r11,8), %r8
	leaq	(%r15,%rax,8), %rcx
	vaddsd	(%r8), %xmm0, %xmm0
	movq	-184(%rbp), %r8
	leaq	(%r15,%rdi,8), %rdi
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	movq	-192(%rbp), %r8
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-128(%rbp), %r8
	vmovsd	%xmm0, (%r8,%r11,8)
	cmpl	$1, %edx
	je	.L17
	leal	3(%rbx), %r11d
	movl	-116(%rbp), %ebx
	vmovsd	(%rcx), %xmm0
	movslq	%r11d, %r11
	addl	$3, %ebx
	leaq	(%r15,%r11,8), %r11
	movslq	%ebx, %rbx
	leaq	(%r15,%rbx,8), %r8
	movq	%r8, -144(%rbp)
	movq	-184(%rbp), %r8
	movl	$3, -144(%rbp)
	vaddsd	(%r8), %xmm0, %xmm0
	movq	-200(%rbp), %r8
	vaddsd	(%r8), %xmm0, %xmm0
	movq	-192(%rbp), %r8
	vaddsd	(%r8), %xmm0, %xmm0
	leaq	(%r15,%rbx,8), %r8
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	movl	-296(%rbp), %edi
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	movl	-120(%rbp), %r8d
	addl	%r8d, %edi
	movslq	%edi, %rdi
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-128(%rbp), %rdi
	vmovsd	%xmm0, (%rdi,%rax,8)
	cmpl	$3, %edx
	jne	.L17
	leaq	(%r15,%rbx,8), %rax
	vmovsd	(%rsi), %xmm0
	movl	-116(%rbp), %edi
	movl	$4, -144(%rbp)
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	movl	-240(%rbp), %ecx
	leal	2(%rcx), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	3(%rcx), %eax
	cltq
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%r8), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%rdi), %eax
	movq	-128(%rbp), %rdi
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%rcx), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdi,%rbx,8)
.L17:
	movl	-160(%rbp), %edi
	movl	%edx, %eax
	movq	-88(%rbp), %rsi
	movq	%r15, -232(%rbp)
	leaq	0(,%rax,8), %rcx
	vbroadcastsd	-80(%rbp), %ymm1
	subl	%edx, %edi
	movq	-104(%rbp), %rdx
	leaq	1(%rax,%rsi), %rsi
	movl	%edi, -184(%rbp)
	shrl	$2, %edi
	salq	$3, %rsi
	leaq	(%rcx,%rdx), %r8
	movq	-112(%rbp), %rdx
	movl	%edi, -192(%rbp)
	leaq	(%r15,%rsi), %rbx
	movq	%rbx, -200(%rbp)
	addq	%r15, %r8
	addq	-128(%rbp), %rsi
	leaq	(%rcx,%rdx), %rdi
	addq	-136(%rbp), %rcx
	leaq	(%r15,%rcx), %r11
	leaq	(%r15,%rdi), %rdx
	movq	-88(%rbp), %rcx
	movq	%r11, -216(%rbp)
	movq	-152(%rbp), %r11
	movq	%rdx, -208(%rbp)
	leaq	1(%rax,%r11), %rdx
	leaq	(%r15,%rdx,8), %rbx
	movq	%rbx, -224(%rbp)
	movq	-96(%rbp), %rbx
	leaq	1(%rax,%rbx), %rdx
	leaq	(%r15,%rdx,8), %rbx
	leaq	2(%rax,%r11), %rdx
	leaq	(%r15,%rdx,8), %r11
	leaq	2(%rax,%rcx), %rdx
	movq	-96(%rbp), %rcx
	leaq	(%r15,%rdx,8), %rdi
	xorl	%edx, %edx
	leaq	2(%rax,%rcx), %rax
	leaq	(%r15,%rax,8), %rcx
	movq	-224(%rbp), %r15
	xorl	%eax, %eax
	movq	%r14, -224(%rbp)
	movq	-216(%rbp), %r14
	movq	%r13, -216(%rbp)
	movq	-208(%rbp), %r13
	movq	%r12, -208(%rbp)
	movq	-200(%rbp), %r12
	movq	%r9, -200(%rbp)
	movl	-192(%rbp), %r9d
	.p2align 4,,10
	.p2align 3
.L19:
	vmovupd	(%r8,%rax), %ymm0
	vaddpd	(%r12,%rax), %ymm0, %ymm0
	addl	$1, %edx
	vaddpd	0(%r13,%rax), %ymm0, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vaddpd	(%r15,%rax), %ymm0, %ymm0
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	vmulpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpl	%edx, %r9d
	ja	.L19
	movl	-184(%rbp), %ebx
	movl	-144(%rbp), %eax
	movq	-232(%rbp), %r15
	movq	-224(%rbp), %r14
	movl	%ebx, %edx
	movq	-216(%rbp), %r13
	movq	-208(%rbp), %r12
	andl	$-4, %edx
	movq	-200(%rbp), %r9
	addl	%edx, %eax
	cmpl	%edx, %ebx
	je	.L23
.L16:
	movq	-88(%rbp), %rsi
	cltq
	movq	-96(%rbp), %rbx
	movl	-284(%rbp), %edi
	leaq	(%rax,%rsi), %rdx
	leaq	(%r15,%rdx,8), %rsi
	leaq	(%rax,%rbx), %rdx
	movq	-152(%rbp), %rbx
	leaq	(%r15,%rdx,8), %rcx
	leaq	(%rax,%rbx), %rdx
	leaq	-8(%r15,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rsi), %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	addq	$8, %rsi
	addq	$8, %rcx
	vaddsd	-16(%rsi), %xmm0, %xmm0
	vaddsd	-16(%rcx), %xmm0, %xmm0
	addq	$8, %rdx
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%rax,8)
	addq	$1, %rax
	cmpl	%eax, %edi
	jg	.L21
.L23:
	movq	-248(%rbp), %rax
	addq	%r14, %r13
	addq	%r14, %r12
	addq	%r14, %r9
	addq	%rax, -88(%rbp)
	addq	%r14, %r10
	movl	-156(%rbp), %esi
	addq	%rax, -152(%rbp)
	addq	%rax, -96(%rbp)
	movl	-252(%rbp), %eax
	addq	%r14, -168(%rbp)
	addq	%r14, -176(%rbp)
	addq	%r14, -104(%rbp)
	addq	%r14, -112(%rbp)
	addq	%r14, -136(%rbp)
	addl	%eax, -116(%rbp)
	addl	%eax, -120(%rbp)
	addl	%eax, -240(%rbp)
	cmpl	%esi, -236(%rbp)
	jg	.L24
.L73:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L74
	movq	%r15, %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L74:
	addq	$256, %rsp
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
.L49:
	.cfi_restore_state
	movq	-304(%rbp), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	(%r9,%rax), %xmm0
	vaddsd	8(%r12,%rax), %xmm0, %xmm0
	vaddsd	(%r12,%rax), %xmm0, %xmm0
	vaddsd	(%r10,%rax), %xmm0, %xmm0
	vaddsd	8(%r9,%rax), %xmm0, %xmm0
	vaddsd	8(%r10,%rax), %xmm0, %xmm0
	vaddsd	16(%r9,%rax), %xmm0, %xmm0
	vaddsd	16(%r12,%rax), %xmm0, %xmm0
	vaddsd	16(%r10,%rax), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, 8(%r13,%rax)
	addq	$8, %rax
	cmpq	%rdx, %rax
	jne	.L22
	jmp	.L23
.L44:
	movl	$1, %eax
	jmp	.L16
.L78:
	movq	-80(%rbp), %rsi
	testl	%r13d, %r13d
	movl	$1, %edi
	cmovg	%r13d, %edi
	movq	%rsi, -128(%rbp)
	shrq	$3, %rsi
	movq	%rsi, %rdx
	movl	$5, %esi
	negq	%rdx
	andl	$3, %edx
	testl	%r13d, %r13d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r14d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r14d
	jb	.L30
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	movq	-128(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L42
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L43
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	movq	-128(%rbp), %rcx
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
	cmpl	%edx, %esi
	ja	.L11
	movl	%edi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %edi
	jne	.L30
	jmp	.L34
.L80:
	movq	%r15, %rdi
	vzeroupper
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$1, -236(%rbp)
	jg	.L14
	jmp	.L15
.L40:
	movl	$1, %edi
	jmp	.L5
.L79:
	xorl	%edx, %edx
	movq	$0, -128(%rbp)
	jmp	.L9
.L42:
	movl	$1, %eax
	jmp	.L9
.L77:
	vzeroupper
	jmp	.L8
.L3:
	movq	%r8, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	call	posix_memalign
	movq	$0, -128(%rbp)
	testl	%eax, %eax
	jne	.L34
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.L34
.L43:
	movl	$2, %eax
	jmp	.L9
.L41:
	movl	$2, %edi
	jmp	.L5
.L81:
	vzeroupper
	jmp	.L74
.L38:
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
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
