org 1000h
        primer_nro dw 0h      ;1000
        segundo_nro dw 2h     ;1002
        resultado dw ?        ;1004
org 2000h
        mov CX, 0             ; incializo el registro acumulador
        cmp primer_nro, 0     ; me aseguro que el primer termino no es 0
        jz FIN                ; si lo es finalizo
        mov AL, primer_nro    ; cargo el primer termino
        mov BL, 0             ; inicializo el iterador
ITERAR: cmp segundo_nro, BL   ; comparo el iterador con el segundo termino
        jz FIN                ; si no son iguales sigo
        add CL, AL            ; sumo en el acumular el primer_nro almacenado en AL
        inc BL                ; incremeneto el iterador
        jmp ITERAR            ; itero
FIN:    mov resultado, CX     ; al final envio el resultado a resultado
        hlt                   ; finalizo programa

end
