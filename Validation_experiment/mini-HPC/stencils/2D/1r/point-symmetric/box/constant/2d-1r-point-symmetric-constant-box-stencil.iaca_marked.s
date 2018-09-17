	.file	"2d-1r-point-symmetric-constant-box-stencil.c_compilable.c"
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
	subq	$448, %rsp
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
	movq	%r8, -216(%rbp)
	call	posix_memalign
	movq	-216(%rbp), %r8
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
	movq	$0, -264(%rbp)
	xorl	%eax, %eax
.L30:
	vmovsd	.LC2(%rip), %xmm0
	movq	-264(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L34
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r13d
	jle	.L34
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L34:
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
	leal	-1(%r12), %eax
	movl	%eax, -344(%rbp)
	testl	%edx, %edx
	jne	.L80
	cmpl	$1, -344(%rbp)
	jle	.L81
.L14:
	leal	-1(%rbx), %eax
	movl	%eax, -464(%rbp)
	cmpl	$1, %eax
	jle	.L73
	movslq	%ebx, %rdi
	movq	-264(%rbp), %rsi
	leal	-2(%rbx), %edx
	xorl	%r9d, %r9d
	leaq	0(,%rdi,8), %r14
	movl	%edx, -332(%rbp)
	leaq	1(%rdi,%rdx), %rdx
	leaq	8(%rsi,%r14), %rax
	movl	%ebx, -368(%rbp)
	leaq	(%r15,%r14), %r8
	movq	%rax, -296(%rbp)
	leaq	(%rsi,%r14), %rax
	leaq	(%r8,%r14), %r13
	movq	%rax, -328(%rbp)
	leaq	40(%rsi,%r14), %rax
	leaq	(%rsi,%rdx,8), %rsi
	movq	%rax, -304(%rbp)
	leal	-3(%rbx), %edx
	leal	(%rbx,%rbx), %eax
	movslq	%eax, %rcx
	movq	%rsi, -312(%rbp)
	leaq	8(,%rdx,8), %rsi
	movl	%ebx, -228(%rbp)
	leaq	-208(%rbp), %rbx
	movq	%rcx, -288(%rbp)
	salq	$3, %rcx
	movq	%rsi, -488(%rbp)
	leaq	-144(%rbp), %rsi
	movq	%rbx, -424(%rbp)
	addq	$8, %rbx
	movq	%rcx, -240(%rbp)
	leaq	-112(%rbp), %rcx
	movq	%rbx, -392(%rbp)
	leaq	8(%rsi), %rbx
	movq	%rbx, -400(%rbp)
	leaq	8(%rcx), %rbx
	movq	%rbx, -408(%rbp)
	leaq	-80(%rbp), %rbx
	addq	$8, %rbx
	movq	%rdi, -376(%rbp)
	movq	%rdi, -272(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rbx, -416(%rbp)
	leal	1(%rax), %ebx
	movl	%edx, -460(%rbp)
	leaq	48(%r15), %rdx
	movl	%eax, -364(%rbp)
	movq	%rdi, -432(%rbp)
	addq	$8, %rdi
	movl	%ebx, -468(%rbp)
	leal	2(%rax), %ebx
	addl	$3, %eax
	movq	%rdi, -384(%rbp)
	movq	%r9, %rdi
	movq	%r15, -224(%rbp)
	movl	$0, -216(%rbp)
	movq	$0, -280(%rbp)
	movl	$1, -232(%rbp)
	movq	%rsi, -440(%rbp)
	movq	%rcx, -448(%rbp)
	movq	%rdx, -456(%rbp)
	movl	%ebx, -472(%rbp)
	movl	%eax, -476(%rbp)
	movq	%r14, -320(%rbp)
	movq	%r13, %r14
	movq	%r8, %r13
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-320(%rbp), %rax
	movq	-296(%rbp), %rbx
	movq	-312(%rbp), %rsi
	addl	$1, -232(%rbp)
	addq	%rdi, %rax
	movq	-456(%rbp), %r11
	movq	%rax, -248(%rbp)
	movq	-384(%rbp), %rax
	cmpq	%rax, %rbx
	movq	-432(%rbp), %rax
	setnb	%cl
	cmpq	%rax, %rsi
	setbe	%al
	orl	%eax, %ecx
	cmpq	-392(%rbp), %rbx
	setnb	%dl
	cmpq	-424(%rbp), %rsi
	setbe	%al
	orl	%edx, %eax
	andl	%ecx, %eax
	cmpl	$5, -332(%rbp)
	seta	%dl
	andl	%edx, %eax
	cmpq	-400(%rbp), %rbx
	setnb	%cl
	cmpq	-440(%rbp), %rsi
	setbe	%dl
	orl	%edx, %ecx
	andl	%ecx, %eax
	cmpq	-408(%rbp), %rbx
	setnb	%dl
	cmpq	-448(%rbp), %rsi
	setbe	%cl
	orl	%edx, %ecx
	andl	%ecx, %eax
	cmpq	-416(%rbp), %rbx
	leaq	-80(%rbp), %rcx
	setnb	%dl
	cmpq	%rcx, %rsi
	movq	-304(%rbp), %rsi
	setbe	%cl
	orl	%edx, %ecx
	andl	%eax, %ecx
	leaq	48(%r13), %rax
	cmpq	%rax, %rbx
	setnb	%dl
	cmpq	%rsi, %r13
	setnb	%al
	orl	%edx, %eax
	leaq	(%r11,%rdi), %rdx
	andl	%ecx, %eax
	cmpq	%rdx, %rbx
	setnb	%dl
	cmpq	%rsi, -224(%rbp)
	setnb	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L49
	movq	-240(%rbp), %rax
	addq	%r11, %rax
	cmpq	%rax, %rbx
	setnb	%dl
	cmpq	%rsi, %r14
	setnb	%al
	orb	%al, %dl
	je	.L49
	leaq	8(%r13), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-460(%rbp), %eax
	ja	.L44
	movl	$1, -256(%rbp)
	testl	%edx, %edx
	je	.L17
	movl	-228(%rbp), %eax
	movl	-216(%rbp), %r12d
	movl	$2, -256(%rbp)
	vmovsd	0(%r13), %xmm2
	movl	-468(%rbp), %esi
	leal	1(%rax), %r10d
	leal	2(%rax), %ebx
	movl	-472(%rbp), %r8d
	movslq	%r10d, %r10
	movslq	%ebx, %rbx
	leal	1(%r12), %eax
	addl	%r12d, %esi
	leaq	(%r15,%r10,8), %r9
	leaq	(%r15,%rbx,8), %rcx
	cltq
	addl	%r12d, %r8d
	vmovsd	(%r9), %xmm3
	vaddsd	(%rcx), %xmm2, %xmm2
	leaq	(%r15,%rax,8), %r11
	movslq	%esi, %rax
	vmulsd	-176(%rbp), %xmm2, %xmm2
	leaq	(%r15,%rax,8), %rsi
	movslq	%r8d, %rax
	vmulsd	-208(%rbp), %xmm3, %xmm0
	leaq	(%r15,%rax,8), %r8
	leal	2(%r12), %eax
	movq	-224(%rbp), %r12
	cltq
	vmovsd	(%r12), %xmm1
	vaddsd	(%r8), %xmm1, %xmm1
	leaq	(%r15,%rax,8), %rax
	movq	-264(%rbp), %r12
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	(%r11), %xmm2
	vaddsd	(%rsi), %xmm2, %xmm2
	vmulsd	-144(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm3, %xmm2
	vmulsd	-112(%rbp), %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rax), %xmm0
	vaddsd	(%r14), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r10,8)
	cmpl	$1, %edx
	je	.L17
	movl	-228(%rbp), %r10d
	vmovsd	(%r9), %xmm2
	vmovsd	(%rcx), %xmm3
	vmulsd	-208(%rbp), %xmm3, %xmm0
	addl	$3, %r10d
	movslq	%r10d, %r12
	leaq	(%r15,%r12,8), %r9
	leaq	(%r15,%r12,8), %r10
	vaddsd	(%r9), %xmm2, %xmm2
	vmulsd	-176(%rbp), %xmm2, %xmm2
	movq	%r10, -256(%rbp)
	movl	-216(%rbp), %r9d
	movl	-216(%rbp), %r10d
	movl	$3, -256(%rbp)
	addl	$3, %r10d
	movslq	%r10d, %r10
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	(%rax), %xmm2
	vaddsd	(%r8), %xmm2, %xmm2
	vmulsd	-144(%rbp), %xmm2, %xmm0
	movl	-476(%rbp), %r8d
	leaq	(%r15,%r10,8), %r10
	addl	%r9d, %r8d
	movslq	%r8d, %r8
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r15,%r8,8), %xmm0
	vaddsd	(%r11), %xmm0, %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	movq	-264(%rbp), %r11
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%rsi), %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%rbx,8)
	cmpl	$3, %edx
	jne	.L17
	movl	-228(%rbp), %ebx
	vmovsd	-208(%rbp), %xmm3
	movl	$4, -256(%rbp)
	leal	4(%rbx), %esi
	leaq	(%r15,%r12,8), %rbx
	vmulsd	(%rbx), %xmm3, %xmm0
	movslq	%esi, %rsi
	movl	-364(%rbp), %ebx
	vmovsd	(%r15,%rsi,8), %xmm2
	vaddsd	(%rcx), %xmm2, %xmm2
	vmulsd	-176(%rbp), %xmm2, %xmm2
	leal	3(%rbx), %ecx
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	(%r15,%rcx,8), %xmm0
	vaddsd	(%r10), %xmm0, %xmm0
	vmulsd	-144(%rbp), %xmm0, %xmm0
	leal	4(%rbx), %ecx
	movslq	%ecx, %rcx
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovsd	(%r15,%rcx,8), %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vmulsd	-112(%rbp), %xmm0, %xmm0
	leal	2(%rbx), %ecx
	leal	4(%r9), %eax
	movslq	%ecx, %rcx
	cltq
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovsd	(%r15,%rcx,8), %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r11,%r12,8)
.L17:
	movl	-332(%rbp), %ebx
	movl	%edx, %eax
	movq	-280(%rbp), %r9
	movq	%r15, -360(%rbp)
	movq	-288(%rbp), %r10
	movq	-248(%rbp), %r11
	subl	%edx, %ebx
	movq	-272(%rbp), %rdx
	vbroadcastsd	-208(%rbp), %ymm7
	movl	%ebx, -336(%rbp)
	shrl	$2, %ebx
	vbroadcastsd	-176(%rbp), %ymm6
	leaq	1(%rax,%rdx), %rsi
	leaq	2(%rax,%rdx), %rdx
	movl	%ebx, -340(%rbp)
	vbroadcastsd	-144(%rbp), %ymm5
	salq	$3, %rsi
	leaq	(%r15,%rdx,8), %r12
	leaq	1(%rax,%r9), %rdx
	vbroadcastsd	-112(%rbp), %ymm4
	leaq	(%r15,%rsi), %rcx
	leaq	(%r15,%rdx,8), %rbx
	vbroadcastsd	-80(%rbp), %ymm3
	addq	-264(%rbp), %rsi
	leaq	1(%rax,%r10), %rdx
	movq	%rcx, -352(%rbp)
	leaq	0(,%rax,8), %rcx
	leaq	(%rcx,%r11), %r8
	addq	%rcx, %rdi
	leaq	(%r15,%rdx,8), %r11
	addq	-240(%rbp), %rcx
	leaq	2(%rax,%r10), %rdx
	leaq	2(%rax,%r9), %rax
	addq	%r15, %r8
	addq	%r15, %rdi
	leaq	(%r15,%rdx,8), %r10
	leaq	(%r15,%rax,8), %r9
	addq	%r15, %rcx
	xorl	%eax, %eax
	movq	-352(%rbp), %r15
	movq	%r13, -352(%rbp)
	xorl	%edx, %edx
	movl	-340(%rbp), %r13d
	.p2align 4,,10
	.p2align 3
        movl      $111, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
