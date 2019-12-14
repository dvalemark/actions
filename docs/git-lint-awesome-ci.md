# Git Lint [docker action]

Lint the git repo for common errors

Adapted from [cytopia/awesome-ci](https://github.com/cytopia/awesome-ci).


## Inputs

#### command

The specific command to be executed.

#### Available Commands
- conflicts: Scan files and check if they contain git conflicts.
- ignored: Scan git directory and see if ignored files are still in git cache.


- required: True
- default: None

#### path

The path to the repository that will be checked. Defaults to the location of `actions/checkout` default path.


- required: False
- default: /github/workspace

#### ignore

List of paths to be ignored, for example if you had README.md files explaining how to deal with conflicts it would need to be ignored.


- required: False
- default: .git



## Example

This example has only required inputs, with dummy data

    git-lint:
      name: Git Lint
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: git/lint/awesome-ci@master
          with:
            command: foobar



This example has all possible inputs, with dummy data.

    git-lint:
      name: Git Lint
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: git/lint/awesome-ci@master
          with:
            command: foobar
            path: foobar
            ignore: foobar
