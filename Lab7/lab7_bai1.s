;; Tich vo huong 2 vector
	;AREA RESET, DATA, READONLY
		;DCD 0x20001000
		;DCD Reset_Handler
	;ALIGN
	;AREA MYDATA, DATA, READONLY
;VECTORA DCB 1, 3, 4
;VECTORB DCB 1, 0, 1
	;AREA STORE, DATA, READWRITE
;RESULT DCD 0
	;AREA MYCODE, CODE, READONLY
	;EXPORT Reset_Handler

	;ENTRY
;Reset_Handler
	;MOV R0, #0
	;LDR R1, =VECTORA
	;LDR R2, =VECTORB
	;LDR R3, =RESULT
	;MOV R4, #1
;loop
	;CMP R4, #3
	;BGT thoat
	;LDRB R5, [R1], #1
	;LDRB R6, [R2], #1
	;MUL R5, R6
	;ADD R0, R5
	;ADD R4, #1
	;B loop
;thoat 
	;STR R0, [R3]
	;SWI &11
	;END