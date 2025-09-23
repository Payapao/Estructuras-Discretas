--Las siguientes funciones seran utilizadas para 2 funciones de natural.hs

module Aux where

-- Tipo de dato Natural
data Natural = Cero | S Natural deriving (Eq, Show)

--Para realizar la función multNat necesitaremos la función sumaNat a continuación

{- Función: sumaNat
Descripción: Hace la suma de 2 naturales
Uso: sumaNat S(S(S Cero)) S(S(S(S Cero))) = S (S (S (S (S (S (S Cero))))))
-}

sumaNat :: Natural -> Natural -> Natural
sumaNat Cero n = n
sumaNat (S m) n = sumaNat m (S n)

{- Función: multNat
Descripción: Calcula el producto de 2 naturales
Uso: multNat S(S(S Cero)) S(S(S(S Cero))) = S (S (S (S (S (S (S (S (S (S (S (S Cero)))))))))))
-}

multNat :: Natural -> Natural -> Natural
multNat Cero n = Cero
multNat (S m) n = sumaNat n (multNat m n)

