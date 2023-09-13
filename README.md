# Docker Vault

This Docker image contains the [Hashicorp Vault](https://www.vaultproject.io/) CLI `vault` so that you can run vault commands from within a Docker container.

### Building

To build the image, run:

```
docker build \
    -t docker-vault:latest \
    .
```

### Usage

You can use the image by running the container with any command you want, example:

```
docker run -it docker-vault \
    vault version
```