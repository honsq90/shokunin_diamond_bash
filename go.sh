#!/usr/bin/env bash


if [ "$1" == "run" ] ||[ "$#" -ge 2 ]; then
  pat="^[a-zA-Z]$"
  if [[ $2 =~ $pat ]]; then
    cat "outputs/output_$2.txt"
    exit "$?"
  else
    echo "INVALID INPUT"
    exit "$?"
  fi
fi

echo "Usage"
echo "./go.sh run <input>"
