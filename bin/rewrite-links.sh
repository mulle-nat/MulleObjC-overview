#! /usr/bin/env bash

# This script rewrites GitHub blob links to raw.githubusercontent links
# in markdown files.

find . -name "*.md" -type f -print0 | while IFS= read -r -d '' f
do
  echo "Processing $f..."

  # Use sed to replace the standard link pattern
  # s/old_pattern/new_pattern/g
  # We need to escape the forward slashes in the URLs
  sed -i 's/https:\/\/github\.com\/mulle-objc\/MulleObjC\/blob\/master\//https:\/\/raw\.githubusercontent\.com\/mulle-objc\/MulleObjC\/refs\/heads\/master\//g' "$f"

  # Use sed to replace the URL-escaped link pattern (for Perplexity queries etc.)
  sed -i 's/https%3A%2F%2Fgithub.com%2Fmulle-objc%2FMulleObjC%2Fblob%2Fmaster%2F/https%3A%2F%2Fraw.githubusercontent.com%2Fmulle-objc%2FMulleObjC%2Frefs%2Fheads%2Fmaster%2F/g' "$f"
done

echo "Link rewriting complete."