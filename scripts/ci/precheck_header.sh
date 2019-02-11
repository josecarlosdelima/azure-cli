#!/usr/bin/env bash

set -exv

export AZDEV_CLI_REPO_PATH=$(pwd)
export AZDEV_EXT_REPO_PATHS='_NONE_'

echo "Scan license"
azdev verify license

echo "Documentation Map"
azdev verify document-map

echo "Verify readme history"
azdev verify history
