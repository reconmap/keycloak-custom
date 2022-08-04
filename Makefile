IMAGE_NAME=quay.io/reconmap/keycloak-custom

image-build:
	docker build -t $(IMAGE_NAME) --build-arg ADMIN_CLI_SECRET_ARG=$(ADMIN_CLI_SECRET) .
	docker tag $(IMAGE_NAME) $(IMAGE_NAME):latest

image-push:
	docker push $(IMAGE_NAME)

