# Unidades didácticas

## UD1: Pensamiento Computacional y Programación Creativa con Scratch (1ª evaluación)

Se desarrollan las bases del pensamiento computacional combinando dinámicas desconectadas y la programación por bloques en Scratch para crear historias interactivas, simulaciones y juegos.

### Saberes básicos

* 2.3. Abstracción, secuenciación, algorítmica y su representación con lenguaje natural y diagramas de flujo.
* 2.4. Estructuras de control del flujo de programa: secuencial, condicional e iterativa.
* 2.5. Variables, condiciones y operadores matemáticos/lógicos.
* 2.6. Programación por bloques: composición de las estructuras básicas y encaje de bloques.
* 2.7. Análisis, validación y depuración de programas.

### Situaciones de aprendizaje y retos sugeridos

#### 1. Retos desconectados y primer contacto
- **El Robot Dibujante**: Diseño de instrucciones paso a paso para que un compañero dibuje figuras geométricas simples sin ambigüedades.
- **Divide y vencerás**: Descomposición de problemas cotidianos en subtareas algorítmicas representadas en diagramas de flujo.
- **Anima tu nombre**: Primer proyecto en Scratch integrando eventos, cambios de disfraz, sonidos y efectos visuales.

#### 2. Lógica, variables y dinámicas interactivas (Metodología PRIMM)
- **Adivina el número secreto**: Entrada de datos, comparación con condicionales (`si / si no`) y uso de variables para contar intentos.
- **Generador de dados y azar**: Simulación de tiradas de dados y cálculo de probabilidades simples.
- **El Cazador de Respuestas (Quiz temático)**: Sistema de preguntas y respuestas con marcador de puntuación y vidas.

#### 3. Geometría computacional y algoritmos de la vida cotidiana
- **Arte algorítmico con el lápiz**: Creación de patrones geométricos, polígonos regulares y espirales mediante bucles anidados.
- **SdA: "Operación Roomba en Scratch"**: Modelado del comportamiento de un robot aspirador doméstico:
  - *Fase 1*: Algoritmo de desplazamiento aleatorio con rebote ante bordes y obstáculos.
  - *Fase 2*: Algoritmo sistemático en espiral creciente.
  - *Fase 3*: Contador de superficie limpia y detección de suciedad.
- **Laberinto con obstáculos**: Control por teclado, detección de colisiones mediante sensores de color y meta interactiva.

---

## UD2: Robótica Virtual y Simulación con Gearsbot (2ª evaluación)

Mediante el simulador de robótica educativa Gearsbot, se trasladan los algoritmos aprendidos a un entorno virtual físico con sensores y actuadores.

### Saberes básicos

* 1.7. Técnicas de virtualización de la realidad.
* 3.1. Robots: tipos, componentes básicos, grados de libertad y características técnicas.
* 3.3. Control de sistemas robotizados en entornos de simulación.
* 3.4. Sensores (ultrasonidos, color/luz), actuadores (motores independientes) y controladores.
* 3.5. Carga, ejecución y depuración de algoritmos en robots.

### Situaciones de aprendizaje y retos sugeridos

- **Calibración y cinemática básica ("Mueve, Gira, Mueve")**: Control diferencial de motores para avanzar distancias exactas y realizar giros precisos de 90º y 180º.
- **Evasión de obstáculos ("Don't hit the wall")**: Uso del sensor de ultrasonidos para medir distancias en tiempo real y frenar o esquivar antes del impacto.
- **Cruce de puentes y precisión espacial**: Navegación estrecha combinando control de velocidad y orientación.
- **El Seguidor de Líneas (Line Follower básico)**: Uso del sensor óptico/color para seguir trayectorias continuas sobre fondo contrastado.
- **Desafío Final: Resolución de Laberintos Virtuales**: Programación de un algoritmo autónomo capaz de escapar de un laberinto detectando muros y salidas.

---

## UD3: Inteligencia Artificial Cotidiana, Modelos y Ética (2ª evaluación)

Aproximación práctica a cómo aprenden las máquinas, cómo se entrenan modelos y las implicaciones éticas de su despliegue social.

### Saberes básicos

* 1.3. Fundamentos de la IA: aprendizaje automático (Machine Learning), datos de entrenamiento y predicción.
* 1.4. Procesamiento automático y clasificación de información.
* 1.5. Igualdad e inclusión en sistemas de IA: detección de sesgos en datos.
* 1.6. Implicaciones sociales, ambientales y éticas de la inteligencia artificial.

### Situaciones de aprendizaje y retos sugeridos

- **IA para los Océanos (Code.org)**: Práctica interactiva para comprender cómo aprende una red neuronal supervisada distinguiendo peces de residuos plásticos marinos, y cómo los datos incorrectos provocan fallos de clasificación.
- **Entrenamiento con Teachable Machine**: Creación de un clasificador propio mediante cámara web (gestos, posturas o separación de residuos escolares: papel, plástico y orgánico).
- **Integración IA + Scratch**: Conexión del modelo entrenado en Teachable Machine con un videojuego en Scratch para controlar personajes mediante gestos o voz.
- **Dilemas Éticos con Moral Machine**: Debate guiado en clase sobre las decisiones de los coches autónomos ante situaciones imprevistas, valorando la responsabilidad algorítmica y el impacto social.

---

## UD4: Computación Física y Robótica con Micro:bit (3ª evaluación)

Materialización de los algoritmos en dispositivos físicos tangibles, trabajando con sensores integrados y robótica móvil.

### Saberes básicos

* 3.1. Arquitectura de microcontroladores y periféricos de entrada/salida.
* 3.3. Control de actuadores físicos y pantallas matriciales.
* 3.4. Lectura de sensores físicos integrados: acelerómetro, termómetro, sensor de luz y brújula.
* 3.5. Comunicación inalámbrica entre dispositivos embebidos.

### Situaciones de aprendizaje y retos sugeridos

#### 1. Prácticas con sensores internos de Micro:bit
- **Dado digital interactivo y "Cara o Cruz"**: Detección de agitación mediante acelerómetro y generación de valores pseudoaleatorios.
- **Estación Meteorológica Portátil**: Medición y visualización cíclica de temperatura en grados Celsius y nivel de luz ambiente en la matriz LED.
- **Brújula digital**: Calibración del magnetómetro y representación gráfica de los puntos cardinales (N, S, E, O).
- **Juego en red "Piedra, Papel o Tijera"**: Uso del módulo de radio para sincronizar partidas multijugador entre placas sin cables.

#### 2. Robótica móvil (Cutebot / chasis motorizado)
- **Control de movimiento y luces de emergencia**: Desplazamiento, giros y activación de luces LED RGB según maniobras.
- **Evasor de caídas y colisiones**: Uso conjunto del sensor de ultrasonidos frontal y de los sensores infrarrojos inferiores para evitar caídas desde mesas.
- **Carrera autónoma de seguimiento de línea**: Puesta a punto de un coche autónomo que recorre un circuito cerrado en el aula.

