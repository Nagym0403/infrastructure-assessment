# Task 3
## Dependencies

- docker
- kubectl
- minikube

These dependencies are being verified at the start of the script, and the user gets notified if any of them are missing.

## Usage

```sh
./deploy-minikube.sh
```

The script checks for any missing dependencies, starts minikube if needed, builds the given Rest image into minikube, deploys the manifests, waits for rollout, and opens a port-forward to:

```
http://127.0.0.1:8080/hello-world
```