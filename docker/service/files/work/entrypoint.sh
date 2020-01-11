#!/bin/bash
set -eu

SERVICE_PATH=$(realpath ./${INPUT_SERVICE})

for target in ${INPUT_TARGETS[@]}; do
	make -C ${SERVICE_PATH} $target
done
