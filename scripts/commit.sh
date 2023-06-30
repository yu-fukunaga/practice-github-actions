#!/bin/bash

## commit & push generated document file in CI

set -o nounset
set -o pipefail
set -o xtrace

git checkout -q -b ${BRANCH}

touch sample.txt

git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"

git status
git add .
git commit -m "Auto commit"
git push https://${GITHUB_TOKEN}@github.com/yu-fukunaga/practice-github-actions.git ${BRANCH}