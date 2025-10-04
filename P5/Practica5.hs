-- Libreria necesaria para la función
import Data.Char
--Funciones auxiliares
import Aux

{- Función: hollerBack
Descripción: Toma una cadena en minusculas y la devuelve en mayusculas 
Uso: hollerBack haskell = HASKELL
-}

hollerBack :: [Char] -> [Char]
hollerBack [] = []
hollerBack (x:xs) = toUpper x: hollerBack xs

{- Función: palindromo
Descripción: Toma una lista y devuelve True si es palindromo y False en otro caso
Uso: palindromo 'ana' = TRUE
-}

palindromo :: (Eq a) => [a] -> Bool
palindromo [] = True
palindromo [_] = True
palindromo (x:xs) = if (x:xs) == reversa (x:xs) then True else False

{- Función: replica
Descripción: Toma 2 enteros y devuelve una lista con n apariciones del primer entero 
Uso: replica 2 5 = [2, 2, 2, 2, 2]
-}

replica :: Int -> Int -> [Int]
replica n 0 = []
replica n x = n : replica n (x-1)

{- Función: recuperaElemento
Descripción: Toma una lista y devuelve el elemento del índice especificado
Uso: recuperaElemento [2, 4, 6] 1 = 4
-}

recuperaElemento :: [a] -> Int -> a
recuperaElemento (x:xs) 0 = x
recuperaElemento [] _ = error "No existe ese elemento"
recuperaElemento (x:xs) n = recuperaElemento xs (n-1)

{- Función: rota
Descripción: Toma una lista y y traslada el primer elemento al final. Se repite n veces usando la lista resultando en cada paso 
Uso: rota [1, 2, 3, 4, 5] 13 = [4, 5, 1, 2, 3]
-}

rota :: [a] -> Int -> [a]
rota [] _ = []
rota (x:xs) 1 = xs ++ [x]
rota (x:xs) n = if n>0 then rota (xs++[x]) (n-1) else rota (xs++[x]) (n-1+ longitud (x:xs))

{- Función: extranio
Descripción: Toma un entero y regresa una lista aplicando el siguiente algoritmo
Si n es par = n/2
Si n es impar = n(3)+1
El algoritmo se repite hasta llegar a 1
Uso: extranio 13  = [13 ,40 ,20 ,10 ,5 ,16 ,8 ,4 , 2 , 1]
-}

extranio :: Int -> [Int]
extranio 0 = [0]
extranio 1 = [1]
extranio n = extranio2 (extranioAux (a_natural n))
