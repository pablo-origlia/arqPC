# arqPC
Actividades de Arquitectura de PC de UNaHur

## Laboratorio 1 - Actividades

### *Ejercicio 1:* Codifique un programa que sume dos números con las siguientes características:

1. Los dos números a sumar se encuentran en los registros AX y BX.

```assembly
add AX, BX
end

```

2. Uno de los números a sumar se encuentra en un registro, mientras que el otro se encuentra en memoria.

```assembly
primer_nro dw 0123h
add AX, primer_nro
end

```

3. ¿Cómo realizaría la suma de dos números que se encuentran almacenados en la memoria?

```assembly
org 1000h
    primer_nro dw 0AAAAh
    segundo_nro dw 5555h
org 2000h
    mov AX, primer_nro
    add AX, segundo_nro
end

```

4. ¿Qué ocurre si el resultado de la suma excede el tamaño del registro en el que se almacena?

El flag de *overfload* `(O)` cambia su valor a 1.

### *Ejercicio 2:* Codifique un programa que reste dos números. ¿Qué ocurre si el resultado es menor a 0?

```assembly
org 1000h
    primer_nro dw 0AAAAh
    segundo_nro dw 5555h
org 2000h
    mov AX, primer_nro
    sub AX, segundo_nro
end

```

Si el resultado es menor a 0 el flag de *signo* `(S)` cambia su valor a 1.

### *Ejercicio 3:* Codifique un programa que sea capaz de multiplicar dos números teniendo en cuenta el set de instrucciones del MSX88. Para ello:

1. Dividir la memoria entre el espacio para las variables necesarias y el espacio del código principal del programa.

```assembly
org 1000h
        primer_nro dw 5h
        segundo_nro dw 6h
        resultado dw ?
org 2000h
        mov AL, primer_nro
        mov CL, segundo_nro
ITERAR: cmp CL, 0
        jnz FIN
        add AL, primer_nro
        dec CL
        jmp ITERAR
FIN:    mov resultado, AL
        hlt
end

```

2. Modifique el código anterior y realice una subrutina para la multiplicación que sea llamada desde el programa principal.

### *Ejercicio 4:* Codifique un programa que sea capaz de contar la cantidad de letras “a” presentes en una cadena de caracteres.

