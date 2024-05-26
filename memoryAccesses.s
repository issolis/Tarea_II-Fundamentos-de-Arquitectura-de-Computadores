.text

_start:
    li t0, 65601
    li t1, 65602   
    sw t0, 8(t0)  #Guardado de una palabra completa
    sw t1, 12(t0) #Guardado de una palabra completa
    
_addWholeWord:
    add t2, t0, t1
    addi a7, t2, 200
    
    sb t2, 16(t0) #Guardado de un byte
    sh a7, 20(t0) #Guardado de media palabra

_addHalfWord:
    lh s0, 8(t0)  #Lectura de media palabra
    lh s1, 12(t0) #Lectura de media palabra
    add a0, s0, s1
    
_addWholeWordAndByte:
    lw a1, 8(t0)   #Carga de palabra completa
    lbu a2, 16(t0) #Carga de byte sin signo
    add a3, a1, a2

_addHalfWordUnsignedAndByte:
    lhu a4, 20(t0)
    lb a5, 16(t0) #La carga del bit produce un numero diferente pero es correcto en consideración de la expansión del bit del signo
    add s2, a4, a5
        