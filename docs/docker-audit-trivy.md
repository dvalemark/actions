# Trivy Scan [docker action]

A Simple and Comprehensive Vulnerability Scanner for Containers

## Inputs

#### image

The name of the docker image to scan

- required: True
- default: None

#### output

Path to trivy output

- required: False
- default: /output/trivy.json

#### ignore

Path to the .trivyignore file

- required: False
- default: /.trivyignore



## Example

This example has only required inputs, with dummy data

    trivy-scan:
      name: Trivy Scan
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: docker/audit/trivy@master
          with:
            image: foobar



This example has all possible inputs, with dummy data.

    trivy-scan:
      name: Trivy Scan
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: docker/audit/trivy@master
          with:
            image: foobar
            output: foobar
            ignore: foobar
