# Dockerfile Linter [docker action]

A smarter Dockerfile linter that helps you build [best practice][] Docker
images. The linter is parsing the Dockerfile into an AST and performs rules on
top of the AST. It is standing on the shoulders of [ShellCheck][] to lint
the Bash code inside `RUN` instructions.

Adapted from [hadolint/hadolint](https://github.com/hadolint/hadolint)

[best practice]: https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices
[ShellCheck]: https://github.com/koalaman/shellcheck


## Inputs

#### path

Path to search for Dockerfiles that iwll be scanned

- required: False
- default: /github/workspace



## Example

This example has only required inputs, with dummy data

    dockerfile-linter:
      name: Dockerfile Linter
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: docker/lint/hadolint@master
          null


This example has all possible inputs, with dummy data.

    dockerfile-linter:
      name: Dockerfile Linter
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: docker/lint/hadolint@master
          with:
            path: foobar
