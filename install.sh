#!/usr/bin/env bash

wd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
td="${HOME}/.config/terminator/"
for app in bash screen tmux vim; do
  find "${wd}/${app}" -type f | while read target; do
    [ -f "${HOME}/$(basename ${target})" ] && mv -f "${HOME}/$(basename ${target})" "${HOME}/$(basename ${target})-$(date +%s)"
    ln -s "${target}" "${HOME}"
  done
done

mkdir -p "${td}"
ln -s "${wd}/terminator/config" "${td}"
