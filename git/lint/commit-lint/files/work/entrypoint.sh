#!/bin/bash
set -e
set -o pipefail

REPO=$(realpath ${INPUT_PATH})
OUTPUT=/output/commit-lint.json

#==============================================================================
function finish {
  cat ${OUTPUT}
}
trap finish EXIT

mkdir -p "$(dirname ${OUTPUT})"
touch "${OUTPUT}"

FOUND=0
CONFIGS=( commitlint.config.js .commitlintrc.js .commitlintrc.json .commitlintrc.yml )
for config in "${CONFIGS[@]}"; do
  if [ -f ${REPO}/${config} ]; then
    ln -s ${REPO}/${config} /work/${config}
    echo "Using [${config}] for commitlint";
    FOUND=1;
  fi
done

if (( ${FOUND} == 0 )); then
  echo "Config for commitlint not found";
  exit 2;
fi

echo "REPO"
ls -al ${REPO}
git -C ${REPO} show || true
git -C ${REPO} branch || true

echo "${GITHUB_BASE_REF:-master}..${GITHUB_HEAD_REF:-HEAD}"
echo $(git -C ${REPO} log --pretty="%h" -- ${GITHUB_BASE_REF:-master}..${GITHUB_HEAD_REF:-HEAD});
for COMMIT_HASH in $(git -C ${REPO} log --pretty="%h" -- ${GITHUB_BASE_REF:-master}..${GITHUB_HEAD_REF:-HEAD}); do
  echo "Testing commit: ${COMMIT_HASH}" >> ${OUTPUT}
  COMMIT_MESSAGE=$(git -C ${REPO} log --format=%B -n 1 ${COMMIT_HASH})
  echo "${COMMIT_MESSAGE}" | /work/node_modules/.bin/commitlint "$@" >> ${OUTPUT}
done

echo "Success!"
cat ${OUTPUT}
