org 1000h
        primer_nro dw 0h      ;1000
        segundo_nro dw 2h     ;1002
        resultado dw ?        ;1004
org 2000h
        mov AX, 0
        cmp primer_nro, 0
        jz FIN
        mov CL, primer_nro
        mov BL, 0
ITERAR: cmp segundo_nro, BL
        jz FIN
        add AL, CL
        inc BL
        jmp ITERAR
FIN:    mov resultado, AX
        hlt

end
