	.file	"2d-1r-homogeneous-variable-box-stencil.c_compilable.c"
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
	movq	%rax, %r14
	movq	%rax, -72(%rbp)
	call	strtol
	movl	%r14d, %r15d
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	imull	%eax, %r15d
	movq	%rax, %rbx
	movslq	%r15d, %r13
	leaq	0(,%r13,8), %r12
	movq	%r12, %rdx
	call	posix_memalign
	testl	%eax, %eax
	je	.L2
	movq	$0, -56(%rbp)
.L2:
	movq	-56(%rbp), %r13
	testl	%r15d, %r15d
	jle	.L3
	movq	%r13, %rax
	movl	$5, %ecx
	leal	-1(%r15), %r14d
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	leal	3(%rax), %edx
	cmpl	$5, %edx
	cmovb	%ecx, %edx
	cmpl	%edx, %r14d
	jb	.L49
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L5
	vmovsd	.LC0(%rip), %xmm0
	vmovsd	%xmm0, 0(%r13)
	cmpl	$1, %eax
	je	.L51
	vmovsd	%xmm0, 8(%r13)
	cmpl	$3, %eax
	jne	.L52
	vmovsd	%xmm0, 16(%r13)
	movl	$3, %edi
.L5:
	movl	%r15d, %esi
	vmovapd	.LC1(%rip), %ymm0
	leaq	0(%r13,%rax,8), %rdx
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
	je	.L97
	vzeroupper
