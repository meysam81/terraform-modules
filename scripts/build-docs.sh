#!/bin/bash

set -eu

rootdir=.
modules=$(find $rootdir -maxdepth 2 -type f -name '*.tf' -exec dirname {} \; | sort -u)

for module in $modules; do
  module_name=$(basename "$module")
  terraform-docs markdown table "$module" > "docs/$module_name.md"
  terraform-docs markdown table --output-file README.md --output-mode replace "$module"
done

find docs -type f -name '*.md' | while read -r doc; do
  if [[ "$doc" == "docs/index.md" ]]; then
    continue
  fi

  module_name=$(basename "$doc" .md)
  if [[ ! -d "$rootdir/$module_name" ]]; then
    rm "$doc"
  fi
done
