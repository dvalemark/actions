#!/bin/sh

echo "Running: (${INPUT_COMMAND}) path [${INPUT_PATH}] ignore [${INPUT_IGNORE}]"
${INPUT_COMMAND} --path=$(realpath ${INPUT_PATH}) --ignore=${INPUT_IGNORE}
