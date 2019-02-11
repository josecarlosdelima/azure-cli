#!/usr/bin/env bash

set -exv

export AZDEV_CLI_REPO_PATH=$(pwd)
export AZDEV_EXT_REPO_PATHS='_NONE_'

echo "Run flake8."
azdev style --pep8
