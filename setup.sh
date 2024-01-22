#!/bin/bash

rm -Rf .git
rm *.txt

git init
git add .
git commit --allow-empty -am "Initial commit"