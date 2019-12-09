DOCKER_IMAGE = app
DOCKER_PATH = ./

.PHONY: build
build:
	docker build -t $(DOCKER_IMAGE) $(DOCKER_PATH)
