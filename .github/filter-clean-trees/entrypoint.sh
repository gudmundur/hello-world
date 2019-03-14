#!/bin/bash

if [[ $(git diff --stat) != '' ]]; then
  git status
  exit 0
else
  exit 78
fi
