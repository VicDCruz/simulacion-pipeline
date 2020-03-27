.data
.text
  LOOP: lw r10, 0(r1); Leer elemento vector
    daddi r10, r10, 4 ; Sumar 4 al elemento
    sw r10, 0(r1); Escribir nuevo valor

    lw r11, -4(r1); 2ª copia
    daddi r11, r11, 4 ;
    sw r11, -4(r1); 

    lw r12, -8(r1) ; 3a copia
    daddi r12, r11, 4
    sw r12, -8(r1)
    
    lw r13, -12(r1) ; 4ª copia
    daddi r13, r11, 4
    sw r13, -12(r1)

    daddi r1, r1, -16 ; Actualizar índice
    bne r1, r0, LOOP ; Fin de vector?
