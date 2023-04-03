# arqPC
Actividades de Arquitectura de PC de UNaHur

## Laboratorio 1 - Actividades

### *Ejercicio 1:* Codifique un programa que sume dos números con las siguientes características:

(a). Los dos números a sumar se encuentran en los registros AX y BX.

```assembly
ORG 2000h
    ADD AX, BX
END
```

(b). Uno de los números a sumar se encuentra en un registro, mientras que el otro se encuentra en memoria.

```assembly
ORG 1000h
    primer_nro DW 0123h
ORG 2000h
    ADD AX, segundo_nro
END
```

(c). ¿Cómo realizaría la suma de dos números que se encuentran almacenados en la memoria?

```assembly
ORG 1000h
    primer_nro DW 0AAAAh
    segundo_nro DW 5555h
ORG 2000h
    MOV AX, primer_nro
    ADD AX, segundo_nro
END
```

(d). ¿Qué ocurre si el resultado de la suma excede el tamaño del registro en el que se almacena?

El flag de overfload (O) cambia su valor a 1.

### *Ejercicio 2:* Codifique un programa que reste dos números. ¿Qué ocurre si el resultado es menor a 0?

```assembly
ORG 1000h
    primer_nro DW 0AAAAh
    segundo_nro DW 5555h
ORG 2000h
    MOV AX, primer_nro
    SUB AX, segundo_nro
END
```

Si el resultado es menor a 0 el flag de signo (S) cambia su valor a 1.

### *Ejercicio 3:* Codifique un programa que sea capaz de multiplicar dos números teniendo en cuenta el set de instrucciones del MSX88. Para ello:

(a). Dividir la memoria entre el espacio para las variables necesarias y el espacio del código principal del programa.

(b). Modifique el código anterior y realice una subrutina para la multiplicación que sea llamada desde el programa principal.

### *Ejercicio 4:* Codifique un programa que sea capaz de contar la cantidad de letras “a” presentes en una cadena de caracteres.

