	.file	"strcat.c"
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

	.p2align 1,0
.global	strcat
	.type	strcat,@function
/***********************
 * Function `strcat' 
 ***********************/
strcat:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#8, r1
	mov	r15, -6(r4)
	mov	r14, -4(r4)
	mov	#0, -10(r4)
	mov	-6(r4), r15
	call	#strslen
	mov	-6(r4), r14
	add	r15, r14
	mov	r14, -8(r4)
	jmp	.L5
.L6:
	mov	-10(r4), r15
	add	-8(r4), r15
	mov	-10(r4), r14
	add	-4(r4), r14
	mov.b	@r14, r14
	mov.b	r14, @r15
	add	#1, -10(r4)
.L5:
	mov	-10(r4), r15
	add	-4(r4), r15
	mov.b	@r15, r15
	cmp.b	#0, r15
	jne	.L6
	mov	-10(r4), r15
	add	-8(r4), r15
	mov	-10(r4), r14
	add	-4(r4), r14
	mov.b	@r14, r14
	mov.b	r14, @r15
	mov	-10(r4), r15
	add	#8, r1
	pop	r4
	ret
.Lfe2:
	.size	strcat,.Lfe2-strcat
;; End of function 

	.section	.rodata
.LC0:
	.string	"world\n"
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
	add	#llo(-52), r1
	mov	r4, r15
	add	#llo(-52), r15
	mov	#25960, @r15
	add	#2, r15
	mov	#27756, @r15
	add	#2, r15
	mov	#8303, @r15
	add	#2, r15
	mov	#0, @r15
	add	#2, r15
	mov	#42, r14
	mov	r14, r13
	mov	#0, r14
	call	#memset
	mov	#.LC0, -54(r4)
	mov	r4, r15
	add	#llo(-52), r15
	mov	-54(r4), r14
	call	#strcat
	mov	r4, r15
	add	#llo(-52), r15
	call	#puts
	mov	#0, r15
	add	#52, r1
.LIRD0:
.Lfe3:
	.size	main,.Lfe3-main
;; End of function 

