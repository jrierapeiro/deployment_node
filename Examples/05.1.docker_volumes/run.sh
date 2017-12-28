#!/bin/bash

# Listamos los volumenes disponibles
docker volume ls

# Creamos un volumen llamado datos
docker volume create vol-datos

# Comprobamos que se ha creado el volumen
docker volume ls

# Validamos el contenido del volumen
docker volume inspect vol-datos

# Ejecutamos un contenedor y montamos el volumen a la carpeta logs
docker run -it -v vol-datos:/logs  ubuntu:15.04 /bin/bash 

# Creamos la imagen de la app de ejemplo
docker build -t demo-vol:0.1 .

# Ejecutamos el container con el volumen
docker run -d -p 7100:7000 -v vol-datos:/logs demo-vol:0.1

# Navegamos
http://127.0.0.1:7100/

# Validamos el contenido del volumen donde hemos escrito los ficheros
