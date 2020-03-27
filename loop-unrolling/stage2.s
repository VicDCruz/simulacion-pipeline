.data
i:	    .word32   32
output: .word32   100, 78, 63, 88, 52, 91, 75, 78, 10
.text
        lw r1, i(r0)          ; contador i
LOOP:   lw r10, output(r1)         ; Leer elemento vector
        daddi r10, r10, 4     ; Sumar 4 al elemento
        sw r10, output(r1)         ; Escribir nuevo valor

        lw r11, output-4(r1)        ; 2ª copia
        daddi r11, r11, 4
        sw r11, output-4(r1)

        lw r12, output-8(r1)        ; 3a copia
        daddi r12, r12, 4
        sw r12, output-8(r1)

        lw r13, output-12(r1)       ; 4ª copia
        daddi r13, r13, 4
        sw r13, output-12(r1)

        daddi r1, r1, -16     ; Actualizar índice
        bne r1, r0, LOOP      ; Fin de vector?
ENDW:	  sw r1, i(r0)          ; guardar último valor de i
        nop
        halt
