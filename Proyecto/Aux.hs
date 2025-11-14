--Estas funciones auxiliares seran acupadas para el correcto funcionamiento del Proyecto
module Aux where
  
--Creación de un nuevo tipo "Arbol Huffman"
data ArbolH = Vacio | Hoja Char | Nodo ArbolH ArbolH deriving (Show)

{-Funcion: lista
Descripcion: recibe una cadena y regresa una lista de tuplas indicando su frecuencia.
Uso : lista "Haskell" = [('h', 1) ('a', 2)-}

lista :: String -> [(Char, Int)]
lista "" = []
lista (x:xs) = (x, frecuencial x (x:xs)): (lista [y | y <- xs, y/= x])

{-Funcion: frecuenciaAux
Descripcion: recibe una cadena y regresa una lista de tuplas indicando su frecuencia.
Uso : frecuencia "Hola" = [('H',1),('o',1),('l',1),('a',1)]
-}

frecuenciaAux :: String -> [(Char, Int)]
frecuenciaAux "" = []
frecuenciaAux (x:xs) = (x, frecuencial x (x:xs)): (lista [y | y <- xs, y/= x])

{-Funcion: frecuencial
Descripcion: Regresa la frecuencia de una letra de una cadena
Uso : lista  l "Haskell" = 2
-}

frecuencial :: Char -> String -> Int
frecuencial c "" = 0
frecuencial c (x:xs) = if c == x then 1 + frecuencial c xs else frecuencial c xs

{-Funcion: quiksort
Descripcion: Oredena una lista de tuplas
Uso : quicksort [('H',1),('o',2),('l',2),('a',3),(' ',1),('c',1),('r',1),('y', 1)] = [('a',3),('l',2),('o',2),('y',1),('r',1),('c',1),(' ',1),('H',1)]
-}

quicksort :: (Ord b) => [(a,b)]-> [(a,b)]
quicksort [] = []
quicksort ((a,b):xs) =
  quicksort [x | x <- xs, snd x >= b]
  ++ [(a,b)] ++
  quicksort [x | x <- xs, snd x < b]

{-Funcion: creaArbol
Descripcion: Recibe una lista de tuplas y regresa el arbol de Huffman
Uso : creaArbol [('a',1),('l',1),('o',1),('H',1)] = Nodo (Nodo (Nodo (Nodo Vacio (Hoja 'H')) (Hoja 'o')) (Hoja 'l')) (Hoja 'a')
-}

creaArbol :: [(Char,Int)] -> ArbolH
creaArbol [(c, i)] = Nodo Vacio (Hoja c)
creaArbol ((c, i):xs) = Nodo (creaArbol xs) (Hoja c)

{-Funcion: comprimeAux
Descripcion: Recibe una cadena y su arbol y regresa la cadena comprimida
Uso: comprimeAux "Hola Vania" (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo (Nodo Vacio (Hoja 'H')) (Hoja 'o')) (Hoja 'l')) (Hoja ' ')) (Hoja 'V')) (Hoja 'n')) (Hoja 'i')) (Hoja 'a')) = "000000001000000010000001010000010000101000100101"
-}

comprimeAux :: String -> ArbolH -> String
--comprimeAux "" Vacio = ""
comprimeAux [x] (Nodo t1 t2) = "0"++ if x == elemento t2 then "1" else comprimeAux [x] t1
comprimeAux (x:xs) (Nodo t1 t2) = (comprimeAux [x] (Nodo t1 t2)) ++ (comprimeAux xs (Nodo t1 t2))

{-Función: elemento
Descomprime: Recibe una hoja y regresa su elemento
Uso: elemento (Hoja 'r') = 'r'
-}

elemento :: ArbolH -> Char
elemento (Hoja c) = c

{-Función: descomprimeAux
Descripción: Recibe u
-}

--descomprime :: String -> ArbolH -> String


--separa :: String -> [String]
--separa "" = []
--separa (x:xs) = if x = "1" then 
 -- else separa(xs) :

  

fact 0 acc = acc
fact n acc = fact (n - 1) (acc * n)

factChido n = fact n 1
