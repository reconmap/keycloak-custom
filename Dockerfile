FROM quay.io/keycloak/keycloak:26.2

LABEL org.opencontainers.image.vendor="Netfoe" \
	org.opencontainers.image.title="Reconmap Keycloak" \
	org.opencontainers.image.description="Custom Keycloak for Reconmap" \
	org.opencontainers.image.licenses="Apache-2.0" \
	org.opencontainers.image.source="https://github.com/reconmap/keycloak-custom" \
	org.opencontainers.image.documentation="https://github.com/reconmap/documentation"

COPY theme/reconmap-theme-keycloak.jar /opt/keycloak/providers/

COPY realm.json /opt/keycloak/data/import/reconmap-realm.json

ENV KEYCLOAK_IMPORT=/opt/keycloak/data/import/reconmap-realm.json

