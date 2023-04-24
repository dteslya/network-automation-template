# Network Automation Template

[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

Opinionated [Copier](https://github.com/copier-org/copier) template for Python network automation projects.

Blog post: [https://dteslya.engineer/blog/2023/04/15/network-automation-python-project-template/](http://127.0.0.1:8000/blog/2023/04/15/network-automation-python-project-template/)

## Requirements

* [Copier](https://copier.readthedocs.io/en/stable/)
* [Invoke](https://www.pyinvoke.org/)
* [pre-commit](https://pre-commit.com/#install) [optional]
* [Commitizen](https://github.com/commitizen-tools/commitizen) [optional]

## Features

* Dependency management with [Poetry](https://python-poetry.org/)
* Code formatting with [Black](https://github.com/psf/black) and [isort](https://pycqa.github.io/isort/)
* Code linting with [pre-commit](https://pre-commit.com), [flake8](https://github.com/PyCQA/flake8), and [mypy](https://mypy-lang.org/)
* Enforces [Conventional Commits](https://www.conventionalcommits.org/) standard to automate [Semantic Versioning](https://semver.org/) and [Keep A Changelog](https://keepachangelog.com/) with [Commitizen](https://github.com/commitizen-tools/commitizen)
* Production-ready [GitLab CI/CD](https://docs.gitlab.com/ee/ci/) configuration

## Usage

1. Make sure that all essential [requirements](#requirements) are met.
2. Create a new project by issuing:

    ```shell
    copier gh:dteslya/network-automation-template /path/to/your/new/project
    ```

3. Cd to the project directory to install dependencies and pre-commit hooks

    ```shell
    cd /path/to/your/new/project && invoke install && invoke pre-commit-install
    ```

4. Start coding!
