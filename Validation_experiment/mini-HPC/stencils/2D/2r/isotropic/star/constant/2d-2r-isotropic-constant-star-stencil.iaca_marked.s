	.file	"2d-2r-isotropic-constant-star-stencil.c_compilable.c"
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
	subq	$384, %rsp
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
	movq	%r8, -152(%rbp)
	call	posix_memalign
	movq	-152(%rbp), %r8
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
	jb	.L39
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, (%r15)
	cmpl	$1, %eax
	je	.L41
	vmovsd	%xmm0, 8(%r15)
	cmpl	$3, %eax
	jne	.L42
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
	movq	$0, -168(%rbp)
	xorl	%eax, %eax
.L31:
	vmovsd	.LC2(%rip), %xmm0
	movq	-168(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L35
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L35:
	movq	.LC4(%rip), %rax
	movl	var_false(%rip), %edx
	movq	%rax, -144(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -80(%rbp)
	leal	-2(%r12), %eax
	movl	%eax, -288(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$2, -288(%rbp)
	jle	.L81
.L14:
	leal	-2(%rbx), %eax
	movl	%eax, -416(%rbp)
	cmpl	$2, %eax
	jle	.L73
	leal	(%rbx,%rbx), %ecx
	movq	-168(%rbp), %rdi
	movslq	%ebx, %r9
	movl	%ebx, -320(%rbp)
	movslq	%ecx, %r14
	leaq	0(,%r9,8), %r12
	movl	%ebx, -212(%rbp)
	leaq	16(,%r14,8), %rax
	movq	%r9, -328(%rbp)
	leaq	(%rdi,%rax), %r13
	leaq	-16(%rax), %rsi
	movl	%ecx, -156(%rbp)
	leaq	32(%rdi,%rax), %rax
	leaq	(%rdi,%rsi), %rdx
	movq	%rsi, -152(%rbp)
	movq	%rax, -232(%rbp)
	leal	-4(%rbx), %eax
	leaq	16(%r15), %rsi
	movl	%eax, -260(%rbp)
	leaq	2(%r14,%rax), %rax
	leaq	(%rdi,%rax,8), %rax
	movq	%rdx, -272(%rbp)
	leal	(%rcx,%rbx), %edx
	movslq	%edx, %rdi
	movq	%rax, -240(%rbp)
	leal	0(,%rbx,4), %eax
	movslq	%eax, %r8
	movl	%eax, -220(%rbp)
	leaq	0(,%rdi,8), %rax
	movq	%rsi, -408(%rbp)
	leaq	48(%r15), %rsi
	movl	%edx, -216(%rbp)
	leaq	(%r12,%r15), %rdx
	movq	%rax, -248(%rbp)
	leaq	0(,%r8,8), %rax
	movq	%rsi, -360(%rbp)
	leaq	64(%r15), %rsi
	movq	%rdi, -184(%rbp)
	leaq	-112(%rbp), %rdi
	movq	%rax, -256(%rbp)
	leal	-5(%rbx), %eax
	leaq	-144(%rbp), %rbx
	movq	%rsi, -368(%rbp)
	leaq	48(%rdx), %rsi
	movq	%rbx, -384(%rbp)
	addq	$8, %rbx
	movq	%rdi, -400(%rbp)
	addq	$8, %rdi
	movq	%rsi, -392(%rbp)
	leaq	16(%rdx), %rsi
	movl	%eax, -412(%rbp)
	addq	%r14, %rax
	movq	%r8, -200(%rbp)
	leaq	8(%r15,%rax,8), %rax
	movq	%r9, -176(%rbp)
	movq	$0, -208(%rbp)
	movl	$3, -276(%rbp)
	movl	$2, -264(%rbp)
	movl	$4, -316(%rbp)
	movq	$0, -192(%rbp)
	movl	$2, -224(%rbp)
	movq	%rsi, -376(%rbp)
	movq	%rdi, -336(%rbp)
	movq	%rbx, -344(%rbp)
	leaq	-80(%rbp), %rbx
	addq	$8, %rbx
	movq	%rax, -424(%rbp)
	movq	%r14, %rax
	movq	%r13, %r14
	movq	%rbx, -352(%rbp)
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-240(%rbp), %rbx
	movq	-400(%rbp), %rax
	addl	$1, -224(%rbp)
	cmpq	-336(%rbp), %r14
	setnb	%dil
	cmpq	%rax, %rbx
	movq	-152(%rbp), %r9
	movq	-232(%rbp), %r10
	setbe	%al
	movq	-208(%rbp), %r11
	movq	-248(%rbp), %r8
	orl	%eax, %edi
	cmpq	-344(%rbp), %r14
	leaq	(%r15,%r9), %rdx
	setnb	%sil
	cmpq	-384(%rbp), %rbx
	setbe	%cl
	orl	%esi, %ecx
	andl	%edi, %ecx
	cmpl	$5, -260(%rbp)
	leaq	-80(%rbp), %rdi
	seta	%al
	andl	%eax, %ecx
	cmpq	-352(%rbp), %r14
	setnb	%al
	cmpq	%rdi, %rbx
	movq	-360(%rbp), %rbx
	movq	-408(%rbp), %rdi
	setbe	%sil
	orl	%esi, %eax
	andl	%ecx, %eax
	movq	-368(%rbp), %rcx
	addq	%r9, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	cmpq	%rdx, %r10
	setbe	%sil
	orl	%esi, %ecx
	movq	-376(%rbp), %rsi
	andl	%ecx, %eax
	movq	-392(%rbp), %rcx
	addq	%r11, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r11, %rsi
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %eax
	movq	%rbx, %rcx
	addq	%r8, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r8, %rsi
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %ecx
	movq	%rdi, %rsi
	andl	%ecx, %eax
	movq	%rbx, %rcx
	addq	%r11, %rcx
	cmpq	%rcx, %r14
	setnb	%cl
	addq	%r11, %rsi
	cmpq	%rsi, %r10
	setbe	%sil
	orl	%esi, %ecx
	testb	%cl, %al
	je	.L28
	movq	-256(%rbp), %rsi
	movq	%rbx, %rax
	addq	%rsi, %rax
	cmpq	%rax, %r14
	setnb	%cl
	addq	%rsi, %rdi
	cmpq	%rdi, %r10
	setbe	%al
	orb	%al, %cl
	je	.L28
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-412(%rbp), %eax
	ja	.L45
	movl	$2, -160(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	$3, -160(%rbp)
	movl	-156(%rbp), %ebx
	leal	1(%rbx), %ecx
	leal	4(%rbx), %esi
	movslq	%ecx, %rcx
	leal	2(%rbx), %eax
	leaq	(%r15,%rcx,8), %r10
	leal	3(%rbx), %ecx
	movslq	%esi, %rbx
	movl	-212(%rbp), %esi
	movslq	%ecx, %rcx
	cltq
	leaq	(%r15,%rbx,8), %r8
	leal	2(%rsi), %r11d
	movl	-216(%rbp), %esi
	leaq	(%r15,%rcx,8), %r9
	movslq	%r11d, %r11
	vmovsd	(%r9), %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	leaq	(%r15,%rax,8), %rdi
	addl	$2, %esi
	vmovsd	(%r15,%r11,8), %xmm1
	movl	-220(%rbp), %r11d
	movslq	%esi, %rsi
	vaddsd	(%r15,%rsi,8), %xmm1, %xmm1
	addl	$2, %r11d
	movslq	-264(%rbp), %rsi
	movslq	%r11d, %r11
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm2
	vmovsd	(%rdi), %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%r11,8), %xmm2
	vaddsd	(%r15,%rsi,8), %xmm2, %xmm2
	movq	-152(%rbp), %rsi
	vmovsd	(%r15,%rsi), %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	movq	-168(%rbp), %rsi
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%rax,8)
	cmpl	$1, %edx
	je	.L17
	movl	-156(%rbp), %eax
	vmovsd	(%rdi), %xmm0
	movl	$4, -160(%rbp)
	movl	-212(%rbp), %r11d
	vaddsd	(%r8), %xmm0, %xmm0
	addl	$5, %eax
	cltq
	addl	$3, %r11d
	leaq	(%r15,%rax,8), %rsi
	movl	-216(%rbp), %eax
	movslq	%r11d, %r11
	vmovsd	(%r15,%r11,8), %xmm1
	movl	-220(%rbp), %r11d
	addl	$3, %eax
	cltq
	addl	$3, %r11d
	vaddsd	(%r15,%rax,8), %xmm1, %xmm1
	movslq	-276(%rbp), %rax
	movslq	%r11d, %r11
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm2
	vmovsd	(%r9), %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r10), %xmm0
	vmovsd	(%r15,%r11,8), %xmm2
	vaddsd	(%rsi), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm2, %xmm2
	movq	-168(%rbp), %r10
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%rcx,8)
	cmpl	$3, %edx
	jne	.L17
	movl	-212(%rbp), %r11d
	vmovsd	(%r9), %xmm0
	movl	$5, -160(%rbp)
	vaddsd	(%rsi), %xmm0, %xmm0
	vmovsd	-144(%rbp), %xmm1
	leal	4(%r11), %ecx
	movl	-216(%rbp), %r11d
	movslq	%ecx, %rcx
	leal	4(%r11), %eax
	vmovsd	(%r15,%rcx,8), %xmm3
	movl	-220(%rbp), %r11d
	cltq
	vaddsd	(%r15,%rax,8), %xmm3, %xmm3
	leal	4(%r11), %ecx
	movslq	-316(%rbp), %rax
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm3, %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm2
	vmulsd	(%r8), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%rcx,8), %xmm2
	vaddsd	(%r15,%rax,8), %xmm2, %xmm2
	movl	-156(%rbp), %eax
	addl	$6, %eax
	cltq
	vmovsd	(%r15,%rax,8), %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%rbx,8)
