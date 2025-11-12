# Proyecto: Codificacción de Huffman (Variante)
##### 1. ¿Cuál es la diferencia entre la compresión con perdida y compresión sin perdida?
La compresión con perdida y sin perdida, en ingles llamadas lossy y lossless respectivamente, son 2 maneras basicas de comprimir imagen y video, en la __compresión con perdida__ el objetivo es minimizar el tamaño del archivo (JPEG y MP4), mientras que en la __compresión con perdida__ se busca preservar la calidad lo más posible (ZIP, PDF, PNG).

##### 2. Investiga como se lleva a cabo la compresión de texto, imagenes, videos y audio.
a) **Compresión de texto:** Generalmente funciona encontrando cadenas similares dentro de un archivo de texto y reemplazando esas cadenas con una representación binaria temporal para reducir el tamaño general del archivo.
b) **Compresión de imagen:** Suele funcionar eliminando bytes de información de la imagen o utilizando un algoritmo para volver a escribir el archivo de imagen a fin de que ocupe menos espacio de almacenamiento.
c) **Compresión de video:** Encuentra patrones en un archivo de video y luego reemplaza piezas repetitivas con referencias. Esto se realiza a través de un conjunto de operaciones especificadas por un códec, estos normalmente descartan información innecesaria dentro del archivo de video. 
d) **Compresión de audio:** Utiliza un compresor para manipular el rango dinamico, pero ¿que es el rango dinamico? En el contexto de audio es la diferencia entre las subidas y bajadas de volumen de una señal, de esta manera, disminuyendo la diferencia se logra obtener un audio con menor rango dinamico, es decir, comprimido.

##### 3. ¿A que se refiere el enfoque para la compresión de datos, códigos de longitud variable?
Un código de longitud variable se define como un esquema de codificación donde diferentes símbolos se representan mediante códigos de longitud variable, asignando códigos cortos a los símbolos que aparecen con frecuencia y códigos largos a los que aparecen con poca frecuencia.

##### 4. Crea 2 archivos de texto donde:
##### _a) Ingresa tus frases favoritas __SIN ESPACIOS__ y revisa su contenido binario mediante el comando xxd y su peso en bytes._
##### _b) Ingresa la misma frase ahora __CON ESPACIOS__ y revisa su contenido binario mediante el comando xxd y su peso en bytes._
##### ¿Cuál es la diferencia respecto a contenido binario de los dos archivos?
El contenido binario de la frase sin espacios es más corta a la que tiene espacios y su peso tambien es menor

##### 5. Comprime la frase del anterior inciso y otra frase más (puede ser una frase de una de tus canciones favoritas), usando los algoritmos vistos. Para el primer algoritmo adjunta su representación binaria de inicio y final despúes de utilizarlo.
__Representación binaria antes de comprimir el archivo:__
00000000: 01001000 01101111 01101100 01100001 00100000 01100011  Hola c
00000006: 01100001 01110010 01100001 00100000 01100100 01100101  ara de
0000000c: 00100000 01100010 01101111 01101100 01100001 00001010   bola.
__Representación binaria despues de comprimir el archivo:__
00000000: 00011111 10001011 00001000 00001000 00000101 11101000  ......
00000006: 00010011 01101001 00000000 00000011 01100001 01110010  .i..ar
0000000c: 01100011 01101000 01101001 01110110 01101111 00101110  chivo.
00000012: 01110100 01111000 01110100 00000000 11110011 11001000  txt...
00000018: 11001111 01001001 01010100 01001000 01001110 00101100  .ITHN,
0000001e: 01001010 01010100 01001000 01001001 01010101 01001000  JTHIUH
00000024: 00000010 01110010 10111000 00000000 10111111 11010111  .r....
0000002a: 11111100 00011010 00010010 00000000 00000000 00000000  ......