.L19:
	vmovupd	(%r12,%rax), %ymm1
	vaddpd	(%r8,%rax), %ymm1, %ymm1
	addl	$1, %edx
	vmulpd	(%r15,%rax), %ymm7, %ymm0
	vmovupd	(%r11,%rax), %ymm2
	vaddpd	(%rbx,%rax), %ymm2, %ymm2
	vmulpd	%ymm6, %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm1
	vmulpd	%ymm5, %ymm2, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm2
	vmovupd	(%r10,%rax), %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	vmulpd	%ymm4, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm1
	vmovupd	(%r9,%rax), %ymm0
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpl	%edx, %r13d
	ja	.L19
        movl      $222, %ebx # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     100        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     103        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
        .byte     144        # INSERTED BY KERNCRAFT IACA MARKER UTILITY
	movl	-336(%rbp), %edi
	movl	-256(%rbp), %eax
	movq	-360(%rbp), %r15
	movq	-352(%rbp), %r13
	movl	%edi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %edi
	je	.L23
.L16:
	movq	-272(%rbp), %rdi
	cltq
	movq	-288(%rbp), %rbx
	movq	-328(%rbp), %r8
	leaq	(%rax,%rdi), %rdx
	movq	-280(%rbp), %rdi
	leaq	(%r15,%rdx,8), %rsi
	leaq	(%rax,%rbx), %rdx
	leaq	(%r15,%rdx,8), %rcx
	leaq	(%rax,%rdi), %rdx
	movl	-464(%rbp), %edi
	leaq	-8(%r15,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L21:
	vmovsd	(%rsi), %xmm3
	addq	$8, %rcx
	addq	$8, %rsi
	addq	$8, %rdx
	vmovsd	-16(%rsi), %xmm2
	vmulsd	-208(%rbp), %xmm3, %xmm0
	vaddsd	(%rsi), %xmm2, %xmm2
	vmulsd	-176(%rbp), %xmm2, %xmm2
	vmovsd	(%rdx), %xmm1
	vaddsd	-8(%rcx), %xmm1, %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm2, %xmm3
	vmovsd	-16(%rcx), %xmm0
	vaddsd	8(%rdx), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm3, %xmm2
	vmovsd	-8(%rdx), %xmm1
	vaddsd	(%rcx), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r8,%rax,8)
	addq	$1, %rax
	cmpl	%eax, %edi
	jg	.L21
