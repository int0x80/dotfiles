#!/usr/bin/env bash

wd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
for app in bash screen tmux vim; do
  find "${wd}/${app}" -type f | while read target; do
    ln -s "${target}" "${HOME}"
  done
done
