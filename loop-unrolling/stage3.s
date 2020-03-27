.data
i:	    .word32   32
output: .word32   100, 78, 63, 88, 52, 91, 75, 78, 10
.text
        lw r1, i(r0)          ; contador i
LOOP:   lw r10, output(r1)    ; leer 1er dato
        lw r11, output-4(r1)  ; leer 2do dato

        daddi r10, r10, 4     ; suma de 1er
        daddi r11, r11, 4     ; suma de 2do

        lw r12, output-8(r1)  ; leer 3er dato
        lw r13, output-12(r1) ; leer 4to dato

        daddi r12, r12, 4     ; suma de 3er
        daddi r13, r13, 4     ; suma de 4to

        sw r10, output(r1)    ; guardar de 1ro
        sw r11, output-4(r1)  ; guardar de 2do
        sw r12, output-8(r1)  ; guardar de 3ro
        sw r13, output-12(r1) ; guardar de 4to

        daddi r1, r1, -16     ; Actualizar índice
        bne r1, r0, LOOP      ; Fin de vector?
ENDW:	  sw r1, i(r0)          ; guardar último valor de i
        nop
        halt
