#! /usr/bin/env bash

find . -name "*.md" -type f -print0 | while IFS= read -r -d '' f
do
  tmp=$(mktemp)
  mulle-markdown -w -m < "$f" > "${f%.md}.html" || { echo "Failed to process $f"; rm -f "$tmp"; }
done
