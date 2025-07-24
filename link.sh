#!/usr/bin/env bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
ln -s "${SCRIPTPATH}/.profile" ~/.profile
ln -s "${SCRIPTPATH}/.bashrc" ~/.bashrc
ln -s "${SCRIPTPATH}/.gitconfig" ~/.gitconfig
ln -s "${SCRIPTPATH}/.config" ~/.config
ln -s "${SCRIPTPATH}/.zshrc" ~/.zshrc