.L17:
	movl	-260(%rbp), %ebx
	movl	%edx, %eax
	movq	%r15, -312(%rbp)
	leaq	2(%rax,%r13), %rcx
	vbroadcastsd	-112(%rbp), %ymm4
	vbroadcastsd	-144(%rbp), %ymm5
	subl	%edx, %ebx
	leaq	1(%rax,%r13), %rdx
	salq	$3, %rcx
	vbroadcastsd	-80(%rbp), %ymm3
	leaq	(%r15,%rdx,8), %rsi
	movl	%ebx, -280(%rbp)
	leaq	3(%rax,%r13), %rdx
	shrl	$2, %ebx
	movl	%ebx, -284(%rbp)
	leaq	(%r15,%rdx,8), %rbx
	movq	-176(%rbp), %rdx
	leaq	(%r15,%rcx), %rdi
	movq	%rsi, -304(%rbp)
	addq	-168(%rbp), %rcx
	leaq	2(%rax,%rdx), %rdx
	movq	%rdi, -296(%rbp)
	leaq	(%r15,%rdx,8), %r11
	movq	-184(%rbp), %rdx
	leaq	2(%rax,%rdx), %rdx
	leaq	(%r15,%rdx,8), %r10
	movq	-152(%rbp), %rdx
	leaq	(%rdx,%rax,8), %rsi
	leaq	4(%rax,%r13), %rdx
	leaq	(%r15,%rdx,8), %r9
	movq	-192(%rbp), %rdx
	addq	%r15, %rsi
	leaq	2(%rax,%rdx), %rdx
	leaq	(%r15,%rdx,8), %r8
	movq	-200(%rbp), %rdx
	leaq	2(%rax,%rdx), %rax
	xorl	%edx, %edx
	leaq	(%r15,%rax,8), %rdi
	movq	-304(%rbp), %r15
	xorl	%eax, %eax
	movq	%r14, -304(%rbp)
	movq	-296(%rbp), %r14
	movq	%r12, -296(%rbp)
	movl	-284(%rbp), %r12d
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	vmovupd	(%rbx,%rax), %ymm1
	vmovupd	(%r10,%rax), %ymm0
	addl	$1, %edx
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%r15,%rax), %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm1
	vmulpd	(%r14,%rax), %ymm5, %ymm0
	vmulpd	%ymm4, %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovapd	(%rsi,%rax), %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm2
	vmovupd	(%rdi,%rax), %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %r12d
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-280(%rbp), %ebx
	movl	-160(%rbp), %edx
	movq	-312(%rbp), %r15
	movq	-304(%rbp), %r14
	movl	%ebx, %eax
	movq	-296(%rbp), %r12
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%eax, %ebx
	je	.L23
