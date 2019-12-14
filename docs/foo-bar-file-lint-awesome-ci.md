# File Lint [docker action]

Lint various files in many ways (CR / CRLF / trailing \n / etc)

## Inputs

#### command

The specific command to be executed

- required: True
- default: true

#### path

The path to be scanned

- required: False
- default: None

#### ignore

List of paths to be ignored

- required: False
- default: None



## Example

This example has only required inputs, with dummy data

    file-lint:
      name: File Lint
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: foo/bar/file/lint/awesome-ci@master
          with:
            command: foobar



This example has all possible inputs, with dummy data.

    file-lint:
      name: File Lint
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: foo/bar/file/lint/awesome-ci@master
          with:
            command: foobar
            path: foobar
            ignore: foobar
