# Practica 4
- **Objetivo de la practica:**  Aprender a realizar funciónes sobre estructuras de datos
## Descripción de funciones 
---
```sh
a_natural
Caso base: Sabemos que el número 0 es el más pequeño de los naturales y su representación en natural es Cero
Caso recursivo: Temenos un entero n, y sabemos que un número cualquiera en natural puede ser representado como (S n), para pasar un entero a un natural es necesario agregar una S para cada valor antes del Cero (caso base)
```
```sh
a_entero
Caso base: Sabemos que el número más pequeño en los naturales es Cero y su representación en entero es 0
Caso recursivo: Temenos un natural (S n), lo que equivale a 1+n, para pasar un natural a un entero es necesario agregar sumar 1 hasta llegar a nuestro caso base
```
```sh
potenciaNat
Caso base: Por las funciónes anteriores sabemos que los números naturales y enteros son equivalentes, y sabemos que cualquier número elevado a 0 es 1 y 0 elevado a cualquier número es 0
Caso recursivo: Tenemos 2 valores n y m, n está elevado a la m potencia que es lo mismo que multiplicar n m veces, por ultimo se pasa a notación de naturales 
```
```sh
facNat
Caso base: Por las funciónes anteriores sabemos que los números naturales y enteros son equivalentes, y sabemos que faactorial de 0 es 1
Caso recursivo: Tenemos 1 valores n, sabemos que factorial puede ser representado como n*n-1! por ultimo se pasa a notación de naturales 
```
```sh
mayorIgual
Caso base: Si la primera Matrioska es mayor devuelve verdadero, de igual manera si son iguales regresa verdadero, si la segunda es mayor que la primera regresa falso y una Matrioska puede ser representada como (Cont n)  y la Matrioska más pequeña es Mati, por la construcción de las Matrioskas
Caso recursivo: Tenemos 2 Matrioskas, para saber cual es mayor es necesario abrir ambas hasta que alguna, o ambas, llegue al caso base.
```
```sh
aplana
Caso base: Sabemos que la Matrioska que no contiene nada dentro es Mati por la construcción de Matrioskas
Caso recursivo: Para saber cuantas Matrioskas hay dentro de una Matrioska (Cont n) es necesario abrirla hasta llegar a Mati y eso se hace quitando 1 Cont quedando n, aparte de eso se quiere la lista de todas las Matriokas contenidas en la Matrioska dada, por lo que es necesario imprimir la primera antes de abrirla. Eso pasa la cantidad de veces necesarias hasta llegar a Mati.
```

- **Tiempo requerido para realizar la práctica:** 2 horas
- **Recursión primeros pasos:** La canción del pollito pio es un claro ejemplo de recursiòn debido a que parte de el elemento más pequeño o caso base que, en este caso, el pollito pio y en cada repetición de la canción se le va agregando un elemento. También se demuestra que se puede llegar al caso base desde el elemento agregado, que es la secuencia de animales en reversa, pasando por cada uno de ellos hasta el pollito pio. 