GITHUB_REPOSITORY ?= dogmatic69/actions
DOCKER_IMAGE = docker/lint/hadolint
INPUT_PATH ?= /src

.PHONY: all
all: build

.PHONY: clean
clean:
	echo "clean"

.PHONY: test
test:
	echo "done"

.PHONY: build
build: clean
	docker build -t $(DOCKER_IMAGE) .

.PHONY: run
run: build
	docker run --rm -i \
		--env INPUT_PATH=${INPUT_PATH} \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v $(realpath ../../):/src \
		$(DOCKER_IMAGE)

.PHONY: debug
debug: build
	docker run --rm -it \
		--entrypoint sh \
		${DOCKER_IMAGE}
