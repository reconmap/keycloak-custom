FROM quay.io/keycloak/keycloak:26.2

LABEL org.opencontainers.image.source=https://github.com/reconmap/reconmap
LABEL org.opencontainers.image.description="reconmap/keycloak-custom"
LABEL org.opencontainers.image.licenses="Apache-2.0"

COPY theme/reconmap-theme-keycloak.jar /opt/keycloak/providers/

COPY realm.json /opt/keycloak/data/import/reconmap-realm.json

ENV KEYCLOAK_IMPORT=/opt/keycloak/data/import/reconmap-realm.json

