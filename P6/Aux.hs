--Algunas de las siguientrs funciones seran necesarias para las funciones de Practica6.hs
module Aux where

--Tipo de dato de arbol
data Arbol a = Vacio | AB a (Arbol a) (Arbol a) deriving (Eq, Ord, Show)

{-Función: Longitud
Descripción: Devuelve la longitud de un arbol
Uso: longitud (AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))) = 3
-}

longitud :: Arbol a -> Int
longitud Vacio = 0
longitud (AB r t1 t2) = 1 + max(longitud t1) (longitud t2)

{-Función: lista1
Descripción: Devuelve la lista con los elementos menores al elemento dado
Uso: lista1 5 [ 1, 2, 3, 4, 5, 6] = [1,2,3,4]
-}

lista1 :: (Ord a) => a -> [a] -> [a]
lista1 n [] = []
lista1 n (x:xs) = if n> x then x:(lista1 n xs) else lista1 n xs

{-Función: lista2
Descripción: Devuelve la lista con los elementos mayores al elemento dado
Uso: lista2 6 [6,5,8,2,7] = [8, 7]
-}

lista2 ::(Ord a) => a -> [a] -> [a]
lista2 n [] = []
lista2 n (x:xs) = if n<x then x:(lista2 n xs) else lista2 n xs
