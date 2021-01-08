#!/usr/bin/env zsh

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# zsh
ln -sf ${BASEDIR}/config/.zshrc ~/.zshrc
ln -sf ${BASEDIR}/config/.zsh ~/.zsh

# git
ln -sf ${BASEDIR}/config/.gitconfig ~/.gitconfig

source ~/.zshrc
