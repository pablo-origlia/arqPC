org 1000h
        letra db 'a'  ; Letra a buscar
        cadena db "Esta es una cadena de texto de prueba." ; Cadena de 38 bytes y 5 a's.
        eos db ?      ; Fin del string
        
org 2000h
         mov BX, offset cadena               ; incio de la cadena
         mov CL, offset eos - offset cadena  ; tamanio de la cadena
         mov DL, 0                           ; ocurrencias de la letra
LAZO:    mov AL, [BX]                        ; letra en la posicion actual de la cadena
         inc BX                              ; incremento la posicion en la cadena
         cmp AL, letra                       ; comparo si la letra actual es la que buscamos
         jnz PROXIMO                         ; si es distinto sigo el recorrido
         inc DL                              ; sino incremento el contador de ocurrencias
PROXIMO: dec CL                              ; decremento el contador de recorrido
         jnz LAZO                            ; si no es cero sigo buscando

         hlt                                 ; detengo el problema
end
