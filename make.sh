#!/bin/bash

# TODO: Si le pasamos el directorio solo hace ese directorio, en caso contrario procesa todos los directorios
ignoredirs="fonts/ images/ comun/"

# Preprocesamos los archivos de tablas de ODS > CSV > MD
libreoffice_cmd="/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=libreoffice --file-forwarding org.libreoffice.LibreOffice --convert-to csv --infilter=CSV:44,34,76,1 --outdir . "
for d in */ ; do
  if [[ " $ignoredirs " =~ .*\ $d\ .* ]]; then
    continue;
  fi
  cd $d

  for file in $(ls); do
    if [[ $file == *.ods ]]; then
      echo "Convirtiendo tabla de $file..."
      $libreoffice_cmd $file &>/dev/null
      csv2md ${file%.*}.csv > ${file%.*}.md
    fi
  done
  cd ..
done

# Generamos las programaciones
for d in */ ; do
  if [[ " $ignoredirs " =~ .*\ $d\ .* ]]; then
    continue;
  fi

  echo "Generando programación '$d'..."
  cd $d
  cp ../style.css .
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
  #cat $ficheros | md-to-pdf > ${PWD##*/}.pdf
  # Creamos la portada
  pandoc --template="../template.html" -f markdown-smart --toc --toc-depth=2 -c "./style.css" $ficheros -o ${PWD##*/}.html
  python3 -m weasyprint "${PWD##*/}.html" "${PWD##*/}.pdf"
  rm style.css
  cd ..
done
