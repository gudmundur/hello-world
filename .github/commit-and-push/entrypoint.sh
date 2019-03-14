#!/bin/bash

git config --global user.email "GitHub Actions"
git config --global user.name "actions@github.com"

git add .
git commit -m "Make linter happy"
git push origin HEAD
