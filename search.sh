#!/bin/bash
#search by word 
#busqueda de palabra clave en el directorio donde se encuentre este script.
#grep -r -i /ruta/carpeta/

			printf "\x1b[1m\x1b[37m\x1b[41m Search by word \x1b[0m \n\n"
			echo "In this directory, search:"
			read vWord
			
grep -r -i $vWord
