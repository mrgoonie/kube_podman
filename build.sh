#!/bin/zsh

BUILD_NUM=9

docker buildx build --platform=linux/amd64 -f Dockerfile --push -t "mrgoonie/kube-podman:$BUILD_NUM" --cache-to type=inline --cache-from=type=registry,ref=mrgoonie/kube-podman --builder kube_podman .

# Manually update BUILD_NUM in "deployment.yaml"

kubectl apply -f deployment.yaml