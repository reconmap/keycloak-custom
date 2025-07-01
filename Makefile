IMAGE_NAME=ghcr.io/reconmap/keycloak-custom
IMAGE_REVISION=$(shell git rev-parse HEAD)
IMAGE_BUILD_DATE=$(shell date -u +%Y-%m-%dT%H:%M:%SZ)

image-build:
	docker build \
		--label org.opencontainers.image.revision=$(IMAGE_REVISION) \
		--label org.opencontainers.image.created=$(IMAGE_BUILD_DATE) \
		-t $(IMAGE_NAME) .
	docker tag $(IMAGE_NAME) $(IMAGE_NAME):latest

image-push:
	docker push $(IMAGE_NAME)

