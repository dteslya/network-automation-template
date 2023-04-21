"""Invoke tasks."""

from invoke import task


@task
def pre_commit_install(c):
    """Install pre-commit hooks."""
    c.run("pre-commit install")


@task
def pre_commit_update(c):
    """Update pre-commit hooks."""
    c.run("pre-commit autoupdate")


@task
def pre_commit_run(c):
    """Run pre-commit hooks."""
    c.run("pre-commit run --all-files")
