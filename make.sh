#!/bin/bash

# Función para crear la carpeta build si no existe
function create_build_dir() {
  if [ ! -d "build" ]; then
    mkdir build
  fi
}

# Función para generar un hash SHA-256 de los archivos Markdown
# Función para generar un hash SHA-256 de los archivos Markdown, incluyendo enlaces simbólicos
function generate_hash() {
  find . -type f -name '*.md' | while read -r file; do
    if [ -L "$file" ]; then
      # Si es un enlace simbólico, sigue el enlace y lee el archivo de destino
      cat "$(readlink -f "$file")"
    else
      # Si no es un enlace simbólico, lee el archivo directamente
      cat "$file"
    fi
  done | sha256sum | awk '{print $1}'
}


# Función para verificar la existencia de programas externos requeridos
function check_dependencies() {
  local required_commands=("pandoc" "libreoffice" "csv2md" "weasyprint")
  for cmd in "${required_commands[@]}"; do
    if ! command -v ${cmd} &> /dev/null; then
      echo "Error: ${cmd} no está instalado."
      exit 1
    fi
  done
}

# Función para generar los formatos PDF y EPUB
function generate_formats() {
  # Creamos la carpeta build si no existe
  create_build_dir
  
  # Generamos el archivo HTML en la carpeta build
  pandoc --template="../template.html" -V current_date="$(date +%Y-%m-%d%n)" -f markdown-smart --toc --toc-depth=2 -c "../style.css" --filter pandoc-include $ficheros -o build/${PWD##*/}.html
  
  # Generamos PDF a partir del archivo HTML en build
  python3 -m weasyprint "build/${PWD##*/}.html" "build/${PWD##*/}.pdf"
  
  # Generamos EPUB a partir del archivo HTML en build
  pandoc --template="../template.html" -V current_date="$(date +%D)" -f markdown-smart --toc --toc-depth=2 -c "../style.css" --filter pandoc-include $ficheros -o build/${PWD##*/}.epub  
}

# Función para convertir archivos ODS a Markdown
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

    # Compara los hashes o usa la opción de forzar
    if [ "$current_hash" = "$last_hash" ] && [ "$force" = false ]; then
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

    # Actualiza el hash registrado solo si no se está usando -f
    if [ "$force" = false ]; then
      echo $current_hash > .last_hash
    fi

    cd ..
  done
}

# Función para generar README.md a partir de README.pandoc
function generate_readme() {
  for file in $(find . -name 'README.pandoc'); do
    pandoc -f markdown-smart -t gfm --filter pandoc-include $file -o ${file%.*}.md
  done
}

# Variables globales
force=false
directorio="*/"
ignoredirs="old/ fonts/ images/ comun/ plantillas/ TIC-4ESO/ INF-2ESO/ TIC2-2BACH/ PI-1ESO/ Legislación/"

# Procesar opciones
while getopts ":f" opt; do
  case ${opt} in
    f )
      force=true
      ;;
    \? )
      echo "Opción inválida: -$OPTARG" 1>&2
      exit 1
      ;;
  esac
done
shift $((OPTIND -1))

# Invocar la función de verificación de dependencias al inicio del script
check_dependencies

# Convertir ODS a MD
convert_ods_to_md

# Generar programaciones
if [ "$force" = true ]; then
  generate_programming -f
else
  generate_programming
fi

# Generar README.md
generate_readme

