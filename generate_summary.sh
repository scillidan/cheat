#!/bin/bash
# Script to generate SUMMARY.md in ./src/ by scanning .md files,
# ignoring SUMMARY.md, _index.md, and directory _image/
# Authors: GPT-4o mini🧙‍♂️, scillidan🤡
# Usage: cd <mdbook_proj> && ./file.sh

SRC_DIR="./src"
SUMMARY_FILE="$SRC_DIR/SUMMARY.md"

# Files and dirs to ignore
IGNORE_FILES=("SUMMARY.md" "_index.md")
IGNORE_DIRS=("_image")

# Function to check if a value is in an array
function contains() {
  local e
  for e in "${@:2}"; do [[ "$e" == "$1" ]] && return 0; done
  return 1
}

# Escape markdown special characters in filenames (optional)
function escape_md() {
  echo "$1" | sed -e 's/[][\*`_]/\\&/g'
}

# Recursive function to process a directory
# $1 = directory path relative to SRC_DIR
# $2 = current indentation (number of spaces)
function process_dir() {
  local dir_rel="$1"
  local indent="$2"

  # List directory entries: first directories (except ignored), then files (except ignored)
  # Use LC_COLLATE=C for consistent sorting
  local dirs=()
  local files=()

  shopt -s nullglob
  for d in "$SRC_DIR/$dir_rel"/*/; do
    d=${d%/}
    local base=$(basename "$d")
    # Ignore dirs listed
    if contains "$base" "${IGNORE_DIRS[@]}"; then
      continue
    fi
    dirs+=("$base")
  done
  shopt -u nullglob

  # Sort dirs alphabetically
  IFS=$'\n' dirs=($(sort <<<"${dirs[*]}"))
  unset IFS

  # Files in this directory
  shopt -s nullglob
  for f in "$SRC_DIR/$dir_rel"/*.md; do
    local basef=$(basename "$f")
    # Ignore certain files
    if contains "$basef" "${IGNORE_FILES[@]}"; then
      continue
    fi
    files+=("$basef")
  done
  shopt -u nullglob

  # Sort files
  IFS=$'\n' files=($(sort <<<"${files[*]}"))
  unset IFS

  # If there are neither files nor subdirs (with files), don't output anything for this dir
  if [ ${#dirs[@]} -eq 0 ] && [ ${#files[@]} -eq 0 ]; then
    return
  fi

  # If not root (dir_rel nonempty), print directory itself as a link to its `_.md` file if exists; else use first .md file
  if [ "$dir_rel" != "" ]; then
    local dir_name=$(basename "$dir_rel")
    # Check if _.md exists in dir
    local link_file=""
    if [ -f "$SRC_DIR/$dir_rel/_.md" ]; then
      link_file="_"
    elif [ ${#files[@]} -gt 0 ]; then
      link_file="${files[0]%.*}"
    else
      link_file=""
    fi
    if [ "$link_file" != "" ]; then
      local indent_spaces=$(printf '%*s' "$indent" '')
      local text=$(escape_md "$dir_name")
      echo "${indent_spaces}- [$text]($dir_rel/$link_file.md)"
      indent=$((indent+2))
    fi
  fi

  # List files under this directory (indent accordingly)
  local file_indent=$indent
  for file in "${files[@]}"; do
    local fname="${file%.md}"
    # Skip _.md if already used as directory link
    if [ "$file" == "_.md" ] && [ "$dir_rel" != "" ]; then
      # If directory was printed using _.md, skip this file entry
      if [ "$link_file" = "_" ]; then
        continue
      fi
    fi
    local indent_spaces=$(printf '%*s' "$file_indent" '')
    local text=$(escape_md "$fname")
    if [ "$dir_rel" = "" ]; then
      echo "${indent_spaces}- [$text]($file)"
    else
      echo "${indent_spaces}- [$text]($dir_rel/$file)"
    fi
  done

  # Process subdirectories
  for subdir in "${dirs[@]}"; do
    local subdir_rel="$dir_rel/$subdir"
    # Trim leading /
    subdir_rel="${subdir_rel#/}"
    process_dir "$subdir_rel" "$indent"
  done
}

# Write header
echo "# SUMMARY" > "$SUMMARY_FILE"
echo >> "$SUMMARY_FILE"

# Start processing from root of src
process_dir "" 0 >> "$SUMMARY_FILE"