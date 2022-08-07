#!/bin/bash

# TODO: Si le pasamos el directorio solo hace ese directorio, en caso contrario procesa todos los directorios

for d in */ ; do
  echo "Generando programación '$d'..."
  cd $d
  # Iteramos dentro del directorio
  ficheros=""
  for file in ./*.md
  do 
    ficheros="$ficheros $file"
    # Si existe un directoio con el nombre del fichero lo iteramos
    directorio=`basename -s .md $file`
    if [ -d "./$directorio" ]; then
      for subfile in ./$directorio/*.md
      do
        ficheros="$ficheros $subfile" 
      done
    fi
  done
  cat $ficheros | md-to-pdf > ${PWD##*/}.pdf
  cd ..
done
