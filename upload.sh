#!/bin/bash

./make.sh -o pdf
./make.sh -o epub

directorio="*/"
ignoredirs="fonts/ images/ comun/ plantillas/"

while getopts d: flag
do
    case "${flag}" in
        d) directorio=${OPTARG};;
    esac
done

# Subimos los pdfs a la carpeta remota
for d in $directorio ; do
  if [[ " $ignoredirs " =~ .*\ $d\ .* ]]; then
    continue;
  fi
  d=${d::-1}
  echo $d
  rclone copyto "./$d/$d.pdf" departamento:"/$d.pdf"
  rclone copyto "./$d/$d.pdf" iesbenetusser:"/$d.pdf"
  rclone copyto "./$d/$d.epub" departamento:"/$d.epub"
done
