org 1000h
    primer_nro dw 12h
    segundo_nro dw 23h
org 2000h
    mov AX, primer_nro
    add AX, segundo_nro
    hlt
end
