.data
.text
  LOOP: lw r10, 0(r1)
    lw r11, -4(r1)
    daddi r10, r10, 4
    daddi r11, r11, 4
    lw r12, -8(r1)
    lw r13, -12(r1)
    daddi r12, r11, 4
    daddi r13, r11, 4
    sw r10, 0(r1)
    sw r11, -4(r1)
    sw r12, -8(r1)
    sw r13, -12(r1)
    daddi r1, r1, -16
    bne r1, r0, LOOP
