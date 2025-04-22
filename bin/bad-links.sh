#! /usr/bin/env mulle-bash


# Function to extract file paths from the markdown file
extract_paths() {
  local file="$1"
  grep -oP 'https://github\.com/[^/]+/[^/]+/blob/master/\K[^) ]+' "$file" | \
  grep -oE 'src/[^/]+/[^/]+\.(m|h)' | \
  sed -e 's/%2B/+/g' | \
  sort | uniq
}


# Extract paths and check if they exist
prefix="../.."
missing_files=0

find . -name "*.md" -type f -print0 | while IFS= read -r -d '' f
do
   while IFS= read -r path
   do
      r_filepath_concat "${prefix}" "${path}"
      full_path="${RVAL}"
      r_simplified_path "${full_path}"
      full_path="${RVAL}"
      if [ ! -f "$full_path" ]; then
        echo "Bad link in $f: $path"
      fi
   done < <(extract_paths "$f")
done

