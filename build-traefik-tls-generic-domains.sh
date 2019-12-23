#!/bin/sh
set -e

IMAGE_NAME=traefik-tls-generic-domains
IMAGE_VERSION=v2.1.1

docker build --build-arg TRAEFIK_VERSION=${IMAGE_VERSION} -t ${IMAGE_NAME}:${IMAGE_VERSION} .