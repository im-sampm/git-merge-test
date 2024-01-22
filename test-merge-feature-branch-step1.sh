#!/bin/bash

source setup.sh

gh repo delete git-merge-test
gh repo create git-merge-test --public --push --source .

echo "1-master" > A.txt
git add .
git commit -am "Added A in master"

git checkout -b feature/1
echo "1-feature" >> B.txt
git add .
git commit -am "Added B in feature/1"

echo "2-feature" >> B.txt
git add .
git commit -am "Updated B in feature/1"

git switch master
echo "2-master" >> A.txt
git add .
git commit -am "Updated A in master"

echo "1-master" >> B.txt
git add .
git commit -am "Updated B in master"

git switch feature/1
git merge master

# echo "3-feature" >> B.txt
# git commit -am "Updated B in feature/1"

# echo "4-feature" >> B.txt
# git commit -am "Updated B in feature/1"

# git push --all