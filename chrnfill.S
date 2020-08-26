	.file	"chrnfill.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	strnfill
	.type	strnfill,@function
/***********************
 * Function `strnfill' 
 ***********************/
strnfill:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#8, r1
	mov	r15, -8(r4)
	mov.b	r14, -6(r4)
	mov	r13, -4(r4)
	mov	#0, -10(r4)
	jmp	.L2
.L3:
	mov	-10(r4), r15
	add	-8(r4), r15
	mov.b	-6(r4), @r15
	add	#1, -10(r4)
.L2:
	cmp	-10(r4), -4(r4)
	jge	.L3
	mov	-10(r4), r15
	add	#8, r1
	pop	r4
	ret
.Lfe1:
	.size	strnfill,.Lfe1-strnfill
;; End of function 

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
	add	#llo(-124), r1
	mov	#80, r13
	mov.b	#42, r14
	mov	r4, r15
	add	#llo(-126), r15
	call	#strnfill
	mov.b	#0, -46(r4)
	mov	r4, r15
	add	#llo(-126), r15
	call	#puts
	mov	#0, r15
	add	#124, r1
.LIRD0:
.Lfe2:
	.size	main,.Lfe2-main
;; End of function 

