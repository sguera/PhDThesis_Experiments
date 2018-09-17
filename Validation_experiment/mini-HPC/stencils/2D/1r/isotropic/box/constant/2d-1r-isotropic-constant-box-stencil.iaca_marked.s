	.file	"2d-1r-isotropic-constant-box-stencil.c_compilable.c"
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
	subq	$352, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	movq	%rax, -152(%rbp)
	call	strtol
	movl	%ebx, %r13d
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	imull	%eax, %r13d
	movq	%rax, %r12
	movslq	%r13d, %r15
	leaq	0(,%r15,8), %rbx
	movq	%rbx, %rdx
	call	posix_memalign
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
	movq	%rbx, %rdx
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
	movq	$0, -184(%rbp)
	xorl	%eax, %eax
.L30:
	vmovsd	.LC2(%rip), %xmm0
	movq	-184(%rbp), %rbx
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rbx,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L34
	cltq
	vmovsd	%xmm0, (%rbx,%rax,8)
.L34:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -144(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -80(%rbp)
	leal	-1(%r12), %eax
	movl	%eax, -300(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$1, -300(%rbp)
	jle	.L81
.L14:
	movq	-152(%rbp), %rax
	movl	%eax, %ebx
	subl	$1, %ebx
	movl	%ebx, -372(%rbp)
	cmpl	$1, %ebx
	jle	.L73
	movslq	%eax, %rsi
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rcx
	movl	$0, -152(%rbp)
	leaq	0(,%rsi,8), %r11
	movq	%rsi, -312(%rbp)
	leaq	40(%rcx,%r11), %rdi
	leaq	8(%rcx,%r11), %rbx
	movq	%rsi, -192(%rbp)
	movq	%rdi, -224(%rbp)
	movq	%rax, %rdi
	addl	%eax, %eax
	movslq	%eax, %rdx
	movq	%rbx, -216(%rbp)
	leaq	(%rcx,%r11), %rbx
	movq	%rdx, -160(%rbp)
	salq	$3, %rdx
	movq	%rdx, -176(%rbp)
	movl	%edi, %edx
	subl	$2, %edx
	movl	%edi, -316(%rbp)
	movl	%edx, -208(%rbp)
	leaq	1(%rsi,%rdx), %rdx
	leaq	-112(%rbp), %rsi
	leaq	(%rcx,%rdx,8), %rcx
	movl	%edi, -164(%rbp)
	leal	-3(%rdi), %edx
	leaq	-144(%rbp), %rdi
	movq	%rcx, -232(%rbp)
	leaq	8(,%rdx,8), %rcx
	movq	%rdi, -352(%rbp)
	addq	$8, %rdi
	movq	%rdi, -336(%rbp)
	leaq	-80(%rbp), %rdi
	addq	$8, %rdi
	movq	%rbx, -248(%rbp)
	leaq	(%r15,%r11), %rbx
	movq	%rcx, -392(%rbp)
	leaq	48(%r15), %rcx
	leaq	(%rbx,%r11), %r13
	movq	%rsi, -360(%rbp)
	addq	$8, %rsi
	movq	%rdi, -344(%rbp)
	leal	1(%rax), %edi
	movl	%eax, -304(%rbp)
	movl	%edi, -376(%rbp)
	leal	2(%rax), %edi
	addl	$3, %eax
	movl	%edx, -320(%rbp)
	movq	$0, -200(%rbp)
	movl	$1, -204(%rbp)
	movq	%rcx, -368(%rbp)
	movq	%rsi, -328(%rbp)
	movl	%eax, -384(%rbp)
	movq	%r13, %rax
	movq	%r11, %r13
	movq	%r15, %r11
	movl	%edi, -380(%rbp)
	movq	%rax, %r14
	movq	%r9, %rdi
	.p2align 4,,10
	.p2align 3
.L24:
	leaq	0(%r13,%rdi), %rax
	movq	-216(%rbp), %rsi
	movq	-232(%rbp), %r9
	movq	%rax, -240(%rbp)
	movq	-328(%rbp), %rax
	addl	$1, -204(%rbp)
	movq	-224(%rbp), %r10
	cmpq	%rax, %rsi
	movq	-360(%rbp), %rax
	movq	-368(%rbp), %r8
	setnb	%cl
	cmpq	%rax, %r9
	setbe	%al
	orl	%eax, %ecx
	cmpq	-336(%rbp), %rsi
	setnb	%dl
	cmpq	-352(%rbp), %r9
	setbe	%al
	orl	%edx, %eax
	andl	%ecx, %eax
	cmpl	$5, -208(%rbp)
	leaq	-80(%rbp), %rcx
	seta	%dl
	andl	%edx, %eax
	cmpq	-344(%rbp), %rsi
	setnb	%dl
	cmpq	%rcx, %r9
	setbe	%cl
	orl	%ecx, %edx
	andl	%edx, %eax
	leaq	48(%rbx), %rdx
	cmpq	%rdx, %rsi
	setnb	%dl
	cmpq	%r10, %rbx
	setnb	%cl
	orl	%ecx, %edx
	andl	%edx, %eax
	leaq	(%r8,%rdi), %rdx
	cmpq	%rdx, %rsi
	setnb	%dl
	cmpq	%r10, %r11
	setnb	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L49
	movq	-176(%rbp), %rax
	addq	%r8, %rax
	cmpq	%rax, %rsi
	setnb	%dl
	cmpq	%r10, %r14
	setnb	%al
	orb	%al, %dl
	je	.L49
	leaq	8(%rbx), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-320(%rbp), %eax
	ja	.L44
	movl	$1, -168(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	-152(%rbp), %r8d
	movl	-164(%rbp), %ecx
	movl	$2, -168(%rbp)
	leal	1(%r8), %eax
	leal	1(%rcx), %r10d
	cltq
	movslq	%r10d, %r10
	leaq	(%r15,%rax,8), %rsi
	movl	-376(%rbp), %eax
	leaq	(%r15,%r10,8), %r9
	vmovsd	(%rsi), %xmm0
	vmovsd	(%r9), %xmm1
	addl	%r8d, %eax
	addl	$2, %r8d
	vaddsd	(%rbx), %xmm0, %xmm2
	vmulsd	-144(%rbp), %xmm1, %xmm0
	cltq
	movslq	%r8d, %r8
	leaq	(%r15,%rax,8), %rax
	leaq	(%r15,%r8,8), %r12
	movq	%rax, -256(%rbp)
	leal	2(%rcx), %eax
	cltq
	leaq	(%r15,%rax,8), %rcx
	movq	%rax, -264(%rbp)
	movl	-380(%rbp), %eax
	addl	-152(%rbp), %eax
	movslq	%eax, %r8
	movq	-256(%rbp), %rax
	leaq	(%r15,%r8,8), %r8
	vaddsd	(%rax), %xmm2, %xmm2
	vaddsd	(%rcx), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	movq	-184(%rbp), %rax
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r11), %xmm0
	vaddsd	(%r14), %xmm0, %xmm0
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rax,%r10,8)
	cmpl	$1, %edx
	je	.L17
	movl	-164(%rbp), %r10d
	vmovsd	(%r9), %xmm2
	movl	$3, -168(%rbp)
	vmovsd	(%rcx), %xmm1
	vaddsd	(%r12), %xmm2, %xmm2
	addl	$3, %r10d
	vaddsd	(%r8), %xmm2, %xmm2
	movl	-152(%rbp), %r9d
	movslq	%r10d, %r10
	movq	-256(%rbp), %r8
	leaq	(%r15,%r10,8), %rax
	vmulsd	-144(%rbp), %xmm1, %xmm0
	movq	%r10, -280(%rbp)
	vaddsd	(%rax), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	movq	%rax, -272(%rbp)
	movl	-152(%rbp), %r10d
	movq	-264(%rbp), %rax
	addl	$3, %r10d
	movslq	%r10d, %r10
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rsi), %xmm0
	movl	-384(%rbp), %esi
	leaq	(%r15,%r10,8), %r10
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	addl	%r9d, %esi
	movslq	%esi, %rsi
	vaddsd	(%r15,%rsi,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-184(%rbp), %rsi
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%rax,8)
	cmpl	$3, %edx
	jne	.L17
	movl	-304(%rbp), %r8d
	vmovsd	(%r10), %xmm2
	movl	$4, -168(%rbp)
	movl	-164(%rbp), %r10d
	vaddsd	(%rcx), %xmm2, %xmm2
	leal	3(%r8), %eax
	vmovsd	-144(%rbp), %xmm1
	cltq
	vaddsd	(%r15,%rax,8), %xmm2, %xmm2
	leal	4(%r10), %eax
	movq	-280(%rbp), %r10
	cltq
	vaddsd	(%r15,%rax,8), %xmm2, %xmm2
	movq	-272(%rbp), %rax
	vmulsd	-112(%rbp), %xmm2, %xmm2
	vmulsd	(%rax), %xmm1, %xmm0
	leal	2(%r8), %eax
	cltq
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%rax,8), %xmm0
	leal	4(%r9), %eax
	cltq
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%r8), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%r10,8)
.L17:
	movl	-208(%rbp), %ecx
	movl	%edx, %eax
	movq	-192(%rbp), %r9
	leaq	0(%r13,%rdi), %r8
	movq	%r15, -296(%rbp)
	vbroadcastsd	-112(%rbp), %ymm3
	subl	%edx, %ecx
	leaq	1(%rax,%r9), %rsi
	vbroadcastsd	-144(%rbp), %ymm4
	vbroadcastsd	-80(%rbp), %ymm2
	movl	%ecx, -256(%rbp)
	shrl	$2, %ecx
	salq	$3, %rsi
	movl	%ecx, -264(%rbp)
	leaq	0(,%rax,8), %rcx
	leaq	(%r15,%rsi), %rdx
	addq	-184(%rbp), %rsi
	addq	%rcx, %r8
	movq	%rdx, -272(%rbp)
	addq	%rcx, %rdi
	addq	-176(%rbp), %rcx
	leaq	(%r15,%r8), %r10
	addq	%r15, %rdi
	addq	%r15, %rcx
	movq	%r10, -280(%rbp)
	movq	-200(%rbp), %r10
	leaq	1(%rax,%r10), %rdx
	leaq	(%r15,%rdx,8), %r12
	movq	-160(%rbp), %rdx
	leaq	1(%rax,%rdx), %rdx
	leaq	(%r15,%rdx,8), %r8
	leaq	2(%rax,%r9), %rdx
	movq	%r8, -288(%rbp)
	leaq	(%r15,%rdx,8), %r8
	leaq	2(%rax,%r10), %rdx
	leaq	(%r15,%rdx,8), %r10
	movq	-160(%rbp), %rdx
	leaq	2(%rax,%rdx), %rax
	xorl	%edx, %edx
	leaq	(%r15,%rax,8), %r9
	movq	-288(%rbp), %r15
	xorl	%eax, %eax
	movq	%r13, -288(%rbp)
	movq	-280(%rbp), %r13
	movq	%rbx, -280(%rbp)
	movq	-272(%rbp), %rbx
	movq	%r11, -272(%rbp)
	movl	-264(%rbp), %r11d
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	vmovupd	(%r12,%rax), %ymm1
	vaddpd	0(%r13,%rax), %ymm1, %ymm1
	addl	$1, %edx
	vaddpd	(%r15,%rax), %ymm1, %ymm1
	vaddpd	(%r8,%rax), %ymm1, %ymm1
	vmulpd	(%rbx,%rax), %ymm4, %ymm0
	vmulpd	%ymm3, %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rcx,%rax), %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpl	%edx, %r11d
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-256(%rbp), %edi
	movl	-168(%rbp), %eax
	movq	-296(%rbp), %r15
	movq	-288(%rbp), %r13
	movl	%edi, %edx
	movq	-280(%rbp), %rbx
	movq	-272(%rbp), %r11
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %edi
	je	.L23
