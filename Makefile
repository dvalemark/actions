DOCKER_IMAGE = app
DOCKER_PATH = ./

.PHONY: all
all: build

.PHONY: clean
clean:
	echo "done"

.PHONY: test
test:
	echo "done"

.PHONY: build
build:
	docker build -t $(DOCKER_IMAGE) $(DOCKER_PATH)
