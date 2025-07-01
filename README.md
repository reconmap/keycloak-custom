[![Build and Push Image](https://github.com/reconmap/keycloak-custom/actions/workflows/build-push-image.yml/badge.svg)](https://github.com/reconmap/keycloak-custom/actions/workflows/build-push-image.yml)

# Reconmap custom Keycloak

Keycloak image customised for Reconmap setups.

![Reconmap themed login screen](theme/screenshot.png)

## Build instructions

```shell
make
```

## Run instructions

Run as any regular container passing these environment variables:

- `VAR_WEB_CLIENT_URL`: URL of the Reconmap Web client. Something like https://demo.reconmap.com
- `VAR_ADMIN_CLI_SECRET`: This is the secret needed to communicate the Reconmap REST API with the Keycloak server.
- `VAR_API_CLI_SECRET`: This is the secret needed to communicate the Reconmap REST API with the Keycloak server.
- `VAR_RECONMAPD_CLI_SECRET`: This is the secret needed to communicate the Reconmap REST API with the Keycloak server.
