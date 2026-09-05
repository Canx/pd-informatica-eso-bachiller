# Situaciones de aprendizaje - PIAR I (2º ESO)

## Primera evaluación

### SdA 1: Operación "Robot Aspirador": Modelando la Limpieza Autónoma en Scratch

#### 1. Contexto
En el contexto cotidiano del hogar, los dispositivos autónomos como los robots aspiradores (Roomba) forman parte del entorno habitual de las familias. Sin embargo, los estudiantes rara vez comprenden cómo un aparato sin "ojos" ni "cerebro biológico" es capaz de cubrir una superficie y no caerse por las escaleras. Esta situación de aprendizaje conecta la tecnología doméstica cotidiana con el pensamiento computacional y la algorítmica básica.

#### 2. Descripción / Justificación
La situación introduce los conceptos fundamentales de algorítmica (secuencia, selección iterativa, variables y sensores) sin partir de problemas abstractos, sino modelando un sistema real. El alumnado pasa de ser usuario pasivo a modelador de tecnología, comprendiendo cómo los algoritmos determinan la eficiencia de una máquina y cómo la aleatoriedad versus el orden matemático influyen en la resolución de problemas.

#### 3. Producto final
Una simulación interactiva completa en Scratch donde un robot aspirador limpia una habitación con obstáculos muebles y manchas de suciedad, incorporando:
1. Modo manual (control con flechas/teclado).
2. Modo autónomo reactivo (avance en línea recta y rebote en ángulo aleatorio ante paredes o muebles).
3. Modo sistemático inteligente (patrón de barrido en espiral creciente).
4. Marcador de porcentaje de habitación limpiada y tiempo empleado.

#### 4. Relación con los retos del s. XXI y los ODS
* **Retos del s. XXI**: Alfabetización computacional, pensamiento de diseño y resolución sistemática de problemas complejos.
* **ODS vinculados**:
  * **ODS 9 (Industria, Innovación e Infraestructura)**: Comprensión de la automatización y la robótica de consumo.
  * **ODS 12 (Producción y Consumo Responsables)**: Eficiencia energética en dispositivos autónomos domésticos.

#### 5. Competencias específicas y criterios de evaluación vinculados
* **CE2. Diseñar, programar y depurar algoritmos y programas informáticos sencillos, utilizando el pensamiento computacional y entornos de programación visual.**
  * *Criterio 2.1*: Descompone problemas en secuencias lógicas de instrucciones (diagrama de flujo).
  * *Criterio 2.2*: Utiliza variables para contabilizar eventos y almacenar estados (suciedad limpiada, tiempo).
  * *Criterio 2.3*: Aplica estructuras condicionales para responder a estímulos sensoriales (sensores de choque y bordes).
  * *Criterio 2.4*: Depura el código corrigiendo bloqueos o bucles infinitos en esquinas.

#### 6. Saberes básicos
* **Bloque 2. Algorítmica y programación**:
  * 2.3. Abstracción, descomposición y algorítmica básica.
  * 2.4. Estructuras de control (bucles condicionales, bifurcaciones `si / si no`).
  * 2.5. Variables numéricas y booleanas, operadores lógicos y relacionales.
  * 2.6. Programación por bloques: sensores de color, detección de objetos y efectos con el lápiz de Scratch.

#### 7. Rúbrica de evaluación sintética
* **Excelente (10)**: Modela ambos modos autónomos (rebote y espiral), calcula la superficie limpia dinámicamente, código libre de errores de atasco y modularizado.
* **Notable (7-8)**: Funciona el modo autónomo de rebote con detección precisa de obstáculos y contador de suciedad funcional.
* **Suficiente (5-6)**: El robot se mueve de forma autónoma pero se atasca ocasionalmente o el sensor de choque no siempre responde.
* **Insuficiente (<5)**: El movimiento carece de algoritmo autónomo o solo responde a control manual sin integración de lógica sensorial.

---

## Segunda evaluación

### SdA 2: Guardianes de los Océanos: Inteligencia Artificial contra los Residuos

#### 1. Contexto
La contaminación marina por plásticos y residuos es uno de los mayores desafíos medioambientales contemporáneos. Esta situación de aprendizaje sitúa al alumnado ante un reto de sostenibilidad global, utilizando la inteligencia artificial como herramienta de impacto positivo.

