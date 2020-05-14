#!/bin/sh -l

set -e

export PROJECT_DIR=$(pwd)
echo "Processing $INPUT_PROCESS"

bash /opt/scripts/${INPUT_PROCESS}.sh