#!/bin/bash

# Función para generar un hash SHA-256 de los archivos Markdown
# Parámetros: Ninguno
# Devuelve: Hash SHA-256 de todos los archivos Markdown en el directorio actual
function generate_hash() {
  find . -type f -name '*.md' -exec cat {} \; | sha256sum | awk '{print $1}'
}

# Función para verificar la existencia de programas externos requeridos
# Parámetros: Ninguno
# Devuelve: Ninguno (finaliza el script si falta algún programa)
function check_dependencies() {
  local required_commands=("pandoc" "libreoffice" "csv2md" "weasyprint")
  for cmd in "${required_commands[@]}"; do
    if ! command -v ${cmd} &> /dev/null; then
      echo "Error: ${cmd} no está instalado."
      exit 1
    fi
  done
}

# Uso de case para opciones múltiples
function generate_formats() {
  # Generamos pdf
  pandoc --template="../template.html" -V current_date="$(date +%Y-%m-%d%n)" -f markdown-smart --toc --toc-depth=2 -c "./style.css" --filter pandoc-include $ficheros -o ${PWD##*/}.html
  python3 -m weasyprint "${PWD##*/}.html" "${PWD##*/}.pdf"
    
  # Generamos epub
  pandoc --template="../template.html" -V current_date="$(date +%D)" -f markdown-smart --toc --toc-depth=2 -c "./style.css" --filter pandoc-include $ficheros -o ${PWD##*/}.epub  
}

# Función para convertir archivos ODS a Markdown
# Parámetros: Ninguno
# Devuelve: Ninguno (convierte archivos ODS a Markdown en el directorio actual)
function convert_ods_to_md() {
  current_dir=$(pwd)
  for file in $(find . -name '*.ods'); do
    echo "Convirtiendo tabla de $file..."
    file_dir=$(dirname "${file}")
    libreoffice_cmd="libreoffice --convert-to csv --infilter=CSV:44,34,76,1,,,,,,,,-1 --outdir $file_dir "
    $libreoffice_cmd $file &>/dev/null

    for csv_file in ${file%.*}*.csv; do
      csv2md $csv_file > ${csv_file%.*}.md
    done
  done
  cd $current_dir
}

# Función para generar la programación (PDF/EPUB)
# Parámetros: Ninguno
# Devuelve: Ninguno (genera archivos PDF/EPUB en el directorio actual)
function generate_programming() {
  for d in $directorio ; do
    if [[ " $ignoredirs " =~ .*\ $d\ .* ]]; then
      continue;
    fi

    cd $d

    # Genera el hash actual
    current_hash=$(generate_hash)

    # Lee el hash anterior, si existe
    if [ -f ".last_hash" ]; then
      last_hash=$(cat .last_hash)
    else
      last_hash=""
    fi

    # Compara los hashes
    if [ "$current_hash" = "$last_hash" ]; then
      echo "No hay cambios en '$d', omitiendo..."
      cd ..
      continue
    fi

    echo "Generando programación '$d'..."
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
    
    generate_formats

    rm style.css

    # Actualiza el hash registrado
    echo $current_hash > .last_hash

    cd ..
  done
}

# Función para generar README.md a partir de README.pandoc
# Parámetros: Ninguno
# Devuelve: Ninguno (genera archivos README.md en el directorio actual)
function generate_readme() {
  for file in $(find . -name 'README.pandoc'); do
    pandoc -f markdown-smart -t gfm --filter pandoc-include $file -o ${file%.*}.md
  done
}

# Variables globales
directorio="*/"
salida="pdf"
ignoredirs="fonts/ images/ comun/ plantillas/ TIC-4ESO/ INF-2ESO/ TIC2-2BACH/ PI-1ESO/ Legislación/"

# Invocar la función de verificación de dependencias al inicio del script
check_dependencies

# Convertir ODS a MD
convert_ods_to_md

# Generar programaciones
generate_programming

# Generar README.md
generate_readme