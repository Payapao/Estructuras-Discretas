--Fuciones auxiliares de la Practica5

module Aux where

--Funcion auxiliar para palindromo

{-Función: reversa
Descripción: Recibe una lista y regresa la misma lista invertida
Uso: reversa [1,2,3,4,5] = [5,4,3,2,1]
-}

reversa :: [a] -> [a]
reversa [] = []
reversa (x:xs) = reversa xs ++ [x]

--Función auxiliar para rota

{-Función: longitud
Descripción: Regresa la cantidad de elementos contenidos en una lista
Uso: longitud [1,2,3,4,5] = 5
-}

longitud :: [a] -> Int
longitud [] = 0
longitud (x:xs) = 1 + longitud xs  

--Tipo de dato Natural
data Natural = Cero | S Natural deriving (Eq, Show, Ord)

--Funciones auxiliares para extranio

{- Función: extranioAux
Descripción: Toma un natural y regresa una lista aplicando el siguiente algoritmo
Si n es par = n/2
Si n es impar = n(3)+1
El algoritmo se repite hasta llegar a 1
Uso: extranioAux (S(S(S(Cero)))) = [S (S (S Cero)),S (S (S (S (S (S (S (S (S (S Cero))))))))),S (S (S (S (S Cero)))),S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S Cero))))))))))))))),S (S (S (S (S (S (S (S Cero))))))),S (S (S (S Cero))),S (S Cero),S Cero]

-}

extranioAux :: Natural -> [Natural]
extranioAux Cero = [Cero]
extranioAux (S(Cero)) = [(S(Cero))]
extranioAux n = if par_nat n then n: extranioAux (div_nat n (S(S(Cero)))) else n : extranioAux (suma_nat (mult_nat n (S(S(S(Cero)))))  (S(Cero)) )

{-Función extranio2
Descripción: Recibe una lista de Naturales y regresa una lista de enteros
Uso: extranio2 [Cero, (S(Cero)), (S(S(Cero))), (S(S(S(Cero)))), (S(S(S(S(Cero)))))] = [0,1,2,3,4]
-}

extranio2 :: [Natural] -> [Int]
extranio2 [] = []
extranio2 (x:xs) = a_entero x: extranio2 xs

--Funciones auxiliares para extranioAux

{- Función: a_natural
Descripción: Pasa un número entero a un natural
Uso: a_natural 3 = S (S (S Cero)) 
-}

a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n = S(a_natural (n-1))

{-Función: par-nat
Descripción: Devuelve True si un natural es par, False en otro caso
Uso: par (S(S(S(Cero)))) = False -}

par_nat :: Natural -> Bool
par_nat Cero= True
par_nat (S(Cero)) = False
par_nat n = par_nat (resta_nat n (S(S(Cero))))

{- Función: suma_nat
Descripción: Hace la suma de 2 naturales
Uso: suma_nat (S(S(S(Cero)))) (S(S(S(S(Cero))))) = S (S (S (S (S (S (S Cero))))))
-}

suma_nat :: Natural -> Natural -> Natural 
suma_nat Cero n = n
suma_nat (S m) n = suma_nat m (S n)

{- Función: mult_nat
Descripción: Calcula el producto de 2 naturales
Uso: mult_nat mult_nat (S(S(S(Cero)))) (S(S(S(S(Cero))))) = S (S (S (S (S (S (S (S ( (S (S (S Cero)))))))))))
-}

mult_nat :: Natural -> Natural -> Natural
mult_nat Cero n = Cero
mult_nat (S m) n = suma_nat n (mult_nat m n)

{- Función: resta_nat
Descripción: Hace la resta de 2 naturales
Uso: resta_nat (S(S(S(S(Cero))))) (S(S(S(Cero)))) = S(Cero)
-}

resta_nat :: Natural -> Natural -> Natural 
resta_nat n Cero = n
resta_nat  (S m) (S n) = if m>n then resta_nat m  n else Cero

{-Función: div_nat
Descripción: Calcula el cociente entero de 2 naturales
Uso: div_nat (S (S (S (S (S (S (S (S (S (S Cero)))))))))) (S (S (S Cero))) = S (S (S Cero))
-}

div_nat :: Natural -> Natural -> Natural
div_nat n Cero = error "No se puede dividir entre 0"
div_nat Cero n = Cero
div_nat n m = if n<m then Cero else S(div_nat (resta_nat n m) m)

{- Función: a_entero
Descripción: Pasa un número natural a un entero
Uso: a_entero S (S (S Cero)) = 3
-}

a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1+(a_entero n)
