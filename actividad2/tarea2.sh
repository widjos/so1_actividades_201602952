#!/bin/bash

#Declare user 

GITHUBUSER1=$GITHUBUSER
github_data=$(curl "https://api.github.com/users/${GITHUBUSER1}" | jq '.| {name: .name , id: .id, date: .created_at}')

github_user=$(echo $github_data | jq '.name')
github_id=$(echo $github_data | jq '.id')
github_date=$(echo $github_data | jq '.date')

#Variable con la data a guardar
LOG_DATA="Hola ${github_user}. User ID: ${github_id}. Cuenta fue creada el: ${github_date} ."

#Obtener la fecha
CURRENT_DATE= $(date '+%Y-%m-%d-%H:%M:%S')

PATHMINE="/tmp/${CURRENT_DATE}"
FILE="saludos.log"

#CREAR DIRECTORIO
mkdir -p  $PATHMINE

#Escribir el archivo
touch -- "$PATHMINE/$FILE"

#Crear y escribir el archivo 
echo ${LOG_DATA} > "$PATHMINE/$FILE"

echo "Finalizo"