.L23:
	movq	-320(%rbp), %rax
	movq	-376(%rbp), %rdi
	addq	%rax, -296(%rbp)
	movl	-232(%rbp), %ebx
	addq	%rax, -328(%rbp)
	addq	%rax, %r13
	addq	%rax, %r14
	addq	%rax, -304(%rbp)
	addq	%rax, -224(%rbp)
	addq	%rax, -312(%rbp)
	addq	%rdi, -272(%rbp)
	addq	%rdi, -280(%rbp)
	addq	%rdi, -288(%rbp)
	movq	-248(%rbp), %rdi
	addq	%rax, -240(%rbp)
	movl	-368(%rbp), %eax
	addl	%eax, -228(%rbp)
	addl	%eax, -216(%rbp)
	addl	%eax, -364(%rbp)
	cmpl	%ebx, -344(%rbp)
	jg	.L24
.L73:
	vzeroupper
.L15:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L74
	movq	%r15, %rdi
	call	dummy
	movq	-264(%rbp), %rdi
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
.L74:
	addq	$448, %rsp
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
	movq	-488(%rbp), %rcx
	movq	-328(%rbp), %rsi
	xorl	%eax, %eax
	movq	-224(%rbp), %rdx
	.p2align 4,,10
	.p2align 3
.L22:
	vmovsd	16(%r13,%rax), %xmm2
	vmovsd	-208(%rbp), %xmm0
	vaddsd	0(%r13,%rax), %xmm2, %xmm2
	vmulsd	8(%r13,%rax), %xmm0, %xmm1
	vmulsd	-176(%rbp), %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm0
	vmovsd	8(%r14,%rax), %xmm1
	vaddsd	8(%rdx,%rax), %xmm1, %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm2
	vmovsd	16(%r14,%rax), %xmm1
	vaddsd	(%rdx,%rax), %xmm1, %xmm1
	vmulsd	-112(%rbp), %xmm1, %xmm1
	vmovsd	(%r14,%rax), %xmm0
	vaddsd	16(%rdx,%rax), %xmm0, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
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
	movq	%rsi, -264(%rbp)
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
	movq	-264(%rbp), %rax
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
	movq	-264(%rbp), %rcx
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
	movq	-264(%rbp), %rdi
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
	cmpl	$1, -344(%rbp)
	jg	.L14
	jmp	.L15
.L40:
	movl	$1, %edi
	jmp	.L5
.L79:
	movq	$0, -264(%rbp)
	xorl	%edx, %edx
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
	movq	$0, -264(%rbp)
	testl	%eax, %eax
	jne	.L34
	movq	-80(%rbp), %rax
	movq	%rax, -264(%rbp)
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
