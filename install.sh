#!/usr/bin/env bash

ls -1 | egrep -v '(COPYING|install.sh|README.md)' | while read target; do 
  stow "${target}"
done
