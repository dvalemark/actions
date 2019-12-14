# Dockerfile Lint [docker action]

Lint a docker file

## Inputs

#### path

Path to the docker image

- required: True
- default: None

#### file

Name of the Dockerfile

- required: False
- default: Dockerfile



## Example

This example has only required inputs, with dummy data

    dockerfile-lint:
      name: Dockerfile Lint
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: foo/bar/docker/lint/hadolint@master
          with:
            path: foobar


This example has all possible inputs, with dummy data.

    dockerfile-lint:
      name: Dockerfile Lint
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: foo/bar/docker/lint/hadolint@master
          with:
            path: foobar
            file: foobar
