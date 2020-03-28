.data
i:	.word32   28
output: .word32   100, 78, 63, 88, 52, 91, 75, 78
.text
        lw r1, i(r0)            ; contador i
        daddi r11, r11, -4      ; valor de terminación
LOOP:   lw r10, output(r1)      ; Leer un elemento de un vector
        daddi r10, r10, 4       ; Sumar 4 al elemento
        sw r10, output(r1)      ; Escribir el nuevo valor
        daddi r1, r1, -4        ; Actualizar la var. índice
        bne r1, r11, LOOP       ; Fin de vector?
ENDW:	sw r1, i(r0)            ; guardar último valor de i
        nop
        halt
