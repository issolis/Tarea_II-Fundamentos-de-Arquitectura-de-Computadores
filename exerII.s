.data
number:  .word 123456  # Número para contar sus dígitos

.text
.globl _start
_start:
    # Inicializar a0 en 10
    li a0, 10

    # Inicializar contador en cero
    li t0, 0

LOOP:
    # Si el número es cero, salir del bucle
    beqz a0, DONE

    # Desplazar a0 a la derecha 1 bit (equivale a dividir por 2)
    srli a0, a0, 1

    # Incrementar contador en uno
    addi t0, t0, 1

    # Volver al inicio del bucle
    j LOOP

DONE:
    # El número de dígitos está en t0
    # Terminar el programa
    li a7, 10       # Cargar el código de ecall para salir (10) en a7
    ecall           # Realizar la llamada del sistema para terminar el programa
