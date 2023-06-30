#!/bin/bash

## commit & push generated document file in CI

set -o nounset
set -o pipefail
set -o xtrace

touch sample.txt

git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"

git checkout -q -b ${BRANCH}
git status
git add .
git commit -m "Auto commit"
git push origin ${BRANCH}