.L16:
	movslq	%edx, %rdx
	movq	-176(%rbp), %r8
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	-200(%rbp), %rcx
	leaq	(%rdx,%r13), %rax
	movl	-416(%rbp), %r9d
	movq	-272(%rbp), %r10
	subq	%r13, %r8
	subq	%r13, %rdi
	leaq	(%r15,%rax,8), %rax
	subq	%r13, %rsi
	subq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rax,%r8,8), %xmm1
	vmovsd	-8(%rax), %xmm0
	vaddsd	(%rax,%rdi,8), %xmm1, %xmm1
	vaddsd	8(%rax), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	(%rax), %xmm1
	vmulsd	-112(%rbp), %xmm0, %xmm0
	vmulsd	-144(%rbp), %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovsd	(%rax,%rsi,8), %xmm2
	vmovsd	-16(%rax), %xmm0
	vaddsd	(%rax,%rcx,8), %xmm2, %xmm2
	vaddsd	16(%rax), %xmm0, %xmm0
	addq	$8, %rax
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%rdx,8)
	addq	$1, %rdx
	cmpl	%edx, %r9d
	jg	.L21
.L23:
	movq	-328(%rbp), %rax
	addq	%r12, -272(%rbp)
	addq	%r12, %r14
	addq	%rax, -176(%rbp)
	addq	%rax, -184(%rbp)
	addq	%rax, %r13
	addq	%rax, -192(%rbp)
	addq	%rax, -200(%rbp)
	movl	-320(%rbp), %eax
	addq	%r12, -232(%rbp)
	addq	%r12, -240(%rbp)
	addq	%r12, -152(%rbp)
	addl	%eax, -156(%rbp)
	addl	%eax, -212(%rbp)
	addl	%eax, -216(%rbp)
	addl	%eax, -316(%rbp)
	addl	%eax, -220(%rbp)
	addl	%eax, -264(%rbp)
	addl	%eax, -276(%rbp)
	addq	%r12, -208(%rbp)
	movl	-224(%rbp), %edi
	addq	%r12, -248(%rbp)
	addq	%r12, -256(%rbp)
	cmpl	%edi, -288(%rbp)
	jg	.L24
