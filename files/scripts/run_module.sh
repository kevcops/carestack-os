#!/usr/bin/env bash
set -euo pipefail

module_name="$1"
module_config_json="$2"
include_dir="$(jq -r '.include // "files"' <<< "$module_config_json")"

echo "Running module: $module_name"
echo "Copying files from $include_dir"

if [[ -d "/tmp/${include_dir}" ]]; then
  cp -rT "/tmp/${include_dir}" /
  echo "Copied contents of /tmp/${include_dir} to /"
else
  echo "Directory /tmp/${include_dir} not found!"
  exit 1
fi
