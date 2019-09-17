#!/usr/bin/env bash

wd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
ls -1 "${wd}" | egrep -v '(COPYING|install.sh|README.md)' | while read target; do 
  stow "${target}"
done
