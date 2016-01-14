#!/usr/bin/env bash

pat="^[a-zA-Z]$"
if [[ $1 =~ $pat ]]; then
  cat "outputs/output_$1.txt"
  exit "$?"
else
  echo "INVALID INPUT"
  exit "$?"
fi

echo "Usage"
echo "./go.sh {character}"
