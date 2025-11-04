#Proyecto: Codificacción de Huffman (Variante)

1. _¿Cuál es la diferencia entre la compresión con perdida y compresión sin perdida?_
La compresión con perdida y sin perdida, en ingles llamadas lossy y lossless respectivamente, son 2 maneras basicas de comprimir imagen y video, en la __compresión con perdida__ el objetivo es minimizar el tamaño del archivo (JPEG y MP4), mientras que en la __compresión con perdida__ se busca preservar la calidad lo más posible (ZIP, PDF, PNG).

2. _Investiga como se lleva a cabo la compresión de texto, imagenes, videos y audio._
a) **Compresión de texto:** Generalmente funciona encontrando cadenas similares dentro de un archivo de texto y reemplazando esas cadenas con una representación binaria temporal para reducir el tamaño general del archivo.
b) **Compresión de imagen:** Suele funcionar eliminando bytes de información de la imagen o utilizando un algoritmo para volver a escribir el archivo de imagen a fin de que ocupe menos espacio de almacenamiento.
c) **Compresión de video:** Encuentra patrones en un archivo de video y luego reemplaza piezas repetitivas con referencias. Esto se realiza a través de un conjunto de operaciones especificadas por un códec, estos normalmente descartan información innecesaria dentro del archivo de video. 
d) **Compresión de audio:** Utiliza un compresor para manipular el rango dinamico, pero ¿que es el rango dinamico? En el contexto de audio es la diferencia entre las subidas y bajadas de volumen de una señal, de esta manera, disminuyendo la diferencia se logra obtener un audio con menor rango dinamico, es decir, comprimido.

3. _¿A que se refiere el enfoque para la compresión de datos, códigos de longitud
variable?_
Un código de longitud variable se define como un esquema de codificación donde diferentes símbolos se representan mediante códigos de longitud variable, asignando códigos cortos a los símbolos que aparecen con frecuencia y códigos largos a los que aparecen con poca frecuencia.

4. _Crea 2 archivos de texto donde:_
_a) Ingresa tus frases favoritas __SIN ESPACIOS__ y revisa su contenido binario
mediante el comando xxd y su peso en bytes._
_b) Ingresa la misma frase ahora __CON ESPACIOS__ y revisa su contenido binario
mediante el comando xxd y su peso en bytes._
_¿Cuál es la diferencia respecto a contenido binario de los dos archivos?_