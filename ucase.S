	.file	"ucase.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	ucase
	.type	ucase,@function
/***********************
 * Function `ucase' 
 ***********************/
ucase:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#4, r1
	mov	r15, -4(r4)
	mov	#0, -6(r4)
	jmp	.L2
.L4:
	mov	-6(r4), r15
	add	-4(r4), r15
	mov.b	@r15, r15
	cmp.b	#97, r15
	jl	.L3
	mov	-6(r4), r15
	add	-4(r4), r15
	mov.b	@r15, r15
	cmp.b	#123, r15
	jge	.L3
	mov	-6(r4), r15
	add	-4(r4), r15
	mov	-6(r4), r14
	add	-4(r4), r14
	mov.b	@r14, r14
	add.b	#llo(-32), r14
	mov.b	r14, @r15
.L3:
	add	#1, -6(r4)
.L2:
	mov	-6(r4), r15
	add	-4(r4), r15
	mov.b	@r15, r15
	cmp.b	#0, r15
	jne	.L4
	mov	-6(r4), r15
	add	#4, r1
	pop	r4
	ret
.Lfe1:
	.size	ucase,.Lfe1-ucase
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
	add	#llo(-16), r1
	mov	#0, -18(r4)
	mov	r4, r15
	add	#llo(-16), r15
	mov	#25928, @r15
	add	#2, r15
	mov	#27724, @r15
	add	#2, r15
	mov	#8271, @r15
	add	#2, r15
	mov	#28503, @r15
	add	#2, r15
	mov	#27730, @r15
	add	#2, r15
	mov	#2628, @r15
	add	#2, r15
	mov.b	#0, @r15
	add	#1, r15
	mov	r4, r15
	add	#llo(-16), r15
	call	#ucase
	mov	r15, -18(r4)
	mov	r4, r15
	add	#llo(-16), r15
	call	#puts
	mov	#0, r15
	add	#16, r1
.LIRD0:
.Lfe2:
	.size	main,.Lfe2-main
;; End of function 

