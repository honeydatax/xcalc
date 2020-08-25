	.file	"findchr.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	findcahr
	.type	findcahr,@function
/***********************
 * Function `findcahr' 
 ***********************/
findcahr:
	push	r4
	mov	r1, r4
	add	#2, r4
	add	#llo(-6), r1
	mov	r15, -6(r4)
	mov.b	r14, -4(r4)
	mov	#0, -8(r4)
	jmp	.L2
.L4:
	add	#1, -8(r4)
.L2:
	mov	-8(r4), r15
	add	-6(r4), r15
	mov.b	@r15, r15
	cmp.b	#0, r15
	jeq	.L3
	mov	-8(r4), r15
	add	-6(r4), r15
	mov.b	@r15, r15
	cmp.b	-4(r4), r15
	jne	.L4
.L3:
	mov	-8(r4), r15
	add	-6(r4), r15
	mov.b	@r15, r15
	cmp.b	-4(r4), r15
	jeq	.L5
	mov	#llo(-1), -8(r4)
.L5:
	mov	-8(r4), r15
	add	#6, r1
	pop	r4
	ret
.Lfe1:
	.size	findcahr,.Lfe1-findcahr
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
	mov.b	#119, r14
	mov	-4(r4), r15
	call	#findcahr
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

