#!/usr/bin/env bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 || exit ; pwd -P )"

CONFIGS=(
    '.profile' 
    '.bashrc' 
    '.gitconfig' 
    '.zshrc' 
    '.bash_aliases'
)

for config in ${CONFIGS[@]}; do
		ln -s "${SCRIPTPATH}/${config}" "${HOME}/${profile}"
done
