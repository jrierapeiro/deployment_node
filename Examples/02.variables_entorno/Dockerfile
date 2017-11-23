FROM ubuntu:15.04
LABEL maintainer="jariepei@gmail.com"
RUN apt-get update
# Variables de entorno que estarán disponible dentro del container
ENV BD_USER_NAME="JohnDoe" DB_SCHEMA_NAME="Base de datos de prueba"
# Copiamos el script al contenedor
COPY listar_vairables_entorno.sh /
# Definimos que el script es el punto de entrada - lo que se va a ejecutar
ENTRYPOINT ["/listar_vairables_entorno.sh"]