.L4:
	vmovsd	.LC0(%rip), %xmm0
	movslq	%eax, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L8
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, 0(%r13,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L8
	cltq
	vmovsd	%xmm0, 0(%r13,%rax,8)
.L8:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	je	.L98
.L40:
	movq	$0, -56(%rbp)
	movq	$0, -160(%rbp)
	testl	%r15d, %r15d
	jle	.L10
	movq	-160(%rbp), %r8
	leal	-1(%r15), %r14d
.L39:
	testl	%r15d, %r15d
	movl	$1, %esi
	movq	%r8, %rax
	movl	$0, %ecx
	cmovg	%r15d, %esi
	shrq	$3, %rax
	movl	$5, %edi
	negq	%rax
	andl	$3, %eax
	testl	%r15d, %r15d
	leal	3(%rax), %edx
	cmovg	%r14d, %ecx
	cmpl	$5, %edx
	cmovb	%edi, %edx
	cmpl	%edx, %ecx
	movl	$0, %ecx
	jb	.L11
	testl	%eax, %eax
	je	.L12
	vmovsd	.LC2(%rip), %xmm0
	vmovsd	%xmm0, (%r8)
	cmpl	$1, %eax
	je	.L55
	vmovsd	%xmm0, 8(%r8)
	cmpl	$3, %eax
	jne	.L56
	vmovsd	%xmm0, 16(%r8)
	movl	$3, %ecx
.L12:
	movl	%esi, %edi
	movq	-160(%rbp), %rdx
	vmovapd	.LC3(%rip), %ymm0
	subl	%eax, %edi
	movl	%edi, %esi
	leaq	(%rdx,%rax,8), %rdx
	xorl	%eax, %eax
	shrl	$2, %esi
	.p2align 4,,10
	.p2align 3
.L14:
	addl	$1, %eax
	vmovapd	%ymm0, (%rdx)
	addq	$32, %rdx
	cmpl	%eax, %esi
	ja	.L14
	movl	%edi, %eax
	andl	$-4, %eax
	addl	%eax, %ecx
	cmpl	%eax, %edi
	je	.L99
	vzeroupper
.L11:
	vmovsd	.LC2(%rip), %xmm0
	movq	-160(%rbp), %rdi
	movslq	%ecx, %rax
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	1(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	2(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	3(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	4(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
	leal	5(%rcx), %eax
	cmpl	%eax, %r15d
	jle	.L15
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L15:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L100
	movq	-56(%rbp), %rcx
	testl	%r15d, %r15d
	movl	$1, %edi
	movl	$5, %esi
	cmovg	%r15d, %edi
	movq	%rcx, -128(%rbp)
	shrq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	andl	$3, %edx
	testl	%r15d, %r15d
	leal	3(%rdx), %ecx
	cmovle	%eax, %r14d
	cmpl	$5, %ecx
	cmovb	%esi, %ecx
	cmpl	%ecx, %r14d
	jb	.L44
	testl	%edx, %edx
	je	.L18
	vmovsd	.LC4(%rip), %xmm0
	movq	-128(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	cmpl	$1, %edx
	je	.L57
	vmovsd	%xmm0, 8(%rax)
	cmpl	$3, %edx
	jne	.L58
	vmovsd	%xmm0, 16(%rax)
	movl	$3, %eax
.L18:
	subl	%edx, %edi
	movq	-128(%rbp), %rcx
	vmovapd	.LC5(%rip), %ymm0
	movl	%edi, %esi
	leaq	(%rcx,%rdx,8), %rcx
	shrl	$2, %esi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L20:
	addl	$1, %edx
	vmovapd	%ymm0, (%rcx)
	addq	$32, %rcx
	cmpl	%edx, %esi
	ja	.L20
	movl	%edi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %edi
	je	.L17
.L44:
	vmovsd	.LC4(%rip), %xmm0
	movq	-128(%rbp), %rdi
	movslq	%eax, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	2(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	3(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	4(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L17
	movslq	%edx, %rdx
	addl	$5, %eax
	vmovsd	%xmm0, (%rdi,%rdx,8)
	cmpl	%eax, %r15d
	jle	.L17
	cltq
	vmovsd	%xmm0, (%rdi,%rax,8)
.L17:
	movl	-72(%rbp), %eax
	movl	var_false(%rip), %edx
	subl	$1, %eax
	movl	%eax, -184(%rbp)
	testl	%edx, %edx
	jne	.L101
	cmpl	$1, -184(%rbp)
	jle	.L102
.L23:
	leal	-1(%rbx), %eax
	movl	%eax, -280(%rbp)
	cmpl	$1, %eax
	jle	.L92
	movslq	%ebx, %rcx
	movq	-160(%rbp), %rdi
	leal	-3(%rbx), %edx
	movq	%r13, %r15
	leaq	0(,%rcx,8), %r12
	movq	%rcx, -264(%rbp)
	leaq	8(%r12), %rax
	leaq	(%rdi,%r12), %r11
	movq	%rcx, -72(%rbp)
	leaq	(%rdi,%rax), %rsi
	leaq	0(%r13,%r12), %r9
	movl	%edx, -276(%rbp)
	movq	%rsi, -168(%rbp)
	leaq	40(%rdi,%r12), %rsi
	movq	-128(%rbp), %rdi
	leaq	(%r9,%r12), %r14
	movq	%rsi, -176(%rbp)
	addq	%rdi, %rax
	leaq	(%rdi,%r12), %r10
	movl	$0, -148(%rbp)
	movq	%rax, -80(%rbp)
	leal	(%rbx,%rbx), %eax
	movslq	%eax, %rdi
	movl	%eax, -252(%rbp)
	leaq	0(,%rdi,8), %rsi
	movq	%r11, -96(%rbp)
	movq	%rdi, -144(%rbp)
	movl	%ebx, %edi
	leal	-2(%rdi), %ecx
	movq	%rsi, -112(%rbp)
	leaq	8(,%rdx,8), %rsi
	movl	%ecx, -180(%rbp)
	leaq	48(%r13), %rcx
	movq	%r9, %r13
	movq	%r10, %r9
	movq	%rcx, -272(%rbp)
	leal	1(%rax), %ecx
	movq	%r15, %r10
	movl	%ecx, -284(%rbp)
	leal	2(%rax), %ecx
	addl	$3, %eax
	movq	%rsi, -304(%rbp)
	movq	$0, -136(%rbp)
	movl	$1, -152(%rbp)
	movl	%ecx, -288(%rbp)
	movl	%eax, -292(%rbp)
	movl	%ebx, -256(%rbp)
	movl	%ebx, -84(%rbp)
	xorl	%ebx, %ebx
	movq	%r14, -104(%rbp)
	movq	%r12, %r14
	movq	%rbx, %r12
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-168(%rbp), %rdi
	leaq	(%r14,%r12), %rax
	movq	-176(%rbp), %rsi
	movq	%rax, -120(%rbp)
	leaq	40(%r9), %rax
	movq	-272(%rbp), %r8
	addl	$1, -152(%rbp)
	cmpq	%rax, %rdi
	movq	-80(%rbp), %rax
	setnb	%cl
	cmpq	%rax, %rsi
	setbe	%al
	orl	%eax, %ecx
	leaq	48(%r13), %rax
	cmpq	%rax, %rdi
	setnb	%dl
	cmpq	%rsi, %r13
	setnb	%al
	orl	%edx, %eax
	andl	%ecx, %eax
	cmpl	$5, -180(%rbp)
	seta	%dl
	andl	%edx, %eax
	leaq	(%r8,%r12), %rdx
	cmpq	%rdx, %rdi
	setnb	%dl
	cmpq	%rsi, %r10
	setnb	%cl
	orl	%ecx, %edx
	testb	%dl, %al
	je	.L64
	movq	-112(%rbp), %rax
	addq	%r8, %rax
	cmpq	%rax, %rdi
	setnb	%dl
	cmpq	%rsi, -104(%rbp)
	setnb	%al
	orb	%al, %dl
	je	.L64
	movq	-80(%rbp), %rdx
	shrq	$3, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	-276(%rbp), %eax
	ja	.L59
	movl	$1, -88(%rbp)
	testl	%edx, %edx
	je	.L26
	movl	-84(%rbp), %ecx
	movl	-148(%rbp), %edi
	movl	$2, -88(%rbp)
	vmovsd	(%r10), %xmm0
	leal	1(%rcx), %r11d
	movslq	%r11d, %r11
	leaq	(%r15,%r11,8), %rax
	movq	%rax, -208(%rbp)
	leal	1(%rdi), %eax
	cltq
	leaq	(%r15,%rax,8), %rbx
	movl	-284(%rbp), %eax
	addl	%edi, %eax
	cltq
	leaq	(%r15,%rax,8), %r8
	leal	2(%rdi), %eax
	cltq
	leaq	(%r15,%rax,8), %rsi
	leal	2(%rcx), %eax
	movq	%rsi, -192(%rbp)
	movl	-288(%rbp), %esi
	cltq
	leaq	(%r15,%rax,8), %rcx
	movq	%rax, -216(%rbp)
	movl	%edi, %eax
	addl	%edi, %esi
	movslq	%esi, %rdi
	leaq	(%r15,%r11,8), %rsi
	vaddsd	(%rsi), %xmm0, %xmm0
	movq	-104(%rbp), %rsi
	leaq	(%r15,%rdi,8), %rdi
	vaddsd	0(%r13), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	movq	-192(%rbp), %rsi
	vaddsd	(%rbx), %xmm0, %xmm0
	vaddsd	(%r8), %xmm0, %xmm0
	vaddsd	(%rsi), %xmm0, %xmm0
	movq	-128(%rbp), %rsi
	vaddsd	(%rcx), %xmm0, %xmm0
	vaddsd	(%rdi), %xmm0, %xmm0
	vmulsd	(%rsi,%r11,8), %xmm0, %xmm0
	movq	-160(%rbp), %rsi
	vmovsd	%xmm0, (%rsi,%r11,8)
	cmpl	$1, %edx
	je	.L26
	movl	%eax, %r11d
	vmovsd	(%rcx), %xmm0
	vaddsd	(%rbx), %xmm0, %xmm0
	movl	$3, -88(%rbp)
	addl	$3, %r11d
	movq	-208(%rbp), %rbx
	movslq	%r11d, %r11
	leaq	(%r15,%r11,8), %r11
	vaddsd	(%rbx), %xmm0, %xmm0
	movq	%r11, -200(%rbp)
	vaddsd	(%r8), %xmm0, %xmm0
	movq	-200(%rbp), %rbx
	movq	-192(%rbp), %r8
	movl	-84(%rbp), %r11d
	vaddsd	(%r8), %xmm0, %xmm0
	movl	-148(%rbp), %r8d
	vaddsd	(%rdi), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm0, %xmm0
	addl	$3, %r11d
	movl	-292(%rbp), %ebx
	movslq	%r11d, %r11
	leaq	(%r15,%r11,8), %rax
	addl	%r8d, %ebx
	vaddsd	(%rax), %xmm0, %xmm0
	movslq	%ebx, %rdi
	movq	-216(%rbp), %rbx
	vaddsd	(%r15,%rdi,8), %xmm0, %xmm0
	movq	-128(%rbp), %rdi
	vmulsd	(%rdi,%rbx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%rbx,8)
	cmpl	$3, %edx
	jne	.L26
	movq	-192(%rbp), %rbx
	movl	$4, -88(%rbp)
	vmovsd	(%rbx), %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vaddsd	(%rcx), %xmm0, %xmm0
	movl	-252(%rbp), %ecx
	movq	-200(%rbp), %rbx
	movl	%ecx, %eax
	addl	$2, %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	3(%rcx), %eax
	cltq
	vaddsd	(%rbx), %xmm0, %xmm0
	movl	%ecx, %ebx
	movl	-84(%rbp), %ecx
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%r8), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%rcx), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	leal	4(%rbx), %eax
	cltq
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	(%rdi,%r11,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%r11,8)
.L26:
	movl	-180(%rbp), %ecx
	movq	-72(%rbp), %rdi
	movl	%edx, %eax
	movq	%r15, -248(%rbp)
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %r11
	subl	%edx, %ecx
	movq	-144(%rbp), %rbx
	movl	%ecx, -192(%rbp)
	shrl	$2, %ecx
	movl	%ecx, -200(%rbp)
	leaq	1(%rax,%rdi), %rcx
	salq	$3, %rcx
	addq	%rcx, %rsi
	leaq	(%r15,%rcx), %rdx
	addq	-160(%rbp), %rcx
	movq	%rsi, -208(%rbp)
	leaq	0(,%rax,8), %rsi
	leaq	(%rsi,%r12), %r8
	leaq	(%rsi,%r11), %rdi
	addq	-112(%rbp), %rsi
	movq	%rdx, -216(%rbp)
	leaq	(%r15,%rsi), %r12
	movq	-136(%rbp), %rsi
	leaq	(%r15,%rdi), %r11
	movq	-72(%rbp), %rdi
	movq	%r12, -232(%rbp)
	addq	%r15, %r8
	leaq	1(%rax,%rsi), %rdx
	movq	%r11, -224(%rbp)
	leaq	(%r15,%rdx,8), %r12
	leaq	1(%rax,%rbx), %rdx
	leaq	(%r15,%rdx,8), %r11
	leaq	2(%rax,%rsi), %rdx
	movq	%r11, -240(%rbp)
	leaq	(%r15,%rdx,8), %r11
	leaq	2(%rax,%rdi), %rdx
	leaq	2(%rax,%rbx), %rax
	leaq	(%r15,%rdx,8), %rdi
	movq	-216(%rbp), %rbx
	xorl	%edx, %edx
	leaq	(%r15,%rax,8), %rsi
	movq	%r13, -216(%rbp)
	movq	-240(%rbp), %r15
	xorl	%eax, %eax
	movq	%r14, -240(%rbp)
	movq	-224(%rbp), %r13
	movq	-232(%rbp), %r14
	movq	%r9, -224(%rbp)
	movq	-208(%rbp), %r9
	movq	%r10, -208(%rbp)
	movl	-200(%rbp), %r10d
	.p2align 4,,10
	.p2align 3
.L28:
	vmovupd	(%r8,%rax), %ymm0
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	addl	$1, %edx
	vaddpd	0(%r13,%rax), %ymm0, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vaddpd	(%r12,%rax), %ymm0, %ymm0
	vaddpd	(%r15,%rax), %ymm0, %ymm0
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	(%rdi,%rax), %ymm0, %ymm0
	vaddpd	(%rsi,%rax), %ymm0, %ymm0
	vmulpd	(%r9,%rax), %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpl	%edx, %r10d
	ja	.L28
	movl	-192(%rbp), %ecx
	movl	-88(%rbp), %eax
	movq	-248(%rbp), %r15
	movq	-240(%rbp), %r14
	movl	%ecx, %edx
	movq	-216(%rbp), %r13
	movq	-224(%rbp), %r9
	andl	$-4, %edx
	movq	-208(%rbp), %r10
	addl	%edx, %eax
	cmpl	%edx, %ecx
	je	.L32
.L25:
	movq	-72(%rbp), %rbx
	cltq
	movl	-280(%rbp), %edi
	leaq	(%rax,%rbx), %rdx
	movq	-144(%rbp), %rbx
	leaq	(%r15,%rdx,8), %rsi
	leaq	(%rax,%rbx), %rdx
	movq	-136(%rbp), %rbx
	leaq	(%r15,%rdx,8), %rcx
	leaq	(%rax,%rbx), %rdx
	movq	-96(%rbp), %rbx
	leaq	-8(%r15,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L30:
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
	vmulsd	(%r9,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx,%rax,8)
	addq	$1, %rax
	cmpl	%eax, %edi
	jg	.L30
.L95:
	movq	%rbx, -96(%rbp)
.L32:
	movq	-264(%rbp), %rax
	addq	%r14, %r13
	addq	%r14, %r9
	addq	%r14, %r10
	addq	%rax, -72(%rbp)
	movq	-120(%rbp), %r12
	addq	%rax, -136(%rbp)
	movl	-152(%rbp), %edi
	addq	%rax, -144(%rbp)
	movl	-256(%rbp), %eax
	addq	%r14, -168(%rbp)
	addq	%r14, -96(%rbp)
	addq	%r14, -176(%rbp)
	addq	%r14, -80(%rbp)
	addq	%r14, -104(%rbp)
	addq	%r14, -112(%rbp)
	addl	%eax, -84(%rbp)
	addl	%eax, -148(%rbp)
	addl	%eax, -252(%rbp)
	cmpl	%edi, -184(%rbp)
	jg	.L33
	movq	%r15, %r13
	vzeroupper
.L24:
	movl	var_false(%rip), %eax
	testl	%eax, %eax
	je	.L93
	movq	%r13, %rdi
	call	dummy
	movq	-160(%rbp), %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
.L93:
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
.L98:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	%rax, %r8
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L64:
	movq	-304(%rbp), %rcx
	movq	-96(%rbp), %rbx
	xorl	%eax, %eax
	movq	-104(%rbp), %rdx
	.p2align 4,,10
	.p2align 3
.L31:
	vmovsd	(%r10,%rax), %xmm0
	vaddsd	8(%r13,%rax), %xmm0, %xmm0
	vaddsd	0(%r13,%rax), %xmm0, %xmm0
	vaddsd	(%rdx,%rax), %xmm0, %xmm0
	vaddsd	8(%r10,%rax), %xmm0, %xmm0
	vaddsd	8(%rdx,%rax), %xmm0, %xmm0
	vaddsd	16(%r10,%rax), %xmm0, %xmm0
	vaddsd	16(%r13,%rax), %xmm0, %xmm0
	vaddsd	16(%rdx,%rax), %xmm0, %xmm0
	vmulsd	8(%r9,%rax), %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rbx,%rax)
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.L31
	jmp	.L95
.L59:
	movl	$1, %eax
	jmp	.L25
.L100:
	testl	%r15d, %r15d
	jle	.L103
	movl	%r15d, %edi
	cmpl	$4, %r14d
	jbe	.L63
	xorl	%edx, %edx
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
	jmp	.L18
.L101:
	movq	%r13, %rdi
	vzeroupper
	call	dummy
	movq	-160(%rbp), %rdi
	call	dummy
	movq	-128(%rbp), %rdi
	call	dummy
	cmpl	$1, -184(%rbp)
	jg	.L23
	jmp	.L24
.L51:
	movl	$1, %edi
	jmp	.L5
.L63:
	movq	$0, -128(%rbp)
	xorl	%eax, %eax
	jmp	.L44
.L3:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L40
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)
.L10:
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-56(%rbp), %rdi
	call	posix_memalign
	movq	$0, -128(%rbp)
	testl	%eax, %eax
	jne	.L17
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.L17
.L97:
	vzeroupper
	jmp	.L8
.L57:
	movl	$1, %eax
	jmp	.L18
.L99:
	vzeroupper
	jmp	.L15
.L55:
	movl	$1, %ecx
	jmp	.L12
.L56:
	movl	$2, %ecx
	jmp	.L12
.L52:
	movl	$2, %edi
	jmp	.L5
.L92:
	vzeroupper
	jmp	.L24
.L58:
	movl	$2, %eax
	jmp	.L18
.L102:
	vzeroupper
	jmp	.L93
.L49:
	xorl	%eax, %eax
	jmp	.L4
.L103:
	movq	$0, -128(%rbp)
	jmp	.L17
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
	.section	.rodata.cst32
	.align 32
.LC5:
	.long	3440069995
	.long	1072191488
	.long	3440069995
	.long	1072191488
	.long	3440069995
	.long	1072191488
	.long	3440069995
	.long	1072191488
	.ident	"GCC: (GNU) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
