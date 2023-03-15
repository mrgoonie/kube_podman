# Running PODMAN inside a Kubernetes pod

## Build image

```bash
docker buildx create --driver docker-container --name kube_podman
docker buildx build --platform=linux/amd64 -f Dockerfile -t mrgoonie/kube-podman:1 --cache-from=type=registry,ref=mrgoonie/kube-podman --builder kube_podman .
```

## Develop

```bash
docker compose -f docker-compose.dev.yaml up --build
```