##### 6. El algoritmo que se muestra en este proyecto es una variante del algoritmo estandar de Huffman:
• __Investiga como es este el algoritmo estandar.__
Este algoritmo se basa en asignar códigos de distinta longitud de bits a cada uno de los caracteres de un fichero. Si se asignan códigos más cortos a los caracteres que aparecen más a menudo se consigue una compresión del fichero. Esta compresión es mayor cuando la variedad de caracteres es menor. Para recuperar el fichero original es necesario conocer el código asignado a cada carácter, así como su longitud en bits.
• __Menciona la ventajas y desventajas que tienen nuestra variante del algoritmo de Huffman con el estandar.__
Una de las ventajas más importante de la variación de la codificación de Huffman es la facilidad de implementación del algoritmo, mientras que la desventaja seria la capacidad de comprimir, mientras que el algoritmo de Huffman implementa ambas ramas del arbol para realizar la codificación, la variación solo implementa la rama del lado izquierdo, haciendo que la codifiación se vuelva menos eficiente
• __Elige una de tus frases para aplicar el algoritmo estandar (solo codificación).__
__Frase:__ "Wish that I could stay forever this young 
Not afraid to close my eyes
Life's a game made for everyone
And love is a prize"
__Codificación:__ 1000101 0000 0111 110111 111 0110 110111 1001 0110 111 1000010 111 100011 1100 101110 00010 10100 111 0111 0110 1001 11010 111 10101 1100 0011 010 00101 010 0011 111 0110 110111 0000 0111 111 11010 1100 101110 00100 101100 110110 101111 1000100 1100 0110 111 1001 10101 0011 1001 0000 10100 111 0110 1100 111 100011 00010 1100 0111 010 111 00011 11010 111 010 11010 010 0111 110110 101111 1000011 0000 10101 010 1000000 0111 111 1001 111 101100 1001 00011 010 111 00011 1001 10100 010 111 10101 1100 0011 111 010 00101 010 0011 11010 1100 00100 010 110110 101111 1000001 00100 10100 111 00010 1100 00101 010 111 0000 0111 111 1001 111 1011010 0011 0000 1011011 010 

##### 7. ¿Por qué es necesario tener un respectivo árbol de Huffman para decodificar una cadena de texto? ¿Qué pasa si no lo tengo?
El árbol es necesario para poder identificar la manera en la que esta codificado el texto, ya que cada codificación es unica y depende de los caracteres que tenga el texto. Si no se se tiene un árbol para realizar la decodificación la codificación no va a poder ser traducida de manera correcta

##### 8. ¿De qué manera las estrategias de optimización empleadas en el videojuego Grand Theft Auto V para consolas de septima generación (PS3/Xbox 360) reflejan los principios fundamentales de la compresión de datos en comparación con las de octava generación?
Mediante el uso de tecnicas que priorizan el almacenamiento y la gestión de memoria limitada, con menor calidad visula. A diferencia de los de octava generaciòn que priorizan la calidad visualcon una compresión menor.


- ✨Fuentes
-Paris, V. (2023, 13 abril). ¿Qué es la compresión y cómo usarla? Aulart. https://www.aulart.com/es/blog/que-es-la-compresion-y-como-usarla/?srsltid=AfmBOoq7w7AxYqgcDcmw0hZawlQvgyE1TcAd12VIqDURYvXJZ-WAJXmW 
-Pozo, S. (s. f.). Blog con clase | Compresión de Huffman. © 2000 Salvador Pozo. https://conclase.net/blog/item/huffman 
-Program, A. D. (s. f.). Text File Compression | AT&T Developer. https://developer-att-com.translate.goog/video-optimizer/docs/best-practices/text-file-compression?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=rq 
-Pu, I. M. (2006). Coding symbolic data. En Elsevier eBooks (pp. 19-48). https://doi.org/10.1016/b978-075066310-6/50005-2 
-¿Qué es la compresión de imágenes? (s. f.). CLOUDFLARE. https://www.cloudflare.com/es-es/learning/performance/glossary/what-is-image-compression/
-Ravoof, S. (2023, 23 agosto). Compresión con o sin pérdidas: Guía para principiantes sobre ambos formatos. Kinsta®. https://kinsta.com/es/blog/con-perdidas-o-sin-perdidas/ 
-Video compression: What it is and why it matters for video streaming. (2025). MUX. Recuperado 11 de noviembre de 2025, de https://www.mux.com/articles/video-compression-what-it-is-and-why-it-matters-for-video-streaming
