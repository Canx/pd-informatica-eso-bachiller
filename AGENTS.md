# Contexto Docente y Hojas de Ruta de Cursos (2026/2027)

Este archivo define las reglas y fuentes de verdad obligatorias para la gestión pedagógica y de contenidos en Aules/Moodle para el profesor Rubén Cancho en el **IES Maria Carbonell i Sánchez**.

## 1. Repositorio de Referencia Curricular y Planificación
La programación didáctica y las hojas de ruta semanales residen en este repositorio:
- **1º ESO - Tecnología y Digitalización (TRDR)** (Curso Aules: `385141`):
  `TRDR1-1ESO/hoja_de_ruta_y_planificacion_1ESO.md`
- **2º ESO - Programación, IA y Robótica (PIAR)** (Curso Aules: `385142`):
  `PIAR1-2ESO/hoja_de_ruta_y_planificacion_2ESO.md`
  *(Nota: 100% visual y por bloques con Scratch, Gearsbot y Micro:bit. Cero código textual en Python)*.
- **3º ESO - Programación, IA y Robótica (PIAR)** (Curso Aules: `385143`):
  `PIAR2-3ESO/hoja_de_ruta_y_planificacion_3ESO.md`
- **4º ESO - Digitalización (DIG)** (Curso Aules: `385144`):
  `DIG4-4ESO/hoja_de_ruta_y_planificacion_4ESO.md`
- **Criterios de Calificación y Fechas Clave Comunes**:
  `comun/calificacion.md`

## 2. Regla de Consulta Obligatoria (Automática)
Siempre que el usuario solicite:
1. Diseñar o publicar una nueva semana, actividad, reto o Situación de Aprendizaje (SdA).
2. Revisar o modificar la estructura de un curso.
3. Evaluar o ajustar el ritmo del curso.

**El asistente DEBE leer de forma proactiva y automática el archivo `hoja_de_ruta_y_planificacion_*.md` del curso correspondiente antes de responder o ejecutar cualquier acción**, sin esperar a que el usuario se lo recuerde ni a que tenga que pegar el enlace o ruta.

## 3. Principios de Formato y Publicación en Aules
- **Centro**: Siempre **IES Maria Carbonell i Sánchez** (nunca IES Cueva Santa).
- **Fechas de evaluación**: Las fechas de juntas de evaluación y sesiones de claustro son confidenciales del profesor y **nunca** deben mostrarse en tareas o recursos visibles para el alumnado.
- **Formato de cursos**: Los cursos están configurados en formato semanal (`weeks`) comenzando el 07/09/2026 a las 08:00.
- **Diapositivas y presentaciones**: Deben maquetarse siempre mediante el componente nativo **Carousel de Bootstrap 5** (compatible con el tema de Aules sin ejecutar `<script>` ni `<iframe>`).
- **Formato HTML en tareas y páginas**: Todo contenido generado para Aules debe ser HTML semántico limpio (Bootstrap cards, badges, listas formateadas).
