{- Función: creditos
Descripción: Recibe un entero y regresa la materia con los respectivos creditos
Uso: creditos 12 = Introducción a las CC
-}

creditos :: Int  -> [String]
creditos 12 = ["Introcuccion a las CC, Matematicas para las CA"]
creditos 10 = ["Estructuras Discretas, Algebra Superior"]
creditos 4 = ["Ingles"]
creditos _ = ["No hay ninguna materia con esa cantidad de creditos"]

{- Función: negativos
Descripción: Recibe una lista y regresa la cantidad de negativos de la lista
Uso: negativos [ 1, -4, 5, 3, -2] = 2
-}

negativos list = sum[if x<0 then 1 else 0 | x <- list]

{- Función: primos
Descripción: Recibe una lista y regresa los primos de esa lista
Uso: primos [1..20]  = [2 , 3 , 5 , 7 , 11 , 13 , 17 , 19]
-}

primos list = [x | x <- list, x `mod` 2 == 0]


{- Función: conjuntoLista
Descripción: Recibe una lista y regresa una lista sin elementos repetidos
Uso: conjuntoLista [1 , 2 , 2 , 1 , 3] = [1 ,2 ,3]
 -}


conjuntoLista [] = []
conjuntoLista (x:xs) = x : conjuntoLista [a | a <- xs, a /= x ]


