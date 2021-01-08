#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# zsh
ln -s ${BASEDIR}/config/.zshrc ~/.zshrc
ln -s ${BASEDIR}/config/.zsh ~/.zsh

# git
ln -s ${BASEDIR}/config/.gitconfig ~/.gitconfig
