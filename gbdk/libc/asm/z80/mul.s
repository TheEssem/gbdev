	;; Originally from GBDK by Pascal Felber.
	
	.area	_CODE
	
	pop	bc
	pop	de
	ret

__mulsint::
__muluint::
	push	de
	push	bc
	ld	hl,#6
	add	hl,sp

	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	.mulu16
	
__mulschar::	
__muluchar::
	push	de
	push	bc
	ld	hl,#6
	add	hl,sp

	ld	c,(hl)
	inc	hl
	ld	e,(hl)
.mul8:
.mulu8:
	LD	B,#0x00		; Sign extend is not necessary with mul
	LD	D,B
	; Fall through
	
	;; 16-bit multiplication
	;; 
	;; Entry conditions
	;;   BC = multiplicand
	;;   DE = multiplier
	;; 
	;; Exit conditions
	;;   DE = less significant word of product
	;;
	;; Register used: AF,BC,DE,HL
.mul16:
.mulu16:
	LD	HL,#0x00	; Product = 0
	LD	A,#15		; Count = bit length - 1
	;; Shift-and-add algorithm
	;; If MSB of multiplier is 1, add multiplicand to partial product
	;; Shift partial product, multiplier left 1 bit
.mlp:
	SLA	E		; Shift multiplier left 1 bit
	RL	D
	jp	NC,.mlp1	; Jump if MSB of multiplier = 0
	ADD	HL,BC		; Add multiplicand to partial product
.mlp1:
	ADD	HL,HL		; Shift partial product left
	DEC	A
	jp	NZ,.mlp		; Continue until count = 0
	;; Add multiplicand one last time if MSB of multiplier is 1
	BIT	7,D		; Get MSB of multiplier
	JR	Z,.mend		; Exit if MSB of multiplier is 0
	ADD	HL,BC		; Add multiplicand to product
.mend:
				; HL = result
	pop	bc
	pop	de
	ret