.L16:
	movq	-192(%rbp), %rdi
	cltq
	movq	-248(%rbp), %r8
	leaq	(%rax,%rdi), %rdx
	movq	-160(%rbp), %rdi
	leaq	(%r15,%rdx,8), %rsi
	leaq	(%rax,%rdi), %rdx
	movq	-200(%rbp), %rdi
	leaq	(%r15,%rdx,8), %rcx
	leaq	(%rax,%rdi), %rdx
	movl	-372(%rbp), %edi
	leaq	-8(%r15,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	-8(%rsi), %xmm1
	addq	$8, %rcx
	addq	$8, %rsi
	addq	$8, %rdx
	vaddsd	(%rdx), %xmm1, %xmm0
	vmovsd	-8(%rsi), %xmm1
	vaddsd	-8(%rcx), %xmm0, %xmm0
	vmulsd	-144(%rbp), %xmm1, %xmm2
	vaddsd	(%rsi), %xmm0, %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	-8(%rdx), %xmm0
	vaddsd	-16(%rcx), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rax,8)
	addq	$1, %rax
	cmpl	%eax, %edi
	jg	.L21
.L23:
	movq	-312(%rbp), %rax
	addq	%r13, %rbx
	addq	%r13, %r11
	addq	%r13, %r14
	addq	%rax, -192(%rbp)
	movq	-240(%rbp), %rdi
	addq	%rax, -200(%rbp)
	movl	-204(%rbp), %ecx
	addq	%rax, -160(%rbp)
	movl	-316(%rbp), %eax
	addq	%r13, -216(%rbp)
	addq	%r13, -248(%rbp)
	addq	%r13, -224(%rbp)
	addq	%r13, -232(%rbp)
	addq	%r13, -176(%rbp)
	addl	%eax, -164(%rbp)
	addl	%eax, -152(%rbp)
	addl	%eax, -304(%rbp)
	cmpl	%ecx, -300(%rbp)
	jg	.L24
