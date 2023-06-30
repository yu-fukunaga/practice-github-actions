#!/bin/bash

## commit & push generated document file in CI

set -o nounset
set -o pipefail
set -o xtrace

touch sample.txt

git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"

export GITHUB_TOKEN=${GITHUB_TOKEN}

git remote add work https://x-access-token:${GITHUB_TOKEN}@github.com/yu-fukunaga/practice-github-actions
git fetch work
git checkout -q -b ${BRANCH} --track work/${BRANCH}
git status
git add .
git commit -m "Auto commit"
git push work ${BRANCH}
