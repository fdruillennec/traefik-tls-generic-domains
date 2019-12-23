ARG TRAEFIK_VERSION

FROM traefik:${TRAEFIK_VERSION}

COPY entrypoint-generic.sh .
COPY get-domain-tls-config.sh .
COPY tls-configuration.yml .

ENTRYPOINT [ "./entrypoint-generic.sh" ]