#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

ENV_NAME=$1

cp $SCRIPT_DIR/__init__.py $SCRIPT_DIR/envs/$ENV_NAME/
zip -r $SCRIPT_DIR/envs/$ENV_NAME.zip $SCRIPT_DIR/envs/$ENV_NAME
