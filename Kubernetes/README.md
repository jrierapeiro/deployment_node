# Setup Tectonic Sandox - Kubernetes <https://kubernetes.io>

## Windows

Tectonic <https://coreos.com/tectonic/docs/latest/tutorials/sandbox/install.html>

### Arrancar el cluster una vez instalado

- disable Hyper-V
  - bcdedit /set hypervisorlaunchtype off
- Arrancar el cluster
  - vagrant up --provider=virtualbox

### Suspender el cluster

- Apagar el cluster
  - vagrant suspend
- enable Hyper-V
  - bcdedit /set hypervisorlaunchtype auto

### Gestión del sanbox

Se puede acceder a través de <https://console.tectonicsandbox.com/>.
Usuario "admin@example.com" Password "sandbox"

### Kubectl desde windows

Establecer la configuración de kubectl para tener acceso a nuestro sanbox local:

- Definir el fichero de configuración
  - $env:KUBECONFIG =  "D:\tectonic\tectonic-sandbox-1.7.1-tectonic.2\provisioning\etc\kubernetes\kubeconfig"
- Mostrar la configuración del sandbox
  - kubectl config view

### Scaling

- Incrementamos el número de pods a 5 réplicas
  - kubectl scale deployments/simple-deployment --replicas=5
- Decrementamos el número de pods a 2 réplicas
  - kubectl scale deployments/simple-deployment --replicas=2