#### 2. Descripción / Justificación
Los alumnos aprenden el ciclo de vida del aprendizaje automático (Machine Learning): recolección de datos, etiquetado, entrenamiento de un clasificador neuronal y evaluación de sesgos. A través del juego interactivo "IA para los Océanos" (Code.org) y el entrenamiento con **Teachable Machine**, descubren experimentalmente que una IA es tan buena o tan justa como los datos con los que ha sido educada.

#### 3. Producto final
1. Un modelo entrenado en Teachable Machine capaz de clasificar en tiempo real (mediante cámara web) residuos reales de clase (papel, plástico, tapones, orgánico).
2. Un minijuego o clasificador en Scratch conectado al modelo que deposita cada residuo virtual en el contenedor correspondiente.
3. Decálogo reflexivo sobre el sesgo en la IA y dilemas éticos de toma de decisiones automatizadas (análisis de *Moral Machine*).

#### 4. Relación con los retos del s. XXI y los ODS
* **ODS 14 (Vida Submarina)**: Preservación de ecosistemas acuáticos frente al impacto del plástico.
* **ODS 12 (Consumo y Producción Sostenibles)**: Concienciación sobre reciclaje selectivo y reducción de deshechos.
* **Retos s. XXI**: Comprensión crítica de la Inteligencia Artificial y concienciación sobre sesgos algorítmicos.

#### 5. Competencias específicas y criterios de evaluación vinculados
* **CE1. Conocer los fundamentos de la Inteligencia Artificial y el procesamiento de la información, valorando su impacto social y ético.**
  * *Criterio 1.1*: Identifica el papel del entrenamiento y los datos en los algoritmos de aprendizaje automático.
  * *Criterio 1.2*: Entrena un modelo de clasificación evaluando su precisión y posibles errores ante datos nuevos.
  * *Criterio 1.3*: Reconoce situaciones donde los datos sesgados generan decisiones injustas o erróneas.

---

## Tercera evaluación

### SdA 3: Misión Exploración y Rescate: Robótica Tangible con Micro:bit

#### 1. Contexto
En situaciones de catástrofe natural o rescate en entornos inaccesibles, los sistemas embebidos y pequeños robots autónomos son vitales para monitorizar parámetros ambientales (temperatura, luz, gases) y transmitir alertas por radio sin depender de redes de telefonía.

#### 2. Descripción / Justificación
Esta SdA traslada el código de la pantalla al mundo físico. El alumnado programa la placa **Micro:bit**, aprende a interpretar datos analógicos y digitales captados por sus sensores integrados (acelerómetro, brújula, magnetómetro, sensor térmico) y establece protocolos de comunicación por radiofrecuencia entre nodos.

#### 3. Producto final
1. **Estación de Monitorización Ambiental**: Dispositivo que mide temperatura y luminosidad, advirtiendo en la matriz LED de valores de riesgo.
2. **Red de Alerta por Radio**: Dispositivo emisor que ante una sacudida (acelerómetro - terremoto/colisión) envía una señal de socorro a los dispositivos receptores de los compañeros.
3. (Ampliación con chasis Cutebot): Vehículo explorador que se detiene ante precipicios mediante sensores infrarrojos.

#### 4. Relación con los retos del s. XXI y los ODS
* **ODS 3 (Salud y Bienestar)** y **ODS 11 (Ciudades y Comunidades Sostenibles)**: Sistemas de prevención de riesgos y alerta temprana ante emergencias.
* **Retos s. XXI**: Alfabetización en hardware, electrónica básica y computación ubicua (IoT).

#### 5. Competencias específicas y criterios de evaluación vinculados
* **CE3. Montar, configurar y programar sistemas robotizados y dispositivos físicos programables interactuando con el entorno mediante sensores y actuadores.**
  * *Criterio 3.1*: Programa la lectura e interpretación de magnitudes físicas mediante sensores.
  * *Criterio 3.2*: Controla la activación de actuadores (pantalla LED, zumbador sonoro).
  * *Criterio 3.3*: Configura la comunicación por radio entre microcontroladores respetando canales y protocolos.
