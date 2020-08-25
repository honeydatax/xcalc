	.file	"mod.c"
	.cpu 430
	.mpy none

	.text
	.p2align 1,0
.global	mods
	.type	mods,@function
/***********************
 * Function `mods' 
 ***********************/
mods:
	push	r4
	mov	r1, r4
	add	#2, r4
	sub	#4, r1
	mov	r15, -6(r4)
	mov	r14, -4(r4)
	mov	-6(r4), r15
	mov	-4(r4), r14
	call	#__modhi3
	add	#4, r1
	pop	r4
	ret
.Lfe1:
	.size	mods,.Lfe1-mods
;; End of function 

	.section	.rodata
.LC0:
	.string	"hello world\n"
.LC1:
	.string	"%d\n"
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
	mov	#16, r14
	mov	#20, r15
	call	#mods
	mov	r15, -6(r4)
	push	-6(r4)
	push	#.LC1
	call	#printf
	add	#4, r1
	mov	#0, r15
	add	#4, r1
.LIRD0:
.Lfe2:
	.size	main,.Lfe2-main
;; End of function 

