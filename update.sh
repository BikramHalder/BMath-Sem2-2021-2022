#!/bin/bash

git pull

if [ -n "$(git status --porcelain)" ]; then
  IFS=''
  read -p "Commit Message: " commit_msg
  git add --all
  git commit -m $commit_msg
  git push
else
  echo "Nothing to be pushed!";
fi
