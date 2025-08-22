1)Principales diferencias entre Haskell y Java 

Por un lado Java es un lenguaje de programación orientado a objetos, es decir, es un modelo de programación basado en el concepto de clases y objetos. Se utiliza para estructurar un programa de software en piezas simples y reutilizables de planos de código (clases) para crear instancias individuales de objetos. Por el otro, Haskell es un lenguaje de programación funcional, ósea, se ejecuta con funciones, evitando los datos mutables.

Así mismo Java tiene un sistema de tipo estático (el tipo de variable tiene que ser declarada explícitamente antes de poder ser utilizada), mientras que Haskell tiene un sistema de tipos estático robusto con inferencia de tipos (pueden ser usadas variables sin declarar explícitamente su tipo).

Otra de sus diferencias es el tipo de sintaxis utilizado, mientras Java utiliza una sintaxis de tipo C con llaves para definir bloques de código, Haskell usa una sintaxis de regla fuera de líneas con sangría para definir los bloques de código.  

Java utiliza un recolector de elementos no utilizados para gestionar automáticamente la memoria, lo que facilita la creación de programas con memoria segura. Haskell utiliza una combinación de recolección de basura y evaluación diferida para gestionar la memoria, lo que puede aumentar su eficiencia en algunos casos.

En Java las variables pueden ser mutables (pueden modificarse después de su creación) o inmutables (no pueden ser modificadas después de su creación), en Haskell todos los valores son inmutables por defecto.

En Java los errores se manejan mediante bloques try-catch, señala un bloque de instrucciones a intentar (try), y especifica una respuesta si se especifica una excepción (catch), mientras que en Haskell, los errores se manejan mediante el Either tipo, proporciona los errores explícitos para todos los estados que quieras definir y, al mismo tiempo, tiene la flexibilidad de no gestionar un error si no te importa.

En resumen, las principales diferencias entre ambos lenguajes son el sistemas de tipos, la sintaxis, la gestión de memoria, la inmutabilidad y  el manejo de errores.

2)¿Por qué Haskell no ha alcanzado una adopción significativa en la industria del software?

Según Simon Peyton Jones, creador de Haskell, la razón por la cual haskell no ha alcanzado una popularidad significativa es debido a que no fue diseñado para serlo. Haskell fue diseñado con un enfoque en la funcionalidad y con fundamentos intelectuales sólidos, sin prestar real atención a su popularidad,  también menciona que Haskell al ser creado por un grupo de investigación de laboratorio, y no por usuarios corporativos, no surgió en un entorno comercial, lo que dificulta el marketing. Por otro lado, los problemas de compatibilidad hace que los usuarios prefieran lenguajes más estables, así mismo, la sintaxis de haskell es distinta a los lenguajes populares, generando una barrera para los programadores acostumbrados a lenguajes más populares. Sin embargo, Haskell ha funcionado como un laboratorio de innovación, evolucionando el pensamiento de programación, teniendo un impacto indirecto en la industria.

3)Si pudieras realizar un simple analogía entre Git y GitHub ¿Cuál se te vendría a la mente?

Git podria ser un álbum de fotos, donde se van agregando fotos de una persona mientras va creciendo, sin embargo puedes ver las fotos pasada y GitHub seria la estanteria donde se guardan y almacenan los albumes.

Referencias:


Fuentes:

Canelo, M. M. (2023, 5 septiembre). ¿Qué es la Programación Orientada a Objetos? Profile Software Services. https://profile.es/blog/que-es-la-programacion-orientada-a-objetos/#Que_es_la_Programacion_Orientada_a_Objetos
Ismael Garcia, E. (2019, 10 abril). ¿Qué es la Programación Funcional? Codigofacilito. Recuperado 17 de agosto de 2025, de https://codigofacilito.com/articulos/programacion-funcional
S, S. (2023, 28 abril). Java vs. Haskell: Understanding the Key Differences. Medium. https://blog.devgenius.io/java-vs-haskell-understanding-the-key-differences-5b6b777c577e
Sartori, C. C. (2023, 7 octubre). Entrevista a Simon Peyton Jones. Érase una vez un algoritmo. . . https://camilocs.substack.com/p/entrevista-a-simon-peyton-jones
Šikić, M. (2022, 13 octubre). Error Handling with the Either type. DEV Community. https://dev.to/milos192/error-handling-with-the-either-type-2b63
Try. . .Catch - JavaScript | MDN. (2025, 24 junio). MDN Web Docs. https://developer.mozilla.org/es/docs/Web/JavaScript/Reference/Statements/try. . .catch