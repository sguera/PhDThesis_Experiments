	.file	"2d-2r-isotropic-constant-box-stencil.c_compilable.c"
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
	subq	$576, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rbx
	call	strtol
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	movl	%eax, %r13d
	movq	%rax, -216(%rbp)
	imull	%ebx, %r13d
	movslq	%r13d, %r15
	salq	$3, %r15
	movq	%r15, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -80(%rbp)
.L2:
	movq	-80(%rbp), %r12
	testl	%r13d, %r13d
	jle	.L3
	leal	-1(%r13), %r14d
	movq	%r12, %rax
	movl	$5, %ecx
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
	vmovsd	%xmm0, (%r12)
	cmpl	$1, %eax
	je	.L41
	vmovsd	%xmm0, 8(%r12)
	cmpl	$3, %eax
	jne	.L42
	vmovsd	%xmm0, 16(%r12)
	movl	$3, %edi
.L5:
	vmovapd	.LC1(%rip), %ymm0
	leaq	(%r12,%rax,8), %rdx
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
	je	.L75
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%r12,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%r12,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L8
	cltq
	vmovsd	%xmm0, (%r12,%rax,8)
.L8:
	leaq	-80(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
	call	posix_memalign
	testl	%eax, %eax
	je	.L76
	testl	%r13d, %r13d
	movl	$0, %eax
	movl	$1, %edi
	cmovle	%eax, %r14d
	cmovg	%r13d, %edi
	cmpl	$4, %r14d
	ja	.L77
	movq	$0, -456(%rbp)
	xorl	%eax, %eax
.L31:
	movq	-456(%rbp), %rcx
	movslq	%eax, %rdx
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rcx,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L35
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rcx,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L35
	cltq
	vmovsd	%xmm0, (%rcx,%rax,8)
.L35:
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
	movl	-216(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -464(%rbp)
	testl	%edx, %edx
	jne	.L78
	cmpl	$2, -464(%rbp)
	jle	.L79
.L14:
	leal	-2(%rbx), %eax
	movl	%eax, -600(%rbp)
	cmpl	$2, %eax
	jle	.L71
	movq	-456(%rbp), %rsi
	leal	(%rbx,%rbx), %edx
	movslq	%ebx, %r15
	movq	$0, -368(%rbp)
	movslq	%edx, %rdi
	addl	%ebx, %edx
	movq	%r15, -480(%rbp)
	leaq	16(,%rdi,8), %rcx
	movq	%rdi, -392(%rbp)
	leaq	0(,%r15,8), %r14
	movq	%r15, -400(%rbp)
	leaq	(%rsi,%rcx), %rax
	movq	%r14, -488(%rbp)
	movq	%rax, -416(%rbp)
	leaq	-16(%rcx), %rax
	leaq	(%rsi,%rax), %r11
	movq	%rax, -360(%rbp)
	leaq	32(%rsi,%rcx), %rcx
	movq	%r11, -424(%rbp)
	movslq	%edx, %r11
	leal	-4(%rbx), %edx
	movq	%rcx, -432(%rbp)
	movl	%edx, -448(%rbp)
	leaq	(%r12,%r11,8), %rcx
	leaq	2(%rdi,%rdx), %rdx
	movq	%rcx, -376(%rbp)
	movq	%rsi, %rcx
	leaq	(%rsi,%rdx,8), %rsi
	movq	%rax, %rdx
	movq	%r11, -408(%rbp)
	subq	%rdi, %r11
	leal	0(,%rbx,4), %eax
	movq	%rsi, -440(%rbp)
	movslq	%eax, %rsi
	movq	%r14, -384(%rbp)
	leaq	0(,%rsi,8), %rax
	movq	%rsi, -344(%rbp)
	movq	%r12, %rsi
	movq	%rax, -352(%rbp)
	movq	%r11, %rax
	subq	%rdx, %rsi
	leaq	-112(%rbp), %rdx
	salq	$3, %rax
	movq	%rsi, -496(%rbp)
	addq	$64, %rsi
	movq	%rax, -504(%rbp)
	leaq	0(,%rdi,8), %rax
	movq	%r12, %rdi
	leaq	64(%r12), %r11
	subq	%rax, %rdi
	movl	$2, -224(%rbp)
	leal	-5(%rbx), %eax
	movq	%rdi, -608(%rbp)
	leaq	-208(%rbp), %rbx
	movl	%eax, -596(%rbp)
	movq	%rbx, -576(%rbp)
	leaq	(%r12,%rax,8), %rax
	addq	$8, %rbx
	leaq	-144(%rbp), %rdi
	movq	%rbx, -520(%rbp)
	subq	%rcx, %rax
	leaq	8(%rdi), %rbx
	subq	$8, %rax
	movq	%rdi, -592(%rbp)
	movq	%rbx, -528(%rbp)
	leaq	8(%rdx), %rbx
	leaq	-176(%rbp), %rcx
	movq	%rbx, -536(%rbp)
	leaq	-80(%rbp), %rbx
	movq	%rcx, -584(%rbp)
	addq	$8, %rcx
	addq	$8, %rbx
	movq	%rdx, -552(%rbp)
	movq	%r11, -568(%rbp)
	movq	%rsi, -560(%rbp)
	movq	%rcx, -512(%rbp)
	movq	%rbx, -544(%rbp)
	movq	%r12, %rbx
	movq	%rax, -616(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-368(%rbp), %rsi
	movq	-416(%rbp), %r14
	movq	-360(%rbp), %r15
	movq	-504(%rbp), %r11
	leaq	0(,%rsi,8), %rcx
	movq	-512(%rbp), %rsi
	movq	%rcx, -216(%rbp)
	movq	-352(%rbp), %rcx
	movq	-440(%rbp), %r10
	leaq	(%rbx,%r15), %rax
	addq	%r15, %r11
	movq	-432(%rbp), %r13
	addl	$1, -224(%rbp)
	addq	%rbx, %rcx
	cmpq	%rsi, %r14
	movq	-584(%rbp), %rsi
	setnb	%r8b
	movq	-384(%rbp), %r12
	cmpq	%rsi, %r10
	leaq	(%rbx,%r12), %rdx
	setbe	%sil
	orl	%esi, %r8d
	cmpq	-520(%rbp), %r14
	setnb	%dil
	cmpq	-576(%rbp), %r10
	setbe	%sil
	orl	%edi, %esi
	andl	%r8d, %esi
	cmpl	$4, -448(%rbp)
	seta	%dil
	andl	%edi, %esi
	cmpq	-528(%rbp), %r14
	setnb	%r9b
	cmpq	-592(%rbp), %r10
	setbe	%r8b
	orl	%r8d, %r9d
	andl	%r9d, %esi
	cmpq	-536(%rbp), %r14
	setnb	%dil
	cmpq	-552(%rbp), %r10
	setbe	%r9b
	orl	%edi, %r9d
	andl	%r9d, %esi
	cmpq	-544(%rbp), %r14
	leaq	-80(%rbp), %r9
	setnb	%dil
	cmpq	%r9, %r10
	movq	-376(%rbp), %r10
	setbe	%r8b
	orl	%edi, %r8d
	andl	%r8d, %esi
	movl	%esi, %r9d
	leaq	64(%r10), %rsi
	cmpq	%rsi, %r14
	setnb	%dil
	cmpq	%r10, %r13
	movq	-568(%rbp), %r10
	setbe	%sil
	orl	%edi, %esi
	andl	%esi, %r9d
	movq	%r10, %rsi
	movl	%r9d, %r8d
	addq	%r15, %rsi
	cmpq	%rsi, %r14
	setnb	%dil
	cmpq	%rax, %r13
	setbe	%sil
	orl	%edi, %esi
	movq	%r10, %rdi
	addq	%r12, %rdi
	andl	%r8d, %esi
	cmpq	%rdi, %r14
	setnb	%dil
	cmpq	%rdx, %r13
	setbe	%r8b
	orl	%r8d, %edi
	andl	%edi, %esi
	movq	-560(%rbp), %rdi
	addq	%r15, %rdi
	cmpq	%rdi, %r14
	setnb	%dil
	addq	-496(%rbp), %r15
	cmpq	%r15, %r13
	setbe	%r8b
	orl	%r8d, %edi
	testb	%dil, %sil
	je	.L28
	movq	-352(%rbp), %rsi
	addq	%r10, %rsi
	cmpq	%rsi, %r14
	setnb	%dil
	cmpq	%rcx, %r13
	setbe	%sil
	orb	%sil, %dil
	je	.L28
	movq	%rax, %r9
	shrq	$3, %r9
	negq	%r9
	andl	$3, %r9d
	leal	3(%r9), %esi
	cmpl	-596(%rbp), %esi
	ja	.L45
	movl	$2, -444(%rbp)
	testl	%r9d, %r9d
	je	.L17
	movq	-360(%rbp), %rdi
	leal	-1(%r9), %r10d
	movl	$3, %r8d
	addq	-608(%rbp), %rdi
	addq	$4, %r10
	movq	-376(%rbp), %rsi
	movq	-424(%rbp), %r12
.L18:
	vmovsd	8(%rdx), %xmm0
	movl	%r8d, %r13d
	addq	$8, %rax
	addq	$8, %rdx
	vaddsd	-8(%rax), %xmm0, %xmm3
	addq	$8, %rsi
	addq	$8, %rdi
	vmovsd	8(%rdx), %xmm0
	addq	$8, %rcx
	vaddsd	(%rax), %xmm0, %xmm2
	vmovsd	-208(%rbp), %xmm0
	vaddsd	8(%rsi), %xmm2, %xmm2
	vmulsd	8(%rax), %xmm0, %xmm1
	vaddsd	16(%rax), %xmm2, %xmm2
	vmulsd	-176(%rbp), %xmm2, %xmm2
	vaddsd	(%rsi), %xmm3, %xmm3
	vaddsd	8(%rdi), %xmm3, %xmm3
	vaddsd	8(%rcx), %xmm3, %xmm3
	vaddsd	16(%rdx), %xmm3, %xmm3
	vaddsd	16(%rsi), %xmm3, %xmm3
	vaddsd	24(%rax), %xmm3, %xmm3
	vmulsd	-144(%rbp), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	-8(%rsi), %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm1
	vaddsd	(%rdi), %xmm1, %xmm1
	vaddsd	(%rcx), %xmm1, %xmm1
	vaddsd	16(%rdi), %xmm1, %xmm1
	vaddsd	16(%rcx), %xmm1, %xmm1
	vaddsd	24(%rdx), %xmm1, %xmm1
	vaddsd	24(%rsi), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm1
	vmovsd	-8(%rcx), %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%r12,%r8,8)
	addq	$1, %r8
	cmpq	%r10, %r8
	jne	.L18
	movl	%r13d, -444(%rbp)
.L17:
	movl	-448(%rbp), %ecx
	movl	%r9d, %eax
	movq	-392(%rbp), %rdi
	leaq	0(,%rax,8), %r8
	movq	-408(%rbp), %r10
	movq	-344(%rbp), %r12
	subl	%r9d, %ecx
	movq	-368(%rbp), %r9
	leaq	2(%rax,%rdi), %rdx
	movl	%ecx, -460(%rbp)
	shrl	$2, %ecx
	vbroadcastsd	-208(%rbp), %ymm7
	movl	%ecx, -220(%rbp)
	leaq	0(,%rdx,8), %rcx
	vbroadcastsd	-176(%rbp), %ymm6
	leaq	(%rbx,%rcx), %rsi
	movq	%rcx, -328(%rbp)
	movq	-400(%rbp), %rcx
	leaq	1(%rax,%rdi), %rdx
	movq	%rsi, -232(%rbp)
	vbroadcastsd	-144(%rbp), %ymm5
	leaq	(%rbx,%rdx,8), %rsi
	vbroadcastsd	-112(%rbp), %ymm4
	movq	%rsi, -240(%rbp)
	vbroadcastsd	-80(%rbp), %ymm3
	leaq	2(%rax,%rcx), %rdx
	leaq	(%rbx,%rdx,8), %rsi
	leaq	2(%rax,%r10), %rdx
	movq	%rsi, -248(%rbp)
	leaq	(%rbx,%rdx,8), %rsi
	leaq	3(%rax,%rdi), %rdx
	movq	%rsi, -256(%rbp)
	leaq	(%rbx,%rdx,8), %rsi
	movq	%rsi, -264(%rbp)
	movq	-360(%rbp), %rsi
	leaq	(%r8,%rsi), %rdx
	leaq	(%rbx,%rdx), %rsi
	leaq	1(%rax,%rcx), %rdx
	movq	%rsi, -272(%rbp)
	leaq	(%rbx,%rdx,8), %rsi
	leaq	1(%rax,%r10), %rdx
	movq	%rsi, -280(%rbp)
	leaq	(%rbx,%rdx,8), %rsi
	leaq	2(%rax,%r9), %rdx
	movq	%rsi, -288(%rbp)
	leaq	(%rbx,%rdx,8), %rsi
	leaq	2(%rax,%r12), %rdx
	movq	%rsi, -296(%rbp)
	leaq	(%rbx,%rdx,8), %rsi
	leaq	3(%rax,%rcx), %rdx
	movq	%rsi, -304(%rbp)
	leaq	(%rbx,%rdx,8), %rsi
	leaq	3(%rax,%r10), %rdx
	movq	%rsi, -312(%rbp)
	leaq	(%rbx,%rdx,8), %r15
	leaq	4(%rax,%rdi), %rdx
	leaq	(%rbx,%rdx,8), %rdi
	leaq	(%r8,%r11), %rsi
	movq	%rdi, -320(%rbp)
	movq	-384(%rbp), %rdi
	leaq	1(%rax,%r9), %rdx
	addq	%rbx, %rsi
	leaq	(%rbx,%rdx,8), %r14
	movq	%rsi, -336(%rbp)
	movq	%r12, %rsi
	leaq	1(%rax,%r12), %rdx
	leaq	(%rbx,%rdx,8), %r13
	addq	%r8, %rdi
	leaq	3(%rax,%r9), %rdx
	addq	%rbx, %rdi
	leaq	(%rbx,%rdx,8), %r12
	leaq	3(%rax,%rsi), %rdx
	leaq	(%rbx,%rdx,8), %rsi
	leaq	4(%rax,%rcx), %rdx
	leaq	(%rbx,%rdx,8), %r11
	leaq	4(%rax,%r10), %rdx
	leaq	(%rbx,%rdx,8), %r10
	movq	-216(%rbp), %rdx
	addq	%r8, %rdx
	movq	%rdx, %rcx
	movq	-352(%rbp), %rdx
	addq	%rbx, %rcx
	addq	%r8, %rdx
	leaq	4(%rax,%r9), %r8
	addq	%rbx, %rdx
	leaq	(%rbx,%r8,8), %r9
	movq	-344(%rbp), %r8
	leaq	4(%rax,%r8), %rax
	leaq	(%rbx,%rax,8), %r8
	movq	-328(%rbp), %rax
	movq	%rbx, -472(%rbp)
	addq	-456(%rbp), %rax
	movl	$0, -216(%rbp)
	movq	-336(%rbp), %rbx
	movq	%rdx, -336(%rbp)
	movq	%rax, -328(%rbp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	movq	-280(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	movq	-272(%rbp), %rdx
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-288(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-296(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-304(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-312(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-320(%rbp), %rdx
	vmovupd	(%r15,%rax), %xmm0
	vinsertf128	$0x1, 16(%r15,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vaddpd	(%rdx,%rax), %ymm1, %ymm1
	movq	-240(%rbp), %rdx
	vmulpd	%ymm5, %ymm1, %ymm2
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	movq	-248(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-256(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-264(%rbp), %rdx
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	movq	-232(%rbp), %rdx
	vmulpd	%ymm6, %ymm1, %ymm1
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vmulpd	%ymm7, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rdi,%rax), %xmm0
	movq	-336(%rbp), %rdx
	vaddpd	%ymm1, %ymm2, %ymm1
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm0, %ymm2
	vmovupd	(%rbx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rbx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm0
	vmovupd	(%r14,%rax), %xmm2
	vinsertf128	$0x1, 16(%r14,%rax), %ymm2, %ymm2
	vaddpd	%ymm2, %ymm0, %ymm0
	vmovupd	0(%r13,%rax), %xmm2
	vinsertf128	$0x1, 16(%r13,%rax), %ymm2, %ymm2
	vaddpd	%ymm2, %ymm0, %ymm0
	vmovupd	(%r12,%rax), %xmm2
	vinsertf128	$0x1, 16(%r12,%rax), %ymm2, %ymm2
	vaddpd	%ymm2, %ymm0, %ymm0
	vmovupd	(%rsi,%rax), %xmm2
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm2, %ymm2
	vaddpd	%ymm2, %ymm0, %ymm0
	vmovupd	(%r11,%rax), %xmm2
	vinsertf128	$0x1, 16(%r11,%rax), %ymm2, %ymm2
	vaddpd	%ymm2, %ymm0, %ymm0
	vmovupd	(%r10,%rax), %xmm2
	vinsertf128	$0x1, 16(%r10,%rax), %ymm2, %ymm2
	vaddpd	%ymm2, %ymm0, %ymm0
	vmovupd	(%rcx,%rax), %xmm2
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm2, %ymm2
	vmulpd	%ymm4, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovupd	(%rdx,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm2
	vmovupd	(%r9,%rax), %xmm0
	vinsertf128	$0x1, 16(%r9,%rax), %ymm0, %ymm0
	movq	-328(%rbp), %rdx
	vaddpd	%ymm0, %ymm2, %ymm2
	vmovupd	(%r8,%rax), %xmm0
	vinsertf128	$0x1, 16(%r8,%rax), %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm2
	vaddpd	%ymm2, %ymm1, %ymm0
	vmovups	%xmm0, (%rdx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	addl	$1, -216(%rbp)
	movl	-216(%rbp), %edx
	cmpl	%edx, -220(%rbp)
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-460(%rbp), %esi
	movl	-444(%rbp), %r8d
	movq	-472(%rbp), %rbx
	movl	%esi, %eax
	andl	$-4, %eax
	addl	%eax, %r8d
	cmpl	%eax, %esi
	je	.L23
.L16:
	movq	-392(%rbp), %rax
	movslq	%r8d, %r8
	movl	-600(%rbp), %r9d
	movq	-424(%rbp), %r10
	addq	%r8, %rax
	leaq	(%rbx,%rax,8), %rdi
	movq	-408(%rbp), %rax
	addq	%r8, %rax
	leaq	(%rbx,%rax,8), %rsi
	movq	-368(%rbp), %rax
	addq	%r8, %rax
	leaq	(%rbx,%rax,8), %rcx
	movq	-344(%rbp), %rax
	addq	%r8, %rax
	leaq	(%rbx,%rax,8), %rdx
	movq	-400(%rbp), %rax
	addq	%r8, %rax
	leaq	-16(%rbx,%rax,8), %rax
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	-16(%rdi), %xmm0
	addq	$8, %rsi
	addq	$8, %rdi
	addq	$8, %rcx
	vaddsd	8(%rax), %xmm0, %xmm3
	addq	$8, %rdx
	addq	$8, %rax
	vmovsd	8(%rax), %xmm0
	vaddsd	-16(%rdi), %xmm0, %xmm2
	vmovsd	-208(%rbp), %xmm0
	vaddsd	-8(%rsi), %xmm2, %xmm2
	vmulsd	-8(%rdi), %xmm0, %xmm4
	vaddsd	(%rdi), %xmm2, %xmm2
	vmulsd	-176(%rbp), %xmm2, %xmm2
	vaddsd	-16(%rsi), %xmm3, %xmm3
	vaddsd	-8(%rcx), %xmm3, %xmm3
	vaddsd	-8(%rdx), %xmm3, %xmm3
	vaddsd	16(%rax), %xmm3, %xmm3
	vaddsd	(%rsi), %xmm3, %xmm3
	vaddsd	8(%rdi), %xmm3, %xmm3
	vmulsd	-144(%rbp), %xmm3, %xmm3
	vaddsd	%xmm4, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	-8(%rax), %xmm0
	vaddsd	-24(%rsi), %xmm0, %xmm1
	vaddsd	-16(%rcx), %xmm1, %xmm1
	vaddsd	-16(%rdx), %xmm1, %xmm1
	vaddsd	(%rcx), %xmm1, %xmm1
	vaddsd	(%rdx), %xmm1, %xmm1
	vaddsd	24(%rax), %xmm1, %xmm1
	vaddsd	8(%rsi), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm1
	vmovsd	-24(%rcx), %xmm0
	vaddsd	-24(%rdx), %xmm0, %xmm0
	vaddsd	8(%rcx), %xmm0, %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%r8,8)
	addq	$1, %r8
	cmpl	%r8d, %r9d
	jg	.L21
.L23:
	movq	-488(%rbp), %rax
	movq	-480(%rbp), %rcx
	addq	%rax, -416(%rbp)
	addq	%rcx, -392(%rbp)
	addq	%rcx, -400(%rbp)
	addq	%rcx, -408(%rbp)
	addq	%rcx, -368(%rbp)
	addq	%rcx, -344(%rbp)
	addq	%rax, -424(%rbp)
	addq	%rax, -432(%rbp)
	addq	%rax, -376(%rbp)
	addq	%rax, -440(%rbp)
	addq	%rax, -360(%rbp)
	addq	%rax, -384(%rbp)
	addq	%rax, -352(%rbp)
	movl	-224(%rbp), %ecx
	cmpl	%ecx, -464(%rbp)
	jg	.L24
	movq	%rbx, %r12
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L72
	movq	%r12, %rdi
	call	dummy
	movq	-456(%rbp), %rdi
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
	addq	$576, %rsp
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
	movq	-360(%rbp), %rsi
	movq	-608(%rbp), %rdi
	movq	-456(%rbp), %r8
	movq	-616(%rbp), %r9
	addq	-416(%rbp), %r9
	addq	%rsi, %rdi
	addq	%rsi, %r8
	movq	-376(%rbp), %rsi
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	8(%rdx), %xmm0
	addq	$8, %rax
	addq	$8, %rdx
	addq	$8, %rsi
	vaddsd	-8(%rax), %xmm0, %xmm3
	addq	$8, %rdi
	addq	$8, %rcx
	vmovsd	8(%rdx), %xmm0
	addq	$8, %r8
	vaddsd	(%rax), %xmm0, %xmm2
	vmovsd	-208(%rbp), %xmm0
	vaddsd	8(%rsi), %xmm2, %xmm2
	vmulsd	8(%rax), %xmm0, %xmm1
	vaddsd	16(%rax), %xmm2, %xmm2
	vmulsd	-176(%rbp), %xmm2, %xmm2
	vaddsd	(%rsi), %xmm3, %xmm3
	vaddsd	8(%rdi), %xmm3, %xmm3
	vaddsd	8(%rcx), %xmm3, %xmm3
	vaddsd	16(%rdx), %xmm3, %xmm3
	vaddsd	16(%rsi), %xmm3, %xmm3
	vaddsd	24(%rax), %xmm3, %xmm3
	vmulsd	-144(%rbp), %xmm3, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	-8(%rsi), %xmm0
	vaddsd	-8(%rdx), %xmm0, %xmm1
	vaddsd	(%rdi), %xmm1, %xmm1
	vaddsd	(%rcx), %xmm1, %xmm1
	vaddsd	16(%rdi), %xmm1, %xmm1
	vaddsd	16(%rcx), %xmm1, %xmm1
	vaddsd	24(%rdx), %xmm1, %xmm1
	vaddsd	24(%rsi), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm1
	vmovsd	-8(%rcx), %xmm0
	vaddsd	-8(%rdi), %xmm0, %xmm0
	vaddsd	24(%rdi), %xmm0, %xmm0
	vaddsd	24(%rcx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 8(%r8)
	cmpq	%r9, %rax
	jne	.L22
	jmp	.L23
.L45:
	movl	$2, %r8d
	jmp	.L16
.L76:
	movq	-80(%rbp), %rcx
	testl	%r13d, %r13d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r13d, %edi
	movq	%rcx, -456(%rbp)
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
	jb	.L31
	testl	%edx, %edx
	je	.L9
	movq	-456(%rbp), %rax
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L43
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L44
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L9:
	movq	-456(%rbp), %rcx
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
	jne	.L31
	jmp	.L35
.L78:
	movq	%r12, %rdi
	vzeroupper
	call	dummy
	movq	-456(%rbp), %rdi
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
	cmpl	$2, -464(%rbp)
	jg	.L14
	jmp	.L15
.L41:
	movl	$1, %edi
	jmp	.L5
.L77:
	movq	$0, -456(%rbp)
	xorl	%edx, %edx
	jmp	.L9
.L43:
	movl	$1, %eax
	jmp	.L9
.L75:
	vzeroupper
	jmp	.L8
.L3:
	leaq	-80(%rbp), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
	call	posix_memalign
	movq	$0, -456(%rbp)
	testl	%eax, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	movq	%rax, -456(%rbp)
	jmp	.L35
.L71:
	vzeroupper
	jmp	.L15
.L44:
	movl	$2, %eax
	jmp	.L9
.L42:
	movl	$2, %edi
	jmp	.L5
.L79:
	vzeroupper
	jmp	.L72
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
