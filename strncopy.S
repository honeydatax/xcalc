	.file	"strncopy.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	strncopy
	.type	strncopy,@function
/***********************
 * Function `strncopy' 
 ***********************/
strncopy:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#8, r1
	mov	r15, -8(r4)
	mov	r14, -6(r4)
	mov	r13, -4(r4)
	mov	#0, -10(r4)
	jmp	.L2
.L3:
	mov	-10(r4), r15
	add	-8(r4), r15
	mov	-10(r4), r14
	add	-6(r4), r14
	mov.b	@r14, r14
	mov.b	r14, @r15
	add	#1, -10(r4)
.L2:
	cmp	-10(r4), -4(r4)
	jge	.L3
	mov	-10(r4), r15
	add	#8, r1
	pop	r4
	ret
.Lfe1:
	.size	strncopy,.Lfe1-strncopy
;; End of function 

	.section	.rodata
.LC0:
	.string	"hello world\n"
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
	add	#llo(-1026), r1
	mov	#.LC0, -1028(r4)
	mov	r4, r15
	add	#llo(-1026), r15
	mov	#5, r13
	mov	-1028(r4), r14
	call	#strncopy
	mov.b	#0, -1021(r4)
	mov	#0, r15
	add	#1026, r1
.LIRD0:
.Lfe2:
	.size	main,.Lfe2-main
;; End of function 

