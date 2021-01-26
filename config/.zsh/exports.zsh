#!/usr/bin/env bash

# brew(arm)
export PATH=/opt/homebrew/bin:$PATH

# kube@wantedly
export PATH=$HOME/.wantedly/bin:$PATH

# xcode-install
export XCODE_INSTALL_USER="shota@wantedly.com"

# Xcode
export XCODE_APP=$(xcode-select -p)/../../

# valec
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin:$GOPATH/src/github.com/dtan4/valec/bin

# Android Studio
export PATH=$PATH:/Applications/"Android Studio.app"/Contents/jre/jdk/Contents/Home/bin
export JAVA_HOME=/Applications/"Android Studio.app"/Contents/jre/jdk/Contents/Home
# adb
export PATH=$PATH:~/Library/Android/sdk/platform-tools

alias s2bash="source ~/.zshrc"

# rbenv PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# Swift AST
export PATH=$HOME/Documents/git/swift-ast/.build/release:$PATH

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# Postgres
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# grpcurl
export PATH=$HOME/.grpcurl/bin:$PATH

# history
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=1000000

# share .zshhistory
setopt inc_append_history
setopt share_history
