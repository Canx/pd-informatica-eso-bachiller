## UD 1: Introducción a Wordpress

### Introducción

Tutorial de Wordpress basado en Docker, para preparar la siguiente UD. 

### Competencias y criterios de evaluación
* 4.4 Configurar y utilizar en modo básico un gestor de contenidos.

* 5.1. Buscar y seleccionar información técnica a partir de diversas fuentes con sentido crítico, contrastando su veracidad y haciendo uso de las herramientas del entorno personal de aprendizaje.

### Saberes básicos

* Instalación y configuración básica de un gestor de contenidos.
* Servidores web y sistemas gestores de contenidos como herramientas de publicación y colaboración online respetuosas.

### Sesiones

#### Sesión 1: ¿Que es un CMS?
* Tipo: Adquisición + Discusión + Investigación + Producción 
* Evaluación: formativa 
* Descripción: Explicar que es un CMS, ver ejemplos de CMS y explorar las características de los más importantes hoy en día. Crear post en foro: Definir CMS, Clasificar CMS en tipos y funcionalidad, detectar que CMS están utilizando páginas web. 

##### Recursos 
* [CMS en la Wikipedia](https://es.wikipedia.org/wiki/Sistema_de_gesti%C3%B3n_de_contenidos) 
* [Herramienta para detectar qué CMS está usando una página web](https://whatcms.org/) 

#### Sesión 2: Instalando Wordpress
* Tipo: Adquisición + Colaboración + Práctica 
* Evaluación: formativa 
* Prerequisitos: línea de comandos, hosts, puertos, arquitectura cliente-servidor, URL’s 
* Descripción: Explicamos que es docker, descargamos el archivo docker-compose.yml de Wordpress, MariaDB y phpmyadmin y analizamos su estructura. Levantamos los servicios (docker compose up –d ) y hacemos la configuración básica (http://localhost:8080), que consiste en crear el usuario principal y el nombre de la página web. Vemos como ver la página y la URL para entrar en el panel de control. Comprobamos como podemos ver la página web de nuestros compañeros a partir de su IP. Guardamos el contenedor (docker compose down). 

##### Recursos 
* [Como ejecutar docker sin ser admin](https://docs.docker.com/engine/install/linux-postinstall/) 
* [Imagen de Wordpress](https://hub.docker.com/_/wordpress)
* [Fichero docker-compose con Wordpress, MariaDB y phpmyadmin](https://gist.github.com/Canx/afd18727f83bbe14452035a5a5cbed02) 
* [Taller de docker basado en Wordpress](https://aulasoftwarelibre.github.io/taller-de-docker/wordpress/)
* [Como instalar Wordpress](https://wordpress.org/support/article/how-to-install-wordpress/) 

#### Sesión 3: Primeros pasos con Wordpress
* Tipo: Adquisición + Práctica + Producción 
* Evaluación: formativa + sumativa 
* Descripción: Recordamos como levantar y guardar el contenedor, y como acceder a la página web y el panel de control. Documentamos los siguientes pasos en un documento con capturas: 
  * Como entrar en el panel de control 
  * Estructura del panel de control 
  * Acceder a la URL del stiio web 
  * Como cambiar el tema del sitio web 
  * Como ver y añadir nuevos usuarios 

##### Recursos 
* [Primeros pasos con Wordpress (inglés)](https://wordpress.org/support/article/first-steps-with-wordpress/) 

#### Sesión 4: Creación y gestión de artículos
* Tipo:  Práctica + Producción 
* Evaluación: formativa + sumativa 
* Descripción: Continuamos realizando la documentación de determinados pasos añadiendo capturas del proceso: 
  * Como crear un nuevo artículo (post) 
  * Como gestionar los comentarios realizados en los artículos 
  * Como crear categorías de artículos y clasificar los que ya tengamos. Crear una pequeña estructura de categorías de ejemplo. 
  * Como ver los artículos por categorías 
