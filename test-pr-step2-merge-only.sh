#!/bin/bash

# Merge feature/2 into feature/1
gh pr merge 2 -d -m

# Merge feature/1 into main
gh pr merge 1 -d -m

git fetch --all