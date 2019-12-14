# GitLeaks [docker action]

Audit git repos for secrets. Gitleaks provides a way for you to find unencrypted secrets and other unwanted data types in git repositories. As part of its core functionality, it provides:

- Audits for uncommitted changes
- Github and Gitlab support including support for bulk organization and repository owner (user) repository scans, as well as pull/merge request scanning for use in common CI workflows.
- Support for private repository scans, and repositories that require key based authentication
- Output in JSON formats for consumption in other reporting tools and frameworks
- Externalised configuration for environment specific customisation including regex rules
- High performance through the use of src-d's go-git framework

[Source](https://github.com/zricethezav/gitleaks)


## Inputs

#### path

Path to the repo that will be scanned

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
