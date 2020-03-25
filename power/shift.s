; Arquitectura de computadoras
; Programa del ejercicio 2. 
.data
i:	  .word32 0
output: .word32 0:10
.text
  daddi r2, r0, 0; contador i
  daddi r5, r0, 10; limite de i
  daddi r8, r0, 1; constante para shl
  daddi r9, r0, 8; constante de size
  daddi r10, r0, 0; i * size
  WHIL:	slt r6, r2, r5
    dmul r10, r2, r9
    beqz r6, ENDW ; brincar si i == 10
    dsllv r4, r8, r2 ; shl(r4)
    daddi r2, r2, 1 ; i++
    sw r2, i(r0) ; store 32-bit word
    sw r4, output(r10) ; output[i] = res
    j WHIL
  ENDW:	nop
    halt
