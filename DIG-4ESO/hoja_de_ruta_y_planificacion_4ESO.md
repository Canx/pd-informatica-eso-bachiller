# 🛡️ Programación de Aula: Digitalización 4º ESO (2026-2027)
**Centro:** IES Maria Carbonell i Sánchez  
**Profesor:** Rubén Cancho (Jefe de Departamento)  
**Asignatura:** Digitalización 4º ESO (ID Aules: `385144`)  
**Narrativa transversal:** *Laboratorio de Hacking Cívico y Soberanía Tecnológica*  

---

## 📚 Referencia Curricular y Programación Didáctica Departamental
Esta programación de aula concreta y operacionaliza la **Programación Didáctica oficial de Digitalización 4º ESO**:
* 📕 **Documento Oficial Completo (PDF):** [Descargar / Ver DIG-4ESO.pdf](../build/DIG-4ESO.pdf)
* 🎯 **Competencias Específicas y Criterios:** [042_competencias_especificas.md](042_competencias_especificas.md)
* 🧠 **Saberes Básicos LOMLOE:** [050_saberes_basicos.md](050_saberes_basicos.md)
* 🛠️ **Metodología Didáctica:** [metodologia.md](../comun/metodologia.md)
* ⚖️ **Criterios de Calificación e Instrumentos:** [calificacion.md](../comun/calificacion.md)
* 🤝 **Medidas de Inclusión y DUA:** [inclusion.md](090_inclusion.md)
* 📂 **Directorio de la Programación Didáctica:** [Ver archivos del repositorio](.)

---

## 📌 PARTE 1: Trabajo Realizado (Estado Actual)

### 1. Configuración del Entorno y Formato
- **Formato Semanal (`weeks`)**: Activado con fecha de inicio el **7 de septiembre de 2026**.
- **Sección 0 (General)**:
  - **`⚡ Misión del Curso: Laboratorio de Hacking Cívico y Soberanía Digital`** (*cmid: 5995768*): Manifiesto del curso, estructura por temporadas y metodología de hitos.
  - **`📽️ Presentación del Curso: Laboratorio de Hacking Cívico (Diapositivas)`** (*cmid: 5995771*): Presentación interactiva con visor nativo y soporte pantalla completa.
  - **`📖 Guía del Curso: Normas, Evaluación LOMLOE y Laboratorio`** (*cmid: 5995960*): Guía de convivencia, rúbricas de aula y normas del laboratorio.
  - **`🔒 [DOCENTE] Programación de Aula: Planificación Anual y Fechas Clave`** (*cmid: 5995773*, recurso exclusivo docente): Panel interno unificado con repositorio GitHub, PDF de la PD, calendario oficial de sesiones y fechas límite de notas.

### 2. Semana 1 (7 sep - 13 sep): Puesta a Punto y Diagnóstico
- **`Semana 1: Hoja de Ruta y Puesto de Trabajo Digital`** (*cmid: 5995769*): Guía de aula para estructurar carpetas en LliureX y OneDrive institucional.
- **`Actividad 1: Organización del Puesto de Trabajo Digital`** (*cmid: 5995770*): Entrega de captura de pantalla del árbol de directorios (límite: domingo 20 de septiembre a las 23:59).
- **`Evaluación Inicial: Cuestionario Diagnóstico Digital`** (*cmid: 5995772*): Tarea formal con archivo adjunto editable `cuestionario_inicial_digitalizacion_4ESO.odt` adaptado con los datos de **IES Maria Carbonell i Sánchez** y ampliaciones de IA y Linux.
  - **Fecha de entrega:** Viernes, **18 de septiembre a las 23:59** (recogida previa a la junta del 21 de septiembre).

### 3. Setmana 2 (14 sep - 20 sep): Posada a Punt del Lloc i Diagnòstic
- **`Setmana 2: Full de Ruta - Organització del Sistema i Diagnòstic Digital`** (*cmid: 6102043*): Pla de treball presencial a l'aula per a explicar i realitzar en viu l'Activitat 1 i el Qüestionari Inicial, amb enllaços directes i repte d'ampliació d'auditoria de maquinari en terminal Linux (`lscpu`, `free -h`).

### 3. Programación Didáctica (Git)
- Sincronizado en `pd-informatica-eso-bachiller`:
  - Miembros del departamento: Rubén Cancho y Ángeles Uclés (`comun/departamento.md`).
  - Calendario de evaluación con fechas de corte y Evaluación Inicial (`comun/calificacion.md`).
  - Recursos y archivo `.odt` versionados en el repositorio.

---

## 🚀 PARTE 2: Planificación Pendiente y Hoja de Ruta Anual

