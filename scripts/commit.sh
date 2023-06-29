#!/bin/bash

## commit & push generated document file in CI

set -o nounset
set -o pipefail
set -o xtrace

touch sample.txt

git status

if [[ ${CHANGED} -eq 0 ]]; then
    exit
fi

git remote add work https://github.com/yu-fukunaga/practice-github-actions
git fetch work
git checkout -q -b ${BRANCH} --track work/${BRANCH}
git status
if [[ ! $(git commit -m "Auto commit") ]]; then
    # nothing todo
    exit 0
fi
git push work ${BRANCH}
