#!/bin/bash
export GITHUB_USER="yeinnymelissa"

curl -O https://api.github.com/users/$GITHUB_USER

nombre=$(jq '.login' $GITHUB_USER)
id=$(jq '.id' $GITHUB_USER)
creado=$(jq '.created_at' $GITHUB_USER)
echo  “Hola $nombre. User ID: $id. Cuenta fue creada el: $creado.”
fecha=$(date +"%d-%m-%Y")
mkdir -p /tmp/$fecha
echo  “Hola $nombre. User ID: $id. Cuenta fue creada el: $creado.”  > /tmp/$fecha/saludos.log