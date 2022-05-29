# Open Refine &middot; [![Build](https://github.com/flxhq/open.refine.docker/actions/workflows/build.yml/badge.svg)](https://github.com/flxhq/open.refine.docker/actions/workflows/build.yml)

This repository contains Dockerfile for [Open Refine](https://github.com/OpenRefine/OpenRefine).

![Screenshot](./assets/screenshot.png)

### Instructions to run the app

#### Build the Dockerfile

```bash
docker build -t openrefine .
```

#### Run the Docker app

```bash
docker run --rm -it -p 8080:8080 openrefine:latest
```

### Packages

- `wget`
- `curl`
- `openrefine`
- `Java Development Kit`
