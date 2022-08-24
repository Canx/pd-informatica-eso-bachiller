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
current_dir=$(pwd)
for file in $(find . -name '*.ods'); do
  echo "Convirtiendo tabla de $file..."
  file_dir=$(dirname "${file}")
  libreoffice_cmd="libreoffice7.4 --convert-to csv --infilter=CSV:44,34,76,1,,,,,,,,-1 --outdir $file_dir "
  $libreoffice_cmd $file &>/dev/null

  for csv_file in ${file%.*}*.csv; do
    csv2md $csv_file > ${csv_file%.*}.md
  done
done
cd $current_dir


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
  for file in *.md
  do 
    # Ignoramos los archivos README.md
    if [ "$file" = "README.md" ]; then
      continue;
    fi
    ficheros="$ficheros $file"

    # Si existe un directorio con el nombre del fichero lo iteramos
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
          pandoc --template="../template.html" -f markdown-smart --toc --toc-depth=2 -c "./style.css" --filter pandoc-include $ficheros -o ${PWD##*/}.html
          python3 -m weasyprint "${PWD##*/}.html" "${PWD##*/}.pdf"
	;;
        epub) 
          pandoc --template="../template.html" -f markdown-smart --toc --toc-depth=2 -c "./style.css" --filter pandoc-include $ficheros -o ${PWD##*/}.epub
	;;
    esac

  rm style.css
  cd ..
done

# Generamos README.md a partir de README.pandoc (para ver en Github)
for file in $(find . -name 'README.pandoc'); do
  pandoc -f markdown-smart -t gfm --filter pandoc-include $file -o ${file%.*}.md
done
