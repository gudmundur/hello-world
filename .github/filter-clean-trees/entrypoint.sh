#!/bin/sh

if [[ $(git diff --stat) != '' ]]; then
  exit 0
else
  exit 78
fi
