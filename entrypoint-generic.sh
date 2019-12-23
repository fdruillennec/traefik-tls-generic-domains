#!/bin/sh
set -e

if [[ -z "${DOMAIN}" ]]; then
  echo "Variable DOMAIN is undefined. Please set it before running traefik-tls-generic-domains."
  exit 1
fi

sh get-domain-tls-config.sh ${DOMAIN}
echo "$@"
exec ./entrypoint.sh --providers.file.filename=tls-configuration.yaml "$@"