FROM node:8.9.1-slim
LABEL maintainer="jariepei@gmail.com"
# Copiamos el script al contenedor
COPY listar_version_node.sh /
# Definimos que el script es el punto de entrada - lo que se va a ejecutar
ENTRYPOINT ["/listar_version_node.sh"]