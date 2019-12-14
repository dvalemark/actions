# Checkmake [docker action]

Lint Makefiles using Checkmake.

> checkmake is an experimental tool for linting and checking Makefiles. It may not do what you want it to.


## Inputs

#### path

The path to the repository that will be checked. Defaults to the location of `actions/checkout` default path.


- required: False
- default: /github/workspace



## Example

This example has only required inputs, with dummy data

    checkmake:
      name: Checkmake
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: file/lint/checkmake@master
          null


This example has all possible inputs, with dummy data.

    checkmake:
      name: Checkmake
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: file/lint/checkmake@master
          with:
            path: foobar
