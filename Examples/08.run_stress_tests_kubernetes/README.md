# Run stress tests on a running container

- Partimos del ejemplo 07 y ya tenemos el test-deployment funcionando en el sandbox
- Instalar los modulos necesarios para los test de rendimiento/estres
  - npm install
- Definir el TEST_HOST para los tests
  - set TEST_HOST="https://console.tectonicsandbox.com"
- Ejecutar los test
  - npm run stress
- Analizar los resultados
- Ver los logs del container en ejecución