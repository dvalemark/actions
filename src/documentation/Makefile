DOCKER_IMAGE = app
DOCKER_PATH = ./
GITHUB_REPOSITORY ?= foo/bar

.PHONY: all
all: clean build test run

.PHONY: clean
clean:
	unlink /github/workspace

.PHONY: test
test:
	echo "done"

.PHONY: build
build: clean
	ln -s $(realpath ../../) /github/workspace
	docker build -t $(DOCKER_IMAGE) .

.PHONY: run
run: build
	docker run --rm \
		--env INPUT_PATH=/github/workspace \
		--env INPUT_COMMAND=git-$(COMMAND) \
		-v $(realpath ../../):/github/workspace \
		${DOCKER_IMAGE}

.PHONY: debug
debug: build
	docker run --rm -it \
		--env GITHUB_REPOSITORY=$(GITHUB_REPOSITORY) \
		--env INPUT_PATH=/github/workspace \
		--env INPUT_COMMAND=git-$(COMMAND) \
		--entrypoint sh \
		-v $(realpath ../../):/github/workspace \
		${DOCKER_IMAGE}
