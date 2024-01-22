#!/bin/bash

source setup.sh

gh repo delete git-pr-test
gh repo create git-pr-test --public --push --source .

echo "A" > A.txt
git add .
git commit -am "Added A"

git checkout -b feature/1
echo "B" >> B.txt
git add .
git commit -am "Added B"

git checkout -b feature/2
echo "C" >> C.txt
git add .
git commit -am "Added C"

git push --all

# Create the Pull Requests
gh pr create --title "PR 1" --body "PR 1" --base master --head feature/1
gh pr create --title "PR 2" --body "PR 2" --base feature/1 --head feature/2