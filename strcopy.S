	.file	"strcopy.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	strcopy
	.type	strcopy,@function
/***********************
 * Function `strcopy' 
 ***********************/
strcopy:
	push	r4
	mov	r1, r4
	add	#2, r4
	add	#llo(-6), r1
	mov	r15, -6(r4)
	mov	r14, -4(r4)
	mov	#0, -8(r4)
	jmp	.L2
.L3:
	mov	-8(r4), r15
	add	-6(r4), r15
	mov	-8(r4), r14
	add	-4(r4), r14
	mov.b	@r14, r14
	mov.b	r14, @r15
	add	#1, -8(r4)
.L2:
	mov	-8(r4), r15
	add	-4(r4), r15
	mov.b	@r15, r15
	cmp.b	#0, r15
	jne	.L3
	mov	-8(r4), r15
	add	-6(r4), r15
	mov	-8(r4), r14
	add	-4(r4), r14
	mov.b	@r14, r14
	mov.b	r14, @r15
	mov	-8(r4), r15
	add	#6, r1
	pop	r4
	ret
.Lfe1:
	.size	strcopy,.Lfe1-strcopy
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
	mov	-1028(r4), r14
	call	#strcopy
	mov	r4, r15
	add	#llo(-1026), r15
	call	#puts
	mov	#0, r15
	add	#1026, r1
.LIRD0:
.Lfe2:
	.size	main,.Lfe2-main
;; End of function 

