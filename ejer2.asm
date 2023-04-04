org 1000h
    primer_nro dw 5423h
    segundo_nro dw 1212h
org 2000h
    mov AX, primer_nro
    sub AX, segundo_nro    ;Resta los dos numeros
    hlt
end
