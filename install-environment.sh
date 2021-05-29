#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

ENV_NAME=$1

# create locally installed tensorflow environment
# use blender's current python version
# install certifi correctly (blender python does not have all required files I think)
conda create \
	--prefix $SCRIPT_DIR/envs/$ENV_NAME/env/ \
	--yes \
	python=3.7 \
	tensorflow=2.3 \
	pytorch \
	certifi

echo Created environment $ENV_NAME
