DOCKER_IMAGE = git/lint/awesome-ci
COMMAND ?= conflicts

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
	docker build -t $(DOCKER_IMAGE) .

.PHONY: run
run: build
	docker run --rm \
		--env INPUT_PATH=/github/workspace \
		--env INPUT_COMMAND=git-$(COMMAND) \
		-v $(realpath ../../../):/github/workspace \
		${DOCKER_IMAGE}
