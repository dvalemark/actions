# Git Lint [docker action]

Lint the git repo for common errors

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

    git-lint:
      name: Git Lint
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: foo/bar/git/lint/awesome-ci@master
          with:
            command: foobar



This example has all possible inputs, with dummy data.

    git-lint:
      name: Git Lint
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: foo/bar/git/lint/awesome-ci@master
          with:
            command: foobar
            path: foobar
            ignore: foobar
