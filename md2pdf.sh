#!/bin/bash
cd pd-programacion-ai-y-robotica-i
ficheros="portada.md introduccion.md objetivos.md competencias.md contenidos.md unidades-didacticas.md metodologia.md evaluacion.md medidas-especificas.md fomento-de-la-lectura.md utilizacion-de-las-tic.md recursos.md actividades-complementarias.md"
cat $ficheros | md-to-pdf > pd-PAIR1-3ESO.pdf
