#!/bin/bash

git checkout master

echo "bar" >> A.txt
git commit -am "Added bar to A.txt"

git checkout feature/2
git rebase -i --autosquash --update-refs master

git push --all --force