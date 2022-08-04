FROM quay.io/keycloak/keycloak:19.0.0

COPY theme/reconmap-theme-keycloak.jar /opt/keycloak/providers/

COPY realm.json /opt/keycloak/data/import/reconmap-realm.json

ARG ADMIN_CLI_SECRET_ARG

ENV ADMIN_CLI_SECRET=ADMIN_CLI_SECRET_ARG
ENV KEYCLOAK_IMPORT=/opt/keycloak/data/import/reconmap-realm.json

