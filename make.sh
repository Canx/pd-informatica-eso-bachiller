#!/bin/bash

# Opciones
# -d <DIRECTORIO>: Solo procesa el directorio indicado
# -o <FORMATO>: Solo genera el formato indicado (epub o pdf)

# Por defecto generamos todas las programaciones en pdf
directorio="*/"
salida="pdf"

while getopts d:o: flag
do
    case "${flag}" in
        d) directorio=${OPTARG};;
        o) salida=${OPTARG};;
    esac
done

ignoredirs="fonts/ images/ comun/ plantillas/"

# Preprocesamos los archivos de tablas de ODS > CSV > MD
libreoffice_cmd="libreoffice7.4 --convert-to csv --infilter=CSV:44,34,76,1 --outdir . "
for d in $directorio ; do
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
for d in $directorio ; do
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

  case "${salida}" in
        pdf)  
          pandoc --template="../template.html" -f markdown-smart --toc --toc-depth=2 -c "./style.css" $ficheros -o ${PWD##*/}.html
          python3 -m weasyprint "${PWD##*/}.html" "${PWD##*/}.pdf"
	;;
        epub) 
          pandoc --template="../template.html" -f markdown-smart --toc --toc-depth=2 -c "./style.css" $ficheros -o ${PWD##*/}.epub
	;;
    esac

  rm style.css
  cd ..
done
