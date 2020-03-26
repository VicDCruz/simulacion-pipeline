; Arquitectura de computadoras
; Programa del ejercicio 2. 
.data
i:	  .word32 0
j:    .word32 0
output: .word32 0:10
.text
  daddi r2, r0, 0; contador i
  daddi r5, r0, 10; limite de i
  daddi r8, r0, 2; constante de mult
  daddi r10, r0, 0; i * size
  WHIL:	slt r6, r2, r5
    daddi r10, r10, 8; constante de size
    beqz r6, ENDW ; brincar si i == 10
    daddi r3, r0, 0; contador j
    daddi r4, r0, 1 ; contador res
    WHIL1:	slt r7, r3, r2
      beqz r7, ENDW1 ; brincar si j == i
      dmul r4, r4, r8
      daddi r3, r3, 1 ; j++
      j WHIL1
    ENDW1: daddi r2, r2, 1 ; i++
    sw r2, i(r0) ; store 32-bit word
    sw r3, j(r0) ; store 32-bit word
    sw r4, output(r10) ; output[i] = res
    j WHIL
  ENDW:	nop
    halt
