# deployment_node

## Presentación de Docker

¿Qué es Docker?
¿Qué es un container?
¿Qué plataformas están soportadas?
¿Qué es una container image?

## Línea de comandos de Docker

docker images
docker run (ejecutar nuestro primer container)
docker ps (variantes para ver en ejecucion, ejecutados)

Ejecucion de un container con persistencia de datos (node app?)

## Dockerizando nuestra app

Definición de Dockerfile
- Base image
- Comando que podemos añadir para instalar applicaciones adicionales
- Creacion de una imagen de la aplicación actual
- Ejecución del container que ejecute la aplicación actual

## Hacer un deploy de nuestra app dockerizada

Jenkins pipeline
Build app
Docker create image
Kubernetes ???