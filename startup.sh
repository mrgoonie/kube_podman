#!/bin/bash

echo "Hello World!"

echo "---"

echo "Git Version:" 
git --version

echo "---"
echo "Node version:"
node -v

echo "---"
echo "NPM version:"
npm -v

echo "---"
echo "PNPM version:"
pnpm -v

echo "---"
echo "Docker:"
docker version

echo "---"
echo "Docker BuildX:"
docker buildx version

echo "---"
echo "Podman version:"
podman -v

echo "---"
echo "kubectl version:"
kubectl version -o yaml

echo "---"
echo "doctl version:"
doctl version

echo "---"
echo "Helm version:"
helm version

echo "---"
echo "OpenSSL version:"
openssl version

sleep infinity