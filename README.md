# Running PODMAN inside a Kubernetes pod

## Build image

```bash
docker buildx create --driver docker-container --name kube_podman
docker buildx build --platform=linux/amd64 -f Dockerfile --push -t mrgoonie/kube-podman:5 --cache-from=type=registry,ref=mrgoonie/kube-podman --builder kube_podman .
```

or

```bash
./build.sh
```

## Run development

```bash
docker compose -f docker-compose.dev.yaml up --build
```

## Run production

```bash
docker compose -f docker-compose.dev.yaml up --build
```

## Deploy on Kubernetes

```bash
kubectl create ns kube-podman
kubectl apply -f deployment.yaml
```

## Known issues

## Credits

Duy Nguyen <duy@wearetopgroup.com>

Good luck!