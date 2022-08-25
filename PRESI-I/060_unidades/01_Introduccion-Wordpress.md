## UD 1: Introducción a Wordpress

> Autor: Rubén Cancho

### Introducción

Tutorial de Wordpress basado en Docker, para preparar la siguiente UD. 

### Competencias y criterios de evaluación

* 4.4 Configurar y utilizar en modo básico un gestor de contenidos.

* 5.1. Buscar y seleccionar información técnica a partir de diversas fuentes con sentido crítico, contrastando su veracidad y haciendo uso de las herramientas del entorno personal de aprendizaje.

### Saberes básicos

* Instalación y configuración básica de un gestor de contenidos.
* Servidores web y sistemas gestores de contenidos como herramientas de publicación y colaboración online respetuosas.

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