### Calendario Oficial de Hitos de Evaluación
| Hito / Evaluación | Sesión de Junta | Cierre Docente / Notas | Margen / Observaciones |
|---|---|---|---|
| **Evaluación Inicial** | **21 sep 2026** (lunes) | **18 sep 2026** (viernes) | Análisis de cuestionarios diagnósticos de partida |
| **1ª Evaluación** | **9 dic 2026** (miércoles) | **4 dic 2026** (viernes) | Cierre ordinario 1ª semana dic |
| **2ª Evaluación** | **10 mar 2027** (miércoles) | **5 mar 2027** (viernes) | Cierre ordinario 1ª semana mar |
| **3ª Evaluación y Final** | **8 jun 2027** (martes) | **28 may 2027** (viernes) | **Recuperaciones:** 31 may - 4 jun 2027 |

---

### Temporada 1: Hardware Hacking y Soberanía del Sistema (1ª Eval)
*Objetivo:* Desmitificar la tecnología, comprender la arquitectura de Von Neumann desde la práctica y ejercer la soberanía mediante terminal Linux y derecho a reparar.

- **Semana 2 (14 - 20 sep):** Laboratorio de Hardware I. La terminal de Linux (`lscpu`, `free`, `lsblk`, `lspci`) para auditar la máquina del aula.
- **Semanas 3-4 (21 sep - 4 oct):** La CPU y la memoria. Jerarquía de memorias (registros, caché L1-L3, RAM, almacenamiento NVMe vs SSD vs HDD). Simulación interactiva.
- **Semanas 5-6 (5 - 18 oct):** Placa base, chipsets, buses y refrigeración. Diagnóstico térmico y disipación de calor.
- **Semanas 7-8 (19 oct - 1 nov):** Tarjetas gráficas (GPU) e Inteligencia Artificial local vs cloud. Fuentes de alimentación, certificación 80+ y eficiencia.
- **Semanas 9-11 (2 - 22 nov):** **[HITO 1 - Proyecto Principal] El Presupuesto Maestro del Hacker**:
  - Configuración justificada de 3 presupuestos para necesidades reales (ofimática/cívico, creación audiovisual/3D y gaming/IA).
  - Cálculo de cuellos de botella y compatibilidad de componentes.
  - Presentación visual eficaz (evitando "muerte por PowerPoint").
- **Semanas 12-13 (23 nov - 4 dic):** Smartphones, arquitectura ARM, obsolescencia programada y consumo responsable.
  - **4 dic:** Cierre de notas de la 1ª Evaluación.

---

### Temporada 2: La Web Abierta, Startups e Impacto Cívico (2ª Eval)
*Objetivo:* Dejar de ser usuarios de plataformas cerradas para convertirse en creadores de servicios web con código abierto y mentalidad emprendedora.

- **Semanas 14-16 (14 dic - 18 ene):** La arquitectura de la World Wide Web. HTML5 semántico nativo y CSS3 limpio.
- **Semanas 17-18 (19 ene - 1 feb):** **Fundación de la Startup Cívica**:
  - Definición de un problema social o local (ODS).
  - Branding, identidad corporativa y Pitch Deck.
- **Semanas 19-21 (2 feb - 22 feb):** Desarrollo del sitio web de la startup.
  - Maquetación responsive (Flexbox / Grid).
  - Uso asistido y crítico de herramientas de Inteligencia Artificial (asistentes de código / LLMs locales).
- **Semanas 22-24 (23 feb - 5 mar):** **[HITO 2 - Demo Day & Networking]**:
  - Publicación y despliegue del proyecto web.
  - Ronda de Pitch y coevaluación entre equipos.
  - **5 mar:** Cierre de notas de la 2ª Evaluación.

---

### Temporada 3: Algoritmos, IA y Ciberdefensa (3ª Eval)
*Objetivo:* Programar la interacción, entender el funcionamiento interno de los modelos de IA y auditar la seguridad y privacidad en la red.

- **Semanas 25-27 (8 mar - 11 abr):** Pensamiento computacional y programación web dinámica con JavaScript (variables, condicionales, funciones y eventos).
- **Semanas 28-30 (12 abr - 9 may):** Laboratorio de Inteligencia Artificial y Datos:
  - Cómo aprenden las redes neuronales.
  - Auditoría de sesgos y privacidad de datos.
- **Semanas 31-32 (10 may - 23 may):** **[HITO 3] Ciberseguridad y Escape Room Ético (Operación Null_Pointer)**:
  - Criptografía básica, ingeniería social, vectores de ataque habituales y buenas prácticas de protección.
- **Semana 33 (24 may - 28 may):** Evaluación consolidada y cierre de notas ordinarias (**28 de mayo**).
- **Semana 34 (31 may - 4 jun):** **Ventana de Recuperaciones y Refuerzo** antes de la junta final del 8 de junio.

---

## 📋 Tareas Inmediatas Pendientes
1. **Publicar la Semana 2 en Aules (Laboratorio de Hardware y Diagnóstico LliureX)** cuando comiencen las clases presenciales.
2. **Tabulación de la Evaluación Inicial (fin de semana 19-20 sep)** para llevar datos agregados a la reunión del 21 de septiembre.
3. **Extrapolar la estructura semanal y de bienvenida a los otros 3 cursos** en Aules:
   - **PIAR 3º ESO** (`385143`)
   - **PIAR 2º ESO** (`385142`)
   - **TRDR 1º ESO** (`385141`)
