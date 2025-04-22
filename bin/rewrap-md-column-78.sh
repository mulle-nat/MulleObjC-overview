#! /usr/bin/env bash

find . -name "*.md" -type f -print0 | while IFS= read -r -d '' f
do
   tmp=$(mktemp) \
   && pandoc "$f" -f markdown -t markdown --wrap=auto --columns=76 -o "$tmp" \
   && mv "$tmp" "$f" || { echo "Failed to process $f"; rm -f "$tmp"; };
done
