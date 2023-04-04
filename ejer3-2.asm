org 1000h
        primer_nro dw 5       ; 1000
        segundo_nro dw 3      ; 1001
        resultado dw 0        ; 1002
org 2000h
        mov BL, primer_nro    ; envio a la pila el primer_nro
        mov DL, segundo_nro   ; envio a la pila el segundo_nro
        call MUL              ; llamo a la funcion multiplicar
        mov resultado, AL     ; el resultado acumulado en AL se guarda en resultado
        hlt                   ; detengo la ejercucion
MUL:    mov AL, 0             ; inicializo el registro AL donde almaceno el resultado
        cmp BL, 0             ; verifico que el primero_nro no sea 0
        jz FIN                ; si lo es voy a FIN
        mov CL, 0             ; inicializo el contador CL en 0
ITERAR: cmp DL, CL            ; comparo si el segundo_nro es igual al contador CL
        jz FIN                ; si lo es voy a FIN (a su vez la primera vez verifica que segundo_nro no sea 0)
        add AL, BL            ; voy acumulando la suma del primer_nro en AL
        inc CL                ; incremento CL
        jmp ITERAR            ; itero tantas veces como segundo_nro
FIN:    ret

end
