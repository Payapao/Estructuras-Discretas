--Pruebas unitarias
module Practica6 where

--Para algunas de las siguientes funciones ocuparemos funciones auxiliares ubicados en Aux.hs
import Aux

{- Función: nVacios
Descripción: Devuelve la cantidad de nodos vacios en un arbol
Uso: nVacios (AB 4 Vacio (AB 3 Vacio Vacio)) = 3
-}

nVacios :: Arbol a -> Int
nVacios Vacio = 1
nVacios (AB n t1 t2) = nVacios t1 + nVacios t2

{- Función: refleja
Descripción: Regresa el reflejo del arbol, toos los subarboles izquierdos se vuelven subarboles derechos y viceversa
Uso: refleja (AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))) = AB 4 (AB 3 (AB 5 Vacio Vacio) Vacio) Vacio 
-}

refleja :: Arbol a -> Arbol a
refleja Vacio = Vacio
refleja (AB n t1 t2) = (AB n (refleja t2) (refleja t1))

{- Función: max_AB
Descripción: Devuelve el elemento maximo de un arbol
Uso: nVacios (AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))) = 5
-}

maximo :: (Ord a) => Arbol a -> a
maximo Vacio = error "El alrbol vacio no tiene elementos minimos"
maximo (AB r t1 t2) = r
maximo (AB r t1 t2) = max r (max(maximo t1) (maximo t2))

{- Función: recorrido
Descripción: Devuelve la lista de los elementos del arbol con el recorrido
Uso: nVacios (AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))) = 5
-}

recorrido :: Arbol a -> [a]
recorrido Vacio  = []
recorrido (AB n t1 t2) =[n] ++ (recorrido t1) ++ (recorrido t2)

{- Función: esBalanceado
Descripción: Devuelve True si el arbol es balanceado, False en otro caso
Uso: esBalanceado (AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))) = False
-}
                                   
esBalanceado :: Arbol a -> Bool
esBalanceado Vacio = True
esBalanceado (AB r t1 t2) = if (longitud t1) == (longitud t2) then True else False

{-Función: listaArbol
Descripción: Recibe una lista y regresa un arbol binario de busqueda
Uso: listaArbol [5 ,3 ,7 ,1 ,9] = AB 5 (AB 3 (AB 1 Vacio Vacio) Vacio) (AB 7 Vacio (AB 9 Vacio Vacio))
-}

listaArbol :: (Ord a) => [a] -> Arbol a
listaArbol [] = Vacio
listaArbol (x:xs) = (AB x (listaArbol (lista1 x xs)) (listaArbol(lista2 x xs))) 


