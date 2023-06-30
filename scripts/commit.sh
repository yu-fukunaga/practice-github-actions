#!/bin/bash

## commit & push generated document file in CI

set -o nounset
set -o pipefail
set -o xtrace

touch sample.txt

git remote add work https://github.com/yu-fukunaga/practice-github-actions
git fetch work
git checkout -q -b ${BRANCH} --track work/${BRANCH}
git status
git commit -m "Auto commit"
git push work ${BRANCH}
