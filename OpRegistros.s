.text

#Operaciones con registros


#Operaciones de suma con inmediatos
addi x1, x0, 10 #El resultado de la suma se almacena en x1

addi x2, x0, 20 #El resultado de la suma se almacena en x2

#Operaciones aritmeticas entre registros
add x5, x1, x2 #Suma, el resultado se almacena en x5

sub x6, x3, x1 #Resta, el resultado se almacena en x6

and x7, x4, x2 #And, el resultado se almacena en x7

or x8, x1, x3 #Or, el resultado se almacena en x8

xor x9, x2, x3 #Xor, el resultado se almacena en x9

sll x10, x1, x2 #Shift left

srl x11, x3, x1 #Shift right

sra x12, x4, x1 #Shift right aritmetico

mul x13, x1, x2 #Multiplicacion

div x15, x3, x2 #Division

slt x16, x1, x2 #Comparacion con signo, se almacena en x16 un uno o un cero dependiendo del resultado

sltu x17, x4, x3 #Comparacion sin signo, se almacena en x17 un uno o un cero dependiendo del resultado




