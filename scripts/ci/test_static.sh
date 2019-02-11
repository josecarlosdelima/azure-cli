#!/usr/bin/env bash

set -exv

export AZDEV_CLI_REPO_PATH=$(pwd)
export AZDEV_EXT_REPO_PATHS='_NONE_'

# . $(cd $(dirname $0); pwd)/artifacts.sh

# ls -la $share_folder/build
# ALL_MODULES=`find $share_folder/build/ -name "*.whl"`
# [ -d privates ] && pip install privates/*.whl
# pip install $ALL_MODULES

azdev setup -c $AZDEV_CLI_REPO_PATH

echo '=== List installed packages'
pip freeze

azdev style --pylint

exit $exit_code
