#!/bin/bash

git checkout feature/2
git rebase feature/1

git checkout feature/3
git rebase feature/2