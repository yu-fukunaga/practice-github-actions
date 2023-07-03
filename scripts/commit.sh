#!/bin/bash


git checkout  -b ${BRANCH}

touch sample.txt

git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"

git status
git add .
git commit -m "Auto commit"
git push origin ${BRANCH}