.L73:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L74
	movq	%r15, %rdi
	call	dummy
	movq	-168(%rbp), %rdi
	call	dummy
	leaq	-144(%rbp), %rdi
	call	dummy
	leaq	-112(%rbp), %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
.L74:
	addq	$384, %rsp
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
.L28:
	.cfi_restore_state
	movq	-184(%rbp), %r8
	movq	-176(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movq	-192(%rbp), %rcx
	movq	-168(%rbp), %rax
	movq	-424(%rbp), %r9
	subq	%r13, %r8
	subq	%r13, %rdi
	addq	-152(%rbp), %rax
	addq	-208(%rbp), %r9
	subq	%r13, %rsi
	subq	%r13, %rcx
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	16(%rdx,%r8,8), %xmm1
	vmovsd	24(%rdx), %xmm0
	addq	$8, %rax
	vaddsd	8(%rdx), %xmm0, %xmm0
	vaddsd	16(%rdx,%rdi,8), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm2
	vmovsd	-144(%rbp), %xmm1
	vmulsd	16(%rdx), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	16(%rdx,%rsi,8), %xmm2
	vmovsd	32(%rdx), %xmm0
	vaddsd	16(%rdx,%rcx,8), %xmm2, %xmm2
	vaddsd	(%rdx), %xmm0, %xmm0
	addq	$8, %rdx
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rax)
	cmpq	%r9, %rdx
	jne	.L22
	jmp	.L23
.L45:
	movl	$2, %edx
	jmp	.L16
.L78:
	movq	-80(%rbp), %rsi
	testl	%r13d, %r13d
	movl	$1, %edi
	cmovg	%r13d, %edi
	movq	%rsi, -168(%rbp)
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
	jb	.L31
	testl	%edx, %edx
	je	.L9
	vmovsd	.LC2(%rip), %xmm0
	movq	-168(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L43
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L44
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	subl	%edx, %edi
	movq	-168(%rbp), %rcx
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
	jne	.L31
	jmp	.L35
.L80:
	movq	%r15, %rdi
	vzeroupper
	call	dummy
	movq	-168(%rbp), %rdi
	call	dummy
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$2, -288(%rbp)
	jg	.L14
	jmp	.L15
.L41:
	movl	$1, %edi
	jmp	.L5
.L79:
	movq	$0, -168(%rbp)
	xorl	%edx, %edx
	jmp	.L9
.L43:
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
	movq	$0, -168(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -168(%rbp)
	jmp	.L35
.L44:
	movl	$2, %eax
	jmp	.L9
.L42:
	movl	$2, %edi
	jmp	.L5
.L81:
	vzeroupper
	jmp	.L74
.L39:
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
