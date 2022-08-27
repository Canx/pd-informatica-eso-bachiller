## UD: Creación de una página web para una ONG

> Autor: Rubén Cancho [(última versión)](https://github.com/Canx/pd-informatica-eso-bachiller/blob/main/PRESI-I/060_unidades/UD_Creacion_Web_ONG.md)

### Objetivos

Aprender a instalar y configurar un CMS, y a crear una página web para una ONG.

### Competencias y criterios de evaluación

* 4.4. Configurar y utilizar en modo básico un gestor de contenidos.
* 5.1. Buscar y seleccionar información técnica a partir de diversas fuentes con sentido crítico, contrastando su veracidad y haciendo uso de las herramientas del entorno personal de aprendizaje.
* 5.2. Participar en grupos de trabajo y utilizar estrategias comunicativas respetuosas entre iguales en espacios virtuales de aprendizaje colaborativo.

### Saberes básicos

* 4.4. Instalación y configuración básica de un gestor de contenidos.
* 4.5. Servidores web y sistemas gestores de contenidos como herramientas de publicación y colaboración online respetuosas.

### Temporalización

* Sesión 1: ¿Que es un CMS?
* Sesión 2: Hosting Wordpress
* Sesión 3: Instalando Wordpress
* Sesión 4: Primeros pasos con Wordpress
* Sesión 5: Creación y organización de artículos
* Sesión 6: Definición de una ONG
* Sesión 7: Definición de una ONG (II)
* Sesión 8: Definición de plantilla y secciones
* Sesión 9: Definición de contenidos
* Sesión 10: Definición de contenidos (II)
* Sesión 11: Evaluación grupal

### Sesión 1: ¿Que es un CMS?

#### Objetivo

* Conocer que es un CMS, sus características, y ejemplos de uso en el mundo real.

#### Descripción

* Explicar que es un CMS y sus funciones en la creación y gestión de páginas web.
* Tipos de CMS: creadores de sitios web, blogs, tiendas online,...
* Ejemplos de CMS y características de CMS: abierto/cerrado, lenguaje, 
* Diferencia entre CMS de código abierto y cerrado (Webflow, Blogger, Wix, Webnode, Jimdo,...). Libertades y costes asociados.
* Actividad: Detectar que CMS están utilizando páginas web. Explorar al menos 3 páginas web.
* Actividad: Realizamos cuestionario donde indicamos de que tipo es cada CMS indicado.
* Actividad: Individualmente explorar características de 2 CMS. Grupalmente comparamos con respuestas de compañeros en el foro.

#### Características

* Tipo: Adquisición + Discusión + Investigación + Producción 
* Agrupación: individual
* Rol del profesor: dirijida por el profesor
* Evaluación: formativa 

#### Recursos 
* [CMS en la Wikipedia](https://es.wikipedia.org/wiki/Sistema_de_gesti%C3%B3n_de_contenidos) 
* [Herramienta para detectar qué CMS está usando una página web](https://whatcms.org/) 
* [Categorias de CMS en alternativeto.net](https://alternativeto.net/category/business-and-commerce/cms/)

### Sesión 2: Hosting Wordpress

#### Objetivo

* Entender que es un hosting y sus características principales

#### Descripción

* Se explicará que es un hosting y sus características principales.
* Veremos los requisitos de Wordpress para ser instalado en un servidor.
* Compararemos Wordpress.com frente a un servicio de hosting, tanto de mantenimiento como de precio (libertades, coste, etc.). 
* Cada alumno buscará un hosting de Wordpress alternativo donde pueda instalar Wordpress y comparará las características del hosting y su precio en relación a Wordpress.com.
* Los alumnos valorarán justificando la respuesta que opción de hosting es la más adecuada de las propuestas por todos alumnos, y se comparará con la valoración del profesor.

### Sesión 3: Instalando Wordpress

#### Objetivos

* Instalar Wordpress en nuestro propio ordenador

#### Descripción

* Explicamos que es docker, descargamos el archivo docker-compose.yml de Wordpress, MariaDB y phpmyadmin y analizamos su estructura. Levantamos los servicios (docker compose up –d ) y hacemos la configuración básica (http://localhost:8080), que consiste en crear el usuario principal y el nombre de la página web.
* Vemos como ver la página y la URL para entrar en el panel de control.
* Comprobamos como podemos ver la página web de nuestros compañeros a partir de su IP.
* Guardamos el contenedor (docker compose down). 

#### Características

* Tipo: Adquisición + Colaboración + Práctica 
* Evaluación: formativa 
* Prerequisitos: línea de comandos, hosts, puertos, arquitectura cliente-servidor, URL’s 

#### Recursos 
* [Como ejecutar docker sin ser admin](https://docs.docker.com/engine/install/linux-postinstall/) 
* [Imagen de Wordpress](https://hub.docker.com/_/wordpress)
* [Fichero docker-compose con Wordpress, MariaDB y phpmyadmin](https://gist.github.com/Canx/afd18727f83bbe14452035a5a5cbed02) 
* [Taller de docker basado en Wordpress](https://aulasoftwarelibre.github.io/taller-de-docker/wordpress/)
* [Como instalar Wordpress](https://wordpress.org/support/article/how-to-install-wordpress/) 

### Sesión 4: Primeros pasos con Wordpress

#### Objetivo

* Practicar las tareas básicas de configuración de Wordpress

#### Descripción

* Recordamos como levantar y guardar el contenedor, y como acceder a la página web y el panel de control.
* Documentamos los siguientes pasos en un documento con capturas: 
  * Como entrar en el panel de control 
  * Estructura del panel de control 
  * Acceder a la URL del stiio web 
  * Como cambiar el tema del sitio web 
  * Como ver y añadir nuevos usuarios 

#### Características

* Tipo: Adquisición + Práctica + Producción 
* Evaluación: formativa + sumativa 

#### Recursos 
* [Primeros pasos con Wordpress (inglés)](https://wordpress.org/support/article/first-steps-with-wordpress/) 

### Sesión 5: Creación y organización de artículos

#### Objetivo

* Practicar la creación y organización de artículos

#### Descripción

  * Parte 1: Creación de artículos
    * Como visualizar el blog en la plantilla de Wordpress.
    * Crearemos un artículo sobre un ODS a libre elección, añadiendo imágenes, enlaces y estilos.
  * Parte 2: Organización de artículos
    * Explicamos la diferencia entre categorías vs etiquetas, y vemos como crearlas.
    * Clasificamos el artículo creado en categoría y etiquetas.
    * Creamos un bloque de exploración por etiquetas y categorías.

#### Características

* Tipo:  Práctica + Producción 
* Evaluación: formativa + sumativa 

#### Recursos

* [El editor de bloques de Wordpress (inglés)](https://wordpress.org/support/article/wordpress-editor/)
* [Entradas](https://wordpress.com/es/support/entradas/)
* [Diferencias entre categorías y etiquetas](https://wordpress.com/es/support/entradas/diferencias-entre-categorias-y-etiquetas/)

### Sesión 6: Definición de una ONG

#### Objetivo

* Investigar las tareas de las ONG en relación a los objetivos de desarrollo sostenible.

#### Descripción

* Empezaremos viendo los objetivos de desarrollo sostenible, que es una ONG, que tipos hay y ejemplos de ONG. 
* Se realizará un cuestionario para ver que motivaciones sociales tiene cada alumno, ejemplos de ONG y sus ODS asociados. Se escribirá en el foro asociado para que los alumnos puedan compartir sus respuestas.
* Se buscará información sobre ONG’s existentes y se estudiarán sus páginas web, así como su funcionamiento. Se escribirá en el foro asociado.

#### Características

* Tipo: adquisición + discusión + investigación
* Agrupación: individual
* Actividad: profesor + alumnos
* Rol del profesor: asistida por el profesor 
* Evaluación: formativa 

#### Recursos
<POR HACER>

### Sesión 7: Definición de una ONG (II)

#### Objetivo

* Creación de la identidad, los objetivos y tareas de la ONG.

#### Descripción

En grupos definiremos las páginas "Quienes somos" y "Que hacemos" en Wordpress.


#### Características

* Tipo: colaboración
* Agrupación: grupos
* Actividad: alumnos
* Rol del profesor: asistida por el profesor 
* Evaluación: formativa

### Sesión 8: Definición de plantilla y secciones <TODO>

#### Objetivo

* Configurar la plantilla de Wordpress para alojar la web de la ONG.

#### Descripción

Veremos las opciones de personalización de una plantilla de Wordpress: sus secciones, la barra de menús, las posibles barras laterales, etc...
Nos centraremos en definir el menú de nuestra página web, en base a la definición de nuestra ONG.

### Sesión 9: Definición de contenidos <TODO>

#### Objetivo

* Crear contenidos de Wordpress para definir la web de la ONG.

#### Descripción

Definiremos una sección en nuestro menú para el blog de la ONG.

### Sesión 10: Definición de contenidos (II) <TODO>

#### Objetivo

* Crear contenidos de Wordpress para definir la web de la ONG.

#### Descripción

### Sesión 11: Evaluación grupal <TODO>

#### Objetivo

* Evaluar grupalmente las páginas web realizadas.
