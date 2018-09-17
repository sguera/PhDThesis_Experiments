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
	movl	%r12d, %r13d
	call	strtol
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
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
	leal	-1(%r13), %r14d
	movq	%r15, %rax
	movl	$5, %ecx
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
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r15,%rax,8), %rdx
	movl	%r13d, %esi
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
	leaq	-80(%rbp), %rdi
	movq	%r8, %rdx
	movl	$32, %esi
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
	movq	$0, -160(%rbp)
	xorl	%eax, %eax
.L30:
	movq	-160(%rbp), %rsi
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rsi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rsi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L34
	cltq
	vmovsd	%xmm0, (%rsi,%rax,8)
.L34:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -80(%rbp)
	leal	-1(%r12), %eax
	movl	%eax, -220(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$1, -220(%rbp)
	jle	.L81
.L14:
	leal	-1(%rbx), %eax
	movl	%eax, -276(%rbp)
	cmpl	$1, %eax
	jle	.L73
	movq	-160(%rbp), %rdi
	leal	(%rbx,%rbx), %edx
	movslq	%ebx, %rcx
	movq	%r15, %r13
	leaq	0(,%rcx,8), %rsi
	movq	%rcx, %r11
	movq	%rcx, -232(%rbp)
	leaq	(%r15,%rsi), %r10
	movl	%ebx, -244(%rbp)
	movl	%ebx, -148(%rbp)
	movq	%r10, %r14
	leaq	8(%rdi,%rsi), %rax
	movq	%rsi, -240(%rbp)
	movq	%rax, -168(%rbp)
	movq	%rdi, %rax
	addq	%rsi, %rax
	movl	%edx, -224(%rbp)
	movq	%rax, -184(%rbp)
	leaq	40(%rdi,%rsi), %rax
	movq	%rax, -176(%rbp)
	movslq	%edx, %rax
	movq	%rax, -88(%rbp)
	salq	$3, %rax
	movq	%rax, -120(%rbp)
	movq	%r10, %rax
	addq	%rsi, %rax
	movq	%rsi, -104(%rbp)
	movq	%rax, -112(%rbp)
	leal	-2(%rbx), %eax
	movl	%eax, -188(%rbp)
	addq	%rcx, %rax
	leaq	8(%rdi,%rax,8), %rax
	movq	%r11, -136(%rbp)
	movq	%rax, -264(%rbp)
	leaq	-80(%rbp), %rax
	leal	-3(%rbx), %ecx
	addq	$8, %rax
	movl	$0, -128(%rbp)
	movq	%rax, -256(%rbp)
	leal	1(%rdx), %eax
	movl	%eax, -280(%rbp)
	leal	2(%rdx), %eax
	movl	%ecx, -248(%rbp)
	leaq	48(%r15), %rbx
	leaq	8(,%rcx,8), %rcx
	movl	%eax, -284(%rbp)
	leal	3(%rdx), %eax
	movq	%rcx, -296(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -96(%rbp)
	movl	$1, -152(%rbp)
	movq	%rbx, -272(%rbp)
	movl	%eax, -288(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-264(%rbp), %rax
	leaq	-80(%rbp), %rdi
	addq	-96(%rbp), %rax
	movq	-168(%rbp), %rbx
	addl	$1, -152(%rbp)
	movq	-176(%rbp), %rsi
	cmpq	%rax, %rdi
	movq	-256(%rbp), %rax
	setnb	%cl
	movq	-272(%rbp), %rdi
	cmpq	%rax, %rbx
	setnb	%al
	orl	%eax, %ecx
	leaq	48(%r13), %rax
	cmpq	%rax, %rbx
	setnb	%dl
	cmpq	%rsi, %r13
	setnb	%al
	orl	%edx, %eax
	andl	%ecx, %eax
	cmpl	$5, -188(%rbp)
	seta	%dl
	andl	%edx, %eax
	movq	-104(%rbp), %rdx
	addq	%rdi, %rdx
	cmpq	%rdx, %rbx
	setnb	%dl
	cmpq	%rsi, %r14
	setnb	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L49
	movq	-120(%rbp), %rax
	addq	%rdi, %rax
	cmpq	%rax, %rbx
	setnb	%dl
	cmpq	%rsi, -112(%rbp)
	setnb	%al
	orb	%al, %dl
	je	.L49
	leaq	8(%r14), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-248(%rbp), %eax
	ja	.L44
	movl	$1, -124(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	-128(%rbp), %ebx
	movl	$2, -124(%rbp)
	movl	-148(%rbp), %r12d
	movl	-284(%rbp), %edi
	vmovsd	0(%r13), %xmm0
	leal	1(%rbx), %eax
	leal	1(%r12), %r11d
	cltq
	leaq	(%r15,%rax,8), %r10
	movl	-280(%rbp), %eax
	addl	%ebx, %edi
	movslq	%r11d, %r11
	leaq	(%r15,%r11,8), %r9
	movslq	%edi, %rdi
	leaq	(%r15,%rdi,8), %rdi
	vaddsd	(%r9), %xmm0, %xmm0
	vaddsd	(%r14), %xmm0, %xmm0
	addl	%ebx, %eax
	cltq
	leaq	(%r15,%rax,8), %r8
	leal	2(%rbx), %eax
	cltq
	leaq	(%r15,%rax,8), %rsi
	leal	2(%r12), %eax
	cltq
	leaq	(%r15,%rax,8), %rcx
	movq	%rax, -200(%rbp)
	movq	-112(%rbp), %rax
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-160(%rbp), %rax
	vmovsd	%xmm0, (%rax,%r11,8)
	cmpl	$1, %edx
	je	.L17
	vmovsd	(%rcx), %xmm0
	leal	3(%rbx), %r11d
	movl	$3, -124(%rbp)
	vaddsd	(%r10), %xmm0, %xmm0
	leal	3(%r12), %ebx
	movslq	%r11d, %r11
	vaddsd	(%r9), %xmm0, %xmm0
	leaq	(%r15,%r11,8), %r11
	movslq	%ebx, %r12
	vaddsd	(%r8), %xmm0, %xmm0
	leaq	(%r15,%r12,8), %rbx
	vaddsd	(%rsi), %xmm0, %xmm0
	movl	-128(%rbp), %r9d
	vaddsd	(%rdi), %xmm0, %xmm0
	movl	-288(%rbp), %edi
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm0, %xmm0
	addl	%r9d, %edi
	movslq	%edi, %rdi
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	movq	%rax, %rdi
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-200(%rbp), %rax
	vmovsd	%xmm0, (%rdi,%rax,8)
	cmpl	$3, %edx
	jne	.L17
	vmovsd	(%rsi), %xmm0
	movl	$4, -124(%rbp)
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	movl	-224(%rbp), %ecx
	leal	2(%rcx), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	3(%rcx), %eax
	cltq
	vaddsd	(%r11), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%r9), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	movl	-148(%rbp), %eax
	addl	$4, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%rcx), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdi,%r12,8)
.L17:
	movl	-188(%rbp), %edi
	movl	%edx, %eax
	movq	%r15, -216(%rbp)
	movq	-136(%rbp), %r10
	leaq	0(,%rax,8), %rcx
	movq	-144(%rbp), %r9
	vbroadcastsd	-80(%rbp), %ymm2
	subl	%edx, %edi
	movq	-96(%rbp), %rdx
	leaq	1(%rax,%r10), %rsi
	movl	%edi, -200(%rbp)
	shrl	$2, %edi
	salq	$3, %rsi
	movl	%edi, -192(%rbp)
	leaq	(%r15,%rsi), %rbx
	addq	-160(%rbp), %rsi
	movq	%rbx, -208(%rbp)
	movq	-88(%rbp), %rbx
	leaq	(%rcx,%rdx), %r8
	movq	-104(%rbp), %rdx
	addq	%r15, %r8
	leaq	(%rcx,%rdx), %rdi
	addq	-120(%rbp), %rcx
	addq	%r15, %rdi
	leaq	1(%rax,%r9), %rdx
	leaq	(%r15,%rdx,8), %r12
	leaq	1(%rax,%rbx), %rdx
	addq	%r15, %rcx
	leaq	(%r15,%rdx,8), %rbx
	leaq	2(%rax,%r9), %rdx
	leaq	(%r15,%rdx,8), %r11
	leaq	2(%rax,%r10), %rdx
	leaq	(%r15,%rdx,8), %r10
	movq	-88(%rbp), %rdx
	leaq	2(%rax,%rdx), %rax
	xorl	%edx, %edx
	leaq	(%r15,%rax,8), %r9
	movq	-208(%rbp), %r15
	xorl	%eax, %eax
	movq	%r13, -208(%rbp)
	movl	-192(%rbp), %r13d
	.p2align 4,,10
	.p2align 3
.L19:
	vmovupd	(%r8,%rax), %xmm0
	vinsertf128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	addl	$1, %edx
	vaddpd	(%r15,%rax), %ymm0, %ymm1
	vmovupd	(%rdi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	(%rcx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r12,%rax), %xmm1
	vinsertf128	$0x1, 16(%r12,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%rbx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r11,%rax), %xmm1
	vinsertf128	$0x1, 16(%r11,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r10,%rax), %xmm1
	vinsertf128	$0x1, 16(%r10,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmovupd	(%r9,%rax), %xmm1
	vinsertf128	$0x1, 16(%r9,%rax), %ymm1, %ymm1
	vaddpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vmovups	%xmm0, (%rsi,%rax)
	vextractf128	$0x1, %ymm0, 16(%rsi,%rax)
	addq	$32, %rax
	cmpl	%edx, %r13d
	ja	.L19
	movl	-200(%rbp), %esi
	movl	-124(%rbp), %eax
	movq	-216(%rbp), %r15
	movq	-208(%rbp), %r13
	movl	%esi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %esi
	je	.L23
.L16:
	movq	-136(%rbp), %rsi
	cltq
	movq	-88(%rbp), %rbx
	movl	-276(%rbp), %edi
	movq	-184(%rbp), %r8
	leaq	(%rax,%rsi), %rdx
	leaq	(%r15,%rdx,8), %rsi
	leaq	(%rax,%rbx), %rdx
	movq	-144(%rbp), %rbx
	leaq	(%r15,%rdx,8), %rcx
	leaq	(%rax,%rbx), %rdx
	leaq	-8(%r15,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rsi), %xmm0
	addq	$8, %rcx
	addq	$8, %rsi
	addq	$8, %rdx
	vaddsd	-8(%rdx), %xmm0, %xmm0
	vaddsd	-16(%rsi), %xmm0, %xmm0
	vaddsd	-16(%rcx), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r8,%rax,8)
	addq	$1, %rax
	cmpl	%eax, %edi
	jg	.L21
.L23:
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdi
	addq	%rax, -168(%rbp)
	addq	%rax, -184(%rbp)
	addq	%rax, %r14
	addq	%rax, %r13
	movl	-152(%rbp), %ecx
	addq	%rax, -176(%rbp)
	addq	%rax, -112(%rbp)
	addq	%rax, -96(%rbp)
	addq	%rax, -104(%rbp)
	addq	%rax, -120(%rbp)
	addq	%rdi, -136(%rbp)
	movl	-244(%rbp), %eax
	addq	%rdi, -144(%rbp)
	addq	%rdi, -88(%rbp)
	addl	%eax, -148(%rbp)
	addl	%eax, -128(%rbp)
	addl	%eax, -224(%rbp)
	cmpl	%ecx, -220(%rbp)
	jg	.L24
.L73:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L74
	movq	%r15, %rdi
	call	dummy
	movq	-160(%rbp), %rdi
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
	movq	-296(%rbp), %rcx
	xorl	%eax, %eax
	movq	-184(%rbp), %rsi
	movq	-112(%rbp), %rdx
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	0(%r13,%rax), %xmm0
	vaddsd	8(%r14,%rax), %xmm0, %xmm0
	vaddsd	(%r14,%rax), %xmm0, %xmm0
	vaddsd	(%rdx,%rax), %xmm0, %xmm0
	vaddsd	8(%r13,%rax), %xmm0, %xmm0
	vaddsd	8(%rdx,%rax), %xmm0, %xmm0
	vaddsd	16(%r13,%rax), %xmm0, %xmm0
	vaddsd	16(%r14,%rax), %xmm0, %xmm0
	vaddsd	16(%rdx,%rax), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rsi,%rax)
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.L22
	jmp	.L23
.L44:
	movl	$1, %eax
	jmp	.L16
.L78:
	movq	-80(%rbp), %rcx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rcx, -160(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
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
	movq	-160(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L42
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L43
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	movq	-160(%rbp), %rcx
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
	movq	-160(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$1, -220(%rbp)
	jg	.L14
	jmp	.L15
.L40:
	movl	$1, %edi
	jmp	.L5
.L79:
	movq	$0, -160(%rbp)
	xorl	%edx, %edx
	jmp	.L9
.L42:
	movl	$1, %eax
	jmp	.L9
.L77:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-80(%rbp), %rdi
	movq	%r8, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -160(%rbp)
	testl	%eax, %eax
	jne	.L34
	movq	-80(%rbp), %rax
	movq	%rax, -160(%rbp)
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
