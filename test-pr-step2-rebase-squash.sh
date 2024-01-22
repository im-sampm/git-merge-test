#!/bin/bash

# Merge feature/2 into feature/1 using a rebase commit
gh pr merge 2 -d -r

# Merge feature/1 into main using a squash commit
gh pr merge 1 -d -s

git checkout master
git fetch --all --prune

git log --oneline --graph --all