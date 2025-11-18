# Proyecto: Codificacción de Huffman (Variante)
- **Objetivo de la practica:**  Aprender como se realiza la compresión y descompresión de archivos, entender su funcionamiento y ser capaces de implementar una variación de esta en haskell.
- **Funcionamiento:** Se recibe una frase, despues calcula la frecuencia (cantidad de apariciones de cada caracter) y finalmente se hace la creación de un arbol, ocupando unicamente los subarboles izquierdos, donde el caracter más repetido aparece al inicio y el menos repetido al final. Permitiendo disminuir el peso de un archivo.
- **Ejecución:** La parte teoria se me hizo relativamente sencilla de entender, tube complicaciónes al hacer las funciones. Empece haciendo la frecuencia, despues el arbol y minalmente la función para descomprimir.
- **Tiempo requerido para realizar la práctica:** 10 horas

-**✨ Uso del programa:**\\
Este programa cuenta co 4 funciones: frecuencia, arbolH, comprime y descomprime
__🔩 frecuencia:__ Recibe una palabra y regresa una lista de tuplas con los caracteres y su cantidad de apariciones de mayor a menor.\\
ghci> frecuencia "Hola cara de bola" \\
[('a',4),(' ',3),('l',2),('o',2),('b',1),('e',1),('d',1),('r',1),('c',1),('H',1)]
__🌳 arbolH:__ Recibe una Palabra y regresa su arbol de acuerdo a su frecuencia \\
ghci> arbolH "Hola cara de bola" \\
Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo Vacio (Hoja 'H')) (Hoja 'c')) (Hoja 'r')) (Hoja 'd')) (Hoja 'e')) (Hoja 'b')) (Hoja 'o')) (Hoja 'l')) (Hoja ' ')) (Hoja 'a')\\
__📚 comprime:__ Recibe una palabra y regresa su codificación junto con el arbol usado en forma de tupla \\
ghci> comprime "Hola cara de bola" \\
("000000000100010011010000000011000000011010000001000001010000100010011",Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo Vacio (Hoja 'H')) (Hoja 'c')) (Hoja 'r')) (Hoja 'd')) (Hoja 'e')) (Hoja 'b')) (Hoja 'o')) (Hoja 'l')) (Hoja ' ')) (Hoja 'a'))\\
__🪆 descomprime:__ Recibe la palabra codificado y su arbol y regresa la palabra sin codificar \\
ghci> descomprime "000000000100010011010000000011000000011010000001000001010000100010011" (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo Vacio (Hoja 'H')) (Hoja 'c')) (Hoja 'r')) (Hoja 'd')) (Hoja 'e')) (Hoja 'b')) (Hoja 'o')) (Hoja 'l')) (Hoja ' ')) (Hoja 'a')) \\
"Hola cara de bola"\\

Nota: La función descomprime recibe una cadena y un arbol, no una tupla. Es decir, se tiene que pasar ambos elementos por separado.