.L73:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L74
	movq	%r15, %rdi
	call	dummy
	movq	-184(%rbp), %rdi
	call	dummy
	leaq	-144(%rbp), %rdi
	call	dummy
	leaq	-112(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L74:
	addq	$352, %rsp
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
	movq	-392(%rbp), %rdx
	movq	-248(%rbp), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	8(%r11,%rax), %xmm0
	vmovsd	-144(%rbp), %xmm1
	vaddsd	(%rbx,%rax), %xmm0, %xmm2
	vmulsd	8(%rbx,%rax), %xmm1, %xmm0
	vaddsd	8(%r14,%rax), %xmm2, %xmm2
	vaddsd	16(%rbx,%rax), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r14,%rax), %xmm0
	vaddsd	(%r11,%rax), %xmm0, %xmm0
	vaddsd	16(%r11,%rax), %xmm0, %xmm0
	vaddsd	16(%r14,%rax), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rcx,%rax)
	addq	$8, %rax
	cmpq	%rdx, %rax
	jne	.L22
	jmp	.L23
.L44:
	movl	$1, %eax
	jmp	.L16
.L78:
	movq	-80(%rbp), %rbx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rbx, -184(%rbp)
	shrq	$3, %rbx
	movq	%rbx, %rdx
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
	movq	-184(%rbp), %rax
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
	movq	-184(%rbp), %rbx
	vmovapd	.LC3(%rip), %ymm0
	movl	%edi, %esi
	leaq	(%rbx,%rdx,8), %rcx
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
	movq	-184(%rbp), %rdi
	call	dummy
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$1, -300(%rbp)
	jg	.L14
	jmp	.L15
.L40:
	movl	$1, %edi
	jmp	.L5
.L79:
	movq	$0, -184(%rbp)
	xorl	%edx, %edx
	jmp	.L9
.L42:
	movl	$1, %eax
	jmp	.L9
.L77:
	vzeroupper
	jmp	.L8
.L3:
	movq	%rbx, %rdx
	movl	$32, %esi
	leaq	-80(%rbp), %rdi
	call	posix_memalign
	movq	$0, -184(%rbp)
	testl	%eax, %eax
	jne	.L34
	movq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)
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
	.align 8
.LC5:
	.long	765859228
	.long	1071838070
	.align 8
.LC6:
	.long	2226626236
	.long	1072102945
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
