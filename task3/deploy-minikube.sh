#!/usr/bin/env bash
set -eu

APP_NAME="rest-hello"
IMAGE="rest-hello:1.0"
LOCAL_PORT=8080
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

missing=0
for tool in docker kubectl minikube; do
  command -v "$tool" >/dev/null || { echo "Missing: $tool"; missing=1; }
done
[ "$missing" -eq 0 ] || exit 1

minikube status >/dev/null 2>&1 || minikube start
minikube image build -t "$IMAGE" "$ROOT_DIR"
kubectl apply -f "$ROOT_DIR/k8s"
kubectl rollout status "deployment/$APP_NAME" --timeout=120s

echo "deployed at: http://127.0.0.1:$LOCAL_PORT/hello-world"
kubectl port-forward "service/$APP_NAME" "$LOCAL_PORT:8080"
