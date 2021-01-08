#!/usr/bin/env zsh

SCRIPT_DIR=$(cd $(dirname $0); pwd)

echo $SCRIPT_DIR

# zsh
ln -sf ${SCRIPT_DIR}/config/.zshrc ~/.zshrc
ln -sf ${SCRIPT_DIR}/config/.zsh ~/.zsh

# git
ln -sf ${SCRIPT_DIR}/config/.gitconfig ~/.gitconfig

source ~/.zshrc
