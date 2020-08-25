	.file	"len.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	strslen
	.type	strslen,@function
/***********************
 * Function `strslen' 
 ***********************/
strslen:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#4, r1
	mov	r15, -4(r4)
	mov	#0, -6(r4)
	jmp	.L2
.L3:
	add	#1, -6(r4)
.L2:
	mov	-6(r4), r15
	add	-4(r4), r15
	mov.b	@r15, r15
	cmp.b	#0, r15
	jne	.L3
	mov	-6(r4), r15
	add	#4, r1
	pop	r4
	ret
.Lfe1:
	.size	strslen,.Lfe1-strslen
;; End of function 

	.section	.rodata
.LC0:
	.string	"hello world\n"
.LC1:
	.string	"%s %d \n"
	.section	.init9,"ax",@progbits
	.p2align 1,0
.global	main
	.type	main,@function
/***********************
 * Function `main' 
 ***********************/
main:
	mov	r1, r4
	add	#2, r4
	sub	#4, r1
	mov	#0, -6(r4)
	mov	#.LC0, -4(r4)
	mov	-4(r4), r15
	call	#strslen
	mov	r15, -6(r4)
	push	-6(r4)
	push	-4(r4)
	push	#.LC1
	call	#printf
	add	#6, r1
	mov	#0, r15
	add	#4, r1
.LIRD0:
.Lfe2:
	.size	main,.Lfe2-main
;; End of function 

