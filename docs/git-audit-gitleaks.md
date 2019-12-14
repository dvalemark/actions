# GitLeaks [docker action]

Audit git repositories for secrets. Gitleaks provides a way for you to find unencrypted secrets and other unwanted data types in git repositories.

#### Features
- Audits for uncommitted changes
- Output in JSON formats for consumption in other reporting tools and frameworks

Adapted from [zricethezav/gitleaks](https://github.com/zricethezav/gitleaks)


## Inputs

#### path

The path to the repository that will be checked. Defaults to the location of `actions/checkout` default path.


- required: False
- default: /github/workspace



## Example

This example has only required inputs, with dummy data

    gitleaks:
      name: GitLeaks
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: git/audit/gitleaks@master
          null


This example has all possible inputs, with dummy data.

    gitleaks:
      name: GitLeaks
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@master
        - uses: git/audit/gitleaks@master
          with:
            path: foobar
