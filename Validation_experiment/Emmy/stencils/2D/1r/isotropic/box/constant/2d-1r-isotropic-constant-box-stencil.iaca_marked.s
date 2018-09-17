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
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, %rbx
	subq	$352, %rsp
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
	movq	$0, -200(%rbp)
	xorl	%eax, %eax
.L30:
	movq	-200(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
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
	movq	%rax, -144(%rbp)
	movq	.LC5(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	.LC6(%rip), %rax
	movq	%rax, -80(%rbp)
	leal	-1(%r12), %eax
	movl	%eax, -272(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$1, -272(%rbp)
	jle	.L81
.L14:
	leal	-1(%rbx), %eax
	movl	%eax, -360(%rbp)
	cmpl	$1, %eax
	jle	.L73
	movq	-200(%rbp), %rcx
	movslq	%ebx, %rdi
	movl	%ebx, -296(%rbp)
	xorl	%r9d, %r9d
	leaq	0(,%rdi,8), %rsi
	movl	%ebx, -160(%rbp)
	movq	%r9, %r10
	leaq	(%r15,%rsi), %r13
	movq	%rdi, -304(%rbp)
	movq	%rsi, -232(%rbp)
	movq	%r13, %r14
	leaq	8(%rcx,%rsi), %rax
	movq	%rdi, -208(%rbp)
	movq	%rax, -224(%rbp)
	movq	%rcx, %rax
	movl	$0, -156(%rbp)
	addq	%rsi, %rax
	movq	%rax, -256(%rbp)
	leaq	40(%rcx,%rsi), %rax
	addq	%r13, %rsi
	movq	%r15, %r13
	movq	%rax, -240(%rbp)
	leal	(%rbx,%rbx), %eax
	movslq	%eax, %rdx
	movq	%rsi, -168(%rbp)
	movq	%rdx, -152(%rbp)
	salq	$3, %rdx
	movq	%rdx, -176(%rbp)
	leal	-2(%rbx), %edx
	movl	%edx, -260(%rbp)
	leaq	1(%rdi,%rdx), %rdx
	leaq	(%rcx,%rdx,8), %rcx
	movl	%eax, -292(%rbp)
	leal	-3(%rbx), %edx
	movq	%rcx, -248(%rbp)
	leaq	-144(%rbp), %rbx
	movl	%edx, -356(%rbp)
	movq	%rbx, -344(%rbp)
	leaq	8(,%rdx,8), %rcx
	addq	$8, %rbx
	movq	%rbx, -320(%rbp)
	leaq	-80(%rbp), %rbx
	leaq	-112(%rbp), %rdi
	addq	$8, %rbx
	movq	%rcx, -384(%rbp)
	movq	%rbx, -328(%rbp)
	leal	1(%rax), %ebx
	leaq	48(%r15), %rsi
	movl	%ebx, -364(%rbp)
	leaq	8(%rdi), %rcx
	movq	$0, -216(%rbp)
	leal	2(%rax), %ebx
	addl	$3, %eax
	movl	$1, -192(%rbp)
	movq	%rdi, -352(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%rcx, -312(%rbp)
	movl	%ebx, -368(%rbp)
	movl	%eax, -372(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-232(%rbp), %rax
	leaq	-80(%rbp), %rsi
	movq	-224(%rbp), %rbx
	movq	-248(%rbp), %rdi
	addl	$1, -192(%rbp)
	addq	%r10, %rax
	movq	%rax, -184(%rbp)
	movq	-312(%rbp), %rax
	cmpq	%rax, %rbx
	movq	-352(%rbp), %rax
	setnb	%cl
	cmpq	%rax, %rdi
	setbe	%al
	orl	%eax, %ecx
	cmpq	-320(%rbp), %rbx
	setnb	%dl
	cmpq	-344(%rbp), %rdi
	setbe	%al
	orl	%edx, %eax
	andl	%ecx, %eax
	cmpl	$5, -260(%rbp)
	seta	%dl
	andl	%edx, %eax
	cmpq	-328(%rbp), %rbx
	setnb	%dl
	cmpq	%rsi, %rdi
	movq	-240(%rbp), %rsi
	setbe	%cl
	movq	-336(%rbp), %rdi
	orl	%ecx, %edx
	andl	%edx, %eax
	leaq	48(%r14), %rdx
	cmpq	%rdx, %rbx
	setnb	%dl
	cmpq	%rsi, %r14
	setnb	%cl
	orl	%ecx, %edx
	andl	%edx, %eax
	leaq	(%rdi,%r10), %rdx
	cmpq	%rdx, %rbx
	setnb	%dl
	cmpq	%rsi, %r13
	setnb	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L49
	movq	-176(%rbp), %rax
	addq	%rdi, %rax
	cmpq	%rax, %rbx
	setnb	%dl
	cmpq	%rsi, -168(%rbp)
	setnb	%al
	orb	%al, %dl
	je	.L49
	leaq	8(%r14), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-356(%rbp), %eax
	ja	.L44
	movl	$1, -188(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	$2, -188(%rbp)
	movl	-160(%rbp), %esi
	movl	-156(%rbp), %r12d
	movl	-368(%rbp), %r9d
	leal	1(%rsi), %r11d
	leal	1(%r12), %eax
	movslq	%r11d, %r11
	leaq	(%r15,%r11,8), %rbx
	cltq
	addl	%r12d, %r9d
	leaq	(%r15,%rax,8), %r8
	movl	-364(%rbp), %eax
	movslq	%r9d, %r9
	vmovsd	(%r8), %xmm0
	leal	2(%r12), %ecx
	vaddsd	(%r14), %xmm0, %xmm2
	leaq	(%r15,%r9,8), %r9
	movslq	%ecx, %rcx
	vmovsd	(%rbx), %xmm1
	leaq	(%r15,%rcx,8), %rcx
	vmulsd	-144(%rbp), %xmm1, %xmm0
	addl	%r12d, %eax
	cltq
	movq	-168(%rbp), %r12
	leaq	(%r15,%rax,8), %rdi
	leal	2(%rsi), %eax
	vaddsd	(%rdi), %xmm2, %xmm2
	cltq
	leaq	(%r15,%rax,8), %rsi
	vaddsd	(%rsi), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	0(%r13), %xmm0
	vaddsd	(%r12), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%r9), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-200(%rbp), %r12
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r11,8)
	cmpl	$1, %edx
	je	.L17
	movl	$3, -188(%rbp)
	vmovsd	(%rbx), %xmm2
	movl	-160(%rbp), %r11d
	vaddsd	(%rcx), %xmm2, %xmm2
	vaddsd	(%r9), %xmm2, %xmm2
	vmovsd	(%rsi), %xmm1
	addl	$3, %r11d
	movl	-156(%rbp), %ebx
	vmulsd	-144(%rbp), %xmm1, %xmm0
	movslq	%r11d, %r12
	leaq	(%r15,%r12,8), %r9
	movl	-156(%rbp), %r11d
	vaddsd	(%r9), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	addl	$3, %r11d
	movslq	%r11d, %r11
	leaq	(%r15,%r11,8), %r11
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r8), %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	movl	-372(%rbp), %edi
	vaddsd	(%r11), %xmm0, %xmm0
	addl	%ebx, %edi
	movslq	%edi, %rdi
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	movq	-200(%rbp), %rdi
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi,%rax,8)
	cmpl	$3, %edx
	jne	.L17
	movl	$4, -188(%rbp)
	vmovsd	(%r11), %xmm2
	movl	-292(%rbp), %r8d
	movl	-160(%rbp), %r11d
	vaddsd	(%rsi), %xmm2, %xmm2
	vmovsd	-144(%rbp), %xmm1
	leal	3(%r8), %eax
	vmulsd	(%r9), %xmm1, %xmm0
	cltq
	vaddsd	(%r15,%rax,8), %xmm2, %xmm2
	leal	4(%r11), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm2, %xmm2
	leal	2(%r8), %eax
	vmulsd	-112(%rbp), %xmm2, %xmm2
	cltq
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%rax,8), %xmm0
	leal	4(%rbx), %eax
	cltq
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%r8), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi,%r12,8)
.L17:
	movq	-208(%rbp), %rdi
	movl	%edx, %eax
	movq	%r15, -288(%rbp)
	movl	-260(%rbp), %ebx
	movq	-216(%rbp), %r9
	vbroadcastsd	-144(%rbp), %ymm5
	leaq	1(%rax,%rdi), %rsi
	vbroadcastsd	-112(%rbp), %ymm4
	subl	%edx, %ebx
	movq	-184(%rbp), %rdx
	salq	$3, %rsi
	leaq	(%r15,%rsi), %rcx
	movl	%ebx, -264(%rbp)
	shrl	$2, %ebx
	addq	-200(%rbp), %rsi
	movq	%rcx, -280(%rbp)
	vbroadcastsd	-80(%rbp), %ymm3
	leaq	0(,%rax,8), %rcx
	movl	%ebx, -268(%rbp)
	leaq	(%rcx,%rdx), %r8
	leaq	1(%rax,%r9), %rdx
	addq	%r15, %r8
	leaq	(%r15,%rdx,8), %r12
	movq	-152(%rbp), %rdx
	leaq	1(%rax,%rdx), %rdx
	leaq	(%r15,%rdx,8), %rbx
	leaq	2(%rax,%rdi), %rdx
	leaq	(%r15,%rdx,8), %r11
	leaq	2(%rax,%r9), %rdx
	leaq	(%rcx,%r10), %rdi
	addq	-176(%rbp), %rcx
	addq	%r15, %rdi
	leaq	(%r15,%rdx,8), %r10
	movq	-152(%rbp), %rdx
	addq	%r15, %rcx
	leaq	2(%rax,%rdx), %rax
	xorl	%edx, %edx
	leaq	(%r15,%rax,8), %r9
	movq	-280(%rbp), %r15
	xorl	%eax, %eax
	movq	%r13, -280(%rbp)
	movl	-268(%rbp), %r13d
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	vmovupd	(%r8,%rax), %xmm1
	vinsertf128	$0x1, 16(%r8,%rax), %ymm1, %ymm1
	addl	$1, %edx
	vmovupd	(%r12,%rax), %xmm0
	vinsertf128	$0x1, 16(%r12,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rbx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%r11,%rax), %xmm0
	vinsertf128	$0x1, 16(%r11,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmulpd	(%r15,%rax), %ymm5, %ymm0
	vmulpd	%ymm4, %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rdi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm0, %ymm2
	vmovupd	(%rcx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm0
	vmovupd	(%r10,%rax), %xmm2
	vinsertf128	$0x1, 16(%r10,%rax), %ymm2, %ymm2
	vaddpd	%ymm2, %ymm0, %ymm0
	vmovupd	(%r9,%rax), %xmm2
	vinsertf128	$0x1, 16(%r9,%rax), %ymm2, %ymm2
	vaddpd	%ymm2, %ymm0, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rsi,%rax)
	vextractf128	$0x1, %ymm0, 16(%rsi,%rax)
	addq	$32, %rax
	cmpl	%edx, %r13d
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-264(%rbp), %ecx
	movl	-188(%rbp), %eax
	movq	-288(%rbp), %r15
	movq	-280(%rbp), %r13
	movl	%ecx, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %ecx
	je	.L23
.L16:
	movq	-208(%rbp), %rbx
	cltq
	movl	-360(%rbp), %edi
	movq	-256(%rbp), %r8
	leaq	(%rax,%rbx), %rdx
	movq	-152(%rbp), %rbx
	leaq	(%r15,%rdx,8), %rsi
	leaq	(%rax,%rbx), %rdx
	movq	-216(%rbp), %rbx
	leaq	(%r15,%rdx,8), %rcx
	leaq	(%rax,%rbx), %rdx
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
	movq	-232(%rbp), %rax
	movq	-304(%rbp), %rdi
	addq	%rax, -224(%rbp)
	addq	%rax, -256(%rbp)
	addq	%rax, %r14
	addq	%rax, %r13
	movq	-184(%rbp), %r10
	addq	%rax, -240(%rbp)
	addq	%rax, -168(%rbp)
	addq	%rax, -248(%rbp)
	addq	%rax, -176(%rbp)
	addq	%rdi, -208(%rbp)
	movl	-296(%rbp), %eax
	addq	%rdi, -216(%rbp)
	addq	%rdi, -152(%rbp)
	addl	%eax, -160(%rbp)
	addl	%eax, -156(%rbp)
	addl	%eax, -292(%rbp)
	movl	-192(%rbp), %ebx
	cmpl	%ebx, -272(%rbp)
	jg	.L24
.L73:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L74
	movq	%r15, %rdi
	call	dummy
	movq	-200(%rbp), %rdi
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
	movq	-384(%rbp), %rcx
	xorl	%eax, %eax
	movq	-256(%rbp), %rsi
	movq	-168(%rbp), %rdx
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	8(%r13,%rax), %xmm0
	vmovsd	-144(%rbp), %xmm1
	vaddsd	(%r14,%rax), %xmm0, %xmm2
	vmulsd	8(%r14,%rax), %xmm1, %xmm0
	vaddsd	8(%rdx,%rax), %xmm2, %xmm2
	vaddsd	16(%r14,%rax), %xmm2, %xmm2
	vmulsd	-112(%rbp), %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rdx,%rax), %xmm0
	vaddsd	0(%r13,%rax), %xmm0, %xmm0
	vaddsd	16(%r13,%rax), %xmm0, %xmm0
	vaddsd	16(%rdx,%rax), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rsi,%rax)
	addq	$8, %rax
	cmpq	%rcx, %rax
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
	movq	%rsi, -200(%rbp)
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
	movq	-200(%rbp), %rax
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
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	call	dummy
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	dummy
	leaq	-80(%rbp), %rdi
	call	dummy
	cmpl	$1, -272(%rbp)
	jg	.L14
	jmp	.L15
.L40:
	movl	$1, %edi
	jmp	.L5
.L79:
	movq	$0, -200(%rbp)
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
	movq	$0, -200(%rbp)
	testl	%eax, %eax
	jne	.L34
	movq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)
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
