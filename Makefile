IMAGE_NAME=quay.io/reconmap/keycloak-custom

image-build:
	docker build -t $(IMAGE_NAME) .
	docker tag $(IMAGE_NAME) $(IMAGE_NAME):latest

image-push:
	docker push $(IMAGE_NAME)

