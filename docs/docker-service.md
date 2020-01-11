# Service Action Runner [docker action]

Run CI jobs for a particular service in a mono repo

## Inputs

#### service

The name of service (folder name relative to root)

- required: True
- default: None

#### targets

targets to call in the makefile

- required: True
- default: lint test



## Example

This example has only required inputs, with dummy data

    service-action-runner:
      name: Service Action Runner
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: docker/service@master
          with:
            service: foobar
            targets: foobar

This example has all possible inputs, with dummy data.

    service-action-runner:
      name: Service Action Runner
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: docker/service@master
          with:
            service: foobar
            targets: foobar
