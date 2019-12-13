DOCKER_IMAGE = git/audit/gitleaks
COMMAND ?= conflicts

.PHONY: all
all: build

.PHONY: clean
clean:
	unlink /github/workspace

.PHONY: test
test:
	echo "done"

.PHONY: build
build: clean
	ln -sf $(realpath ../../../) /github/workspace
	docker build -t $(DOCKER_IMAGE) .

.PHONY: run
run: build
	docker run --rm \
		--env INPUT_PATH=/github/workspace \
		-v $(realpath ../../../):/github/workspace \
		${DOCKER_IMAGE}
