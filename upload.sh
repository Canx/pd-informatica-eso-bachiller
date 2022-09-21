#!/bin/bash
directorio="*/"
ignoredirs="fonts/ images/ comun/ plantillas/"

# Subimos los pdfs a la carpeta remota
for d in $directorio ; do
  if [[ " $ignoredirs " =~ .*\ $d\ .* ]]; then
    continue;
  fi
  d=${d::-1}
  echo $d
  rclone copyto "./$d/$d.pdf" iesbenetusser:"/$d.pdf"
done
