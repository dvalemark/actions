# Checkmake [docker action]

Lint Makefiles using Checkmake

## Inputs

#### path

The path to be scanned for make files

- required: False
- default: /github/workspace



## Example

This example has only required inputs, with dummy data

    checkmake:
      name: Checkmake
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: foo/bar/file/lint/checkmake@master
          null


This example has all possible inputs, with dummy data.

    checkmake:
      name: Checkmake
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: foo/bar/file/lint/checkmake@master
          with:
            path: foobar
