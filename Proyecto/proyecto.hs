--Para las siguientes funciones ocuparemos funciones auxiliares ubicadas en Aux.hs
import Aux

{-Funcion: frecuencia
Descripcion: recibe una cadena y regresa una lista de tuplas ordenada indicando su frecuencia.
Uso : frecuencia "Hola cara de bola" = [('a',4),(' ',3),('l',2),('o',2),('b',1),('e',1),('d',1),('r',1),('c',1),('H',1)]
-}

frecuencia :: String -> [(Char, Int)]
frecuencia "" = []
frecuencia (x:xs) = quicksort (frecuenciaAux (x:xs))

{-Funcion: arbolH
Descripcion: recibe una cadena y regresa el arbol de Huffman asociado
Uso : frecuencia "Hola" = [('H',1),('o',1),('l',1),('a',1)]
-}

arbolH :: String -> ArbolH
arbolH "" = Vacio
arbolH (x:xs) = creaArbol (frecuencia (x:xs))


{-Funcion: comprimir
Descripcion: recibe una cadena y regresa la cadena comprimida junto con su resectivo arbol.
Uso : frecuencia "Hola" = [('H',1),('o',1),('l',1),('a',1)]
-}

comprimir :: String -> (String, ArbolH)
comprimir "" = ("", Vacio)
comprimir (x:xs) = (comprimeAux (x:xs) (arbolH (x:xs)), arbolH (x:xs))

{-Funcion: decodificacion
Descripcion: recibe una cadena comprimida y su respectivo arbol y regresa la cadena decodificada.
Uso : frecuencia "Hola" = [('H',1),('o',1),('l',1),('a',1)]
-}

--decodificacion :: String -> ArbolH -> String
--decodificacion (x:xs) Vacio = error "Es necesario un arbol para realizar la decodificación"
--decodificacion [] (Nodo t1 t2) = error "No se puede decodificar una cadena vacia"
--decodificacion (x:xs) (Nodo t1 t2)






 

